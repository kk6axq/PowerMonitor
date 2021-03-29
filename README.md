# Power Monitor
This is a power management board for small robotics applications. This project was
developed as part of an honors contract for EGR216, electrical fundamentals,
during my Spring 2021 semester at Arizona State University, under the guidance
of Dr. Ayan Mallik.

# Purpose
The purpose of this project was to interface with a LiPo battery for a robotics
project I am developing in another course. The purpose of the board was to
prevent issues stemming from over discharge of the battery or accidental shorting.
As LiPo batteries are capable of delivering a large amount of current,
I wanted to prevent circuit damage in the case of short circuit conditions while
also preventing battery damage if I forgot to turn off the robot.
Additionally, I wanted to explore an alternative to the LM7805 I had used in
previous projects to provide a high current 5V supply for a planned payload bay
on the robot.
# Features
* Variety of current protection features:
  * Overcurrent up to 10A
  * Overvoltage detection up to 25V
  * Undervoltage detection
  * Short circuit protection
* Independent load control. Load, and 5V load supply can be switched on or off by the onboard microcontroller.
* Provides 5V at up to 3A and 12V at up to 10A burst.
* Dual power supplies for load and onboard microcontroller.
* Serial based monitoring and control of load switch, power status, and fault conditions.
* Onboard RGB LED for status indication
* Open source software.
* Hardware schematic and layout is open source. Project files are currently not available due to licensing restrictions.
# Design Criteria
* 12V power source or 3s LiPo battery
* Provide 12V at 4.2A from battery and 5V at 1.5A
* Monitor for fault conditions, including overvoltage, undervoltage, overcurrent, and short circuit
* Report faults to the robot's main microcontroller

# Core components:
* ATTiny88 microcontroller programmed with Arduino and the ATTinyCore
* ACS722 Current Sensor with +/- 10A current measuring capacity
* Voltage divider based voltage sensor with 25V measuring capability
* Dual LM2576 5V buck converter
* MIC5504 3.3V regulator for current sensor
* Si4435 P-Channel MOSFET for short circuit protection and load switching

# Repository Structure:
The repository is organized by folder, as shown below.
## Hardware
The hardware folder contains the KiCAD project files and output Gerbers and PDFs
for easy viewing. It includes:
* PDF schematic
* STEP file of PCB
* Bill of Materials
* Interactive HTML BOM for PCB assembly
* KiCAD project files
* Archive of Gerber board files and PDF of PCB layers

## Software
The software folder contains the code used to enable the power management behaviors.
## Docs
The docs folder contains documentation of the digital communications protocol and an explanation of the operation of the device.

# License
This project is copyright (C) 2021 by Lukas Severinghaus. It is licensed under the GNU GPLV3.
