/**
 * File: Power_Monitoring_Code.ino
 * Author: Lukas Severinghaus
 * Date: March 28, 2021
 * Purpose: Enable power management and monitoring features
 * for my EGR216 honors contract project PCB.
 *
 * License:
 * Copyright (C) 2021 Lukas Severinghaus
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License version 3
 * as published by the Free Software Foundation;
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

#include <SoftwareSerial.h>

SoftwareSerial debug(21, 22); //Rx, Tx
#define DEBUG_BAUD 9600
/**** Fault Conditions ****/
#define OVERCURRENT_LIMIT 9.0

#define OVERVOLTAGE_LIMIT 14
#define UNDERVOLTAGE_LIMIT 10
/**** End Fault Conditions ****/

/**** LED Pins ****/
#define LED_R 0
#define LED_G 2
#define LED_B 1
/**** End LED Pins ****/

/**** Cutoff Relay Variables ****/
#define CUTOFF_PIN 8
//Pin state when circuit is open
#define CUTOFF_ENABLE LOW
//Pin state when circuit is closed
#define CUTOFF_DISABLE HIGH
//Current state of the cutoff
bool powerState = false;
/**** End Cutoff Relay Variables ****/

/**** Current Sensing Variables ****/

//TODO: Implement switching of 3.3v power supply after start.
//Controls whether the 3.3v regulator is enabled only when needed.
//This could reduce power usage, but could introduce additional wait times and possible voltage instability.
//#define SUPPLY_3V3_CONTROL
#undef SUPPLY_3V3_CONTROL

//Pin to control 3.3V regulator
#define SUPPLY_3V3_ENABLE_PIN 10
//Control states for 3.3V regulator
#define SUPPLY_3V3_ON HIGH
#define SUPPLY_3V3_OFF LOW

//Pin for current analog input
#define CURRENT_ADC_PIN A0

//Offset, in ADC steps, of the current sensor. Typical is 1.6V,~327 steps
int current_offset = 0;

//Filter strength of the LPF used on the raw current data
#define CURRENT_FILTER_STRENGTH 0.05

//Sensor output voltage is proportional to current
//This is the voltage change per amp of power, in millivolts
#define CURRENT_MV_PER_AMP -132
//ADC steps to volts
#define CURRENT_ADC_TO_VOLTS 5.0 / 1024.0
//ADC steps to amps
#define CURRENT_ADC_TO_AMPS CURRENT_ADC_TO_VOLTS * CURRENT_MV_PER_AMP / 1000.0
/**** End Current Sensing Variables ****/

/**** Voltage Sensing Variables ****/
//Pin for voltage analog input
#define VOLTAGE_ADC_PIN A1
//Voltage range of ADC. Voltage corresponding to a 1023 ADC reading
#define VOLTAGE_ADC_RANGE 22.857

#define VOLTAGE_FILTER_STRENGTH 0.05
/**** End Voltage Sensing Variables ****/

/**** Fault Control ****/
//Max time to stay in fault condition before disconnecting load, in ms.
#define FAULT_TIME_THRESHOLD 50

//Threshold values for voltage and current, in volts and amps respectively.
//Staying above these values for more than the time threshold will cause the load to be disconnected.
#define FAULT_MAX_CURRENT 1 //Max current
#define FAULT_MAX_VOLTAGE 15 //Fully charged voltage is ~12.3v
#define FAULT_MIN_VOLTAGE 10.5 //3.5V / cell with a 3s LiPo

//Millis time that last fault started
long fault_start_time = 0;

//Time to wait before attempting to clear soft trip, in ms
#define FAULT_SOFT_TRIP_COOLDOWN 1000

//Millis time for entering soft cooldown
long fault_cooldown_time = 0;

//Current state of the fault system
#define FAULT_CLEAR 0
#define FAULT_TIME 1
#define FAULT_SOFT_TRIP 2
#define FAULT_HARD_TRIP 3
byte fault_state = FAULT_SOFT_TRIP;


void setup() {
  debug.begin(DEBUG_BAUD);
  debug.println("&Start;");
  initCurrent();
  initVoltage();
  initLED();
  initPower();
}

bool manualControl = false;

void loop() {
  //Poll current and voltage so the filters are kept fresh
  getVoltage();
  getCurrent();

  //Process serial interface
  if(debug.available() > 0){
    if(manualControl){
      processManualControl();
    }else{
      if(debug.read() == 'm'){
        manualControl = true;
        debug.println("&Entering manual control;");
      }
    }
  }

  //If in hard trip state, which can only be cleared by reset
  if (fault_state == FAULT_HARD_TRIP) {
    //Blink error message
    showLED(1, 1, 0);
    delay(500);
    showLED(1, 0, 0);
    delay(500);
    debug.println("&Reset to clear trip;");
    return; //Don't continue to loop, there's nothing to do
  }
  bool currentTrip = getCurrent() > FAULT_MAX_CURRENT;
  bool overVoltageTrip = getVoltage() > FAULT_MAX_VOLTAGE;
  bool underVoltageTrip = getVoltage() < FAULT_MIN_VOLTAGE;

  //If any of the indicators is tripped
  if (currentTrip || overVoltageTrip || underVoltageTrip) {
    if (fault_state == FAULT_CLEAR) {
      //If no existing fault, enter the pre-fault stage
      fault_state = FAULT_TIME;
      fault_start_time = millis();
    } else if (fault_state == FAULT_TIME && millis() > fault_start_time + FAULT_TIME_THRESHOLD) {
      //If in pre-fault, shut off load and go to error state.
      //Choose which trip state to go to.
      if (underVoltageTrip) {
        debug.println("&Entering hard trip;");
        //Load will stay permanently off, till hard reset.
        fault_state = FAULT_HARD_TRIP;
      } else { //It's over voltage or over current.
        //Try checking the load later.
        debug.println("&Entering soft trip;");
        fault_state = FAULT_SOFT_TRIP;
        showLED(0, 0, 1);
        fault_cooldown_time = millis();
      }
      disconnectPower();
    }
  } else { //No faults.
    if (fault_state == FAULT_TIME || (fault_state == FAULT_SOFT_TRIP && millis() > fault_cooldown_time + FAULT_SOFT_TRIP_COOLDOWN)) {
      debug.println("&\t\t Clear trip;");
      fault_state = FAULT_CLEAR;
      connectPower();
    }
    if (fault_state == FAULT_CLEAR) {
      //Show green LED
      showLED(0, 1, 0);
    }
  }
}

void processManualControl(){
  char cmd = debug.read();
  if(cmd == 'x'){
    manualControl = false;
    debug.println("&Exit manual;");
  }else if(cmd == 'r'){
    fault_state = FAULT_CLEAR;
  }else if(cmd == 'd'){
    printDebug();
  }else if(cmd == 'o'){
    connectPower();
    debug.println("&Load on;");
  }else if(cmd == 'l'){
    disconnectPower();
    debug.println("&Load off;");
  }
}

void printDebug() {
  float i = getCurrent();
  float v = getVoltage();
  debug.print("$");
  debug.print(powerState);
  debug.print(" ");
  debug.print(i);
  debug.print(" ");
  debug.print(v);
  debug.print(" ");
  printFaultState();
  debug.println(";");
}
/**
 * Convert the fault state to a human readable string and send it to the debug port.
 */
void printFaultState(){
  switch(fault_state){
    case FAULT_CLEAR:
      debug.print("c");
      break;
    case FAULT_TIME:
      debug.print("t");
      break;
    case FAULT_SOFT_TRIP:
      debug.print("s");
      break;
    case FAULT_HARD_TRIP:
      debug.print("h");
      break;
    default:
      debug.print("u");
      break;
  }
}


/**
   Initializes cutoff relay pin and leaves the relay in an open state.
*/
void initPower() {
  pinMode(CUTOFF_PIN, OUTPUT);
  digitalWrite(CUTOFF_PIN, CUTOFF_ENABLE);
}


/**
 * Control of the power cutoff
 */

void connectPower() {
  if (!powerState) {
    digitalWrite(CUTOFF_PIN, CUTOFF_DISABLE);
    powerState = true;
  }
}

void disconnectPower() {
  if (powerState) {
    digitalWrite(CUTOFF_PIN, CUTOFF_ENABLE);
    powerState = false;
  }
}
/**
   Initializes current sensor.
   First, it enables the 3.3V regulator, then it
   sets sense pin to output and calibrates offset.
*/
void initCurrent() {
  //Turn on the 3.3v regulator
  pinMode(SUPPLY_3V3_ENABLE_PIN, OUTPUT);
  digitalWrite(SUPPLY_3V3_ENABLE_PIN, SUPPLY_3V3_ON);
  //Give it 50ms to stablilize
  delay(50);
  //Setup the ADC pin
  pinMode(CURRENT_ADC_PIN, INPUT);
  int offset_calibration = 0;
  //Collect 5 ADC samples
  for (int i = 0; i < 5; i++) {
    offset_calibration += analogRead(CURRENT_ADC_PIN);
    //debug.println(analogRead(CURRENT_ADC_PIN));
    delay(5);
  }
  //Average them and save the value
  current_offset = offset_calibration / 5;
  debug.print("&Current offset: ");
  debug.print(current_offset);
  debug.println(";");
}

/**
   Reads the ADC and returns the current measurement in Amps.
*/
float getCurrent() {
  //Get the raw ADC sample
  int sample = analogRead(CURRENT_ADC_PIN);
  //Filter it
  sample = currentFilter(sample);
  //Convert and return
  //Convert sample to voltage
  float current = sample / 1024.0 * 5.0;
  //Remove offset
  current = current - 1.65;
  //Divide by mv/Amp, to get amps.
  current = current / -0.132;
  return current;
}

float current_running_filter = 0;
int currentFilter(int sample) {
  if (current_running_filter == 0) {
    current_running_filter = sample;
  } else {
    current_running_filter += CURRENT_FILTER_STRENGTH * (sample - current_running_filter);
  }
  return (int) current_running_filter;
}

/**
   Initializes the voltage sensor pin
*/
void initVoltage() {
  analogReference(DEFAULT);
  pinMode(VOLTAGE_ADC_PIN, INPUT);
}

/**
   Reads the ADC and returns the voltage measurement in Volts.
*/
float getVoltage() {
  int sample = analogRead(VOLTAGE_ADC_PIN);
  sample = voltageFilter(sample);
  return (float) sample / 1024.0 * VOLTAGE_ADC_RANGE;
}

float voltage_running_filter = 0;
int voltageFilter(int sample) {
  if (voltage_running_filter == 0) {
    voltage_running_filter = sample;
  } else {
    voltage_running_filter += VOLTAGE_FILTER_STRENGTH * (sample - voltage_running_filter);
  }
  return (int) voltage_running_filter;
}
/**
   Initializes the LED pins and blinks the startup sequence.
*/
void initLED() {
  pinMode(LED_R, OUTPUT);
  pinMode(LED_G, OUTPUT);
  pinMode(LED_B, OUTPUT);
  showLED(1, 0, 0);
  delay(250);
  showLED(0, 1, 0);
  delay(250);
  showLED(0, 0, 1);
  delay(250);
  showLED(1, 1, 1);
  delay(250);
  showLED(0, 0, 0);
}

/**
   Sets the LED on/off status. Values are either 1 (HIGH), or 0 (LOW)
*/
void showLED(byte r, byte g, byte b) {
  digitalWrite(LED_R, r);
  digitalWrite(LED_G, g);
  digitalWrite(LED_B, b);
}
