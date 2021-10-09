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
Text Notes 650  5700 0    50   ~ 0
Battery system
Wire Notes Line
	600  5550 2050 5550
Wire Notes Line
	2050 5550 2050 7550
Wire Notes Line
	2050 7550 600  7550
Wire Notes Line
	600  7550 600  5550
Text Notes 650  6000 0    50   ~ 0
Something between 3.7 - 7.4V\nCan change at anytime:\n- not actually added to board
Wire Wire Line
	4200 5800 4200 5950
$Comp
L RocketIgniter300-rescue:R-Device R1
U 1 1 6159EA0F
P 4200 6100
F 0 "R1" H 4270 6146 50  0000 L CNN
F 1 "12k" H 4270 6055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4130 6100 50  0001 C CNN
F 3 "~" H 4200 6100 50  0001 C CNN
	1    4200 6100
	1    0    0    -1  
$EndComp
$Comp
L RocketIgniter300-rescue:R-Device R2
U 1 1 6159F69F
P 4200 6400
F 0 "R2" H 4270 6446 50  0000 L CNN
F 1 "10k" H 4270 6355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4130 6400 50  0001 C CNN
F 3 "~" H 4200 6400 50  0001 C CNN
	1    4200 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 6250 4500 6250
Connection ~ 4200 6250
$Comp
L RocketIgniter300-rescue:GND-power #PWR03
U 1 1 615A15B0
P 4200 6850
F 0 "#PWR03" H 4200 6600 50  0001 C CNN
F 1 "GND" H 4205 6677 50  0000 C CNN
F 2 "" H 4200 6850 50  0001 C CNN
F 3 "" H 4200 6850 50  0001 C CNN
	1    4200 6850
	1    0    0    -1  
$EndComp
$Comp
L RocketIgniter300-rescue:VCC-power #PWR02
U 1 1 615A1763
P 4200 5800
F 0 "#PWR02" H 4200 5650 50  0001 C CNN
F 1 "VCC" H 4215 5973 50  0000 C CNN
F 2 "" H 4200 5800 50  0001 C CNN
F 3 "" H 4200 5800 50  0001 C CNN
	1    4200 5800
	1    0    0    -1  
$EndComp
Text Notes 4500 5700 0    50   ~ 0
Voltage Measuring
Wire Notes Line
	5250 5550 5250 7100
Wire Notes Line
	3750 7100 3750 5550
Text GLabel 4500 6250 2    50   Output ~ 0
VoltageMeasure
Wire Notes Line
	3750 7100 5250 7100
Wire Notes Line
	3750 5550 5250 5550
Wire Notes Line
	2150 7100 2150 5550
Wire Notes Line
	3650 5550 3650 7100
Text Notes 2200 7050 0    50   ~ 0
Crystal Oscillator
Text GLabel 7550 4000 2    50   BiDi ~ 0
Tx
Text GLabel 7550 3900 2    50   BiDi ~ 0
Rx
Text GLabel 7550 3600 2    50   Output ~ 0
EnableUART
Text GLabel 7550 2200 2    50   Input ~ 0
SCK
Text GLabel 7550 2100 2    50   Input ~ 0
SI
Text GLabel 7550 2000 2    50   Input ~ 0
SO
Text GLabel 7550 1900 2    50   Input ~ 0
CS
$Comp
L RocketIgniter300-rescue:ATmega328P-PU-MCU_Microchip_ATmega U5
U 1 1 615D7F83
P 6950 2900
F 0 "U5" H 6950 4750 50  0000 R CNN
F 1 "ATmega328P-PU" H 7250 4650 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 6950 2900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 6950 2900 50  0001 C CNN
	1    6950 2900
	1    0    0    -1  
$EndComp
Text GLabel 7550 3400 2    50   BiDi ~ 0
Programming1
Text GLabel 7550 3500 2    50   BiDi ~ 0
Programming2
$Comp
L RocketIgniter300-rescue:GND-power #PWR014
U 1 1 615DC1F6
P 6950 4400
F 0 "#PWR014" H 6950 4150 50  0001 C CNN
F 1 "GND" H 6955 4227 50  0000 C CNN
F 2 "" H 6950 4400 50  0001 C CNN
F 3 "" H 6950 4400 50  0001 C CNN
	1    6950 4400
	1    0    0    -1  
$EndComp
Text GLabel 6950 1400 1    50   Input ~ 0
5V
Text GLabel 7050 1400 1    50   Input ~ 0
5V
Text GLabel 7550 2300 2    50   Input ~ 0
ClockPin1
Text GLabel 7550 2400 2    50   Input ~ 0
ClockPin2
Text GLabel 7550 2600 2    50   Input ~ 0
VoltageMeasure
$Comp
L RocketIgniter300-rescue:Conn_01x02_MountingPin-Connector_Generic_MountingPin J1
U 1 1 615F14F0
P 1700 6450
F 0 "J1" H 1788 6364 50  0000 L CNN
F 1 "PowerMountingPin" H 1250 6600 50  0000 L CNN
F 2 "" H 1700 6450 50  0001 C CNN
F 3 "~" H 1700 6450 50  0001 C CNN
	1    1700 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6550 1150 6550
Wire Wire Line
	1150 6550 1150 6900
Text GLabel 1100 6450 0    50   Output ~ 0
PowerLipo
Wire Wire Line
	1500 6450 1100 6450
$Comp
L RocketIgniter300-rescue:GND-power #PWR06
U 1 1 615F4083
P 1150 6900
F 0 "#PWR06" H 1150 6650 50  0001 C CNN
F 1 "GND" H 1155 6727 50  0000 C CNN
F 2 "" H 1150 6900 50  0001 C CNN
F 3 "" H 1150 6900 50  0001 C CNN
	1    1150 6900
	1    0    0    -1  
$EndComp
Text GLabel 3200 5750 2    50   Output ~ 0
ClockPin2
Text GLabel 2600 5750 0    50   Output ~ 0
ClockPin1
Connection ~ 3200 6150
Wire Wire Line
	3200 6150 3200 5750
Connection ~ 2600 6150
Wire Wire Line
	2600 6150 2600 5750
$Comp
L RocketIgniter300-rescue:GND-power #PWR05
U 1 1 615B04B5
P 2900 6700
F 0 "#PWR05" H 2900 6450 50  0001 C CNN
F 1 "GND" H 2905 6527 50  0000 C CNN
F 2 "" H 2900 6700 50  0001 C CNN
F 3 "" H 2900 6700 50  0001 C CNN
	1    2900 6700
	1    0    0    -1  
$EndComp
$Comp
L RocketIgniter300-rescue:C-Device clockC1
U 1 1 615AF477
P 3200 6550
F 0 "clockC1" H 3315 6596 50  0000 L CNN
F 1 "22pF" H 3315 6505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 3238 6400 50  0001 C CNN
F 3 "~" H 3200 6550 50  0001 C CNN
	1    3200 6550
	1    0    0    -1  
$EndComp
$Comp
L RocketIgniter300-rescue:C-Device clockC2
U 1 1 615AEDFD
P 2600 6550
F 0 "clockC2" H 2715 6596 50  0000 L CNN
F 1 "22pF" H 2715 6505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 2638 6400 50  0001 C CNN
F 3 "~" H 2600 6550 50  0001 C CNN
	1    2600 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6150 3200 6400
Wire Wire Line
	3050 6150 3200 6150
Wire Wire Line
	2600 6150 2600 6400
Wire Wire Line
	2750 6150 2600 6150
$Comp
L RocketIgniter300-rescue:Crystal-Device 16MHz1
U 1 1 615ACE3B
P 2900 6150
F 0 "16MHz1" H 2900 6418 50  0000 C CNN
F 1 "Crystal" H 2900 6327 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 2900 6150 50  0001 C CNN
F 3 "~" H 2900 6150 50  0001 C CNN
	1    2900 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6700 3200 6700
Wire Wire Line
	2900 6700 2600 6700
Connection ~ 2900 6700
Wire Notes Line
	2950 4250 5600 4250
Wire Notes Line
	2950 5450 5600 5450
Wire Notes Line
	5600 4250 5600 5450
Text GLabel 3650 4950 0    50   BiDi ~ 0
Programming2
Text GLabel 3650 4750 0    50   BiDi ~ 0
Programming1
Wire Notes Line
	2950 5450 2950 4250
Text Notes 4850 5400 0    50   ~ 0
Programmer\n- Arduino as ISP
$Comp
L RocketIgniter300-rescue:R-Device R4
U 1 1 6162578B
P 4200 6700
F 0 "R4" H 4270 6746 50  0000 L CNN
F 1 "10k" H 4270 6655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4130 6700 50  0001 C CNN
F 3 "~" H 4200 6700 50  0001 C CNN
	1    4200 6700
	1    0    0    -1  
$EndComp
Wire Notes Line
	5700 4700 8750 4700
Wire Notes Line
	8750 600  8750 4700
Text Notes 5800 800  0    50   ~ 0
Microcontroller Unit
Text Notes 700  4450 0    50   ~ 0
Battery Regulation.\n- Using 5V BuckBoost Converter\n
Wire Notes Line
	600  4250 2850 4250
Text GLabel 2050 5350 0    50   Input ~ 0
PowerLipo
$Comp
L RocketIgniter300-rescue:GND-power #PWR08
U 1 1 6160BE9B
P 1300 5100
F 0 "#PWR08" H 1300 4850 50  0001 C CNN
F 1 "GND" H 1305 4927 50  0000 C CNN
F 2 "" H 1300 5100 50  0001 C CNN
F 3 "" H 1300 5100 50  0001 C CNN
	1    1300 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4750 2200 4750
Text GLabel 950  4750 0    50   Output ~ 0
5V
Wire Wire Line
	1300 4850 1300 5100
Wire Wire Line
	2050 4950 2050 5350
Wire Wire Line
	2200 4950 2050 4950
$Comp
L RocketIgniter300-rescue:Conn_01x03_MountingPin-Connector_Generic_MountingPin J2
U 1 1 615F5E75
P 2400 4850
F 0 "J2" H 2350 5050 50  0000 L CNN
F 1 "S9V11F5" H 2200 5150 50  0000 L CNN
F 2 "" H 2400 4850 50  0001 C CNN
F 3 "~" H 2400 4850 50  0001 C CNN
	1    2400 4850
	1    0    0    -1  
$EndComp
Wire Notes Line
	2850 4250 2850 5450
Wire Notes Line
	600  4250 600  5450
Wire Notes Line
	600  5450 2850 5450
Wire Notes Line
	2150 5550 3650 5550
Wire Notes Line
	3650 7100 2150 7100
$Comp
L RocketIgniter300-rescue:Conn_01x02_MountingPin-Connector_Generic_MountingPin J4
U 1 1 615F9460
P 5350 4750
F 0 "J4" H 5438 4664 50  0000 L CNN
F 1 "ProgramingInput" H 4900 4900 50  0000 L CNN
F 2 "" H 5350 4750 50  0001 C CNN
F 3 "~" H 5350 4750 50  0001 C CNN
	1    5350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4750 4450 4750
Wire Wire Line
	5150 4850 4750 4850
$Comp
L Switch:SW_DPST ProgramSwitch1
U 1 1 6160C98A
P 4250 4850
F 0 "ProgramSwitch1" H 4250 4525 50  0000 C CNN
F 1 "FIND SWITCH FOR THIS DTSP" H 4050 5150 50  0000 C CNN
F 2 "" H 4250 4850 50  0001 C CNN
F 3 "~" H 4250 4850 50  0001 C CNN
	1    4250 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 4850 4750 4950
Wire Wire Line
	4750 4950 4450 4950
Wire Wire Line
	3650 4950 3850 4950
$Comp
L Device:R pullDown1
U 1 1 6161F06B
P 3850 5100
F 0 "pullDown1" H 3400 5000 50  0000 L CNN
F 1 "1k" H 3650 5100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3780 5100 50  0001 C CNN
F 3 "~" H 3850 5100 50  0001 C CNN
	1    3850 5100
	1    0    0    -1  
$EndComp
Connection ~ 3850 4950
Wire Wire Line
	3850 4950 4050 4950
$Comp
L power:GND #PWR011
U 1 1 6161F695
P 3850 5250
F 0 "#PWR011" H 3850 5000 50  0001 C CNN
F 1 "GND" H 3700 5200 50  0000 C CNN
F 2 "" H 3850 5250 50  0001 C CNN
F 3 "" H 3850 5250 50  0001 C CNN
	1    3850 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R pullDown2
U 1 1 6162014A
P 3900 4600
F 0 "pullDown2" H 4000 4450 50  0000 L CNN
F 1 "1k" H 4000 4550 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3830 4600 50  0001 C CNN
F 3 "~" H 3900 4600 50  0001 C CNN
	1    3900 4600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 61620150
P 3900 4450
F 0 "#PWR012" H 3900 4200 50  0001 C CNN
F 1 "GND" H 4050 4350 50  0000 C CNN
F 2 "" H 3900 4450 50  0001 C CNN
F 3 "" H 3900 4450 50  0001 C CNN
	1    3900 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 4750 3900 4750
Wire Wire Line
	3900 4750 3650 4750
Connection ~ 3900 4750
Wire Wire Line
	1300 4850 2200 4850
Wire Notes Line
	8900 600  8900 4700
Wire Notes Line
	8900 4700 11100 4700
Wire Notes Line
	11100 4700 11100 600 
Wire Notes Line
	11100 600  8900 600 
Text Notes 8950 750  0    50   ~ 0
Coms interface
Wire Notes Line
	8750 600  5700 600 
Wire Notes Line
	5700 600  5700 4700
Connection ~ 1700 850 
Wire Wire Line
	1700 800  1700 850 
Text GLabel 1700 800  1    50   Input ~ 0
5V
$Comp
L 74xGxx:74AHC1G126 U?
U 1 1 616370A9
P 4050 1850
F 0 "U?" H 4025 1583 50  0000 C CNN
F 1 "74AHC1G126" H 4025 1674 50  0000 C CNN
F 2 "TriState:TriState" H 4050 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 4050 1850 50  0001 C CNN
	1    4050 1850
	-1   0    0    1   
$EndComp
Text Notes 4550 1150 0    50   ~ 0
Send regulated 5V\nand ground to nodes
$Comp
L RocketIgniter300-rescue:GND-power #PWR013
U 1 1 615F0E42
P 4400 1050
F 0 "#PWR013" H 4400 800 50  0001 C CNN
F 1 "GND" H 4405 877 50  0000 C CNN
F 2 "" H 4400 1050 50  0001 C CNN
F 3 "" H 4400 1050 50  0001 C CNN
	1    4400 1050
	1    0    0    -1  
$EndComp
Text GLabel 4300 1050 3    50   Input ~ 0
5V
Wire Wire Line
	4200 1300 4200 1050
Wire Wire Line
	4650 1300 4200 1300
Wire Wire Line
	4100 1300 4100 1050
Wire Wire Line
	3750 1300 4100 1300
$Comp
L Connector_Generic_MountingPin:Conn_01x04_MountingPin J3
U 1 1 615E9AEB
P 4200 850
F 0 "J3" V 4200 1100 50  0000 C CNN
F 1 "Can Bus and Power" V 4334 718 50  0000 C CNN
F 2 "" H 4200 850 50  0001 C CNN
F 3 "~" H 4200 850 50  0001 C CNN
	1    4200 850 
	0    -1   -1   0   
$EndComp
Text Notes 650  4100 0    50   ~ 0
Can Bus Interface Hardware
Wire Notes Line
	2950 600  2950 4150
Wire Notes Line
	600  600  600  4150
Text GLabel 1400 3450 0    50   Input ~ 0
5V
Wire Notes Line
	3050 600  3050 4150
Wire Notes Line
	3050 4150 5600 4150
Wire Notes Line
	5600 600  3050 600 
Wire Notes Line
	5600 4150 5600 600 
Connection ~ 4650 1850
Wire Wire Line
	4650 1850 4650 1300
Connection ~ 3750 1850
Wire Wire Line
	3750 1300 3750 1850
Wire Wire Line
	4500 2350 4650 2350
Wire Wire Line
	3750 2350 3900 2350
Connection ~ 1050 2250
Wire Wire Line
	1050 2250 1050 2400
Connection ~ 750  2250
Wire Wire Line
	750  2250 750  2400
$Comp
L RocketIgniter300-rescue:Crystal-Device 8MHz1
U 1 1 615F55A4
P 900 2250
F 0 "8MHz1" H 900 2100 50  0000 C CNN
F 1 "Crystal" H 900 2000 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 900 2250 50  0001 C CNN
F 3 "~" H 900 2250 50  0001 C CNN
	1    900  2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	750  1850 1100 1850
Wire Wire Line
	750  2250 750  1850
Wire Wire Line
	1050 1950 1100 1950
Wire Wire Line
	1050 2250 1050 1950
Wire Wire Line
	900  2700 1050 2700
Connection ~ 900  2700
$Comp
L RocketIgniter300-rescue:GND-power #PWR04
U 1 1 615FE94E
P 900 2700
F 0 "#PWR04" H 900 2450 50  0001 C CNN
F 1 "GND" H 905 2527 50  0000 C CNN
F 2 "" H 900 2700 50  0001 C CNN
F 3 "" H 900 2700 50  0001 C CNN
	1    900  2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  2700 900  2700
$Comp
L RocketIgniter300-rescue:C-Device C1
U 1 1 615FCC6A
P 750 2550
F 0 "C1" H 650 2650 50  0000 L CNN
F 1 "22pF" H 800 2650 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 788 2400 50  0001 C CNN
F 3 "~" H 750 2550 50  0001 C CNN
	1    750  2550
	1    0    0    -1  
$EndComp
$Comp
L RocketIgniter300-rescue:C-Device C2
U 1 1 615FC87E
P 1050 2550
F 0 "C2" H 1100 2650 50  0000 L CNN
F 1 "22pF" H 1200 2550 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 1088 2400 50  0001 C CNN
F 3 "~" H 1050 2550 50  0001 C CNN
	1    1050 2550
	1    0    0    -1  
$EndComp
$Comp
L RocketIgniter300-rescue:MCP2515-xSO-Interface_CAN_LIN U1
U 1 1 615AC1EE
P 1700 1650
F 0 "U1" H 1300 2500 50  0000 C CNN
F 1 "MCP2515-xSO" H 1300 2400 50  0000 C CNN
F 2 "Package_SO:SOIC-18W_7.5x11.6mm_P1.27mm" H 1700 750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21801e.pdf" H 1800 850 50  0001 C CNN
	1    1700 1650
	1    0    0    -1  
$EndComp
$Comp
L RocketIgniter300-rescue:GND-power #PWR09
U 1 1 615EA1D8
P 1700 2450
F 0 "#PWR09" H 1700 2200 50  0001 C CNN
F 1 "GND" H 1700 2300 50  0000 C CNN
F 2 "" H 1700 2450 50  0001 C CNN
F 3 "" H 1700 2450 50  0001 C CNN
	1    1700 2450
	1    0    0    -1  
$EndComp
NoConn ~ 2300 1750
Text GLabel 2300 1650 2    50   Input ~ 0
Int
$Comp
L RocketIgniter300-rescue:R-Device R3
U 1 1 615E3680
P 2750 1500
F 0 "R3" H 2820 1546 50  0000 L CNN
F 1 "1k" H 2820 1455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2680 1500 50  0001 C CNN
F 3 "~" H 2750 1500 50  0001 C CNN
	1    2750 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 850  1700 850 
Wire Wire Line
	2750 1350 2750 850 
Wire Wire Line
	2750 2250 2750 1650
Wire Wire Line
	2300 2250 2750 2250
NoConn ~ 2300 1950
NoConn ~ 2300 1850
NoConn ~ 2300 2150
NoConn ~ 2300 2050
NoConn ~ 1100 2050
Wire Wire Line
	2550 1050 2300 1050
Wire Wire Line
	2550 2650 2550 1050
Wire Wire Line
	1150 2650 2550 2650
Wire Wire Line
	1150 3250 1150 2650
Wire Wire Line
	1400 3250 1150 3250
Wire Wire Line
	1250 3150 1250 2750
Wire Wire Line
	1400 3150 1250 3150
Wire Wire Line
	2650 1150 2650 2750
Wire Wire Line
	2650 1150 2300 1150
Wire Wire Line
	1250 2750 2650 2750
Text GLabel 2400 3450 2    50   BiDi ~ 0
CanLow
Text GLabel 2400 3250 2    50   BiDi ~ 0
CanHigh
Text GLabel 1900 2950 1    50   Input ~ 0
5V
$Comp
L RocketIgniter300-rescue:GND-power #PWR010
U 1 1 6161774C
P 1900 3750
F 0 "#PWR010" H 1900 3500 50  0001 C CNN
F 1 "GND" H 1905 3577 50  0000 C CNN
F 2 "" H 1900 3750 50  0001 C CNN
F 3 "" H 1900 3750 50  0001 C CNN
	1    1900 3750
	1    0    0    -1  
$EndComp
$Comp
L RocketIgniter300-rescue:GND-power #PWR07
U 1 1 61617565
P 1300 3750
F 0 "#PWR07" H 1300 3500 50  0001 C CNN
F 1 "GND" H 1305 3577 50  0000 C CNN
F 2 "" H 1300 3750 50  0001 C CNN
F 3 "" H 1300 3750 50  0001 C CNN
	1    1300 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 3550 1300 3750
Wire Wire Line
	1400 3550 1300 3550
Text GLabel 1100 1250 0    50   Input ~ 0
CS
Text GLabel 1100 1150 0    50   Input ~ 0
SO
Text GLabel 1100 1050 0    50   Input ~ 0
SI
Text GLabel 1100 1350 0    50   Input ~ 0
SCK
$Comp
L RocketIgniter300-rescue:MCP2551-I-P-Interface_CAN_LIN U3
U 1 1 615AAE5D
P 1900 3350
F 0 "U3" H 2250 3850 50  0000 C CNN
F 1 "MCP2551-I-P" H 2250 3750 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 1900 2850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 1900 3350 50  0001 C CNN
	1    1900 3350
	1    0    0    -1  
$EndComp
Wire Notes Line
	600  4150 2950 4150
Wire Notes Line
	600  600  2950 600 
Wire Wire Line
	4500 2350 4500 2500
Wire Wire Line
	3900 2350 3900 2500
Text GLabel 4100 3300 3    50   Input ~ 0
EnableUART
$Comp
L RocketIgniter300-rescue:ADG884xCP-Analog_Switch U2
U 1 1 615FC555
P 4200 2900
F 0 "U2" V 4500 2100 50  0000 R CNN
F 1 "ADG884xCP" V 4400 2050 50  0000 R CNN
F 2 "Package_CSP:LFCSP-WD-10-1EP_3x3mm_P0.5mm_EP1.64x2.38mm" H 4200 2900 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADG884.pdf" H 4200 2900 50  0001 C CNN
	1    4200 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 2350 4650 1850
Wire Wire Line
	3750 2350 3750 1850
Text Notes 3150 4000 0    50   ~ 0
Can bus line with multiplexer\n- Has Tri State Buffers to convert between Uart and CanBus
Text GLabel 4050 2050 2    50   Input ~ 0
EnableUART
$Comp
L RocketIgniter300-rescue:R-Device termRes2
U 1 1 6159DE36
P 4500 1850
F 0 "termRes2" V 4600 1700 50  0000 L CNN
F 1 "120" V 4700 1800 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4430 1850 50  0001 C CNN
F 3 "~" H 4500 1850 50  0001 C CNN
	1    4500 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3800 1850 3750 1850
Text GLabel 3500 2900 0    50   Input ~ 0
5V
$Comp
L RocketIgniter300-rescue:GND-power #PWR01
U 1 1 615A4C91
P 4900 2900
F 0 "#PWR01" H 4900 2650 50  0001 C CNN
F 1 "GND" H 4905 2727 50  0000 C CNN
F 2 "" H 4900 2900 50  0001 C CNN
F 3 "" H 4900 2900 50  0001 C CNN
	1    4900 2900
	1    0    0    -1  
$EndComp
Text GLabel 4300 3300 3    50   Input ~ 0
EnableUART
Text GLabel 4600 3300 3    50   BiDi ~ 0
CanLow
Text GLabel 4000 3300 3    50   BiDi ~ 0
CanHigh
Text GLabel 4400 3300 3    50   BiDi ~ 0
Rx
Text GLabel 3800 3300 3    50   BiDi ~ 0
Tx
$EndSCHEMATC