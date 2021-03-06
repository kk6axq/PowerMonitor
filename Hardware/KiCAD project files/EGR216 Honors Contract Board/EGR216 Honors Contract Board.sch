EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:MIC5504-3.3YM5 U5
U 1 1 600732AD
P 1500 7150
F 0 "U5" H 1500 7517 50  0000 C CNN
F 1 "MIC5504-3.3YM5" H 1500 7426 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1500 6750 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MIC550X.pdf" H 1250 7400 50  0001 C CNN
	1    1500 7150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 600761BD
P 1250 1650
F 0 "J2" H 1222 1532 50  0000 R CNN
F 1 "XT60 Male" H 1222 1623 50  0000 R CNN
F 2 "Amass:AMASS_XT60-M_1x02_P7.20mm_Vertical" H 1250 1650 50  0001 C CNN
F 3 "~" H 1250 1650 50  0001 C CNN
	1    1250 1650
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 60076A59
P 1550 1650
F 0 "#PWR0101" H 1550 1400 50  0001 C CNN
F 1 "GND" H 1555 1477 50  0000 C CNN
F 2 "" H 1550 1650 50  0001 C CNN
F 3 "" H 1550 1650 50  0001 C CNN
	1    1550 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1650 1550 1650
$Comp
L power:+5V #PWR0102
U 1 1 60077139
P 900 7050
F 0 "#PWR0102" H 900 6900 50  0001 C CNN
F 1 "+5V" H 915 7223 50  0000 C CNN
F 2 "" H 900 7050 50  0001 C CNN
F 3 "" H 900 7050 50  0001 C CNN
	1    900  7050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0103
U 1 1 600772E1
P 2100 7050
F 0 "#PWR0103" H 2100 6900 50  0001 C CNN
F 1 "+3V3" H 2115 7223 50  0000 C CNN
F 2 "" H 2100 7050 50  0001 C CNN
F 3 "" H 2100 7050 50  0001 C CNN
	1    2100 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  7050 1100 7050
Wire Wire Line
	1900 7050 2050 7050
$Comp
L Device:C C11
U 1 1 6007C7BE
P 2050 7200
F 0 "C11" H 2165 7246 50  0000 L CNN
F 1 "1uF" H 2165 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2088 7050 50  0001 C CNN
F 3 "~" H 2050 7200 50  0001 C CNN
	1    2050 7200
	1    0    0    -1  
$EndComp
Connection ~ 2050 7050
Wire Wire Line
	2050 7050 2100 7050
$Comp
L Device:C C10
U 1 1 6007D03F
P 900 7200
F 0 "C10" H 785 7246 50  0000 R CNN
F 1 "1uF" H 785 7155 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 938 7050 50  0001 C CNN
F 3 "~" H 900 7200 50  0001 C CNN
	1    900  7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  7350 900  7450
Wire Wire Line
	900  7450 1500 7450
Wire Wire Line
	1500 7450 2050 7450
Wire Wire Line
	2050 7450 2050 7350
Connection ~ 1500 7450
$Comp
L power:GND #PWR0104
U 1 1 6007DC13
P 1500 7550
F 0 "#PWR0104" H 1500 7300 50  0001 C CNN
F 1 "GND" H 1505 7377 50  0000 C CNN
F 2 "" H 1500 7550 50  0001 C CNN
F 3 "" H 1500 7550 50  0001 C CNN
	1    1500 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 7550 1500 7450
$Comp
L Sensor_Current:ACS722xLCTR-10AU U1
U 1 1 6007E838
P 4200 1850
F 0 "U1" V 3600 1900 50  0000 R CNN
F 1 "ACS722xLCTR-10AU" V 3700 2000 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4300 1500 50  0001 L CIN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS722-Datasheet.ashx?la=en" H 4200 1850 50  0001 C CNN
	1    4200 1850
	0    -1   1    0   
$EndComp
Wire Wire Line
	1450 1500 1450 1550
Wire Wire Line
	4600 1850 4600 2250
Wire Wire Line
	4600 2250 4300 2250
$Comp
L power:GND #PWR0105
U 1 1 6008172B
P 4600 2350
F 0 "#PWR0105" H 4600 2100 50  0001 C CNN
F 1 "GND" H 4605 2177 50  0000 C CNN
F 2 "" H 4600 2350 50  0001 C CNN
F 3 "" H 4600 2350 50  0001 C CNN
	1    4600 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2250 4600 2350
Connection ~ 4600 2250
$Comp
L power:+3V3 #PWR0106
U 1 1 600820B6
P 3550 1850
F 0 "#PWR0106" H 3550 1700 50  0001 C CNN
F 1 "+3V3" H 3565 2023 50  0000 C CNN
F 2 "" H 3550 1850 50  0001 C CNN
F 3 "" H 3550 1850 50  0001 C CNN
	1    3550 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1850 3650 1850
Text GLabel 4000 2500 0    50   Input ~ 0
I_SENSE
$Comp
L Device:C C2
U 1 1 60082CB3
P 3650 2000
F 0 "C2" H 3536 2046 50  0000 R CNN
F 1 "0.1uF" H 3536 1955 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3688 1850 50  0001 C CNN
F 3 "~" H 3650 2000 50  0001 C CNN
	1    3650 2000
	1    0    0    -1  
$EndComp
Connection ~ 3650 1850
Wire Wire Line
	3650 1850 3800 1850
Wire Wire Line
	3650 2150 3650 2400
Wire Wire Line
	3650 2400 4300 2400
Wire Wire Line
	4300 2400 4300 2250
Connection ~ 4300 2250
Wire Wire Line
	4000 2500 4000 2350
$Comp
L Device:R R1
U 1 1 60085798
P 4950 1600
F 0 "R1" H 5020 1646 50  0000 L CNN
F 1 "20k/1%" H 5020 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4880 1600 50  0001 C CNN
F 3 "~" H 4950 1600 50  0001 C CNN
	1    4950 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60086093
P 4950 1900
F 0 "R3" H 5020 1946 50  0000 L CNN
F 1 "5k/1%" H 5200 1900 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4880 1900 50  0001 C CNN
F 3 "~" H 4950 1900 50  0001 C CNN
	1    4950 1900
	1    0    0    -1  
$EndComp
Text GLabel 5200 1750 2    50   Input ~ 0
V_SENSE
Wire Wire Line
	5200 1750 4950 1750
Connection ~ 4950 1750
$Comp
L power:GND #PWR0107
U 1 1 600898CF
P 4950 2050
F 0 "#PWR0107" H 4950 1800 50  0001 C CNN
F 1 "GND" H 4955 1877 50  0000 C CNN
F 2 "" H 4950 2050 50  0001 C CNN
F 3 "" H 4950 2050 50  0001 C CNN
	1    4950 2050
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny88-AU U4
U 1 1 60089B14
P 5250 5150
F 0 "U4" H 4721 5196 50  0000 R CNN
F 1 "ATtiny88-AU" H 4721 5105 50  0000 R CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5250 5150 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8008.pdf" H 5250 5150 50  0001 C CNN
	1    5250 5150
	1    0    0    -1  
$EndComp
Connection ~ 900  7050
$Comp
L Device:L L1
U 1 1 6009746D
P 5350 3050
F 0 "L1" H 5403 3096 50  0000 L CNN
F 1 "10uH" H 5403 3005 50  0000 L CNN
F 2 "Inductor_SMD:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5350 3050 50  0001 C CNN
F 3 "~" H 5350 3050 50  0001 C CNN
	1    5350 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60098796
P 5900 3300
F 0 "C6" V 6152 3300 50  0000 C CNN
F 1 "100nF" V 6061 3300 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5938 3150 50  0001 C CNN
F 3 "~" H 5900 3300 50  0001 C CNN
	1    5900 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 3200 5350 3300
Wire Wire Line
	5250 2900 5300 2900
Wire Wire Line
	5350 3300 5750 3300
Connection ~ 5350 3300
Wire Wire Line
	5350 3300 5350 3350
$Comp
L power:GND #PWR0108
U 1 1 6009B5B8
P 6450 3300
F 0 "#PWR0108" H 6450 3050 50  0001 C CNN
F 1 "GND" H 6455 3127 50  0000 C CNN
F 2 "" H 6450 3300 50  0001 C CNN
F 3 "" H 6450 3300 50  0001 C CNN
	1    6450 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3300 6050 3300
$Comp
L Device:C C4
U 1 1 6009D11B
P 5100 3050
F 0 "C4" V 5352 3050 50  0000 C CNN
F 1 "100nF" V 5261 3050 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5138 2900 50  0001 C CNN
F 3 "~" H 5100 3050 50  0001 C CNN
	1    5100 3050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 6009DA6D
P 4900 3050
F 0 "#PWR0109" H 4900 2800 50  0001 C CNN
F 1 "GND" H 4905 2877 50  0000 C CNN
F 2 "" H 4900 3050 50  0001 C CNN
F 3 "" H 4900 3050 50  0001 C CNN
	1    4900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 6009E37B
P 5250 7050
F 0 "#PWR0110" H 5250 6800 50  0001 C CNN
F 1 "GND" H 5255 6877 50  0000 C CNN
F 2 "" H 5250 7050 50  0001 C CNN
F 3 "" H 5250 7050 50  0001 C CNN
	1    5250 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 7050 5250 6950
$Comp
L Device:R R10
U 1 1 6009FB86
P 6750 5500
F 0 "R10" V 6543 5500 50  0000 C CNN
F 1 "10k" V 6634 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6680 5500 50  0001 C CNN
F 3 "~" H 6750 5500 50  0001 C CNN
	1    6750 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 6009FF20
P 6750 5250
F 0 "#PWR0111" H 6750 5100 50  0001 C CNN
F 1 "+5V" H 6765 5423 50  0000 C CNN
F 2 "" H 6750 5250 50  0001 C CNN
F 3 "" H 6750 5250 50  0001 C CNN
	1    6750 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 600A2A7F
P 8750 4950
F 0 "D4" V 8789 4832 50  0000 R CNN
F 1 "Red" V 8698 4832 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8750 4950 50  0001 C CNN
F 3 "~" H 8750 4950 50  0001 C CNN
	1    8750 4950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 600A42F3
P 8750 4550
F 0 "R8" H 8820 4596 50  0000 L CNN
F 1 "330" H 8820 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8680 4550 50  0001 C CNN
F 3 "~" H 8750 4550 50  0001 C CNN
	1    8750 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4700 8750 4800
$Comp
L Device:LED D5
U 1 1 600A5E36
P 9200 4950
F 0 "D5" V 9239 4832 50  0000 R CNN
F 1 "Green" V 9148 4832 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9200 4950 50  0001 C CNN
F 3 "~" H 9200 4950 50  0001 C CNN
	1    9200 4950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 600A5E3C
P 9200 4550
F 0 "R9" H 9270 4596 50  0000 L CNN
F 1 "220" H 9270 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9130 4550 50  0001 C CNN
F 3 "~" H 9200 4550 50  0001 C CNN
	1    9200 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4700 9200 4800
$Comp
L power:+5V #PWR0112
U 1 1 600A6A8C
P 8750 4300
F 0 "#PWR0112" H 8750 4150 50  0001 C CNN
F 1 "+5V" H 8765 4473 50  0000 C CNN
F 2 "" H 8750 4300 50  0001 C CNN
F 3 "" H 8750 4300 50  0001 C CNN
	1    8750 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0113
U 1 1 600A6B52
P 9200 4300
F 0 "#PWR0113" H 9200 4150 50  0001 C CNN
F 1 "+3V3" H 9215 4473 50  0000 C CNN
F 2 "" H 9200 4300 50  0001 C CNN
F 3 "" H 9200 4300 50  0001 C CNN
	1    9200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4300 9200 4400
Wire Wire Line
	8750 4300 8750 4400
Wire Wire Line
	8750 5100 9000 5100
$Comp
L power:GND #PWR0114
U 1 1 600AA152
P 9000 5200
F 0 "#PWR0114" H 9000 4950 50  0001 C CNN
F 1 "GND" H 9005 5027 50  0000 C CNN
F 2 "" H 9000 5200 50  0001 C CNN
F 3 "" H 9000 5200 50  0001 C CNN
	1    9000 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5200 9000 5100
Connection ~ 9000 5100
Wire Wire Line
	9000 5100 9200 5100
Text GLabel 6000 5050 2    50   Input ~ 0
I_SENSE
Text GLabel 6000 5150 2    50   Input ~ 0
V_SENSE
Wire Wire Line
	6000 5150 5850 5150
Wire Wire Line
	5850 5050 6000 5050
$Comp
L Connector:AVR-ISP-6 J4
U 1 1 600AF42B
P 10400 5000
F 0 "J4" H 10070 5096 50  0000 R CNN
F 1 "AVR-ISP-6" H 10070 5005 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 10150 5050 50  0001 C CNN
F 3 " ~" H 9125 4450 50  0001 C CNN
	1    10400 5000
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 600B161A
P 10500 4350
F 0 "#PWR0115" H 10500 4200 50  0001 C CNN
F 1 "+5V" H 10515 4523 50  0000 C CNN
F 2 "" H 10500 4350 50  0001 C CNN
F 3 "" H 10500 4350 50  0001 C CNN
	1    10500 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 600B1A0E
P 10500 5600
F 0 "#PWR0116" H 10500 5350 50  0001 C CNN
F 1 "GND" H 10505 5427 50  0000 C CNN
F 2 "" H 10500 5600 50  0001 C CNN
F 3 "" H 10500 5600 50  0001 C CNN
	1    10500 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 5400 10500 5600
Wire Wire Line
	10500 4500 10500 4350
Text GLabel 9850 4800 0    50   Input ~ 0
MISO
Text GLabel 9850 4900 0    50   Input ~ 0
MOSI
Text GLabel 9850 5000 0    50   Input ~ 0
SCK
Wire Wire Line
	6750 5250 6750 5350
Text GLabel 6950 5650 2    50   Input ~ 0
RST
Text GLabel 9850 5100 0    50   Input ~ 0
RST
Wire Wire Line
	9850 5100 10000 5100
Wire Wire Line
	10000 5000 9850 5000
Wire Wire Line
	9850 4900 10000 4900
Wire Wire Line
	10000 4800 9850 4800
Wire Wire Line
	6950 5650 6750 5650
Connection ~ 6750 5650
Text GLabel 6000 4450 2    50   Input ~ 0
MOSI
Text GLabel 6000 4550 2    50   Input ~ 0
MISO
Text GLabel 6000 4650 2    50   Input ~ 0
SCK
Wire Wire Line
	6000 4650 5850 4650
Wire Wire Line
	5850 4550 6000 4550
Wire Wire Line
	6000 4450 5850 4450
Text GLabel 6000 6250 2    50   Input ~ 0
B1
Text GLabel 6000 6350 2    50   Input ~ 0
B2
Text GLabel 6000 5950 2    50   Input ~ 0
STATUS_R
Text GLabel 6000 6050 2    50   Input ~ 0
STATUS_G
Text GLabel 6000 6150 2    50   Input ~ 0
STATUS_B
Wire Wire Line
	5850 5650 6750 5650
Wire Wire Line
	5850 6150 6000 6150
Wire Wire Line
	6000 6050 5850 6050
Wire Wire Line
	5850 5950 6000 5950
$Comp
L Device:R R5
U 1 1 600D9BAA
P 9800 3450
F 0 "R5" V 9593 3450 50  0000 C CNN
F 1 "150" V 9684 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9730 3450 50  0001 C CNN
F 3 "~" H 9800 3450 50  0001 C CNN
	1    9800 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 600DA1FF
P 9800 3650
F 0 "R6" V 9593 3650 50  0000 C CNN
F 1 "90" V 9684 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9730 3650 50  0001 C CNN
F 3 "~" H 9800 3650 50  0001 C CNN
	1    9800 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 600DB8F9
P 9800 3850
F 0 "R7" V 9915 3850 50  0000 C CNN
F 1 "90" V 10006 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9730 3850 50  0001 C CNN
F 3 "~" H 9800 3850 50  0001 C CNN
	1    9800 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 3850 10000 3850
Wire Wire Line
	9950 3650 10000 3650
Wire Wire Line
	9950 3450 10000 3450
Text GLabel 9500 3450 0    50   Input ~ 0
STATUS_R
Text GLabel 9500 3650 0    50   Input ~ 0
STATUS_G
Text GLabel 9500 3850 0    50   Input ~ 0
STATUS_B
Wire Wire Line
	9500 3850 9650 3850
Wire Wire Line
	9650 3650 9500 3650
Wire Wire Line
	9500 3450 9650 3450
$Comp
L Device:LED_RGB D2
U 1 1 600EAAFD
P 10200 3650
F 0 "D2" H 10200 4147 50  0000 C CNN
F 1 "BL-HBXJXGX32L" H 10200 4056 50  0000 C CNN
F 2 "Custom Part Library:BL-HBXJXGX32L" H 10200 3600 50  0001 C CNN
F 3 "~" H 10200 3600 50  0001 C CNN
	1    10200 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 3450 10400 3650
Connection ~ 10400 3650
Wire Wire Line
	10400 3650 10400 3850
$Comp
L power:GND #PWR0117
U 1 1 601004F5
P 9250 6250
F 0 "#PWR0117" H 9250 6000 50  0001 C CNN
F 1 "GND" H 9255 6077 50  0000 C CNN
F 2 "" H 9250 6250 50  0001 C CNN
F 3 "" H 9250 6250 50  0001 C CNN
	1    9250 6250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW2
U 1 1 60100B61
P 9250 5950
F 0 "SW2" V 9204 6048 50  0000 L CNN
F 1 "SW_SPST" V 9295 6048 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9250 5950 50  0001 C CNN
F 3 "~" H 9250 5950 50  0001 C CNN
	1    9250 5950
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 60101BF1
P 8800 5950
F 0 "SW1" V 8754 6048 50  0000 L CNN
F 1 "SW_SPST" V 8845 6048 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8800 5950 50  0001 C CNN
F 3 "~" H 8800 5950 50  0001 C CNN
	1    8800 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 6150 9250 6150
Wire Wire Line
	9250 6150 9250 6250
Connection ~ 9250 6150
Text GLabel 9250 5650 1    50   Input ~ 0
B1
Text GLabel 8800 5650 1    50   Input ~ 0
B2
Wire Wire Line
	8800 5650 8800 5750
Wire Wire Line
	9250 5650 9250 5750
Wire Wire Line
	6000 6250 5850 6250
Wire Wire Line
	6000 6350 5850 6350
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 6010FEFA
P 10800 6100
F 0 "J5" H 10828 6076 50  0000 L CNN
F 1 "Monitor" H 10828 5985 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10800 6100 50  0001 C CNN
F 3 "~" H 10800 6100 50  0001 C CNN
	1    10800 6100
	1    0    0    -1  
$EndComp
Text GLabel 10500 6000 0    50   Input ~ 0
SHUTDOWN
Text GLabel 10500 6100 0    50   Input ~ 0
SCL
Text GLabel 10500 6200 0    50   Input ~ 0
SDA
Text GLabel 10500 6300 0    50   Input ~ 0
GND
Wire Wire Line
	10500 6000 10600 6000
Wire Wire Line
	10500 6200 10600 6200
Wire Wire Line
	10600 6300 10500 6300
Wire Wire Line
	10600 6100 10500 6100
Text GLabel 6000 5550 2    50   Input ~ 0
SCL
Text GLabel 6000 5450 2    50   Input ~ 0
SDA
Wire Wire Line
	6000 5450 5850 5450
Wire Wire Line
	5850 5550 6000 5550
Text GLabel 6000 5350 2    50   Input ~ 0
SHUTDOWN
$Comp
L 216_HC_Custom_Parts:Si4435FDY Q2
U 1 1 600A03B2
P 2650 1600
F 0 "Q2" H 2725 2025 50  0000 C CNN
F 1 "Si4435FDY" H 2725 1934 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.29x3mm" H 2650 1900 50  0001 C CNN
F 3 "" H 2650 1900 50  0001 C CNN
	1    2650 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1400 3100 1450
Connection ~ 3100 1500
Wire Wire Line
	3100 1500 3100 1600
Wire Wire Line
	3100 1600 3100 1700
Connection ~ 3100 1600
Wire Wire Line
	2350 1600 2350 1700
Wire Wire Line
	2350 1600 2350 1500
Connection ~ 2350 1600
Wire Wire Line
	2350 1500 1450 1500
Connection ~ 2350 1500
Wire Wire Line
	2750 1850 1950 1850
Wire Wire Line
	1950 1850 1950 1650
Wire Wire Line
	1950 1650 1550 1650
Connection ~ 1550 1650
Connection ~ 3100 1450
Wire Wire Line
	3100 1450 3100 1500
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 60144764
P 10300 1250
F 0 "J1" H 10328 1226 50  0000 L CNN
F 1 "12V Output" H 10328 1135 50  0000 L CNN
F 2 "Custom Part Library:SolderWire-2.5sqmm_1x02_P7.2mm_D2.4mm_OD3.6mm_SMD" H 10300 1250 50  0001 C CNN
F 3 "~" H 10300 1250 50  0001 C CNN
	1    10300 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 60145123
P 10300 1650
F 0 "J3" H 10328 1626 50  0000 L CNN
F 1 "5V Load Output" H 10328 1535 50  0000 L CNN
F 2 "Custom Part Library:SolderWire-2.5sqmm_1x02_P7.2mm_D2.4mm_OD3.6mm_SMD" H 10300 1650 50  0001 C CNN
F 3 "~" H 10300 1650 50  0001 C CNN
	1    10300 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5VL #PWR0118
U 1 1 60149436
P 9950 1650
F 0 "#PWR0118" H 9950 1500 50  0001 C CNN
F 1 "+5VL" H 9965 1823 50  0000 C CNN
F 2 "" H 9950 1650 50  0001 C CNN
F 3 "" H 9950 1650 50  0001 C CNN
	1    9950 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1650 10100 1650
$Comp
L power:+12V #PWR0119
U 1 1 601503E5
P 9950 1250
F 0 "#PWR0119" H 9950 1100 50  0001 C CNN
F 1 "+12V" H 9965 1423 50  0000 C CNN
F 2 "" H 9950 1250 50  0001 C CNN
F 3 "" H 9950 1250 50  0001 C CNN
	1    9950 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1250 10100 1250
$Comp
L power:GND #PWR0120
U 1 1 6015458D
P 9700 1350
F 0 "#PWR0120" H 9700 1100 50  0001 C CNN
F 1 "GND" H 9705 1177 50  0000 C CNN
F 2 "" H 9700 1350 50  0001 C CNN
F 3 "" H 9700 1350 50  0001 C CNN
	1    9700 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 60154DAD
P 9950 1750
F 0 "#PWR0121" H 9950 1500 50  0001 C CNN
F 1 "GND" H 9955 1577 50  0000 C CNN
F 2 "" H 9950 1750 50  0001 C CNN
F 3 "" H 9950 1750 50  0001 C CNN
	1    9950 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1750 10100 1750
Wire Wire Line
	10100 1350 9700 1350
Text Notes 2300 1100 0    50   ~ 0
Short Circuit Protection\n
Text Notes 3850 1100 0    50   ~ 0
Current Sensor\n
Text Notes 4750 1150 0    50   ~ 0
Voltage Sensor\n
Text Notes 4950 2700 0    50   ~ 0
Microcontroller
Text Notes 9200 3000 0    50   ~ 0
Indicators and Interface
$Comp
L 216_HC_Custom_Parts:Si4435FDY Q1
U 1 1 601D2397
P 6800 1500
F 0 "Q1" H 6875 1925 50  0000 C CNN
F 1 "Si4435FDY" H 6875 1834 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.29x3mm" H 6800 1800 50  0001 C CNN
F 3 "" H 6800 1800 50  0001 C CNN
	1    6800 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1500 6500 1600
Wire Wire Line
	6500 1500 6500 1450
Connection ~ 6500 1500
Wire Wire Line
	7250 1600 7250 1500
Wire Wire Line
	7250 1400 7250 1300
Connection ~ 7250 1400
Wire Wire Line
	7250 1500 7250 1450
Connection ~ 7250 1500
$Comp
L Device:R R2
U 1 1 601D23A5
P 6750 1850
F 0 "R2" V 6635 1850 50  0000 C CNN
F 1 "10k" V 6544 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6680 1850 50  0001 C CNN
F 3 "~" H 6750 1850 50  0001 C CNN
	1    6750 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 1850 6900 1750
Wire Wire Line
	6600 1850 6500 1850
Wire Wire Line
	6500 1850 6500 1600
Connection ~ 6500 1600
$Comp
L Device:Q_NPN_BEC Q3
U 1 1 601D23AF
P 7200 2300
F 0 "Q3" V 7528 2300 50  0000 C CNN
F 1 "BCW65" V 7437 2300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7400 2400 50  0001 C CNN
F 3 "~" H 7200 2300 50  0001 C CNN
	1    7200 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 1850 6900 2200
Wire Wire Line
	6900 2200 7000 2200
Connection ~ 6900 1850
$Comp
L power:GND #PWR0122
U 1 1 601D23B8
P 7400 2200
F 0 "#PWR0122" H 7400 1950 50  0001 C CNN
F 1 "GND" H 7405 2027 50  0000 C CNN
F 2 "" H 7400 2200 50  0001 C CNN
F 3 "" H 7400 2200 50  0001 C CNN
	1    7400 2200
	0    -1   -1   0   
$EndComp
Text Notes 7000 1000 2    50   ~ 0
Cutoff
$Comp
L Device:R R4
U 1 1 601D23C7
P 7200 2650
F 0 "R4" V 7407 2650 50  0000 C CNN
F 1 "500" V 7316 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7130 2650 50  0001 C CNN
F 3 "~" H 7200 2650 50  0001 C CNN
	1    7200 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 1450 6500 1450
Connection ~ 6500 1450
Wire Wire Line
	6500 1450 6500 1400
Text GLabel 7200 2850 0    50   Input ~ 0
V_CUTOFF
Wire Wire Line
	7200 2850 7200 2800
Text GLabel 6000 4150 2    50   Input ~ 0
V_CUTOFF
Wire Wire Line
	6000 4150 5850 4150
$Comp
L Regulator_Switching:LM2576S-5 U2
U 1 1 602070A2
P 2200 3250
F 0 "U2" H 2200 3617 50  0000 C CNN
F 1 "LM2576S-5" H 2200 3526 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 2200 3000 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2576.pdf" H 2200 3250 50  0001 C CNN
	1    2200 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 602181A1
P 1250 3300
F 0 "C5" H 1368 3346 50  0000 L CNN
F 1 "100uF Electrolytic" H 1368 3255 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10" H 1288 3150 50  0001 C CNN
F 3 "~" H 1250 3300 50  0001 C CNN
	1    1250 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3150 1700 3150
Wire Wire Line
	1250 3450 1250 3550
$Comp
L Device:D_Schottky D1
U 1 1 6022AE4C
P 2900 3500
F 0 "D1" V 2854 3580 50  0000 L CNN
F 1 "1N5822" V 2945 3580 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P15.24mm_Horizontal" H 2900 3500 50  0001 C CNN
F 3 "~" H 2900 3500 50  0001 C CNN
	1    2900 3500
	0    1    1    0   
$EndComp
$Comp
L Device:L L2
U 1 1 6022BE73
P 3150 3350
F 0 "L2" V 3350 3350 50  0000 C CNN
F 1 "100uH" V 3250 3350 50  0000 C CNN
F 2 "Inductor_SMD:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3150 3350 50  0001 C CNN
F 3 "~" H 3150 3350 50  0001 C CNN
	1    3150 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C7
U 1 1 6022C86A
P 3500 3500
F 0 "C7" H 3618 3546 50  0000 L CNN
F 1 "330uF Electrolytic" H 3618 3455 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x5.4" H 3538 3350 50  0001 C CNN
F 3 "~" H 3500 3500 50  0001 C CNN
	1    3500 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3350 3350 3350
Wire Wire Line
	3000 3350 2900 3350
Wire Wire Line
	2900 3350 2700 3350
Connection ~ 2900 3350
Wire Wire Line
	2700 3150 3350 3150
Wire Wire Line
	3350 3150 3350 3350
Connection ~ 3350 3350
Wire Wire Line
	3350 3350 3500 3350
Wire Wire Line
	3500 3650 2900 3650
Wire Wire Line
	2900 3650 2200 3650
Wire Wire Line
	2200 3650 2200 3550
Connection ~ 2900 3650
Connection ~ 2200 3550
$Comp
L power:GND #PWR0123
U 1 1 602539D3
P 2200 3650
F 0 "#PWR0123" H 2200 3400 50  0001 C CNN
F 1 "GND" H 2205 3477 50  0000 C CNN
F 2 "" H 2200 3650 50  0001 C CNN
F 3 "" H 2200 3650 50  0001 C CNN
	1    2200 3650
	1    0    0    -1  
$EndComp
Connection ~ 2200 3650
Wire Wire Line
	1250 3550 1700 3550
Wire Wire Line
	1700 3350 1700 3550
Connection ~ 1700 3550
Wire Wire Line
	1700 3550 2200 3550
$Comp
L power:+12V #PWR0124
U 1 1 60269053
P 8150 1450
F 0 "#PWR0124" H 8150 1300 50  0001 C CNN
F 1 "+12V" H 8165 1623 50  0000 C CNN
F 2 "" H 8150 1450 50  0001 C CNN
F 3 "" H 8150 1450 50  0001 C CNN
	1    8150 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1450 8150 1450
Connection ~ 7250 1450
Wire Wire Line
	7250 1450 7250 1400
$Comp
L Device:C C3
U 1 1 60270FC2
P 4150 2650
F 0 "C3" H 4265 2696 50  0000 L CNN
F 1 "1uF" H 4265 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4188 2500 50  0001 C CNN
F 3 "~" H 4150 2650 50  0001 C CNN
	1    4150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2500 4150 2350
Wire Wire Line
	4150 2350 4000 2350
Connection ~ 4000 2350
Wire Wire Line
	4000 2350 4000 2250
$Comp
L power:GND #PWR0125
U 1 1 60279750
P 4150 2800
F 0 "#PWR0125" H 4150 2550 50  0001 C CNN
F 1 "GND" H 4155 2627 50  0000 C CNN
F 2 "" H 4150 2800 50  0001 C CNN
F 3 "" H 4150 2800 50  0001 C CNN
	1    4150 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6027A957
P 4750 1900
F 0 "C1" H 4865 1946 50  0000 L CNN
F 1 "60nF" H 5050 1800 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4788 1750 50  0001 C CNN
F 3 "~" H 4750 1900 50  0001 C CNN
	1    4750 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1750 4950 1750
Wire Wire Line
	4750 2050 4950 2050
Connection ~ 4950 2050
$Comp
L Regulator_Switching:LM2576S-5 U3
U 1 1 602A0E95
P 2150 4400
F 0 "U3" H 2150 4767 50  0000 C CNN
F 1 "LM2576S-5" H 2150 4676 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 2150 4150 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2576.pdf" H 2150 4400 50  0001 C CNN
	1    2150 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C8
U 1 1 602A0E9B
P 1200 4450
F 0 "C8" H 1318 4496 50  0000 L CNN
F 1 "100uF Electrolytic" H 1318 4405 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10" H 1238 4300 50  0001 C CNN
F 3 "~" H 1200 4450 50  0001 C CNN
	1    1200 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0126
U 1 1 602A0EA1
P 1200 4300
F 0 "#PWR0126" H 1200 4150 50  0001 C CNN
F 1 "+12V" H 1215 4473 50  0000 C CNN
F 2 "" H 1200 4300 50  0001 C CNN
F 3 "" H 1200 4300 50  0001 C CNN
	1    1200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4300 1650 4300
Connection ~ 1200 4300
Wire Wire Line
	1200 4600 1200 4700
$Comp
L Device:D_Schottky D3
U 1 1 602A0EAA
P 2850 4650
F 0 "D3" V 2804 4730 50  0000 L CNN
F 1 "1N5822" V 2895 4730 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P15.24mm_Horizontal" H 2850 4650 50  0001 C CNN
F 3 "~" H 2850 4650 50  0001 C CNN
	1    2850 4650
	0    1    1    0   
$EndComp
$Comp
L Device:L L3
U 1 1 602A0EB0
P 3100 4500
F 0 "L3" V 3300 4500 50  0000 C CNN
F 1 "330uH" V 3200 4500 50  0000 C CNN
F 2 "Custom Part Library:Inductor-Murata-6000B" H 3100 4500 50  0001 C CNN
F 3 "~" H 3100 4500 50  0001 C CNN
	1    3100 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C9
U 1 1 602A0EB6
P 3450 4650
F 0 "C9" H 3568 4696 50  0000 L CNN
F 1 "330uF Electrolytic" H 3568 4605 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x5.4" H 3488 4500 50  0001 C CNN
F 3 "~" H 3450 4650 50  0001 C CNN
	1    3450 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4500 3300 4500
Wire Wire Line
	2950 4500 2850 4500
Wire Wire Line
	2850 4500 2650 4500
Connection ~ 2850 4500
Wire Wire Line
	2650 4300 3300 4300
Wire Wire Line
	3300 4300 3300 4500
Connection ~ 3300 4500
Wire Wire Line
	3300 4500 3450 4500
Wire Wire Line
	3450 4800 2850 4800
Wire Wire Line
	2850 4800 2150 4800
Wire Wire Line
	2150 4800 2150 4700
Connection ~ 2850 4800
Connection ~ 2150 4700
$Comp
L power:GND #PWR0127
U 1 1 602A0EC9
P 2150 4800
F 0 "#PWR0127" H 2150 4550 50  0001 C CNN
F 1 "GND" H 2155 4627 50  0000 C CNN
F 2 "" H 2150 4800 50  0001 C CNN
F 3 "" H 2150 4800 50  0001 C CNN
	1    2150 4800
	1    0    0    -1  
$EndComp
Connection ~ 2150 4800
$Comp
L power:+5VL #PWR0128
U 1 1 602A0ED0
P 3450 4500
F 0 "#PWR0128" H 3450 4350 50  0001 C CNN
F 1 "+5VL" H 3465 4673 50  0000 C CNN
F 2 "" H 3450 4500 50  0001 C CNN
F 3 "" H 3450 4500 50  0001 C CNN
	1    3450 4500
	1    0    0    -1  
$EndComp
Connection ~ 3450 4500
Wire Wire Line
	1200 4700 1650 4700
Wire Wire Line
	1650 4500 1650 4700
Connection ~ 1650 4700
Wire Wire Line
	1650 4700 2150 4700
Wire Wire Line
	3350 1450 3350 2450
Wire Wire Line
	3350 2450 1250 2450
Wire Wire Line
	1250 2450 1250 3150
Wire Wire Line
	3350 1450 3100 1450
Connection ~ 1250 3150
$Comp
L power:+5V #PWR0129
U 1 1 602BDB3A
P 3500 3350
F 0 "#PWR0129" H 3500 3200 50  0001 C CNN
F 1 "+5V" H 3515 3523 50  0000 C CNN
F 2 "" H 3500 3350 50  0001 C CNN
F 3 "" H 3500 3350 50  0001 C CNN
	1    3500 3350
	1    0    0    -1  
$EndComp
Connection ~ 3500 3350
Text GLabel 1100 7550 0    50   Input ~ 0
3.3V_Enable
Wire Wire Line
	1100 7550 1100 7250
Text GLabel 6000 4350 2    50   Input ~ 0
3.3V_Enable
Wire Wire Line
	6000 4350 5850 4350
$Comp
L power:+5V #PWR0130
U 1 1 6023A712
P 5300 2900
F 0 "#PWR0130" H 5300 2750 50  0001 C CNN
F 1 "+5V" H 5315 3073 50  0000 C CNN
F 2 "" H 5300 2900 50  0001 C CNN
F 3 "" H 5300 2900 50  0001 C CNN
	1    5300 2900
	1    0    0    -1  
$EndComp
Connection ~ 5300 2900
Wire Wire Line
	5300 2900 5350 2900
Wire Wire Line
	4300 1450 4300 1400
Wire Wire Line
	4300 1400 3350 1400
Wire Wire Line
	3350 1400 3350 1450
Connection ~ 3350 1450
Wire Wire Line
	4000 1450 4000 1150
Wire Wire Line
	4000 1150 4950 1150
Wire Wire Line
	4950 1150 4950 1450
Connection ~ 4950 1450
Wire Wire Line
	4900 3050 4950 3050
Wire Wire Line
	5250 2900 5250 3050
Connection ~ 5250 3050
Wire Wire Line
	5250 3050 5250 3350
Wire Wire Line
	5850 5350 6000 5350
$Comp
L power:GND #PWR?
U 1 1 604775D2
P 10550 3850
F 0 "#PWR?" H 10550 3600 50  0001 C CNN
F 1 "GND" H 10555 3677 50  0000 C CNN
F 2 "" H 10550 3850 50  0001 C CNN
F 3 "" H 10550 3850 50  0001 C CNN
	1    10550 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 3850 10400 3850
Connection ~ 10400 3850
$EndSCHEMATC
