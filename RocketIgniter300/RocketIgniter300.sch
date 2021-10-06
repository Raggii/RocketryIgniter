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
Text GLabel 4550 3200 3    50   BiDi ~ 0
Tx
Text GLabel 5150 3200 3    50   BiDi ~ 0
Rx
Text GLabel 4750 3250 3    50   BiDi ~ 0
CanHigh
Text GLabel 5350 3200 3    50   BiDi ~ 0
CanLow
Text GLabel 5050 3200 3    50   Input ~ 0
EnableUART
Text Notes 3850 2150 0    50   ~ 0
Check the operation of this\nWe want both A and B to switch when UART is enabled
$Comp
L RocketIgniter300-rescue:GND-power #PWR01
U 1 1 615A4C91
P 5650 2800
F 0 "#PWR01" H 5650 2550 50  0001 C CNN
F 1 "GND" H 5655 2627 50  0000 C CNN
F 2 "" H 5650 2800 50  0001 C CNN
F 3 "" H 5650 2800 50  0001 C CNN
	1    5650 2800
	1    0    0    -1  
$EndComp
Text GLabel 4250 2800 0    50   Input ~ 0
5V
Text Notes 9900 1200 0    50   ~ 0
These are 3.3 - 3.6V \nThis simplifys stuff a whole bunch
Text Notes 600  5750 0    50   ~ 0
Battery system
Wire Notes Line
	550  5600 2000 5600
Wire Notes Line
	2000 5600 2000 7600
Wire Notes Line
	2000 7600 550  7600
Wire Notes Line
	550  7600 550  5600
$Comp
L RocketIgniter300-rescue:MCP2515-xSO-Interface_CAN_LIN U1
U 1 1 615AC1EE
P 1500 1550
F 0 "U1" H 1100 2400 50  0000 C CNN
F 1 "MCP2515-xSO" H 1100 2300 50  0000 C CNN
F 2 "Package_SO:SOIC-18W_7.5x11.6mm_P1.27mm" H 1500 650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21801e.pdf" H 1600 750 50  0001 C CNN
	1    1500 1550
	1    0    0    -1  
$EndComp
Wire Notes Line
	2250 5600 2250 7600
Wire Notes Line
	2250 7600 5750 7600
Wire Notes Line
	5750 7600 5750 5600
Wire Notes Line
	5750 5600 2250 5600
Text Notes 2350 5750 0    50   ~ 0
Ignition system
Wire Notes Line
	5800 6400 8300 6400
Text Notes 5900 4650 0    50   ~ 0
Battery Regulation.\nSee falstad\n- Maybe use a voltage regulator to connect to MCU\n- Use MCU to control 5V regulation for Can bus
Text Notes 2350 6050 0    50   ~ 0
MOSFets which can handle 20A\nHow do we stop brown outs
Text Notes 600  6050 0    50   ~ 0
Something between 3.7 - 7.4V\nCan change at anytime:\n- not actually added to board
Text Notes 2350 6300 0    50   ~ 0
Do we want this on the CanBus? \n- Could create disturbance which would be inconveniant
Wire Wire Line
	7300 800  7300 950 
$Comp
L RocketIgniter300-rescue:R-Device R1
U 1 1 6159EA0F
P 7300 1100
F 0 "R1" H 7370 1146 50  0000 L CNN
F 1 "12k" H 7370 1055 50  0000 L CNN
F 2 "" V 7230 1100 50  0001 C CNN
F 3 "~" H 7300 1100 50  0001 C CNN
	1    7300 1100
	1    0    0    -1  
$EndComp
$Comp
L RocketIgniter300-rescue:R-Device R2
U 1 1 6159F69F
P 7300 1400
F 0 "R2" H 7370 1446 50  0000 L CNN
F 1 "20k" H 7370 1355 50  0000 L CNN
F 2 "" V 7230 1400 50  0001 C CNN
F 3 "~" H 7300 1400 50  0001 C CNN
	1    7300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1250 7600 1250
Connection ~ 7300 1250
Wire Wire Line
	7300 1550 7300 1750
$Comp
L RocketIgniter300-rescue:GND-power #PWR03
U 1 1 615A15B0
P 7300 1750
F 0 "#PWR03" H 7300 1500 50  0001 C CNN
F 1 "GND" H 7305 1577 50  0000 C CNN
F 2 "" H 7300 1750 50  0001 C CNN
F 3 "" H 7300 1750 50  0001 C CNN
	1    7300 1750
	1    0    0    -1  
$EndComp
$Comp
L RocketIgniter300-rescue:VCC-power #PWR02
U 1 1 615A1763
P 7300 800
F 0 "#PWR02" H 7300 650 50  0001 C CNN
F 1 "VCC" H 7315 973 50  0000 C CNN
F 2 "" H 7300 800 50  0001 C CNN
F 3 "" H 7300 800 50  0001 C CNN
	1    7300 800 
	1    0    0    -1  
$EndComp
Text Notes 7450 800  0    50   ~ 0
Voltage Measuring
Wire Notes Line
	8350 550  8350 2100
Wire Notes Line
	6850 2100 6850 550 
Text GLabel 7600 1250 2    50   Output ~ 0
VoltageMeasure
Wire Notes Line
	6850 2100 8350 2100
Wire Notes Line
	6850 550  8350 550 
Wire Wire Line
	4500 1050 4450 1050
Text Notes 4450 650  2    50   ~ 0
Can High (TX)
Text Notes 4450 1800 2    50   ~ 0
Can Low (RX)
$Comp
L RocketIgniter300-rescue:R-Device terminatingResistor2
U 1 1 6159DE36
P 5200 1050
F 0 "terminatingResistor2" V 5300 350 50  0000 L CNN
F 1 "120" V 5400 800 50  0000 L CNN
F 2 "" V 5130 1050 50  0001 C CNN
F 3 "~" H 5200 1050 50  0001 C CNN
	1    5200 1050
	0    -1   -1   0   
$EndComp
Text Notes 5900 4950 0    50   ~ 0
- Need a Voltage regulator!\n- Also need another way to get to 5V for the can line\n- Will the 5V break the microcontroller?
$Comp
L RocketIgniter300-rescue:Crystal-Device 16MHz
U 1 1 615ACE3B
P 7600 2800
F 0 "16MHz" H 7600 3068 50  0000 C CNN
F 1 "Crystal" H 7600 2977 50  0000 C CNN
F 2 "" H 7600 2800 50  0001 C CNN
F 3 "~" H 7600 2800 50  0001 C CNN
	1    7600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2800 7300 2800
Wire Wire Line
	7300 2800 7300 3050
Wire Wire Line
	7750 2800 7900 2800
Wire Wire Line
	7900 2800 7900 3050
$Comp
L RocketIgniter300-rescue:C-Device 22pF1
U 1 1 615AEDFD
P 7300 3200
F 0 "22pF1" H 7415 3246 50  0000 L CNN
F 1 "C" H 7415 3155 50  0000 L CNN
F 2 "" H 7338 3050 50  0001 C CNN
F 3 "~" H 7300 3200 50  0001 C CNN
	1    7300 3200
	1    0    0    -1  
$EndComp
$Comp
L RocketIgniter300-rescue:C-Device 22pF2
U 1 1 615AF477
P 7900 3200
F 0 "22pF2" H 8015 3246 50  0000 L CNN
F 1 "C" H 8015 3155 50  0000 L CNN
F 2 "" H 7938 3050 50  0001 C CNN
F 3 "~" H 7900 3200 50  0001 C CNN
	1    7900 3200
	1    0    0    -1  
$EndComp
$Comp
L RocketIgniter300-rescue:GND-power #PWR04
U 1 1 615AFFEE
P 7300 3350
F 0 "#PWR04" H 7300 3100 50  0001 C CNN
F 1 "GND" H 7305 3177 50  0000 C CNN
F 2 "" H 7300 3350 50  0001 C CNN
F 3 "" H 7300 3350 50  0001 C CNN
	1    7300 3350
	1    0    0    -1  
$EndComp
$Comp
L RocketIgniter300-rescue:GND-power #PWR05
U 1 1 615B04B5
P 7900 3350
F 0 "#PWR05" H 7900 3100 50  0001 C CNN
F 1 "GND" H 7905 3177 50  0000 C CNN
F 2 "" H 7900 3350 50  0001 C CNN
F 3 "" H 7900 3350 50  0001 C CNN
	1    7900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2800 7300 2400
Connection ~ 7300 2800
Wire Wire Line
	7900 2800 7900 2400
Connection ~ 7900 2800
Text GLabel 7300 2400 0    50   Output ~ 0
ClockPin1
Text GLabel 7900 2400 2    50   Output ~ 0
ClockPin2
Wire Notes Line
	6850 3750 6850 2200
Wire Notes Line
	6850 2200 8400 2200
Wire Notes Line
	8400 3750 6850 3750
Wire Notes Line
	8400 2200 8400 3750
Text Notes 6900 3700 0    50   ~ 0
Crystal Oscillator
Text Notes 650  6350 0    50   ~ 0
Just some screw pins tbh\n- Do we need 1 or 2 tho?\n- just one
Text GLabel 4750 1250 2    50   Input ~ 0
EnableUART
Wire Notes Line
	5800 4250 5800 6400
Text Notes 3150 3950 0    50   ~ 0
Can bus line with multiplexer\n- Has Tri State Buffers to convert between Uart and CanBus
$Comp
L RocketIgniter300-rescue:74AUC2G125-74xGxx U4
U 1 1 61597BCD
P 4750 1050
F 0 "U4" H 5050 850 50  0000 R CNN
F 1 "74AUC2G125" H 5200 950 50  0000 R CNN
F 2 "" H 4750 1050 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 4750 1050 50  0001 C CNN
	1    4750 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 1550 4450 1550
Wire Wire Line
	4450 1550 4450 1050
Wire Wire Line
	4750 1550 4750 2250
Wire Wire Line
	5050 2250 5050 1550
Wire Wire Line
	5050 1550 5350 1550
Wire Wire Line
	5350 1550 5350 1050
Text GLabel 10100 3800 2    50   BiDi ~ 0
Tx
Text GLabel 10100 3700 2    50   BiDi ~ 0
Rx
Text GLabel 10100 3400 2    50   Output ~ 0
EnableUART
Text GLabel 10100 2000 2    50   Input ~ 0
SCK
Text GLabel 10100 1900 2    50   Input ~ 0
SI
Text GLabel 10100 1800 2    50   Input ~ 0
SO
Text GLabel 10100 1700 2    50   Input ~ 0
CS
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U?
U 1 1 615D7F83
P 9500 2700
F 0 "U?" H 9500 4550 50  0000 R CNN
F 1 "ATmega328P-PU" H 9800 4450 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 9500 2700 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 9500 2700 50  0001 C CNN
	1    9500 2700
	1    0    0    -1  
$EndComp
Text GLabel 10100 3200 2    50   BiDi ~ 0
Programming1
Text GLabel 10100 3300 2    50   BiDi ~ 0
Programming2
$Comp
L power:GND #PWR?
U 1 1 615DC1F6
P 9500 4200
F 0 "#PWR?" H 9500 3950 50  0001 C CNN
F 1 "GND" H 9505 4027 50  0000 C CNN
F 2 "" H 9500 4200 50  0001 C CNN
F 3 "" H 9500 4200 50  0001 C CNN
	1    9500 4200
	1    0    0    -1  
$EndComp
Text GLabel 9500 1200 1    50   Input ~ 0
5V
Text GLabel 9600 1200 1    50   Input ~ 0
5V
Text GLabel 10100 2100 2    50   Input ~ 0
ClockPin1
Text GLabel 10100 2200 2    50   Input ~ 0
ClockPin2
Text Notes 700  4350 0    50   ~ 0
Programmer\n- Arduino as ISP
Wire Notes Line
	650  5350 650  4150
Text GLabel 1400 4750 0    50   BiDi ~ 0
Programming1
Text GLabel 1400 5100 0    50   BiDi ~ 0
Programming2
Wire Notes Line
	3300 4150 3300 5350
Text GLabel 10100 2400 2    50   Input ~ 0
VoltageMeasure
Text GLabel 10100 3000 2    50   BiDi ~ 0
ProgramReset
Text GLabel 1400 4500 0    50   BiDi ~ 0
ProgramReset
$Comp
L Connector_Generic_MountingPin:Conn_01x03_MountingPin J?
U 1 1 615E532D
P 3050 4600
F 0 "J?" H 3000 4950 50  0000 L CNN
F 1 "ProgramingPins" H 2700 4850 50  0000 L CNN
F 2 "" H 3050 4600 50  0001 C CNN
F 3 "~" H 3050 4600 50  0001 C CNN
	1    3050 4600
	1    0    0    -1  
$EndComp
Wire Notes Line
	650  5350 3300 5350
Wire Notes Line
	650  4150 3300 4150
$Comp
L power:GND #PWR?
U 1 1 615E7EC5
P 2100 5100
F 0 "#PWR?" H 2100 4850 50  0001 C CNN
F 1 "GND" H 2250 5050 50  0000 C CNN
F 2 "" H 2100 5100 50  0001 C CNN
F 3 "" H 2100 5100 50  0001 C CNN
	1    2100 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 615E8506
P 2100 4950
F 0 "R?" H 2170 4996 50  0000 L CNN
F 1 "R" H 2170 4905 50  0000 L CNN
F 2 "" V 2030 4950 50  0001 C CNN
F 3 "~" H 2100 4950 50  0001 C CNN
	1    2100 4950
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:DG413xUE DebugSwitch
U 1 1 615EB33B
P 2100 4600
F 0 "DebugSwitch" H 2100 4867 50  0000 C CNN
F 1 "DG413xUE" H 2100 4776 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 2100 4500 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DG411-DG413.pdf" H 2100 4600 50  0001 C CNN
	1    2100 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic_MountingPin:Conn_01x02_MountingPin J?
U 1 1 615F14F0
P 1650 6700
F 0 "J?" H 1738 6614 50  0000 L CNN
F 1 "PowerMountingPin" H 1200 6850 50  0000 L CNN
F 2 "" H 1650 6700 50  0001 C CNN
F 3 "~" H 1650 6700 50  0001 C CNN
	1    1650 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6800 1100 6800
Wire Wire Line
	1100 6800 1100 7150
Text GLabel 1050 6700 0    50   Output ~ 0
PowerLipo
Wire Wire Line
	1450 6700 1050 6700
$Comp
L power:GND #PWR?
U 1 1 615F4083
P 1100 7150
F 0 "#PWR?" H 1100 6900 50  0001 C CNN
F 1 "GND" H 1105 6977 50  0000 C CNN
F 2 "" H 1100 7150 50  0001 C CNN
F 3 "" H 1100 7150 50  0001 C CNN
	1    1100 7150
	1    0    0    -1  
$EndComp
Wire Notes Line
	5800 4250 8300 4250
Wire Notes Line
	8300 4250 8300 6400
$Comp
L Connector_Generic_MountingPin:Conn_01x03_MountingPin J2
U 1 1 615F5E75
P 8000 5550
F 0 "J2" H 7950 5750 50  0000 L CNN
F 1 "S9V11F5" H 7800 5850 50  0000 L CNN
F 2 "" H 8000 5550 50  0001 C CNN
F 3 "~" H 8000 5550 50  0001 C CNN
	1    8000 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5650 7650 5650
Wire Wire Line
	7650 5650 7650 6050
Wire Wire Line
	7800 5550 7200 5550
Wire Wire Line
	7200 5550 7200 5800
Text GLabel 6550 5450 0    50   Output ~ 0
5V
Wire Wire Line
	6550 5450 7800 5450
Wire Wire Line
	4450 1050 4200 1050
Wire Wire Line
	4200 1050 4200 700 
Wire Wire Line
	4200 700  4650 700 
Wire Wire Line
	4650 700  4650 600 
Connection ~ 4450 1050
$Comp
L Analog_Switch:ADG884xCP U?
U 1 1 615FC555
P 4950 2800
F 0 "U?" V 5250 2000 50  0000 R CNN
F 1 "ADG884xCP" V 5150 1950 50  0000 R CNN
F 2 "Package_CSP:LFCSP-WD-10-1EP_3x3mm_P0.5mm_EP1.64x2.38mm" H 4950 2800 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADG884.pdf" H 4950 2800 50  0001 C CNN
	1    4950 2800
	0    -1   -1   0   
$EndComp
Text GLabel 4850 3200 3    50   Input ~ 0
EnableUART
Wire Wire Line
	4750 2250 4650 2250
Wire Wire Line
	4650 2250 4650 2400
Wire Wire Line
	5050 2250 5250 2250
Wire Wire Line
	5250 2250 5250 2400
Text Notes 5900 2900 0    50   ~ 0
Note\n- Does this work??
Wire Notes Line
	3050 550  6750 550 
Wire Notes Line
	6750 550  6750 4100
Wire Notes Line
	6750 4100 3050 4100
Wire Notes Line
	3050 550  3050 4100
$Comp
L power:GND #PWR?
U 1 1 6160BE9B
P 7200 5800
F 0 "#PWR?" H 7200 5550 50  0001 C CNN
F 1 "GND" H 7205 5627 50  0000 C CNN
F 2 "" H 7200 5800 50  0001 C CNN
F 3 "" H 7200 5800 50  0001 C CNN
	1    7200 5800
	1    0    0    -1  
$EndComp
Text GLabel 7650 6050 2    50   Input ~ 0
PowerLipo
Text Notes 2900 2150 1    50   ~ 0
Can interface MCP2515\nOnly needed for lesser micro controllers
Wire Notes Line
	600  550  2950 550 
Wire Notes Line
	600  3900 2950 3900
Text Notes 1050 4100 0    50   ~ 0
This has a 5V supply!!\nCan regulate using the MUC
$Comp
L RocketIgniter300-rescue:MCP2551-I-P-Interface_CAN_LIN U3
U 1 1 615AAE5D
P 1700 3250
F 0 "U3" H 2050 3750 50  0000 C CNN
F 1 "MCP2551-I-P" H 2050 3650 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 1700 2750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 1700 3250 50  0001 C CNN
	1    1700 3250
	1    0    0    -1  
$EndComp
Wire Notes Line
	2950 550  2950 3900
Wire Notes Line
	600  550  600  3900
Text GLabel 900  1250 0    50   Input ~ 0
SCK
Text GLabel 900  950  0    50   Input ~ 0
SI
Text GLabel 900  1050 0    50   Input ~ 0
SO
Text GLabel 900  1150 0    50   Input ~ 0
CS
Wire Wire Line
	1200 3450 1100 3450
Wire Wire Line
	1100 3450 1100 3650
$Comp
L power:GND #PWR?
U 1 1 61617565
P 1100 3650
F 0 "#PWR?" H 1100 3400 50  0001 C CNN
F 1 "GND" H 1105 3477 50  0000 C CNN
F 2 "" H 1100 3650 50  0001 C CNN
F 3 "" H 1100 3650 50  0001 C CNN
	1    1100 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6161774C
P 1700 3650
F 0 "#PWR?" H 1700 3400 50  0001 C CNN
F 1 "GND" H 1705 3477 50  0000 C CNN
F 2 "" H 1700 3650 50  0001 C CNN
F 3 "" H 1700 3650 50  0001 C CNN
	1    1700 3650
	1    0    0    -1  
$EndComp
Text GLabel 1700 2850 1    50   Input ~ 0
5V
Text GLabel 2200 3150 2    50   BiDi ~ 0
CanHigh
Text GLabel 2200 3350 2    50   BiDi ~ 0
CanLow
Wire Wire Line
	1050 2650 2450 2650
Wire Wire Line
	2450 1050 2100 1050
Wire Wire Line
	2450 1050 2450 2650
Wire Wire Line
	1200 3050 1050 3050
Wire Wire Line
	1050 3050 1050 2650
Wire Wire Line
	1200 3150 950  3150
Wire Wire Line
	950  3150 950  2550
Wire Wire Line
	950  2550 2350 2550
Wire Wire Line
	2350 2550 2350 950 
Wire Wire Line
	2350 950  2100 950 
NoConn ~ 900  1950
NoConn ~ 2100 1950
NoConn ~ 2100 2050
NoConn ~ 2100 1750
NoConn ~ 2100 1850
Wire Wire Line
	2100 2150 2550 2150
Wire Wire Line
	2550 2150 2550 1550
Wire Wire Line
	2550 1250 2550 750 
Wire Wire Line
	2550 750  1500 750 
$EndSCHEMATC
