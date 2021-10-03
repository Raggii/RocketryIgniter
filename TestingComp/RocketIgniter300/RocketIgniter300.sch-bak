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
L 74xx:74LS125 U?
U 1 1 61595632
P 3100 1650
F 0 "U?" V 3146 1830 50  0000 L CNN
F 1 "74LS125" V 3055 1830 50  0000 L CNN
F 2 "" H 3100 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 3100 1650 50  0001 C CNN
	1    3100 1650
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS125 U?
U 2 1 61597E6D
P 6650 1650
F 0 "U?" V 6696 1830 50  0000 L CNN
F 1 "74LS125" V 6605 1830 50  0000 L CNN
F 2 "" H 6650 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 6650 1650 50  0001 C CNN
	2    6650 1650
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS125 U?
U 3 1 6159A0A2
P 9300 1100
F 0 "U?" H 9300 1417 50  0000 C CNN
F 1 "74LS125" H 9300 1326 50  0000 C CNN
F 2 "" H 9300 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 9300 1100 50  0001 C CNN
	3    9300 1100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U?
U 4 1 6159A77B
P 9950 1100
F 0 "U?" H 9950 1417 50  0000 C CNN
F 1 "74LS125" H 9950 1326 50  0000 C CNN
F 2 "" H 9950 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 9950 1100 50  0001 C CNN
	4    9950 1100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U?
U 5 1 6159B0FF
P 10650 1150
F 0 "U?" H 10880 1196 50  0000 L CNN
F 1 "74LS125" H 10880 1105 50  0000 L CNN
F 2 "" H 10650 1150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 10650 1150 50  0001 C CNN
	5    10650 1150
	1    0    0    -1  
$EndComp
Text Notes 8950 650  0    50   ~ 0
Extra TriStates if needed
$Comp
L Device:R terminatingResistor2
U 1 1 6159DE36
P 3100 2100
F 0 "terminatingResistor2" H 3170 2146 50  0000 L CNN
F 1 "120" H 3170 2055 50  0000 L CNN
F 2 "" V 3030 2100 50  0001 C CNN
F 3 "~" H 3100 2100 50  0001 C CNN
	1    3100 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R terminatingResistor
U 1 1 6159E746
P 6650 2100
F 0 "terminatingResistor" H 6720 2146 50  0000 L CNN
F 1 "120" H 6720 2055 50  0000 L CNN
F 2 "" V 6580 2100 50  0001 C CNN
F 3 "~" H 6650 2100 50  0001 C CNN
	1    6650 2100
	1    0    0    -1  
$EndComp
Text GLabel 3350 1650 2    50   Input ~ 0
EnableUART
Text GLabel 6900 1650 2    50   Input ~ 0
EnableUART
Wire Wire Line
	3100 2250 3100 2500
Wire Wire Line
	6650 2500 6650 2250
Text Notes 3650 2450 2    50   ~ 0
Can Low (RX)
Text Notes 3650 1300 2    50   ~ 0
Can High (TX)
$Comp
L 74xx:74LS158 U?
U 1 1 615A10CD
P 4550 3400
F 0 "U?" V 4596 2356 50  0000 R CNN
F 1 "74LS158" V 4505 2356 50  0000 R CNN
F 2 "" H 4550 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS158" H 4550 3400 50  0001 C CNN
	1    4550 3400
	0    -1   -1   0   
$EndComp
Text GLabel 3950 3900 3    50   Input ~ 0
Tx
Text GLabel 4250 3900 3    50   Input ~ 0
Rx
Text GLabel 4050 3900 3    50   Input ~ 0
CanHigh
Text GLabel 4350 3900 3    50   Input ~ 0
CanLow
Text GLabel 5150 3900 3    50   Input ~ 0
EnableUART
Text Notes 4400 2800 0    50   ~ 0
Check the operation of this\nWe want both A and B to switch when UART is enabled
$Comp
L power:GND #PWR?
U 1 1 615A4C91
P 5550 3400
F 0 "#PWR?" H 5550 3150 50  0001 C CNN
F 1 "GND" H 5555 3227 50  0000 C CNN
F 2 "" H 5550 3400 50  0001 C CNN
F 3 "" H 5550 3400 50  0001 C CNN
	1    5550 3400
	1    0    0    -1  
$EndComp
Text GLabel 3650 3400 0    50   Input ~ 0
5V
Wire Wire Line
	3100 1350 4250 1350
Wire Wire Line
	3100 2500 3950 2500
Wire Wire Line
	3950 2900 3950 2500
Connection ~ 3950 2500
Wire Wire Line
	3950 2500 5800 2500
Wire Wire Line
	4250 2900 4250 1350
Connection ~ 4250 1350
Wire Wire Line
	4250 1350 5550 1350
Wire Wire Line
	5800 750  5800 2500
Connection ~ 5800 2500
Wire Wire Line
	5800 2500 6650 2500
Wire Wire Line
	5550 1350 5550 750 
Connection ~ 5550 1350
Wire Wire Line
	5550 1350 6650 1350
Text Notes 5450 600  0    50   ~ 0
Coms Pins
NoConn ~ 4550 2900
NoConn ~ 4850 2900
NoConn ~ 4950 3900
NoConn ~ 4850 3900
NoConn ~ 4650 3900
NoConn ~ 4550 3900
$Comp
L MCU_ST_STM32F1:STM32F103CBTx U?
U 1 1 615A7919
P 9550 3900
F 0 "U?" H 9500 2311 50  0000 C CNN
F 1 "STM32F103CBTx" H 9500 2220 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 8950 2500 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 9550 3900 50  0001 C CNN
	1    9550 3900
	1    0    0    -1  
$EndComp
Text Notes 9450 2250 0    50   ~ 0
These are 3.3 - 3.6V \nThis simplifys stuff a whole bunch
Text Notes 8650 4800 1    50   ~ 0
Check pins on CubeIDE
Text Notes 10450 4800 1    50   ~ 0
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
L Interface_CAN_LIN:MCP2551-I-P U?
U 1 1 615AAE5D
P 1500 3000
F 0 "U?" H 1500 3581 50  0000 C CNN
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
L Interface_CAN_LIN:MCP2515-xSO U?
U 1 1 615AC1EE
P 1500 1550
F 0 "U?" H 1500 2531 50  0000 C CNN
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
	8300 6400 8300 3700
Wire Notes Line
	8300 3700 5800 3700
Wire Notes Line
	5800 3700 5800 6400
Wire Notes Line
	5800 6400 8300 6400
Text Notes 5900 4100 0    50   ~ 0
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
Text Notes 8950 5900 0    50   ~ 0
Might get the Nucleo stm32f103
Text Notes 5100 1050 0    50   ~ 0
Can we simulate this using bluetooth?\n- We could reuse that app again
Text Notes 2350 6300 0    50   ~ 0
Do we want this on the CanBus? \n- Could create disturbance which would be inconveniant
$Comp
L Connector_Generic:Conn_02x05_Top_Bottom j
U 1 1 615B716D
P 1400 4800
F 0 "j" H 1450 5217 50  0001 C CNN
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
$EndSCHEMATC
