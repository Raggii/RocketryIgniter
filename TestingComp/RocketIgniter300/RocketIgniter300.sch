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
L Device:R terminatingResistor1
U 1 1 6159E746
P 7450 1450
F 0 "terminatingResistor1" H 6600 1550 50  0000 L CNN
F 1 "120" H 7200 1450 50  0000 L CNN
F 2 "" V 7380 1450 50  0001 C CNN
F 3 "~" H 7450 1450 50  0001 C CNN
	1    7450 1450
	1    0    0    -1  
$EndComp
Text GLabel 7250 1000 0    50   Input ~ 0
EnableUART
Wire Wire Line
	7450 1850 7450 1600
$Comp
L 74xx:74LS158 U2
U 1 1 615A10CD
P 5350 2750
F 0 "U2" V 5396 1706 50  0000 R CNN
F 1 "74LS158" V 5305 1706 50  0000 R CNN
F 2 "" H 5350 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS158" H 5350 2750 50  0001 C CNN
	1    5350 2750
	0    -1   -1   0   
$EndComp
Text GLabel 4750 3250 3    50   Input ~ 0
Tx
Text GLabel 5050 3250 3    50   Input ~ 0
Rx
Text GLabel 4850 3250 3    50   Input ~ 0
CanHigh
Text GLabel 5150 3250 3    50   Input ~ 0
CanLow
Text GLabel 5950 3250 3    50   Input ~ 0
EnableUART
Text Notes 3850 2150 0    50   ~ 0
Check the operation of this\nWe want both A and B to switch when UART is enabled
$Comp
L power:GND #PWR01
U 1 1 615A4C91
P 6350 2750
F 0 "#PWR01" H 6350 2500 50  0001 C CNN
F 1 "GND" H 6355 2577 50  0000 C CNN
F 2 "" H 6350 2750 50  0001 C CNN
F 3 "" H 6350 2750 50  0001 C CNN
	1    6350 2750
	1    0    0    -1  
$EndComp
Text GLabel 4450 2750 0    50   Input ~ 0
5V
Wire Wire Line
	4750 2250 4750 1850
Wire Wire Line
	5050 2250 5050 700 
Connection ~ 5050 700 
Text Notes 6200 2200 0    50   ~ 0
Coms Pins
NoConn ~ 5350 2250
NoConn ~ 5650 2250
NoConn ~ 5750 3250
NoConn ~ 5650 3250
NoConn ~ 5450 3250
NoConn ~ 5350 3250
Text Notes 9850 2550 0    50   ~ 0
These are 3.3 - 3.6V \nThis simplifys stuff a whole bunch
Text Notes 8650 5350 1    50   ~ 0
Check pins on CubeIDE
Text Notes 10500 5400 1    50   ~ 0
Check pins on CubeIDE
Text GLabel 8450 4050 3    50   Output ~ 0
EnableUART
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
L Interface_CAN_LIN:MCP2551-I-P U3
U 1 1 615AAE5D
P 1500 3000
F 0 "U3" H 1500 3581 50  0000 C CNN
F 1 "MCP2551-I-P" H 1500 3490 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 1500 2500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 1500 3000 50  0001 C CNN
	1    1500 3000
	1    0    0    -1  
$EndComp
Text Notes 1050 3650 0    50   ~ 0
This has a 5V supply!!\nCan regulate using the MUC
Wire Notes Line
	600  550  2450 550 
Wire Notes Line
	2450 3450 600  3450
$Comp
L Interface_CAN_LIN:MCP2515-xSO U1
U 1 1 615AC1EE
P 1500 1550
F 0 "U1" H 1500 2531 50  0000 C CNN
F 1 "MCP2515-xSO" H 1500 2440 50  0000 C CNN
F 2 "Package_SO:SOIC-18W_7.5x11.6mm_P1.27mm" H 1500 650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21801e.pdf" H 1600 750 50  0001 C CNN
	1    1500 1550
	1    0    0    -1  
$EndComp
Wire Notes Line
	2450 550  2450 3450
Wire Notes Line
	600  550  600  3450
Text Notes 2400 2150 1    50   ~ 0
Can interface MCP2515\nOnly needed for lesser micro controllers
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
	8300 4250 5800 4250
Wire Notes Line
	5800 6400 8300 6400
Text Notes 5900 4650 0    50   ~ 0
Battery Regulation.\nSee falstad\n- Maybe use a voltage regulator to connect to MCU\n- Use MCU to control 5V regulation for Can bus
Text Notes 2350 6050 0    50   ~ 0
MOSFets which can handle 20A\nHow do we stop brown outs
Text Notes 600  6050 0    50   ~ 0
Something between 3.7 - 7.4V\nCan change at anytime:\n- not actually added to board
Text GLabel 8450 3750 3    50   Output ~ 0
Tx
Text GLabel 8450 3300 3    50   Output ~ 0
CanHigh
Text GLabel 8450 3050 3    50   Output ~ 0
Rx
Text GLabel 8450 2600 3    50   Output ~ 0
CanLow
Text Notes 5900 2400 0    50   ~ 0
Can we simulate this using bluetooth?\n- We could reuse that app again
Text Notes 2350 6300 0    50   ~ 0
Do we want this on the CanBus? \n- Could create disturbance which would be inconveniant
$Comp
L Connector_Generic:Conn_02x05_Top_Bottom j1
U 1 1 615B716D
P 1400 4800
F 0 "j1" H 1450 5217 50  0001 C CNN
F 1 "Connector for Programer" H 1450 5125 50  0000 C CNN
F 2 "" H 1400 4800 50  0001 C CNN
F 3 "~" H 1400 4800 50  0001 C CNN
	1    1400 4800
	1    0    0    -1  
$EndComp
Text GLabel 1700 4600 2    50   Input ~ 0
SWDIO
Text GLabel 1700 4700 2    50   Input ~ 0
GND
Text GLabel 1700 4800 2    50   Input ~ 0
SWCLK
Text GLabel 1700 4900 2    50   Input ~ 0
3.3V
Text GLabel 1200 4900 0    50   Input ~ 0
3.3V
Text GLabel 1200 4700 0    50   Input ~ 0
GND
Text GLabel 1200 5000 0    50   Input ~ 0
5.0V
Text GLabel 1700 5000 2    50   Input ~ 0
5.0V
Text GLabel 1200 4600 0    50   Input ~ 0
RST
Text GLabel 1200 4800 0    50   Input ~ 0
SWIM
Wire Notes Line
	650  4150 2300 4150
Wire Notes Line
	2300 4150 2300 5350
Wire Notes Line
	2300 5350 650  5350
Wire Notes Line
	650  5350 650  4150
Text Notes 700  4300 0    50   ~ 0
Programmer??
$Comp
L 74xGxx:74AUC2G125 U4
U 2 1 615999BF
P 7450 1000
F 0 "U4" V 7650 1400 50  0000 R CNN
F 1 "74AUC2G125" V 7550 1650 50  0000 R CNN
F 2 "" H 7450 1000 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 7450 1000 50  0001 C CNN
	2    7450 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 750  7450 700 
Wire Wire Line
	8400 850  8400 1000
$Comp
L Device:R R1
U 1 1 6159EA0F
P 8400 1150
F 0 "R1" H 8470 1196 50  0000 L CNN
F 1 "12k" H 8470 1105 50  0000 L CNN
F 2 "" V 8330 1150 50  0001 C CNN
F 3 "~" H 8400 1150 50  0001 C CNN
	1    8400 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6159F69F
P 8400 1450
F 0 "R2" H 8470 1496 50  0000 L CNN
F 1 "20k" H 8470 1405 50  0000 L CNN
F 2 "" V 8330 1450 50  0001 C CNN
F 3 "~" H 8400 1450 50  0001 C CNN
	1    8400 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1300 8700 1300
Connection ~ 8400 1300
Wire Wire Line
	8400 1600 8400 1800
$Comp
L power:GND #PWR03
U 1 1 615A15B0
P 8400 1800
F 0 "#PWR03" H 8400 1550 50  0001 C CNN
F 1 "GND" H 8405 1627 50  0000 C CNN
F 2 "" H 8400 1800 50  0001 C CNN
F 3 "" H 8400 1800 50  0001 C CNN
	1    8400 1800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 615A1763
P 8400 850
F 0 "#PWR02" H 8400 700 50  0001 C CNN
F 1 "VCC" H 8415 1023 50  0000 C CNN
F 2 "" H 8400 850 50  0001 C CNN
F 3 "" H 8400 850 50  0001 C CNN
	1    8400 850 
	1    0    0    -1  
$EndComp
Text Notes 8550 850  0    50   ~ 0
Voltage Measuring
Wire Notes Line
	9450 600  9450 2150
Wire Notes Line
	7950 2150 7950 600 
$Comp
L MCU_ST_STM32L0:STM32L053R8Tx U5
U 1 1 615A6593
P 9550 4300
F 0 "U5" H 9500 6281 50  0001 C CNN
F 1 "STM32L053R8Tx" H 9500 6189 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 8950 2600 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00105960.pdf" H 9550 4300 50  0001 C CNN
	1    9550 4300
	1    0    0    -1  
$EndComp
Text GLabel 8700 1300 2    50   Output ~ 0
VoltageMeasure
Wire Notes Line
	7950 2150 9450 2150
Wire Notes Line
	7950 600  9450 600 
Connection ~ 4750 1850
Wire Wire Line
	3900 750  3900 700 
$Comp
L 74xGxx:74AUC2G125 U4
U 1 1 61597BCD
P 3900 1000
F 0 "U4" V 3921 870 50  0000 R CNN
F 1 "74AUC2G125" V 3830 870 50  0000 R CNN
F 2 "" H 3900 1000 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 3900 1000 50  0001 C CNN
	1    3900 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 1850 4750 1850
Wire Wire Line
	3900 700  5050 700 
Text Notes 4450 650  2    50   ~ 0
Can High (TX)
Text Notes 4450 1800 2    50   ~ 0
Can Low (RX)
Wire Wire Line
	3900 1600 3900 1850
$Comp
L Device:R terminatingResistor2
U 1 1 6159DE36
P 3900 1450
F 0 "terminatingResistor2" H 3970 1496 50  0000 L CNN
F 1 "120" H 3970 1405 50  0000 L CNN
F 2 "" V 3830 1450 50  0001 C CNN
F 3 "~" H 3900 1450 50  0001 C CNN
	1    3900 1450
	1    0    0    -1  
$EndComp
Text Notes 5900 4950 0    50   ~ 0
- Need a Voltage regulator!\n- Also need another way to get to 5V for the can line\n- Will the 5V break the microcontroller?
$Comp
L Device:Crystal 25MHz1
U 1 1 615ACE3B
P 10300 1200
F 0 "25MHz1" H 10300 1468 50  0000 C CNN
F 1 "Crystal" H 10300 1377 50  0000 C CNN
F 2 "" H 10300 1200 50  0001 C CNN
F 3 "~" H 10300 1200 50  0001 C CNN
	1    10300 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1200 10000 1200
Wire Wire Line
	10000 1200 10000 1450
Wire Wire Line
	10450 1200 10600 1200
Wire Wire Line
	10600 1200 10600 1450
$Comp
L Device:C 22pF1
U 1 1 615AEDFD
P 10000 1600
F 0 "22pF1" H 10115 1646 50  0000 L CNN
F 1 "C" H 10115 1555 50  0000 L CNN
F 2 "" H 10038 1450 50  0001 C CNN
F 3 "~" H 10000 1600 50  0001 C CNN
	1    10000 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C 22pF2
U 1 1 615AF477
P 10600 1600
F 0 "22pF2" H 10715 1646 50  0000 L CNN
F 1 "C" H 10715 1555 50  0000 L CNN
F 2 "" H 10638 1450 50  0001 C CNN
F 3 "~" H 10600 1600 50  0001 C CNN
	1    10600 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 615AFFEE
P 10000 1750
F 0 "#PWR04" H 10000 1500 50  0001 C CNN
F 1 "GND" H 10005 1577 50  0000 C CNN
F 2 "" H 10000 1750 50  0001 C CNN
F 3 "" H 10000 1750 50  0001 C CNN
	1    10000 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 615B04B5
P 10600 1750
F 0 "#PWR05" H 10600 1500 50  0001 C CNN
F 1 "GND" H 10605 1577 50  0000 C CNN
F 2 "" H 10600 1750 50  0001 C CNN
F 3 "" H 10600 1750 50  0001 C CNN
	1    10600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1200 10000 800 
Connection ~ 10000 1200
Wire Wire Line
	10600 1200 10600 800 
Connection ~ 10600 1200
Text GLabel 10000 800  0    50   Output ~ 0
ClockPin1
Text GLabel 10600 800  2    50   Output ~ 0
ClockPin2
Wire Notes Line
	9550 2150 9550 600 
Wire Notes Line
	9550 600  11100 600 
Wire Notes Line
	11100 2150 9550 2150
Wire Notes Line
	11100 600  11100 2150
Text Notes 9600 2100 0    50   ~ 0
Crystal Oscillator
Text Notes 650  6350 0    50   ~ 0
Just some screw pins tbh\n- Do we need 1 or 2 tho?\n- just one
Text GLabel 3700 1000 0    50   Input ~ 0
EnableUART
Wire Notes Line
	8300 4250 8300 6400
Wire Notes Line
	5800 4250 5800 6400
Wire Wire Line
	4750 1850 6250 1850
Wire Wire Line
	5050 700  6450 700 
Wire Wire Line
	6250 1850 6250 2050
Connection ~ 6250 1850
Wire Wire Line
	6250 1850 7450 1850
Wire Wire Line
	6450 700  6450 2050
Connection ~ 6450 700 
Wire Wire Line
	6450 700  7450 700 
Wire Notes Line
	7750 550  7750 4050
Wire Notes Line
	7750 4050 3050 4050
Wire Notes Line
	3050 4050 3050 550 
Wire Notes Line
	3050 550  7750 550 
Text Notes 3150 3950 0    50   ~ 0
Can bus line with multiplexer\n- Has Tri State Buffers to convert between Uart and CanBus
Text GLabel 6050 3250 3    50   Input ~ 0
UartEnable2
$EndSCHEMATC
