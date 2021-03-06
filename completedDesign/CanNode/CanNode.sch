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
Wire Wire Line
	1550 3450 1200 3450
Wire Wire Line
	1200 3450 1200 2950
Wire Wire Line
	1200 2950 3100 2950
Wire Wire Line
	1550 3550 1100 3550
Wire Wire Line
	1100 3550 1100 2850
Wire Wire Line
	2900 2500 2900 2100
$Comp
L CanNode-rescue:R-Device R1
U 1 1 6163DD79
P 2900 1950
F 0 "R1" H 2750 1900 50  0000 L CNN
F 1 "1k" H 2750 1800 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2830 1950 50  0001 C CNN
F 3 "~" H 2900 1950 50  0001 C CNN
	1    2900 1950
	1    0    0    -1  
$EndComp
NoConn ~ 2600 2400
NoConn ~ 2600 2300
NoConn ~ 2600 2200
NoConn ~ 2600 2100
NoConn ~ 2600 2000
Text GLabel 2600 1900 2    50   Input ~ 0
Int
$Comp
L CanNode-rescue:Crystal-Device Crystal1
U 1 1 6164208F
P 1000 2350
F 0 "Crystal1" H 1000 2650 50  0000 C CNN
F 1 "8Mhz" H 1000 2527 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 1000 2350 50  0001 C CNN
F 3 "~" H 1000 2350 50  0001 C CNN
	1    1000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2200 1150 2350
Wire Wire Line
	1150 2200 1400 2200
Wire Wire Line
	850  2100 850  2350
Wire Wire Line
	850  2100 1400 2100
$Comp
L CanNode-rescue:C-Device C1
U 1 1 61643131
P 850 2550
F 0 "C1" H 650 2600 50  0000 L CNN
F 1 "22pF" H 650 2450 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 888 2400 50  0001 C CNN
F 3 "~" H 850 2550 50  0001 C CNN
	1    850  2550
	1    0    0    -1  
$EndComp
$Comp
L CanNode-rescue:C-Device C2
U 1 1 61643585
P 1150 2550
F 0 "C2" H 1265 2596 50  0000 L CNN
F 1 "22pF" H 1265 2505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 1188 2400 50  0001 C CNN
F 3 "~" H 1150 2550 50  0001 C CNN
	1    1150 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2350 850  2400
Connection ~ 850  2350
Wire Wire Line
	1150 2350 1150 2400
Connection ~ 1150 2350
Wire Wire Line
	1150 2700 1000 2700
$Comp
L CanNode-rescue:GND-power #PWR0101
U 1 1 6164487E
P 1000 2700
F 0 "#PWR0101" H 1000 2450 50  0001 C CNN
F 1 "GND" H 1005 2527 50  0000 C CNN
F 2 "" H 1000 2700 50  0001 C CNN
F 3 "" H 1000 2700 50  0001 C CNN
	1    1000 2700
	1    0    0    -1  
$EndComp
Connection ~ 1000 2700
Wire Wire Line
	1000 2700 850  2700
$Comp
L CanNode-rescue:GND-power #PWR0102
U 1 1 61644DCB
P 2000 2700
F 0 "#PWR0102" H 2000 2450 50  0001 C CNN
F 1 "GND" H 2150 2700 50  0000 C CNN
F 2 "" H 2000 2700 50  0001 C CNN
F 3 "" H 2000 2700 50  0001 C CNN
	1    2000 2700
	1    0    0    -1  
$EndComp
$Comp
L CanNode-rescue:GND-power #PWR0103
U 1 1 616452E6
P 1500 3950
F 0 "#PWR0103" H 1500 3700 50  0001 C CNN
F 1 "GND" H 1350 3950 50  0000 C CNN
F 2 "" H 1500 3950 50  0001 C CNN
F 3 "" H 1500 3950 50  0001 C CNN
	1    1500 3950
	1    0    0    -1  
$EndComp
Text GLabel 2050 3250 1    50   Input ~ 0
5V
Text GLabel 2550 3550 2    50   BiDi ~ 0
CanHigh
Text GLabel 2550 3750 2    50   BiDi ~ 0
CanLow
NoConn ~ 1400 2300
Text GLabel 1550 3750 0    50   Input ~ 0
5V
Wire Wire Line
	1500 3850 1550 3850
Wire Wire Line
	1500 3850 1500 3950
$Comp
L CanNode-rescue:GND-power #PWR0104
U 1 1 616482B2
P 2050 4050
F 0 "#PWR0104" H 2050 3800 50  0001 C CNN
F 1 "GND" H 2200 4050 50  0000 C CNN
F 2 "" H 2050 4050 50  0001 C CNN
F 3 "" H 2050 4050 50  0001 C CNN
	1    2050 4050
	1    0    0    -1  
$EndComp
Text GLabel 2000 950  1    50   Input ~ 0
5V
Wire Wire Line
	2000 950  2000 1050
$Comp
L CanNode-rescue:Conn_01x04_MountingPin-Connector_Generic_MountingPin J3
U 1 1 6164A269
P 4300 950
F 0 "J3" V 4525 818 50  0000 C CNN
F 1 "InputCanBus" V 4434 818 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x04_P2.00mm_Vertical" H 4300 950 50  0001 C CNN
F 3 "~" H 4300 950 50  0001 C CNN
	1    4300 950 
	0    -1   -1   0   
$EndComp
Text GLabel 4400 1150 3    50   Output ~ 0
5V
$Comp
L CanNode-rescue:GND-power #PWR0105
U 1 1 6164B191
P 4500 1200
F 0 "#PWR0105" H 4500 950 50  0001 C CNN
F 1 "GND" H 4650 1200 50  0000 C CNN
F 2 "" H 4500 1200 50  0001 C CNN
F 3 "" H 4500 1200 50  0001 C CNN
	1    4500 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1150 4500 1200
Wire Wire Line
	4300 1150 4300 1450
Wire Wire Line
	4300 1450 4900 1450
Wire Wire Line
	4200 1150 4200 1450
Wire Wire Line
	4200 1450 4000 1450
Wire Wire Line
	4000 1450 4000 1800
$Comp
L CanNode-rescue:74AHC1G126-74xGxx U3
U 1 1 6164DD02
P 4250 1800
F 0 "U3" H 4225 1533 50  0000 C CNN
F 1 "74AHC1G126" H 4225 1624 50  0000 C CNN
F 2 "Libs:SOT65P210X110-5N" H 4250 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 4250 1800 50  0001 C CNN
	1    4250 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4550 1800 4600 1800
Text GLabel 4250 2000 2    50   Input ~ 0
EnableUart
Wire Wire Line
	4000 1800 4000 2250
Connection ~ 4000 1800
$Comp
L CanNode-rescue:R-Device R2
U 1 1 6164EB28
P 4750 1800
F 0 "R2" V 4543 1800 50  0000 C CNN
F 1 "10k" V 4634 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4680 1800 50  0001 C CNN
F 3 "~" H 4750 1800 50  0001 C CNN
	1    4750 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 1450 4900 1800
Wire Wire Line
	4900 1800 4900 2250
Connection ~ 4900 1800
$Comp
L CanNode-rescue:74LS157-74xx U4
U 1 1 61652466
P 4700 2950
F 0 "U4" V 4746 1906 50  0000 R CNN
F 1 "74LS157" V 4655 1906 50  0000 R CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 4700 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 4700 2950 50  0001 C CNN
	1    4700 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 2250 4100 2250
Wire Wire Line
	4100 2250 4100 2450
Wire Wire Line
	4900 2250 4400 2250
Wire Wire Line
	4400 2250 4400 2450
$Comp
L CanNode-rescue:GND-power #PWR0106
U 1 1 61655A7B
P 5700 3200
F 0 "#PWR0106" H 5700 2950 50  0001 C CNN
F 1 "GND" H 5850 3200 50  0000 C CNN
F 2 "" H 5700 3200 50  0001 C CNN
F 3 "" H 5700 3200 50  0001 C CNN
	1    5700 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2950 5700 3200
Text GLabel 3550 2950 0    50   Input ~ 0
5V
Wire Wire Line
	3800 2950 3550 2950
NoConn ~ 4700 2450
NoConn ~ 5000 2450
NoConn ~ 5100 3450
NoConn ~ 5000 3450
NoConn ~ 4800 3450
NoConn ~ 4700 3450
$Comp
L CanNode-rescue:GND-power #PWR0107
U 1 1 6165A26F
P 5700 3550
F 0 "#PWR0107" H 5700 3300 50  0001 C CNN
F 1 "GND" H 5850 3550 50  0000 C CNN
F 2 "" H 5700 3550 50  0001 C CNN
F 3 "" H 5700 3550 50  0001 C CNN
	1    5700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3450 5700 3450
Wire Wire Line
	5700 3450 5700 3550
Text GLabel 5300 3450 3    50   Input ~ 0
EnableUart
Text GLabel 4100 3450 3    50   BiDi ~ 0
Tx
Text GLabel 4200 3450 3    50   BiDi ~ 0
CanHigh
Text GLabel 4400 3450 3    50   BiDi ~ 0
Rx
Text GLabel 4500 3450 3    50   BiDi ~ 0
CanLow
Wire Notes Line
	3250 600  3250 4300
Wire Notes Line
	3250 4300 600  4300
Wire Notes Line
	600  4300 600  600 
Wire Notes Line
	600  600  3250 600 
Wire Notes Line
	3350 600  3350 4300
Wire Notes Line
	6100 4300 6100 600 
Wire Notes Line
	6100 600  3350 600 
Wire Notes Line
	3350 4300 6100 4300
Text Notes 700  750  0    50   ~ 0
Can Bus Interface Hardware
Text Notes 3450 4100 0    50   ~ 0
Can bus line with multiplexer
$Comp
L CanNode-rescue:ATmega328P-PU-MCU_Microchip_ATmega U5
U 1 1 61663585
P 7500 2400
F 0 "U5" H 6850 2600 50  0000 R CNN
F 1 "ATmega328P-PU" H 6950 2500 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 7500 2400 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 7500 2400 50  0001 C CNN
	1    7500 2400
	1    0    0    -1  
$EndComp
Wire Notes Line
	6200 600  6200 4300
Wire Notes Line
	6200 4300 8850 4300
Wire Notes Line
	8850 4300 8850 600 
Wire Notes Line
	8850 600  6200 600 
$Comp
L CanNode-rescue:GND-power #PWR0108
U 1 1 616683C8
P 7500 3900
F 0 "#PWR0108" H 7500 3650 50  0001 C CNN
F 1 "GND" H 7650 3900 50  0000 C CNN
F 2 "" H 7500 3900 50  0001 C CNN
F 3 "" H 7500 3900 50  0001 C CNN
	1    7500 3900
	1    0    0    -1  
$EndComp
Text Notes 3450 4200 0    50   ~ 0
- Get regulated 5V from main node
$Comp
L CanNode-rescue:Conn_01x01_MountingPin-Connector_Generic_MountingPin J1
U 1 1 61669D1B
P 950 4750
F 0 "J1" H 1038 4622 50  0000 L CNN
F 1 "Input Lipo" H 750 4900 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x01_P2.00mm_Vertical" H 950 4750 50  0001 C CNN
F 3 "~" H 950 4750 50  0001 C CNN
	1    950  4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 4750 1450 4750
Wire Wire Line
	1450 4750 1450 4900
Text GLabel 1450 4900 2    50   Output ~ 0
LipoBattery
Wire Notes Line
	600  4400 600  5200
Wire Notes Line
	600  5200 2100 5200
Wire Notes Line
	2100 5200 2100 4400
Wire Notes Line
	2100 4400 600  4400
Text Notes 650  5150 0    50   ~ 0
Input Lipo Battery
Text GLabel 2600 4650 0    50   Input ~ 0
IgnitOne
Text GLabel 3650 4500 0    50   Input ~ 0
LipoBattery
Wire Wire Line
	3800 4500 3800 5150
Wire Wire Line
	3650 4500 3800 4500
Wire Wire Line
	2600 4650 3150 4650
Wire Wire Line
	3150 4650 3150 4850
Wire Wire Line
	2850 5150 2950 5150
$Comp
L CanNode-rescue:GND-power #PWR0109
U 1 1 616D46BC
P 2850 5500
F 0 "#PWR0109" H 2850 5250 50  0001 C CNN
F 1 "GND" H 2855 5327 50  0000 C CNN
F 2 "" H 2850 5500 50  0001 C CNN
F 3 "" H 2850 5500 50  0001 C CNN
	1    2850 5500
	1    0    0    -1  
$EndComp
Text GLabel 4350 4650 0    50   Input ~ 0
IgnitTwo
$Comp
L CanNode-rescue:Conn_01x02_MountingPin-Connector_Generic_MountingPin J4
U 1 1 616DB9D4
P 5550 5350
F 0 "J4" V 5426 5430 50  0000 L CNN
F 1 "IgnitTwoPinOut" V 5700 5050 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x02_P2.00mm_Vertical" H 5550 5350 50  0001 C CNN
F 3 "~" H 5550 5350 50  0001 C CNN
	1    5550 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 4500 5550 5150
Wire Wire Line
	4350 4650 4900 4650
Wire Wire Line
	4900 4650 4900 4850
Wire Wire Line
	4600 5150 4600 5400
$Comp
L CanNode-rescue:GND-power #PWR0110
U 1 1 616DB9E4
P 4600 5400
F 0 "#PWR0110" H 4600 5150 50  0001 C CNN
F 1 "GND" H 4605 5227 50  0000 C CNN
F 2 "" H 4600 5400 50  0001 C CNN
F 3 "" H 4600 5400 50  0001 C CNN
	1    4600 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4500 5550 4500
Connection ~ 3800 4500
Wire Notes Line
	2200 4400 2200 5850
Wire Notes Line
	2200 5850 5950 5850
Wire Notes Line
	5950 5850 5950 4400
Wire Notes Line
	5950 4400 2200 4400
Text Notes 5250 5750 0    50   ~ 0
Ignition System
Wire Wire Line
	4700 5150 4600 5150
$Comp
L CanNode-rescue:Conn_01x02_MountingPin-Connector_Generic_MountingPin J2
U 1 1 61696200
P 3800 5350
F 0 "J2" V 3676 5430 50  0000 L CNN
F 1 "IgnitOnePinOut" V 3950 5050 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x02_P2.00mm_Vertical" H 3800 5350 50  0001 C CNN
F 3 "~" H 3800 5350 50  0001 C CNN
	1    3800 5350
	0    1    1    0   
$EndComp
$Comp
L CanNode-rescue:BUK7M42-60EX-Transistor_FET Q2
U 1 1 616DB9CC
P 4900 5050
F 0 "Q2" V 5149 5050 50  0000 C CNN
F 1 "AO4576" V 5240 5050 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-8_Handsoldering" H 5100 4975 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BUK7M42-60E.pdf" V 4900 5050 50  0001 L CNN
	1    4900 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 5150 5450 5150
Wire Wire Line
	3350 5150 3700 5150
Wire Wire Line
	2850 5150 2850 5500
Text Notes 3200 5750 0    50   ~ 0
http://aosmd.com/res/data_sheets/AO4576.pdf
Text GLabel 8100 3200 2    50   Input ~ 0
IgnitTwo
Text GLabel 8100 3300 2    50   Input ~ 0
IgnitOne
Text GLabel 7500 900  1    50   Input ~ 0
5V
Text GLabel 7600 900  1    50   Input ~ 0
5V
$Comp
L CanNode-rescue:MCP2551-I-P-Interface_CAN_LIN U2
U 1 1 61639619
P 2050 3650
F 0 "U2" H 2350 4200 50  0000 C CNN
F 1 "MCP2551-I-P" H 2400 4050 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2050 3150 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 2050 3650 50  0001 C CNN
	1    2050 3650
	1    0    0    -1  
$EndComp
$Comp
L CanNode-rescue:BUK7M42-60EX-Transistor_FET Q1
U 1 1 6167F055
P 3150 5050
F 0 "Q1" V 3399 5050 50  0000 C CNN
F 1 "AO4576" V 3490 5050 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-8_Handsoldering" H 3350 4975 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BUK7M42-60E.pdf" V 3150 5050 50  0001 L CNN
	1    3150 5050
	0    1    1    0   
$EndComp
Text GLabel 8100 1200 2    50   BiDi ~ 0
Rx
Text GLabel 8100 1300 2    50   BiDi ~ 0
Tx
Text GLabel 8100 1800 2    50   Input ~ 0
ClockIn1
Text GLabel 8100 1900 2    50   Input ~ 0
ClockIn2
$Comp
L CanNode-rescue:Crystal-Device Crystal2
U 1 1 61728745
P 9650 1000
F 0 "Crystal2" H 9650 1300 50  0000 C CNN
F 1 "16Mhz" H 9650 1177 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 9650 1000 50  0001 C CNN
F 3 "~" H 9650 1000 50  0001 C CNN
	1    9650 1000
	1    0    0    -1  
$EndComp
$Comp
L CanNode-rescue:C-Device C3
U 1 1 6172874F
P 9350 1200
F 0 "C3" H 9150 1250 50  0000 L CNN
F 1 "C" H 9150 1150 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 9388 1050 50  0001 C CNN
F 3 "~" H 9350 1200 50  0001 C CNN
	1    9350 1200
	1    0    0    -1  
$EndComp
$Comp
L CanNode-rescue:C-Device C4
U 1 1 61728755
P 9950 1200
F 0 "C4" H 10065 1246 50  0000 L CNN
F 1 "C" H 10065 1155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 9988 1050 50  0001 C CNN
F 3 "~" H 9950 1200 50  0001 C CNN
	1    9950 1200
	1    0    0    -1  
$EndComp
$Comp
L CanNode-rescue:GND-power #PWR0111
U 1 1 61728760
P 9650 1500
F 0 "#PWR0111" H 9650 1250 50  0001 C CNN
F 1 "GND" H 9655 1327 50  0000 C CNN
F 2 "" H 9650 1500 50  0001 C CNN
F 3 "" H 9650 1500 50  0001 C CNN
	1    9650 1500
	1    0    0    -1  
$EndComp
Connection ~ 9650 1500
Wire Wire Line
	9500 1000 9350 1000
Wire Wire Line
	9350 1000 9350 1050
Wire Wire Line
	9800 1000 9950 1000
Wire Wire Line
	9950 1000 9950 1050
Wire Wire Line
	9350 1350 9350 1500
Wire Wire Line
	9350 1500 9650 1500
Wire Wire Line
	9950 1500 9950 1350
Wire Wire Line
	9650 1500 9950 1500
Wire Wire Line
	9350 1000 9350 750 
Connection ~ 9350 1000
Wire Wire Line
	9950 1000 9950 750 
Connection ~ 9950 1000
Text GLabel 9950 750  2    50   Output ~ 0
ClockIn2
Text GLabel 9350 750  0    50   Output ~ 0
ClockIn1
Wire Notes Line
	8950 1850 10350 1850
Wire Notes Line
	10350 600  8950 600 
Wire Notes Line
	8950 600  8950 1850
Wire Notes Line
	10350 600  10350 1850
Text Notes 9000 1800 0    50   ~ 0
Microcontroller Clock
Text Notes 9050 4850 0    50   ~ 0
Notes\n- Check footprints against other to be consistant\n- Change Enable UART on second board\n- Add foot prints between the things\n- Buy accelerometer \n- Programer\n- Esp moduals??\n- Barometer\n- Jtag Programer\n- Usb device?\n- Etc
Wire Wire Line
	3100 1400 3100 2950
Wire Wire Line
	3000 1300 3000 2850
Wire Wire Line
	3000 1300 2600 1300
Wire Wire Line
	2600 2500 2900 2500
Wire Wire Line
	3100 1400 2600 1400
Connection ~ 2000 1050
Wire Wire Line
	2000 1050 2000 1100
Wire Wire Line
	2900 1050 2900 1800
Wire Wire Line
	1100 2850 3000 2850
$Comp
L CanNode-rescue:MCP2515-xSO-Interface_CAN_LIN U1
U 1 1 61637FC9
P 2000 1900
F 0 "U1" H 1650 2800 50  0000 C CNN
F 1 "MCP2515-xSO" H 1650 2700 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm_LongPads" H 2000 1000 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21801e.pdf" H 2100 1100 50  0001 C CNN
	1    2000 1900
	1    0    0    -1  
$EndComp
Text GLabel 1400 1600 0    50   Input ~ 0
SCK
Text GLabel 1400 1500 0    50   BiDi ~ 0
CS
Text GLabel 1400 1400 0    50   BiDi ~ 0
SO
Text GLabel 1400 1300 0    50   BiDi ~ 0
SI
Text GLabel 8100 1700 2    50   Input ~ 0
SCK
Text GLabel 8100 1400 2    50   BiDi ~ 0
CS
Text GLabel 8100 1600 2    50   BiDi ~ 0
SO
Text GLabel 8100 1500 2    50   BiDi ~ 0
SI
$Comp
L CanNode-rescue:GND-power #PWR0112
U 1 1 61661DC0
P 3500 5350
F 0 "#PWR0112" H 3500 5100 50  0001 C CNN
F 1 "GND" H 3500 5450 50  0000 C CNN
F 2 "" H 3500 5350 50  0001 C CNN
F 3 "" H 3500 5350 50  0001 C CNN
	1    3500 5350
	1    0    0    -1  
$EndComp
$Comp
L CanNode-rescue:GND-power #PWR0113
U 1 1 61661F82
P 5250 5350
F 0 "#PWR0113" H 5250 5100 50  0001 C CNN
F 1 "GND" H 5250 5450 50  0000 C CNN
F 2 "" H 5250 5350 50  0001 C CNN
F 3 "" H 5250 5350 50  0001 C CNN
	1    5250 5350
	1    0    0    -1  
$EndComp
$Comp
L CanNode-rescue:GND-power #PWR0114
U 1 1 61662074
P 950 4550
F 0 "#PWR0114" H 950 4300 50  0001 C CNN
F 1 "GND" H 955 4377 50  0000 C CNN
F 2 "" H 950 4550 50  0001 C CNN
F 3 "" H 950 4550 50  0001 C CNN
	1    950  4550
	-1   0    0    1   
$EndComp
$Comp
L CanNode-rescue:GND-power #PWR0115
U 1 1 61662477
P 4700 950
F 0 "#PWR0115" H 4700 700 50  0001 C CNN
F 1 "GND" H 4705 777 50  0000 C CNN
F 2 "" H 4700 950 50  0001 C CNN
F 3 "" H 4700 950 50  0001 C CNN
	1    4700 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1050 2000 1050
Text GLabel 6900 1200 0    50   Input ~ 0
5V
$Comp
L CanNode-rescue:Conn_01x03_MountingPin-Connector_Generic_MountingPin J5
U 1 1 61667F01
P 7200 5000
F 0 "J5" H 7288 4964 50  0000 L CNN
F 1 "!EnableUartSwitch" H 7288 4873 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x03_P1.00mm_Vertical" H 7200 5000 50  0001 C CNN
F 3 "~" H 7200 5000 50  0001 C CNN
	1    7200 5000
	1    0    0    -1  
$EndComp
Text GLabel 7000 4900 0    50   Input ~ 0
5V
$Comp
L CanNode-rescue:GND-power #PWR0116
U 1 1 616683FB
P 7000 5100
F 0 "#PWR0116" H 7000 4850 50  0001 C CNN
F 1 "GND" H 7000 4900 50  0000 C CNN
F 2 "" H 7000 5100 50  0001 C CNN
F 3 "" H 7000 5100 50  0001 C CNN
	1    7000 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5000 6550 5000
Text GLabel 6550 5000 0    50   Output ~ 0
EnableUart
Text Notes 6250 4600 0    50   ~ 0
Switch for Uart or Can
Wire Notes Line
	6050 4400 6050 5550
Wire Notes Line
	6050 5550 8050 5550
Wire Notes Line
	8050 5550 8050 4400
Wire Notes Line
	8050 4400 6050 4400
$EndSCHEMATC
