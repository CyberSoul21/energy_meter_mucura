EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PCB Energy meter"
Date "2021-01-19"
Rev "3.0"
Comp "LABE - UNAL"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 9350 1350
Text Label 9250 1200 1    60   ~ 0
IOREF
Text Label 8900 1200 1    60   ~ 0
Vin
Text Label 8900 2450 0    60   ~ 0
A0
Text Label 8900 2550 0    60   ~ 0
A1
Text Label 8900 2650 0    60   ~ 0
A2
Text Label 8900 2750 0    60   ~ 0
A3
Text Label 8900 2850 0    60   ~ 0
A4
Text Label 8900 2950 0    60   ~ 0
A5
Text Label 8900 3050 0    60   ~ 0
A6
Text Label 8900 3150 0    60   ~ 0
A7
Text Label 8900 3400 0    60   ~ 0
A8
Text Label 8900 3500 0    60   ~ 0
A9
Text Label 8900 3600 0    60   ~ 0
A10
Text Label 8900 3700 0    60   ~ 0
A11
Text Label 8900 3800 0    60   ~ 0
A12
Text Label 8900 3900 0    60   ~ 0
A13
Text Label 8900 4000 0    60   ~ 0
A14
Text Label 8900 4100 0    60   ~ 0
A15
Text Label 10500 4650 1    60   ~ 0
22
Text Label 10400 4650 1    60   ~ 0
24
Text Label 10300 4650 1    60   ~ 0
26
Text Label 10200 4650 1    60   ~ 0
28
Text Label 10100 4650 1    60   ~ 0
30
Text Label 10000 4650 1    60   ~ 0
32
Text Label 9900 4650 1    60   ~ 0
34
Text Label 9800 4650 1    60   ~ 0
36
Text Label 9700 4650 1    60   ~ 0
38
Text Label 9600 4650 1    60   ~ 0
40
Text Label 9500 4650 1    60   ~ 0
42
Text Label 9400 4650 1    60   ~ 0
44
Text Label 9300 4650 1    60   ~ 0
46
Text Label 9200 4650 1    60   ~ 0
48
Text Label 9100 4650 1    60   ~ 0
50(MISO)
Text Label 9000 4650 1    60   ~ 0
52(SCK)
Text Label 10500 5650 1    60   ~ 0
23
Text Label 10400 5650 1    60   ~ 0
25
Text Label 10300 5650 1    60   ~ 0
27
Text Label 10100 5650 1    60   ~ 0
31
Text Label 10200 5650 1    60   ~ 0
29
Text Label 10000 5650 1    60   ~ 0
33
Text Label 9900 5650 1    60   ~ 0
35
Text Label 9800 5650 1    60   ~ 0
37
Text Label 9700 5650 1    60   ~ 0
39
Text Label 9600 5650 1    60   ~ 0
41
Text Label 9500 5650 1    60   ~ 0
43
Text Label 9400 5650 1    60   ~ 0
45
Text Label 9300 5650 1    60   ~ 0
47
Text Label 9200 5650 1    60   ~ 0
49
Text Label 9100 5750 1    60   ~ 0
51(MOSI)
Text Label 9000 5750 1    60   ~ 0
53(SS)
Text Label 10400 4100 0    60   ~ 0
21(SCL)
Text Label 10400 4000 0    60   ~ 0
20(SDA)
Text Label 10400 3900 0    60   ~ 0
19(Rx1)
Text Label 10400 3800 0    60   ~ 0
18(Tx1)
Text Label 10400 3700 0    60   ~ 0
17(Rx2)
Text Label 10400 3600 0    60   ~ 0
16(Tx2)
Text Label 10400 3500 0    60   ~ 0
15(Rx3)
Text Label 10400 3400 0    60   ~ 0
14(Tx3)
Text Label 10400 1550 0    60   ~ 0
13(**)
Text Label 10400 1650 0    60   ~ 0
12(**)
Text Label 10400 1750 0    60   ~ 0
11(**)
Text Label 10400 1850 0    60   ~ 0
10(**)
Text Label 10400 1950 0    60   ~ 0
9(**)
Text Label 10400 2050 0    60   ~ 0
8(**)
Text Label 10400 2450 0    60   ~ 0
7(**)
Text Label 10400 2550 0    60   ~ 0
6(**)
Text Label 10400 2650 0    60   ~ 0
5(**)
Text Label 10400 2750 0    60   ~ 0
4(**)
Text Label 10400 2850 0    60   ~ 0
3(**)
Text Label 10400 2950 0    60   ~ 0
2(**)
Text Label 10400 3050 0    60   ~ 0
1(Tx0)
Text Label 10400 3150 0    60   ~ 0
0(Rx0)
Text Label 10400 1250 0    60   ~ 0
SDA
Text Label 10400 1150 0    60   ~ 0
SCL
Text Label 10400 1350 0    60   ~ 0
AREF
Text Notes 8375 575  0    60   ~ 0
Shield for Arduino Mega Rev 3
Text Notes 10700 1000 0    60   ~ 0
Holes
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D70B71
P 10600 650
F 0 "P8" V 10700 650 31  0000 C CNN
F 1 "CONN_01X01" V 10700 650 50  0001 C CNN
F 2 "Socket_Arduino_Mega:Arduino_1pin" H 10600 650 50  0001 C CNN
F 3 "" H 10600 650 50  0000 C CNN
	1    10600 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P9
U 1 1 56D70C9B
P 10700 650
F 0 "P9" V 10800 650 31  0000 C CNN
F 1 "CONN_01X01" V 10800 650 50  0001 C CNN
F 2 "Socket_Arduino_Mega:Arduino_1pin" H 10700 650 50  0001 C CNN
F 3 "" H 10700 650 50  0000 C CNN
	1    10700 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P10
U 1 1 56D70CE6
P 10800 650
F 0 "P10" V 10900 650 31  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Mega:Arduino_1pin" H 10800 650 50  0001 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P11
U 1 1 56D70D2C
P 10900 650
F 0 "P11" V 11000 650 31  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Mega:Arduino_1pin" H 10900 650 50  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P12
U 1 1 56D711A2
P 11000 650
F 0 "P12" V 11100 650 31  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Mega:Arduino_1pin" H 11000 650 50  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P13
U 1 1 56D711F0
P 11100 650
F 0 "P13" V 11200 650 31  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Mega:Arduino_1pin" H 11100 650 50  0001 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10600 850 
NoConn ~ 10700 850 
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P2
U 1 1 56D71773
P 9550 1650
F 0 "P2" H 9550 2050 50  0000 C CNN
F 1 "Power" V 9650 1650 50  0000 C CNN
F 2 "Socket_Arduino_Mega:Socket_Strip_Arduino_1x08" H 9550 1650 50  0001 C CNN
F 3 "" H 9550 1650 50  0000 C CNN
	1    9550 1650
	1    0    0    -1  
$EndComp
Text Notes 9650 1350 0    60   ~ 0
1
$Comp
L power:+3V3 #PWR01
U 1 1 56D71AA9
P 9100 1200
F 0 "#PWR01" H 9100 1050 50  0001 C CNN
F 1 "+3.3V" V 9100 1450 50  0000 C CNN
F 2 "" H 9100 1200 50  0000 C CNN
F 3 "" H 9100 1200 50  0000 C CNN
	1    9100 1200
	1    0    0    -1  
$EndComp
Text Label 8600 1550 0    60   ~ 0
Reset
$Comp
L power:+5V #PWR02
U 1 1 56D71D10
P 9000 1050
F 0 "#PWR02" H 9000 900 50  0001 C CNN
F 1 "+5V" V 9000 1250 50  0000 C CNN
F 2 "" H 9000 1050 50  0000 C CNN
F 3 "" H 9000 1050 50  0000 C CNN
	1    9000 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D721E6
P 9250 2150
F 0 "#PWR03" H 9250 1900 50  0001 C CNN
F 1 "GND" H 9250 2000 50  0000 C CNN
F 2 "" H 9250 2150 50  0000 C CNN
F 3 "" H 9250 2150 50  0000 C CNN
	1    9250 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 P5
U 1 1 56D72368
P 9950 1550
F 0 "P5" H 9950 2050 50  0000 C CNN
F 1 "PWM" V 10050 1550 50  0000 C CNN
F 2 "Socket_Arduino_Mega:Socket_Strip_Arduino_1x10" H 9950 1550 50  0001 C CNN
F 3 "" H 9950 1550 50  0000 C CNN
	1    9950 1550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D72A3D
P 10250 2150
F 0 "#PWR04" H 10250 1900 50  0001 C CNN
F 1 "GND" H 10250 2000 50  0000 C CNN
F 2 "" H 10250 2150 50  0000 C CNN
F 3 "" H 10250 2150 50  0000 C CNN
	1    10250 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P3
U 1 1 56D72F1C
P 9550 2750
F 0 "P3" H 9550 3150 50  0000 C CNN
F 1 "Analog" V 9650 2750 50  0000 C CNN
F 2 "Socket_Arduino_Mega:Socket_Strip_Arduino_1x08" H 9550 2750 50  0001 C CNN
F 3 "" H 9550 2750 50  0000 C CNN
	1    9550 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P6
U 1 1 56D734D0
P 9950 2750
F 0 "P6" H 9950 3150 50  0000 C CNN
F 1 "PWM" V 10050 2750 50  0000 C CNN
F 2 "Socket_Arduino_Mega:Socket_Strip_Arduino_1x08" H 9950 2750 50  0001 C CNN
F 3 "" H 9950 2750 50  0000 C CNN
	1    9950 2750
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D73A0E
P 9550 3700
F 0 "P4" H 9550 4100 50  0000 C CNN
F 1 "Analog" V 9650 3700 50  0000 C CNN
F 2 "Socket_Arduino_Mega:Socket_Strip_Arduino_1x08" H 9550 3700 50  0001 C CNN
F 3 "" H 9550 3700 50  0000 C CNN
	1    9550 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P7
U 1 1 56D73F2C
P 9950 3700
F 0 "P7" H 9950 4100 50  0000 C CNN
F 1 "Communication" V 10050 3700 50  0000 C CNN
F 2 "Socket_Arduino_Mega:Socket_Strip_Arduino_1x08" H 9950 3700 50  0001 C CNN
F 3 "" H 9950 3700 50  0000 C CNN
	1    9950 3700
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x18_Odd_Even P1
U 1 1 56D743B5
P 9700 5050
F 0 "P1" H 9700 6000 50  0000 C CNN
F 1 "Digital" V 9700 5050 50  0000 C CNN
F 2 "Socket_Arduino_Mega:Socket_Strip_Arduino_2x18" H 9700 4000 50  0001 C CNN
F 3 "" H 9700 4000 50  0000 C CNN
	1    9700 5050
	0    -1   1    0   
$EndComp
Wire Wire Line
	9100 1200 9100 1650
Wire Wire Line
	9250 1450 9250 1200
Wire Wire Line
	9350 1450 9250 1450
Wire Notes Line
	10450 1000 10450 500 
Wire Notes Line
	11200 1000 10450 1000
Wire Notes Line
	9850 650  9850 475 
Wire Notes Line
	8350 650  9850 650 
Wire Wire Line
	9100 1650 9350 1650
Wire Wire Line
	9000 1050 9000 1750
Wire Wire Line
	9000 1750 9350 1750
Wire Wire Line
	9350 2050 8900 2050
Wire Wire Line
	8900 2050 8900 1200
Wire Wire Line
	8600 1550 9350 1550
Wire Wire Line
	9350 1850 9250 1850
Wire Wire Line
	9250 1850 9250 1950
Wire Wire Line
	9250 1950 9250 2150
Wire Wire Line
	9350 1950 9250 1950
Connection ~ 9250 1950
Wire Wire Line
	10150 1150 10400 1150
Wire Wire Line
	10400 1250 10150 1250
Wire Wire Line
	10150 1350 10400 1350
Wire Wire Line
	10150 1550 10400 1550
Wire Wire Line
	10400 1650 10150 1650
Wire Wire Line
	10150 1750 10400 1750
Wire Wire Line
	10150 1850 10400 1850
Wire Wire Line
	10400 1950 10150 1950
Wire Wire Line
	10150 2050 10400 2050
Wire Wire Line
	10250 2150 10250 1450
Wire Wire Line
	10250 1450 10150 1450
Wire Wire Line
	9350 2450 8900 2450
Wire Wire Line
	8900 2550 9350 2550
Wire Wire Line
	9350 2650 8900 2650
Wire Wire Line
	8900 2750 9350 2750
Wire Wire Line
	9350 2850 8900 2850
Wire Wire Line
	8900 2950 9350 2950
Wire Wire Line
	9350 3050 8900 3050
Wire Wire Line
	8900 3150 9350 3150
Wire Wire Line
	10400 2450 10150 2450
Wire Wire Line
	10150 2550 10400 2550
Wire Wire Line
	10400 2650 10150 2650
Wire Wire Line
	10150 2750 10400 2750
Wire Wire Line
	10400 2850 10150 2850
Wire Wire Line
	10150 2950 10400 2950
Wire Wire Line
	10400 3050 10150 3050
Wire Wire Line
	10150 3150 10400 3150
Wire Wire Line
	9350 3400 8900 3400
Wire Wire Line
	8900 3500 9350 3500
Wire Wire Line
	9350 3600 8900 3600
Wire Wire Line
	8900 3700 9350 3700
Wire Wire Line
	9350 3800 8900 3800
Wire Wire Line
	8900 3900 9350 3900
Wire Wire Line
	9350 4000 8900 4000
Wire Wire Line
	8900 4100 9350 4100
Wire Wire Line
	10400 3400 10150 3400
Wire Wire Line
	10150 3500 10400 3500
Wire Wire Line
	10400 3600 10150 3600
Wire Wire Line
	10150 3700 10400 3700
Wire Wire Line
	10400 3800 10150 3800
Wire Wire Line
	10150 3900 10400 3900
Wire Wire Line
	10400 4000 10150 4000
Wire Wire Line
	10150 4100 10400 4100
Wire Wire Line
	10500 4850 10500 4650
Wire Wire Line
	10400 4850 10400 4650
Wire Wire Line
	10300 4850 10300 4650
Wire Wire Line
	10200 4850 10200 4650
Wire Wire Line
	10100 4850 10100 4650
Wire Wire Line
	10000 4850 10000 4650
Wire Wire Line
	9900 4850 9900 4650
Wire Wire Line
	9800 4850 9800 4650
Wire Wire Line
	9700 4850 9700 4650
Wire Wire Line
	9600 4850 9600 4650
Wire Wire Line
	9500 4850 9500 4650
Wire Wire Line
	9400 4850 9400 4650
Wire Wire Line
	9300 4850 9300 4650
Wire Wire Line
	9200 4850 9200 4650
Wire Wire Line
	9100 4850 9100 4650
Wire Wire Line
	9000 4850 9000 4650
Wire Wire Line
	10500 5350 10500 5650
Wire Wire Line
	10400 5350 10400 5650
Wire Wire Line
	10300 5350 10300 5650
Wire Wire Line
	10200 5350 10200 5650
Wire Wire Line
	10100 5350 10100 5650
Wire Wire Line
	10000 5350 10000 5650
Wire Wire Line
	9900 5350 9900 5650
Wire Wire Line
	9800 5350 9800 5650
Wire Wire Line
	9700 5350 9700 5650
Wire Wire Line
	9600 5350 9600 5650
Wire Wire Line
	9500 5350 9500 5650
Wire Wire Line
	9400 5350 9400 5650
Wire Wire Line
	9300 5350 9300 5650
Wire Wire Line
	9200 5350 9200 5650
Wire Wire Line
	9100 5350 9100 5750
Wire Wire Line
	9000 5350 9000 5750
Wire Wire Line
	8900 4850 8650 4850
$Comp
L power:GND #PWR05
U 1 1 56D758F6
P 8650 5750
F 0 "#PWR05" H 8650 5500 50  0001 C CNN
F 1 "GND" H 8650 5600 50  0000 C CNN
F 2 "" H 8650 5750 50  0000 C CNN
F 3 "" H 8650 5750 50  0000 C CNN
	1    8650 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 5350 8650 5350
Connection ~ 8650 5350
Wire Wire Line
	10750 5350 10600 5350
Wire Wire Line
	10750 4850 10600 4850
$Comp
L power:+5V #PWR06
U 1 1 56D75AB8
P 10750 4550
F 0 "#PWR06" H 10750 4400 50  0001 C CNN
F 1 "+5V" H 10750 4690 50  0000 C CNN
F 2 "" H 10750 4550 50  0000 C CNN
F 3 "" H 10750 4550 50  0000 C CNN
	1    10750 4550
	1    0    0    -1  
$EndComp
Connection ~ 10750 4850
Wire Wire Line
	10750 4550 10750 4850
Wire Wire Line
	10750 4850 10750 5350
Wire Wire Line
	8650 4850 8650 5350
Wire Wire Line
	8650 5350 8650 5750
Wire Notes Line
	11200 6050 8350 6050
Wire Notes Line
	8350 6050 8350 500 
Wire Notes Line
	5050 2600 5050 750 
Wire Notes Line
	850  750  5050 750 
Text Label 1600 6100 3    60   ~ 0
20(SDA)
Text Label 1500 6100 3    60   ~ 0
21(SCL)
$Comp
L power:GND #PWR014
U 1 1 6010627C
P 1800 6250
F 0 "#PWR014" H 1800 6000 50  0001 C CNN
F 1 "GND" H 1800 6100 50  0000 C CNN
F 2 "" H 1800 6250 50  0000 C CNN
F 3 "" H 1800 6250 50  0000 C CNN
	1    1800 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 60106DD7
P 1700 6250
F 0 "#PWR012" H 1700 6100 50  0001 C CNN
F 1 "+5V" V 1700 6450 50  0000 C CNN
F 2 "" H 1700 6250 50  0000 C CNN
F 3 "" H 1700 6250 50  0000 C CNN
	1    1700 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 6250 1700 6100
Wire Wire Line
	1800 6100 1800 6250
Text Label 3200 3400 3    60   ~ 0
21(SCL)
Text Label 3300 3400 3    60   ~ 0
20(SDA)
$Comp
L power:+5V #PWR023
U 1 1 6011A119
P 3400 3550
F 0 "#PWR023" H 3400 3400 50  0001 C CNN
F 1 "+5V" V 3400 3750 50  0000 C CNN
F 2 "" H 3400 3550 50  0000 C CNN
F 3 "" H 3400 3550 50  0000 C CNN
	1    3400 3550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 6011A58E
P 3500 3550
F 0 "#PWR024" H 3500 3300 50  0001 C CNN
F 1 "GND" H 3500 3400 50  0000 C CNN
F 2 "" H 3500 3550 50  0000 C CNN
F 3 "" H 3500 3550 50  0000 C CNN
	1    3500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3550 3400 3400
Wire Wire Line
	3500 3400 3500 3550
$Comp
L power:+5V #PWR09
U 1 1 601264A6
P 1350 7050
F 0 "#PWR09" H 1350 6900 50  0001 C CNN
F 1 "+5V" V 1350 7250 50  0000 C CNN
F 2 "" H 1350 7050 50  0000 C CNN
F 3 "" H 1350 7050 50  0000 C CNN
	1    1350 7050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 6012688F
P 1700 7050
F 0 "#PWR013" H 1700 6800 50  0001 C CNN
F 1 "GND" H 1700 6900 50  0000 C CNN
F 2 "" H 1700 7050 50  0000 C CNN
F 3 "" H 1700 7050 50  0000 C CNN
	1    1700 7050
	1    0    0    -1  
$EndComp
Text Label 1500 6950 3    60   ~ 0
14(Tx3)
Text Label 1600 6950 3    60   ~ 0
15(Rx3)
Wire Wire Line
	1350 7050 1350 6950
Wire Wire Line
	1350 6950 1400 6950
Wire Wire Line
	1700 6950 1700 7050
Text Label 1500 5200 3    60   ~ 0
50(MISO)
Text Label 1600 5200 3    60   ~ 0
51(MOSI)
Text Label 1700 5200 3    60   ~ 0
52(SCK)
Text Label 1800 5200 3    60   ~ 0
53(SS)
$Comp
L power:GND #PWR07
U 1 1 60133BC5
P 1200 5300
F 0 "#PWR07" H 1200 5050 50  0001 C CNN
F 1 "GND" H 1200 5150 50  0000 C CNN
F 2 "" H 1200 5300 50  0000 C CNN
F 3 "" H 1200 5300 50  0000 C CNN
	1    1200 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 601343FC
P 1350 5300
F 0 "#PWR08" H 1350 5150 50  0001 C CNN
F 1 "+5V" V 1350 5500 50  0000 C CNN
F 2 "" H 1350 5300 50  0000 C CNN
F 3 "" H 1350 5300 50  0000 C CNN
	1    1350 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 5300 1200 5200
Wire Wire Line
	1200 5200 1300 5200
Wire Wire Line
	1350 5300 1350 5200
Wire Wire Line
	1350 5200 1400 5200
Text Label 1150 3400 3    50   ~ 0
VSS
Text Label 1250 3400 3    50   ~ 0
VDD
Text Label 1350 3400 3    50   ~ 0
VE
Text Label 1450 3400 3    50   ~ 0
RegSE
Text Label 1550 3400 3    50   ~ 0
RW
Text Label 1650 3400 3    50   ~ 0
Enable
Text Label 1750 3400 3    50   ~ 0
DP0
Text Label 2450 3400 3    50   ~ 0
DP7
Text Label 2350 3400 3    50   ~ 0
DP6
Text Label 2250 3400 3    50   ~ 0
DP5
Text Label 2150 3400 3    50   ~ 0
DP4
Text Label 2050 3400 3    50   ~ 0
DP3
Text Label 1950 3400 3    50   ~ 0
DP2
Text Label 1850 3400 3    50   ~ 0
DP1
Text Label 2550 3400 3    50   ~ 0
LEDP
Text Label 2650 3400 3    50   ~ 0
LEDN
Text Label 1150 4150 3    50   ~ 0
VSS
Text Label 1250 4150 3    50   ~ 0
VDD
Text Label 1350 4150 3    50   ~ 0
VE
Text Label 1450 4150 3    50   ~ 0
RegSE
Text Label 1550 4150 3    50   ~ 0
RW
Text Label 1650 4150 3    50   ~ 0
Enable
Text Label 1750 4150 3    50   ~ 0
DP0
Text Label 2450 4150 3    50   ~ 0
DP7
Text Label 2350 4150 3    50   ~ 0
DP6
Text Label 2250 4150 3    50   ~ 0
DP5
Text Label 2150 4150 3    50   ~ 0
DP4
Text Label 2050 4150 3    50   ~ 0
DP3
Text Label 1950 4150 3    50   ~ 0
DP2
Text Label 1850 4150 3    50   ~ 0
DP1
Text Label 2550 4150 3    50   ~ 0
LEDP
Text Label 2650 4150 3    50   ~ 0
LEDN
Wire Notes Line
	900  4450 4400 4450
Wire Notes Line
	4400 4450 4400 2800
Wire Notes Line
	900  2800 900  4450
Text Notes 1000 2950 0    50   ~ 0
LCD
Wire Notes Line
	900  4750 900  7450
Wire Notes Line
	900  7450 4400 7450
Wire Notes Line
	4400 7450 4400 4750
Wire Notes Line
	4400 4750 900  4750
Text Notes 1050 4850 0    50   ~ 0
Modules
$Comp
L Connector_Generic:Conn_01x16 J4
U 1 1 601DCD5F
P 1850 3200
F 0 "J4" V 2067 3146 50  0000 C CNN
F 1 "I2C_pins_interfaces" V 1976 3146 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 1850 3200 50  0001 C CNN
F 3 "~" H 1850 3200 50  0001 C CNN
	1    1850 3200
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x16 J5
U 1 1 601E9FDF
P 1850 3950
F 0 "J5" V 2067 3896 50  0000 C CNN
F 1 "pins_LCD" V 1976 3896 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 1850 3950 50  0001 C CNN
F 3 "~" H 1850 3950 50  0001 C CNN
	1    1850 3950
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 601F08CB
P 3300 3200
F 0 "J6" V 3264 2912 50  0000 R CNN
F 1 "I2C_interface" V 3173 2912 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3300 3200 50  0001 C CNN
F 3 "~" H 3300 3200 50  0001 C CNN
	1    3300 3200
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 601F27D0
P 1500 5000
F 0 "J1" V 1464 4612 50  0000 R CNN
F 1 "memory_SD" V 1373 4612 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1500 5000 50  0001 C CNN
F 3 "~" H 1500 5000 50  0001 C CNN
	1    1500 5000
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 601F3B8E
P 1500 5900
F 0 "J2" V 1464 5512 50  0000 R CNN
F 1 "RTC" V 1373 5512 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1500 5900 50  0001 C CNN
F 3 "~" H 1500 5900 50  0001 C CNN
	1    1500 5900
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 601F52BE
P 1500 6750
F 0 "J3" V 1464 6462 50  0000 R CNN
F 1 "sensor" V 1373 6462 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1500 6750 50  0001 C CNN
F 3 "~" H 1500 6750 50  0001 C CNN
	1    1500 6750
	0    -1   -1   0   
$EndComp
Wire Notes Line
	4400 2800 900  2800
Wire Notes Line
	850  2600 5050 2600
Text Notes 1400 850  0    50   ~ 0
Buttons Control
Wire Notes Line
	850  750  850  2600
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 60106B23
P 3200 5050
F 0 "J7" H 3280 5092 50  0000 L CNN
F 1 "Aux" H 3280 5001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3200 5050 50  0001 C CNN
F 3 "~" H 3200 5050 50  0001 C CNN
	1    3200 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J8
U 1 1 60107531
P 3200 5400
F 0 "J8" H 3280 5442 50  0000 L CNN
F 1 "Aux" H 3280 5351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3200 5400 50  0001 C CNN
F 3 "~" H 3200 5400 50  0001 C CNN
	1    3200 5400
	1    0    0    -1  
$EndComp
Text Label 3000 5050 2    60   ~ 0
50(MISO)
Text Label 3000 5400 2    60   ~ 0
50(MISO)
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 60109BF9
P 3200 5750
F 0 "J9" H 3280 5792 50  0000 L CNN
F 1 "Aux" H 3280 5701 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3200 5750 50  0001 C CNN
F 3 "~" H 3200 5750 50  0001 C CNN
	1    3200 5750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J10
U 1 1 6010A019
P 3200 6100
F 0 "J10" H 3280 6142 50  0000 L CNN
F 1 "Aux" H 3280 6051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3200 6100 50  0001 C CNN
F 3 "~" H 3200 6100 50  0001 C CNN
	1    3200 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 6010EC3A
P 2600 6300
F 0 "#PWR010" H 2600 6050 50  0001 C CNN
F 1 "GND" H 2600 6150 50  0000 C CNN
F 2 "" H 2600 6300 50  0000 C CNN
F 3 "" H 2600 6300 50  0000 C CNN
	1    2600 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 6010F076
P 2750 6300
F 0 "#PWR015" H 2750 6150 50  0001 C CNN
F 1 "+5V" V 2750 6500 50  0000 C CNN
F 2 "" H 2750 6300 50  0000 C CNN
F 3 "" H 2750 6300 50  0000 C CNN
	1    2750 6300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 5750 2600 5750
Wire Wire Line
	2600 5750 2600 6300
Wire Wire Line
	3000 6100 2750 6100
Wire Wire Line
	2750 6100 2750 6300
$Comp
L Connector_Generic:Conn_01x01 J11
U 1 1 6011BA29
P 3200 6600
F 0 "J11" H 3280 6642 50  0000 L CNN
F 1 "Aux" H 3280 6551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3200 6600 50  0001 C CNN
F 3 "~" H 3200 6600 50  0001 C CNN
	1    3200 6600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J12
U 1 1 6011BE85
P 3200 6950
F 0 "J12" H 3280 6992 50  0000 L CNN
F 1 "Aux" H 3280 6901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3200 6950 50  0001 C CNN
F 3 "~" H 3200 6950 50  0001 C CNN
	1    3200 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 6011BE8F
P 2600 7150
F 0 "#PWR011" H 2600 6900 50  0001 C CNN
F 1 "GND" H 2600 7000 50  0000 C CNN
F 2 "" H 2600 7150 50  0000 C CNN
F 3 "" H 2600 7150 50  0000 C CNN
	1    2600 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 6011BE99
P 2750 7150
F 0 "#PWR016" H 2750 7000 50  0001 C CNN
F 1 "+5V" V 2750 7350 50  0000 C CNN
F 2 "" H 2750 7150 50  0000 C CNN
F 3 "" H 2750 7150 50  0000 C CNN
	1    2750 7150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 6600 2600 6600
Wire Wire Line
	2600 6600 2600 7150
Wire Wire Line
	3000 6950 2750 6950
Wire Wire Line
	2750 6950 2750 7150
$EndSCHEMATC
