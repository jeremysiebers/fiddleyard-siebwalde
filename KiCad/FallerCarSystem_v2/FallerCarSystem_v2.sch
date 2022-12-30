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
L Connector:Conn_01x01_Male J15
U 1 1 63A588D8
P 900 1200
F 0 "J15" H 1008 1381 50  0000 C CNN
F 1 "Conn_01x01_Male" H 1008 1290 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 900 1200 50  0001 C CNN
F 3 "~" H 900 1200 50  0001 C CNN
	1    900  1200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J16
U 1 1 63A5972C
P 900 1600
F 0 "J16" H 1008 1781 50  0000 C CNN
F 1 "Conn_01x01_Male" H 1008 1690 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 900 1600 50  0001 C CNN
F 3 "~" H 900 1600 50  0001 C CNN
	1    900  1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J17
U 1 1 63A59ACE
P 900 2250
F 0 "J17" H 1008 2431 50  0000 C CNN
F 1 "Conn_01x01_Male" H 1008 2340 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 900 2250 50  0001 C CNN
F 3 "~" H 900 2250 50  0001 C CNN
	1    900  2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J18
U 1 1 63A59EA3
P 900 2500
F 0 "J18" H 1008 2681 50  0000 C CNN
F 1 "Conn_01x01_Male" H 1008 2590 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 900 2500 50  0001 C CNN
F 3 "~" H 900 2500 50  0001 C CNN
	1    900  2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J4
U 1 1 63A5A0E9
P 800 4800
F 0 "J4" H 908 4981 50  0000 C CNN
F 1 "Conn_01x01_Male" H 908 4890 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 800 4800 50  0001 C CNN
F 3 "~" H 800 4800 50  0001 C CNN
	1    800  4800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 63A5A634
P 1600 1050
F 0 "#PWR02" H 1600 900 50  0001 C CNN
F 1 "+5V" H 1615 1223 50  0000 C CNN
F 2 "" H 1600 1050 50  0001 C CNN
F 3 "" H 1600 1050 50  0001 C CNN
	1    1600 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 63A5AC82
P 1600 1750
F 0 "#PWR03" H 1600 1500 50  0001 C CNN
F 1 "GND" H 1605 1577 50  0000 C CNN
F 2 "" H 1600 1750 50  0001 C CNN
F 3 "" H 1600 1750 50  0001 C CNN
	1    1600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1200 1600 1200
Wire Wire Line
	1600 1200 1600 1050
Wire Wire Line
	1100 1600 1600 1600
Wire Wire Line
	1600 1600 1600 1750
$Comp
L power:+5V #PWR018
U 1 1 63A5F762
P 5000 750
F 0 "#PWR018" H 5000 600 50  0001 C CNN
F 1 "+5V" H 5015 923 50  0000 C CNN
F 2 "" H 5000 750 50  0001 C CNN
F 3 "" H 5000 750 50  0001 C CNN
	1    5000 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 63A600FA
P 5000 3250
F 0 "#PWR019" H 5000 3000 50  0001 C CNN
F 1 "GND" H 5005 3077 50  0000 C CNN
F 2 "" H 5000 3250 50  0001 C CNN
F 3 "" H 5000 3250 50  0001 C CNN
	1    5000 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 63A60619
P 5250 1050
F 0 "C4" H 5365 1096 50  0000 L CNN
F 1 "10uF" H 5365 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5288 900 50  0001 C CNN
F 3 "~" H 5250 1050 50  0001 C CNN
	1    5250 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 63A60EC3
P 5250 1250
F 0 "#PWR020" H 5250 1000 50  0001 C CNN
F 1 "GND" H 5255 1077 50  0000 C CNN
F 2 "" H 5250 1250 50  0001 C CNN
F 3 "" H 5250 1250 50  0001 C CNN
	1    5250 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 63A61633
P 3550 2850
F 0 "R8" H 3480 2804 50  0000 R CNN
F 1 "10k" V 3550 2950 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3480 2850 50  0001 C CNN
F 3 "~" H 3550 2850 50  0001 C CNN
	1    3550 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 850  5000 850 
Wire Wire Line
	5000 850  5000 750 
Wire Wire Line
	5250 850  5250 900 
Wire Wire Line
	5250 1250 5250 1200
Text GLabel 1600 2250 2    50   Input ~ 0
BATT
Wire Wire Line
	1600 2250 1100 2250
$Comp
L power:GND #PWR04
U 1 1 63A65FFB
P 1600 2550
F 0 "#PWR04" H 1600 2300 50  0001 C CNN
F 1 "GND" H 1605 2377 50  0000 C CNN
F 2 "" H 1600 2550 50  0001 C CNN
F 3 "" H 1600 2550 50  0001 C CNN
	1    1600 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2500 1600 2500
Text GLabel 8100 1350 2    50   Input ~ 0
BATT
Wire Wire Line
	5700 2000 5800 2000
Wire Wire Line
	5700 2200 5800 2200
Wire Wire Line
	5800 2200 5800 2000
Connection ~ 5800 2000
$Comp
L power:+5V #PWR013
U 1 1 63A6BB27
P 4000 2700
F 0 "#PWR013" H 4000 2550 50  0001 C CNN
F 1 "+5V" V 4015 2828 50  0000 L CNN
F 2 "" H 4000 2700 50  0001 C CNN
F 3 "" H 4000 2700 50  0001 C CNN
	1    4000 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 2900 4150 2900
Wire Wire Line
	4150 2900 4150 2700
Connection ~ 4150 2700
Wire Wire Line
	4150 2700 4300 2700
Wire Wire Line
	4300 2500 3550 2500
$Comp
L power:GND #PWR012
U 1 1 63A6E23B
P 3300 3250
F 0 "#PWR012" H 3300 3000 50  0001 C CNN
F 1 "GND" H 3305 3077 50  0000 C CNN
F 2 "" H 3300 3250 50  0001 C CNN
F 3 "" H 3300 3250 50  0001 C CNN
	1    3300 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 63A6EC9E
P 3300 2850
F 0 "R7" H 3230 2804 50  0000 R CNN
F 1 "220k" V 3300 2950 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3230 2850 50  0001 C CNN
F 3 "~" H 3300 2850 50  0001 C CNN
	1    3300 2850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 63A6F06A
P 3050 2850
F 0 "R4" H 2980 2804 50  0000 R CNN
F 1 "18k" V 3050 2950 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2980 2850 50  0001 C CNN
F 3 "~" H 3050 2850 50  0001 C CNN
	1    3050 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 2100 3050 2100
Wire Wire Line
	4300 2300 3300 2300
Wire Wire Line
	4300 2200 4150 2200
Wire Wire Line
	4150 2200 4150 2700
Wire Wire Line
	4300 1900 4150 1900
Wire Wire Line
	4150 1900 4150 2200
Connection ~ 4150 2200
Wire Wire Line
	4300 1700 4150 1700
Wire Wire Line
	4150 1700 4150 1900
Connection ~ 4150 1900
$Comp
L Device:R R12
U 1 1 63A73328
P 6300 2500
F 0 "R12" V 6400 2500 50  0000 C CNN
F 1 "470" V 6300 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6230 2500 50  0001 C CNN
F 3 "~" H 6300 2500 50  0001 C CNN
	1    6300 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R13
U 1 1 63A73DB9
P 6300 2700
F 0 "R13" V 6400 2700 50  0000 C CNN
F 1 "470" V 6300 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6230 2700 50  0001 C CNN
F 3 "~" H 6300 2700 50  0001 C CNN
	1    6300 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R14
U 1 1 63A74012
P 6300 2800
F 0 "R14" V 6200 2800 50  0000 C CNN
F 1 "470" V 6300 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6230 2800 50  0001 C CNN
F 3 "~" H 6300 2800 50  0001 C CNN
	1    6300 2800
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 63A74172
P 7250 1700
F 0 "#PWR024" H 7250 1550 50  0001 C CNN
F 1 "+5V" H 7265 1873 50  0000 C CNN
F 2 "" H 7250 1700 50  0001 C CNN
F 3 "" H 7250 1700 50  0001 C CNN
	1    7250 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 63A74EA4
P 7250 2150
F 0 "D3" V 7289 2032 50  0000 R CNN
F 1 "LED" V 7198 2032 50  0000 R CNN
F 2 "LED_SMD:LED_0402_1005Metric" H 7250 2150 50  0001 C CNN
F 3 "~" H 7250 2150 50  0001 C CNN
	1    7250 2150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 63A75CC2
P 6950 2150
F 0 "D2" V 6989 2032 50  0000 R CNN
F 1 "LED" V 6898 2032 50  0000 R CNN
F 2 "LED_SMD:LED_0402_1005Metric" H 6950 2150 50  0001 C CNN
F 3 "~" H 6950 2150 50  0001 C CNN
	1    6950 2150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 63A7609B
P 7550 2150
F 0 "D4" V 7589 2032 50  0000 R CNN
F 1 "LED" V 7498 2032 50  0000 R CNN
F 2 "LED_SMD:LED_0402_1005Metric" H 7550 2150 50  0001 C CNN
F 3 "~" H 7550 2150 50  0001 C CNN
	1    7550 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 2500 6950 2500
Wire Wire Line
	6950 2500 6950 2300
Wire Wire Line
	6450 2700 7250 2700
Wire Wire Line
	7250 2700 7250 2300
Wire Wire Line
	6450 2800 7550 2800
Wire Wire Line
	7550 2800 7550 2300
Wire Wire Line
	6950 2000 6950 1850
Wire Wire Line
	6950 1850 7250 1850
Connection ~ 7250 1850
Wire Wire Line
	7250 1850 7250 2000
Wire Wire Line
	7550 2000 7550 1850
Wire Wire Line
	7550 1850 7250 1850
Text Notes 2800 850  0    50   ~ 0
PROG1 (Fast charge current regulation)\nIreg(mA) = 1000V/Rprog1(kOhm)\n18k = 55mA
Text Notes 2800 1100 0    50   ~ 0
PROG2 (USB port current regulation select)\nPROG2  = High --> max 500mA
Text Notes 2800 1400 0    50   ~ 0
PROG3 (Charge termination)\nItermination(mA) = 1000V / Rprog3(kOhm)\n220k = 4.55mA (100k is max...)
Text Notes 2800 1650 0    50   ~ 0
THERM (Battery temperature monitor)\n10k = not used
$Comp
L Diode:SM6T6V8A D1
U 1 1 63A7E703
P 1650 1400
F 0 "D1" V 1604 1480 50  0000 L CNN
F 1 "SMAJ5.0A/AC" V 1695 1480 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 1650 1200 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/sm6t.pdf" H 1600 1400 50  0001 C CNN
	1    1650 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 1200 1650 1200
Connection ~ 1600 1200
Wire Wire Line
	1650 1600 1600 1600
Connection ~ 1600 1600
Wire Wire Line
	1650 1200 1650 1250
Wire Wire Line
	1650 1550 1650 1600
Wire Wire Line
	5000 3250 5000 3200
Wire Wire Line
	3300 3250 3300 3100
Wire Wire Line
	3550 3000 3550 3100
Wire Wire Line
	3550 3100 3300 3100
Connection ~ 3300 3100
Wire Wire Line
	3300 3100 3300 3000
Wire Wire Line
	3300 3100 3050 3100
Wire Wire Line
	3050 3100 3050 3000
Wire Wire Line
	3050 2700 3050 2100
Wire Wire Line
	3300 2300 3300 2700
Wire Wire Line
	3550 2500 3550 2700
$Comp
L Device:C C1
U 1 1 63AA6F19
P 2350 4150
F 0 "C1" H 2465 4196 50  0000 L CNN
F 1 "0.1uF" H 2465 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2388 4000 50  0001 C CNN
F 3 "~" H 2350 4150 50  0001 C CNN
	1    2350 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 63AA6F1F
P 2350 4350
F 0 "#PWR08" H 2350 4100 50  0001 C CNN
F 1 "GND" H 2355 4177 50  0000 C CNN
F 2 "" H 2350 4350 50  0001 C CNN
F 3 "" H 2350 4350 50  0001 C CNN
	1    2350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3950 2350 4000
Wire Wire Line
	2350 4350 2350 4300
$Comp
L power:GND #PWR017
U 1 1 63AAAA21
P 4900 5800
F 0 "#PWR017" H 4900 5550 50  0001 C CNN
F 1 "GND" H 4905 5627 50  0000 C CNN
F 2 "" H 4900 5800 50  0001 C CNN
F 3 "" H 4900 5800 50  0001 C CNN
	1    4900 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 63AACB0D
P 2800 4350
F 0 "R3" H 2730 4304 50  0000 R CNN
F 1 "4.7k" H 2730 4395 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2730 4350 50  0001 C CNN
F 3 "~" H 2800 4350 50  0001 C CNN
	1    2800 4350
	-1   0    0    1   
$EndComp
$Comp
L power:+3V8 #PWR011
U 1 1 63AAD5A4
P 2800 3900
F 0 "#PWR011" H 2800 3750 50  0001 C CNN
F 1 "+3V8" H 2815 4073 50  0000 C CNN
F 2 "" H 2800 3900 50  0001 C CNN
F 3 "" H 2800 3900 50  0001 C CNN
	1    2800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4650 2800 4650
Wire Wire Line
	2800 4650 2800 4500
$Comp
L Connector:Conn_01x01_Male J5
U 1 1 63AB0FC7
P 800 5050
F 0 "J5" H 908 5231 50  0000 C CNN
F 1 "Conn_01x01_Male" H 908 5140 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 800 5050 50  0001 C CNN
F 3 "~" H 800 5050 50  0001 C CNN
	1    800  5050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J6
U 1 1 63AB11E3
P 800 5300
F 0 "J6" H 908 5481 50  0000 C CNN
F 1 "Conn_01x01_Male" H 908 5390 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 800 5300 50  0001 C CNN
F 3 "~" H 800 5300 50  0001 C CNN
	1    800  5300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J7
U 1 1 63AB141E
P 800 5550
F 0 "J7" H 908 5731 50  0000 C CNN
F 1 "Conn_01x01_Male" H 908 5640 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 800 5550 50  0001 C CNN
F 3 "~" H 800 5550 50  0001 C CNN
	1    800  5550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J8
U 1 1 63AB1726
P 800 5800
F 0 "J8" H 908 5981 50  0000 C CNN
F 1 "Conn_01x01_Male" H 908 5890 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 800 5800 50  0001 C CNN
F 3 "~" H 800 5800 50  0001 C CNN
	1    800  5800
	1    0    0    -1  
$EndComp
Text GLabel 1400 4800 2    50   Output ~ 0
Vpp
Text GLabel 1400 5550 2    50   Output ~ 0
ICSPDATA
Text GLabel 1400 5800 2    50   Output ~ 0
ICSPCLK
Wire Wire Line
	1400 5550 1000 5550
Wire Wire Line
	1400 5800 1000 5800
Wire Wire Line
	1400 4800 1000 4800
$Comp
L power:GND #PWR07
U 1 1 63AB6131
P 1900 5350
F 0 "#PWR07" H 1900 5100 50  0001 C CNN
F 1 "GND" H 1905 5177 50  0000 C CNN
F 2 "" H 1900 5350 50  0001 C CNN
F 3 "" H 1900 5350 50  0001 C CNN
	1    1900 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V8 #PWR06
U 1 1 63AB64B1
P 1900 5000
F 0 "#PWR06" H 1900 4850 50  0001 C CNN
F 1 "+3V8" H 1915 5173 50  0000 C CNN
F 2 "" H 1900 5000 50  0001 C CNN
F 3 "" H 1900 5000 50  0001 C CNN
	1    1900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 5050 1900 5050
Wire Wire Line
	1900 5050 1900 5000
Wire Wire Line
	1900 5350 1900 5300
Wire Wire Line
	1900 5300 1000 5300
Text GLabel 2450 4650 0    50   Input ~ 0
Vpp
Wire Wire Line
	2450 4650 2800 4650
Connection ~ 2800 4650
Text GLabel 3400 4350 0    50   Input ~ 0
ICSPDATA
Text GLabel 3400 4450 0    50   Input ~ 0
ICSPCLK
Wire Wire Line
	3400 4350 3600 4350
Wire Wire Line
	3600 4450 3400 4450
$Comp
L Device:R R1
U 1 1 63AC09A9
P 2600 6200
F 0 "R1" H 2530 6154 50  0000 R CNN
F 1 "4.7k" H 2530 6245 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2530 6200 50  0001 C CNN
F 3 "~" H 2600 6200 50  0001 C CNN
	1    2600 6200
	-1   0    0    1   
$EndComp
$Comp
L power:+3V8 #PWR09
U 1 1 63AC0E5B
P 2600 5800
F 0 "#PWR09" H 2600 5650 50  0001 C CNN
F 1 "+3V8" H 2615 5973 50  0000 C CNN
F 2 "" H 2600 5800 50  0001 C CNN
F 3 "" H 2600 5800 50  0001 C CNN
	1    2600 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 63AC12F0
P 2600 6700
F 0 "R2" H 2530 6654 50  0000 R CNN
F 1 "4.7k" H 2530 6745 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2530 6700 50  0001 C CNN
F 3 "~" H 2600 6700 50  0001 C CNN
	1    2600 6700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 63AC15E1
P 2600 7150
F 0 "#PWR010" H 2600 6900 50  0001 C CNN
F 1 "GND" H 2605 6977 50  0000 C CNN
F 2 "" H 2600 7150 50  0001 C CNN
F 3 "" H 2600 7150 50  0001 C CNN
	1    2600 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 63AC1984
P 2950 6700
F 0 "C2" H 3065 6746 50  0000 L CNN
F 1 "0.1uF" H 3065 6655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2988 6550 50  0001 C CNN
F 3 "~" H 2950 6700 50  0001 C CNN
	1    2950 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5800 2600 6050
Wire Wire Line
	2600 6350 2600 6450
Wire Wire Line
	2600 6850 2600 7000
Wire Wire Line
	2950 6850 2950 7000
Wire Wire Line
	2950 7000 2600 7000
Connection ~ 2600 7000
Wire Wire Line
	2600 7000 2600 7150
Wire Wire Line
	2950 6550 2950 6450
Wire Wire Line
	2950 6450 2600 6450
Connection ~ 2600 6450
Wire Wire Line
	2600 6450 2600 6550
Text GLabel 2400 6450 0    50   Input ~ 0
Vbatt
Wire Wire Line
	2400 6450 2600 6450
Text GLabel 6400 4450 2    50   Input ~ 0
Vbatt
$Comp
L Device:C C3
U 1 1 63AE97E6
P 4200 6700
F 0 "C3" H 4315 6746 50  0000 L CNN
F 1 "4.7uF" H 4315 6655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4238 6550 50  0001 C CNN
F 3 "~" H 4200 6700 50  0001 C CNN
	1    4200 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 63AEA235
P 6050 6650
F 0 "C5" H 6165 6696 50  0000 L CNN
F 1 "4.7uF" H 6165 6605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6088 6500 50  0001 C CNN
F 3 "~" H 6050 6650 50  0001 C CNN
	1    6050 6650
	1    0    0    -1  
$EndComp
Text Notes 2500 7700 0    50   ~ 0
R1 = R2 ( (Vout-Vadj)/Vadj )\nVout = LDO Output Voltage\nVadj = ADJ Pin Voltage (typically 0.41V)\n--> Vout = 1.3V
$Comp
L power:+3V8 #PWR014
U 1 1 63AF9320
P 4200 6200
F 0 "#PWR014" H 4200 6050 50  0001 C CNN
F 1 "+3V8" H 4215 6373 50  0000 C CNN
F 2 "" H 4200 6200 50  0001 C CNN
F 3 "" H 4200 6200 50  0001 C CNN
	1    4200 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 63AFCB95
P 4200 7400
F 0 "#PWR015" H 4200 7150 50  0001 C CNN
F 1 "GND" H 4205 7227 50  0000 C CNN
F 2 "" H 4200 7400 50  0001 C CNN
F 3 "" H 4200 7400 50  0001 C CNN
	1    4200 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 6700 4600 6900
Wire Wire Line
	4600 6900 4200 6900
Wire Wire Line
	4200 6850 4200 6900
Connection ~ 4200 6900
$Comp
L Connector:Conn_01x01_Male J9
U 1 1 63B04F32
P 800 6300
F 0 "J9" H 908 6481 50  0000 C CNN
F 1 "Conn_01x01_Male" H 908 6390 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 800 6300 50  0001 C CNN
F 3 "~" H 800 6300 50  0001 C CNN
	1    800  6300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J10
U 1 1 63B05692
P 800 6550
F 0 "J10" H 908 6731 50  0000 C CNN
F 1 "Conn_01x01_Male" H 908 6640 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 800 6550 50  0001 C CNN
F 3 "~" H 800 6550 50  0001 C CNN
	1    800  6550
	1    0    0    -1  
$EndComp
Text GLabel 6250 6400 2    50   Input ~ 0
MOTOR+
Wire Wire Line
	6250 6400 6050 6400
Wire Wire Line
	6050 6500 6050 6400
Connection ~ 6050 6400
Wire Wire Line
	6050 6400 5700 6400
$Comp
L power:GND #PWR021
U 1 1 63B119CE
P 5700 7400
F 0 "#PWR021" H 5700 7150 50  0001 C CNN
F 1 "GND" H 5705 7227 50  0000 C CNN
F 2 "" H 5700 7400 50  0001 C CNN
F 3 "" H 5700 7400 50  0001 C CNN
	1    5700 7400
	1    0    0    -1  
$EndComp
Text GLabel 4550 6500 0    50   Input ~ 0
EnMOT
Wire Wire Line
	4700 6600 4650 6600
Wire Wire Line
	4650 6600 4650 6500
Wire Wire Line
	4650 6500 4550 6500
$Comp
L Device:R R10
U 1 1 63B1882C
P 5700 6700
F 0 "R10" H 5630 6654 50  0000 R CNN
F 1 "47k" H 5630 6745 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5630 6700 50  0001 C CNN
F 3 "~" H 5700 6700 50  0001 C CNN
	1    5700 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 63B18F6F
P 5700 7100
F 0 "R11" H 5630 7054 50  0000 R CNN
F 1 "22k" H 5630 7145 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5630 7100 50  0001 C CNN
F 3 "~" H 5700 7100 50  0001 C CNN
	1    5700 7100
	-1   0    0    1   
$EndComp
NoConn ~ 5450 6600
Wire Wire Line
	5450 6500 5550 6500
Wire Wire Line
	5550 6500 5550 6900
Wire Wire Line
	5550 6900 5700 6900
Wire Wire Line
	5700 6900 5700 6850
Wire Wire Line
	5700 6550 5700 6400
Connection ~ 5700 6400
Wire Wire Line
	5700 6400 5450 6400
Wire Wire Line
	5700 6900 5700 6950
Connection ~ 5700 6900
NoConn ~ 5450 6700
Wire Wire Line
	4200 6900 4200 7400
Wire Wire Line
	5700 7250 5700 7400
Text GLabel 1400 6300 2    50   Input ~ 0
MOTOR+
$Comp
L power:GND #PWR022
U 1 1 63B38D23
P 6050 7400
F 0 "#PWR022" H 6050 7150 50  0001 C CNN
F 1 "GND" H 6055 7227 50  0000 C CNN
F 2 "" H 6050 7400 50  0001 C CNN
F 3 "" H 6050 7400 50  0001 C CNN
	1    6050 7400
	1    0    0    -1  
$EndComp
Text GLabel 6400 4550 2    50   Input ~ 0
EnMOT
Wire Wire Line
	6400 4550 6200 4550
$Comp
L Device:R R9
U 1 1 63B4BCCF
P 4650 7100
F 0 "R9" H 4580 7054 50  0000 R CNN
F 1 "4.7k" H 4580 7145 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4580 7100 50  0001 C CNN
F 3 "~" H 4650 7100 50  0001 C CNN
	1    4650 7100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 6600 4650 6950
Connection ~ 4650 6600
$Comp
L power:GND #PWR016
U 1 1 63B4FB9B
P 4650 7400
F 0 "#PWR016" H 4650 7150 50  0001 C CNN
F 1 "GND" H 4655 7227 50  0000 C CNN
F 2 "" H 4650 7400 50  0001 C CNN
F 3 "" H 4650 7400 50  0001 C CNN
	1    4650 7400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J11
U 1 1 63B591F9
P 800 6850
F 0 "J11" H 908 7031 50  0000 C CNN
F 1 "Conn_01x01_Male" H 908 6940 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 800 6850 50  0001 C CNN
F 3 "~" H 800 6850 50  0001 C CNN
	1    800  6850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J12
U 1 1 63B59457
P 800 7100
F 0 "J12" H 908 7281 50  0000 C CNN
F 1 "Conn_01x01_Male" H 908 7190 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 800 7100 50  0001 C CNN
F 3 "~" H 800 7100 50  0001 C CNN
	1    800  7100
	1    0    0    -1  
$EndComp
Text GLabel 1400 6850 2    50   Input ~ 0
SWONOFF_OUT
Wire Wire Line
	1400 6850 1000 6850
$Comp
L Device:C C6
U 1 1 63B6168F
P 8000 2150
F 0 "C6" H 8115 2196 50  0000 L CNN
F 1 "4.7uF" H 8115 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8038 2000 50  0001 C CNN
F 3 "~" H 8000 2150 50  0001 C CNN
	1    8000 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 63B623B8
P 8000 3250
F 0 "#PWR025" H 8000 3000 50  0001 C CNN
F 1 "GND" H 8005 3077 50  0000 C CNN
F 2 "" H 8000 3250 50  0001 C CNN
F 3 "" H 8000 3250 50  0001 C CNN
	1    8000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3250 8000 2300
Wire Wire Line
	6650 2000 6650 1350
Wire Wire Line
	6650 1350 8000 1350
Wire Wire Line
	5800 2000 6650 2000
Wire Wire Line
	8000 2000 8000 1350
Connection ~ 8000 1350
Wire Wire Line
	8000 1350 8100 1350
Text GLabel 5900 1700 2    50   Output ~ 0
SWONOFF_OUT
Wire Wire Line
	5900 1700 5800 1700
$Comp
L Connector:Conn_01x01_Male J14
U 1 1 63B89B76
P 800 7700
F 0 "J14" H 908 7881 50  0000 C CNN
F 1 "Conn_01x01_Male" H 908 7790 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 800 7700 50  0001 C CNN
F 3 "~" H 800 7700 50  0001 C CNN
	1    800  7700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J13
U 1 1 63B89FA4
P 800 7450
F 0 "J13" H 908 7631 50  0000 C CNN
F 1 "Conn_01x01_Male" H 908 7540 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 800 7450 50  0001 C CNN
F 3 "~" H 800 7450 50  0001 C CNN
	1    800  7450
	1    0    0    -1  
$EndComp
Text GLabel 1400 7700 2    50   Output ~ 0
RCS_IN
Wire Wire Line
	1000 7700 1400 7700
$Comp
L Device:R R15
U 1 1 63B9D80B
P 3000 5250
F 0 "R15" H 2930 5204 50  0000 R CNN
F 1 "4.7k" H 2930 5295 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2930 5250 50  0001 C CNN
F 3 "~" H 3000 5250 50  0001 C CNN
	1    3000 5250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 63BA79EA
P 3000 5500
F 0 "#PWR023" H 3000 5250 50  0001 C CNN
F 1 "GND" H 3005 5327 50  0000 C CNN
F 2 "" H 3000 5500 50  0001 C CNN
F 3 "" H 3000 5500 50  0001 C CNN
	1    3000 5500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J1
U 1 1 63BACD6F
P 800 3850
F 0 "J1" H 908 4031 50  0000 C CNN
F 1 "Conn_01x01_Male" H 908 3940 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 800 3850 50  0001 C CNN
F 3 "~" H 800 3850 50  0001 C CNN
	1    800  3850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J2
U 1 1 63BAD092
P 800 4100
F 0 "J2" H 908 4281 50  0000 C CNN
F 1 "Conn_01x01_Male" H 908 4190 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 800 4100 50  0001 C CNN
F 3 "~" H 800 4100 50  0001 C CNN
	1    800  4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 63BAD3E2
P 800 4350
F 0 "J3" H 908 4531 50  0000 C CNN
F 1 "Conn_01x01_Male" H 908 4440 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 800 4350 50  0001 C CNN
F 3 "~" H 800 4350 50  0001 C CNN
	1    800  4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 63BAD67A
P 1900 4400
F 0 "#PWR05" H 1900 4150 50  0001 C CNN
F 1 "GND" H 1905 4227 50  0000 C CNN
F 2 "" H 1900 4400 50  0001 C CNN
F 3 "" H 1900 4400 50  0001 C CNN
	1    1900 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4400 1900 4350
Wire Wire Line
	1900 4350 1000 4350
Text GLabel 1400 3850 2    50   Input ~ 0
UART_TX
Wire Wire Line
	1400 3850 1000 3850
Text GLabel 1400 4100 2    50   Output ~ 0
UART_RX
Wire Wire Line
	1400 4100 1000 4100
Text GLabel 6850 4350 2    50   Output ~ 0
UART_TX
Text GLabel 2450 4800 0    50   Input ~ 0
UART_RX
$Comp
L Device:R R5
U 1 1 63BC9D85
P 6550 4350
F 0 "R5" V 6450 4350 50  0000 C CNN
F 1 "200" V 6550 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6480 4350 50  0001 C CNN
F 3 "~" H 6550 4350 50  0001 C CNN
	1    6550 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 63BCA259
P 2750 4800
F 0 "R6" V 2650 4800 50  0000 C CNN
F 1 "200" V 2750 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2680 4800 50  0001 C CNN
F 3 "~" H 2750 4800 50  0001 C CNN
	1    2750 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 4800 2450 4800
Wire Wire Line
	6850 4350 6700 4350
$Comp
L Connector:Conn_01x01_Male J19
U 1 1 63BE8DD5
P 9100 750
F 0 "J19" H 9208 931 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 840 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 750 50  0001 C CNN
F 3 "~" H 9100 750 50  0001 C CNN
	1    9100 750 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J20
U 1 1 63BE8DDB
P 9100 1000
F 0 "J20" H 9208 1181 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 1090 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 1000 50  0001 C CNN
F 3 "~" H 9100 1000 50  0001 C CNN
	1    9100 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J21
U 1 1 63BE8DE1
P 9100 1250
F 0 "J21" H 9208 1431 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 1340 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 1250 50  0001 C CNN
F 3 "~" H 9100 1250 50  0001 C CNN
	1    9100 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J22
U 1 1 63BE8DE7
P 9100 1500
F 0 "J22" H 9208 1681 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 1590 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 1500 50  0001 C CNN
F 3 "~" H 9100 1500 50  0001 C CNN
	1    9100 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J24
U 1 1 63BE8DED
P 9100 2000
F 0 "J24" H 9208 2181 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 2090 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 2000 50  0001 C CNN
F 3 "~" H 9100 2000 50  0001 C CNN
	1    9100 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J23
U 1 1 63BE8DF3
P 9100 1750
F 0 "J23" H 9208 1931 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 1840 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 1750 50  0001 C CNN
F 3 "~" H 9100 1750 50  0001 C CNN
	1    9100 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 63BEECD0
P 10650 5700
F 0 "#PWR026" H 10650 5450 50  0001 C CNN
F 1 "GND" H 10655 5527 50  0000 C CNN
F 2 "" H 10650 5700 50  0001 C CNN
F 3 "" H 10650 5700 50  0001 C CNN
	1    10650 5700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J25
U 1 1 63C0E82A
P 9100 2250
F 0 "J25" H 9208 2431 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 2340 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 2250 50  0001 C CNN
F 3 "~" H 9100 2250 50  0001 C CNN
	1    9100 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J26
U 1 1 63C0E830
P 9100 2500
F 0 "J26" H 9208 2681 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 2590 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 2500 50  0001 C CNN
F 3 "~" H 9100 2500 50  0001 C CNN
	1    9100 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J27
U 1 1 63C0E836
P 9100 2750
F 0 "J27" H 9208 2931 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 2840 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 2750 50  0001 C CNN
F 3 "~" H 9100 2750 50  0001 C CNN
	1    9100 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J28
U 1 1 63C0E83C
P 9100 3000
F 0 "J28" H 9208 3181 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 3090 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 3000 50  0001 C CNN
F 3 "~" H 9100 3000 50  0001 C CNN
	1    9100 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J30
U 1 1 63C0E842
P 9100 3500
F 0 "J30" H 9208 3681 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 3590 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 3500 50  0001 C CNN
F 3 "~" H 9100 3500 50  0001 C CNN
	1    9100 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J29
U 1 1 63C0E848
P 9100 3250
F 0 "J29" H 9208 3431 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 3340 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 3250 50  0001 C CNN
F 3 "~" H 9100 3250 50  0001 C CNN
	1    9100 3250
	1    0    0    -1  
$EndComp
Text GLabel 9950 750  2    50   Input ~ 0
PWM1
Text GLabel 9950 1250 2    50   Input ~ 0
PWM2
Text GLabel 9950 2250 2    50   Input ~ 0
PWM4
Text GLabel 9950 2750 2    50   Input ~ 0
PWM5
Text GLabel 9950 3250 2    50   Input ~ 0
PWM6
Text GLabel 9950 1750 2    50   Input ~ 0
PWM3
$Comp
L Device:R R16
U 1 1 63CA1005
P 9700 750
F 0 "R16" V 9907 750 50  0000 C CNN
F 1 "150" V 9816 750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9630 750 50  0001 C CNN
F 3 "~" H 9700 750 50  0001 C CNN
	1    9700 750 
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 63CA1A25
P 9700 1250
F 0 "R17" V 9907 1250 50  0000 C CNN
F 1 "150" V 9816 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9630 1250 50  0001 C CNN
F 3 "~" H 9700 1250 50  0001 C CNN
	1    9700 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R18
U 1 1 63CA1D94
P 9700 1750
F 0 "R18" V 9907 1750 50  0000 C CNN
F 1 "150" V 9816 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9630 1750 50  0001 C CNN
F 3 "~" H 9700 1750 50  0001 C CNN
	1    9700 1750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R19
U 1 1 63CAE9AF
P 9700 2250
F 0 "R19" V 9907 2250 50  0000 C CNN
F 1 "150" V 9816 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9630 2250 50  0001 C CNN
F 3 "~" H 9700 2250 50  0001 C CNN
	1    9700 2250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R20
U 1 1 63CAEC42
P 9700 2750
F 0 "R20" V 9907 2750 50  0000 C CNN
F 1 "150" V 9816 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9630 2750 50  0001 C CNN
F 3 "~" H 9700 2750 50  0001 C CNN
	1    9700 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R21
U 1 1 63CAEF23
P 9700 3250
F 0 "R21" V 9907 3250 50  0000 C CNN
F 1 "150" V 9816 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9630 3250 50  0001 C CNN
F 3 "~" H 9700 3250 50  0001 C CNN
	1    9700 3250
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J31
U 1 1 63CAF31E
P 9100 3750
F 0 "J31" H 9208 3931 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 3840 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 3750 50  0001 C CNN
F 3 "~" H 9100 3750 50  0001 C CNN
	1    9100 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J32
U 1 1 63CAF4CB
P 9100 4000
F 0 "J32" H 9208 4181 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 4090 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 4000 50  0001 C CNN
F 3 "~" H 9100 4000 50  0001 C CNN
	1    9100 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J33
U 1 1 63CAF6B3
P 9100 4250
F 0 "J33" H 9208 4431 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 4340 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 4250 50  0001 C CNN
F 3 "~" H 9100 4250 50  0001 C CNN
	1    9100 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J34
U 1 1 63CAF8CF
P 9100 4500
F 0 "J34" H 9208 4681 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 4590 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 4500 50  0001 C CNN
F 3 "~" H 9100 4500 50  0001 C CNN
	1    9100 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 63CAFB00
P 9700 3750
F 0 "R22" V 9907 3750 50  0000 C CNN
F 1 "150" V 9816 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9630 3750 50  0001 C CNN
F 3 "~" H 9700 3750 50  0001 C CNN
	1    9700 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R23
U 1 1 63CB001C
P 9700 4250
F 0 "R23" V 9907 4250 50  0000 C CNN
F 1 "150" V 9816 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9630 4250 50  0001 C CNN
F 3 "~" H 9700 4250 50  0001 C CNN
	1    9700 4250
	0    -1   -1   0   
$EndComp
Text GLabel 9950 4250 2    50   Input ~ 0
LEDA
Text GLabel 9950 3750 2    50   Input ~ 0
LEDB
Text GLabel 6400 4750 2    50   Output ~ 0
PWM2
Text GLabel 6400 4850 2    50   Output ~ 0
PWM1
Text GLabel 6400 4650 2    50   Output ~ 0
PWM3
Text GLabel 6400 4950 2    50   Output ~ 0
PWM4
Wire Wire Line
	6400 4850 6200 4850
Text GLabel 6400 5050 2    50   Output ~ 0
PWM5
Text GLabel 3500 5350 0    50   Output ~ 0
PWM6
Text GLabel 3350 4750 0    50   Output ~ 0
LEDB
Text GLabel 3350 4850 0    50   Output ~ 0
LEDA
Wire Wire Line
	3600 4750 3350 4750
Wire Wire Line
	3350 4850 3600 4850
Wire Wire Line
	9300 750  9550 750 
Wire Wire Line
	9850 750  9950 750 
Wire Wire Line
	9300 1250 9550 1250
Wire Wire Line
	9850 1250 9950 1250
Wire Wire Line
	9300 1750 9550 1750
Wire Wire Line
	9850 1750 9950 1750
Wire Wire Line
	9300 2250 9550 2250
Wire Wire Line
	9850 2250 9950 2250
Wire Wire Line
	9950 2750 9850 2750
Wire Wire Line
	9550 2750 9300 2750
Wire Wire Line
	9300 3250 9550 3250
Wire Wire Line
	9850 3250 9950 3250
Wire Wire Line
	9550 3750 9300 3750
Wire Wire Line
	9550 4250 9300 4250
Wire Wire Line
	2350 3950 2800 3950
Wire Wire Line
	2800 3900 2800 3950
Connection ~ 2800 3950
Wire Wire Line
	2800 3950 2800 4200
$Comp
L Connector:Conn_01x01_Male J35
U 1 1 63EB2097
P 9100 4750
F 0 "J35" H 9208 4931 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 4840 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 4750 50  0001 C CNN
F 3 "~" H 9100 4750 50  0001 C CNN
	1    9100 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J36
U 1 1 63EB209D
P 9100 5000
F 0 "J36" H 9208 5181 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 5090 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 5000 50  0001 C CNN
F 3 "~" H 9100 5000 50  0001 C CNN
	1    9100 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 63EB20A3
P 9700 4750
F 0 "R24" V 9907 4750 50  0000 C CNN
F 1 "150" V 9816 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9630 4750 50  0001 C CNN
F 3 "~" H 9700 4750 50  0001 C CNN
	1    9700 4750
	0    -1   -1   0   
$EndComp
Text GLabel 9950 5250 2    50   Input ~ 0
LEDC
Wire Wire Line
	9550 4750 9300 4750
$Comp
L Connector:Conn_01x01_Male J37
U 1 1 63EBA680
P 9100 5250
F 0 "J37" H 9208 5431 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 5340 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 5250 50  0001 C CNN
F 3 "~" H 9100 5250 50  0001 C CNN
	1    9100 5250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J38
U 1 1 63EBA686
P 9100 5500
F 0 "J38" H 9208 5681 50  0000 C CNN
F 1 "Conn_01x01_Male" H 9208 5590 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_0.5x1.0mm" H 9100 5500 50  0001 C CNN
F 3 "~" H 9100 5500 50  0001 C CNN
	1    9100 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 63EBA68C
P 9700 5250
F 0 "R25" V 9907 5250 50  0000 C CNN
F 1 "150" V 9816 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9630 5250 50  0001 C CNN
F 3 "~" H 9700 5250 50  0001 C CNN
	1    9700 5250
	0    -1   -1   0   
$EndComp
Text GLabel 9950 4750 2    50   Input ~ 0
LEDD
Wire Wire Line
	9550 5250 9300 5250
Text GLabel 3500 5150 0    50   Output ~ 0
LEDD
Text GLabel 3500 5250 0    50   Output ~ 0
LEDC
Wire Wire Line
	9300 1000 10650 1000
Wire Wire Line
	10650 1000 10650 1500
Wire Wire Line
	9300 1500 10650 1500
Connection ~ 10650 1500
Wire Wire Line
	10650 1500 10650 2000
Wire Wire Line
	9300 2000 10650 2000
Connection ~ 10650 2000
Wire Wire Line
	10650 2000 10650 2500
Wire Wire Line
	9300 2500 10650 2500
Connection ~ 10650 2500
Wire Wire Line
	10650 2500 10650 3000
Wire Wire Line
	9300 3000 10650 3000
Connection ~ 10650 3000
Wire Wire Line
	10650 3000 10650 3500
Wire Wire Line
	9300 3500 10650 3500
Connection ~ 10650 3500
Wire Wire Line
	10650 3500 10650 4000
Wire Wire Line
	9300 4000 10650 4000
Connection ~ 10650 4000
Wire Wire Line
	10650 4000 10650 4500
Wire Wire Line
	9300 4500 10650 4500
Connection ~ 10650 4500
Wire Wire Line
	10650 4500 10650 5000
Wire Wire Line
	9300 5000 10650 5000
Connection ~ 10650 5000
Wire Wire Line
	10650 5000 10650 5500
Wire Wire Line
	9300 5500 10650 5500
Connection ~ 10650 5500
Wire Wire Line
	10650 5500 10650 5700
Wire Wire Line
	1000 7450 1900 7450
$Comp
L power:+3V8 #PWR0101
U 1 1 63FB71ED
P 2150 7000
F 0 "#PWR0101" H 2150 6850 50  0001 C CNN
F 1 "+3V8" H 2165 7173 50  0000 C CNN
F 2 "" H 2150 7000 50  0001 C CNN
F 3 "" H 2150 7000 50  0001 C CNN
	1    2150 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 7000 2150 7100
Wire Wire Line
	1000 7100 1900 7100
Wire Wire Line
	1900 7100 1900 7450
Connection ~ 1900 7100
Wire Wire Line
	1900 7100 2150 7100
Wire Wire Line
	1400 6300 1000 6300
$Comp
L power:GND #PWR0102
U 1 1 63FD86A9
P 1350 6600
F 0 "#PWR0102" H 1350 6350 50  0001 C CNN
F 1 "GND" H 1355 6427 50  0000 C CNN
F 2 "" H 1350 6600 50  0001 C CNN
F 3 "" H 1350 6600 50  0001 C CNN
	1    1350 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 6200 4200 6400
Connection ~ 4200 6400
Wire Wire Line
	4200 6400 4200 6550
Wire Wire Line
	4200 6400 4700 6400
Wire Wire Line
	6400 4750 6200 4750
Wire Wire Line
	6400 4650 6200 4650
Wire Wire Line
	6400 4950 6200 4950
Wire Wire Line
	6400 5050 6200 5050
Wire Wire Line
	3600 5350 3500 5350
Text GLabel 2650 5050 0    50   Input ~ 0
RCS_IN
Wire Wire Line
	6400 4450 6200 4450
Wire Wire Line
	6400 4350 6200 4350
Wire Wire Line
	3600 4550 3000 4550
Wire Wire Line
	3000 4550 3000 4800
Wire Wire Line
	3000 4800 2900 4800
Wire Wire Line
	2650 5050 3000 5050
Wire Wire Line
	3000 5050 3000 5100
Connection ~ 3000 5050
Wire Wire Line
	3000 5050 3600 5050
Wire Wire Line
	3000 5400 3000 5500
Wire Wire Line
	4650 7400 4650 7250
Wire Wire Line
	1000 6550 1350 6550
Wire Wire Line
	1350 6550 1350 6600
Wire Wire Line
	2800 3950 4900 3950
Wire Wire Line
	4900 3950 4900 4050
Wire Wire Line
	4000 2700 4150 2700
Wire Wire Line
	7250 1850 7250 1700
Wire Wire Line
	4900 5800 4900 5650
Wire Wire Line
	1600 2500 1600 2550
Wire Wire Line
	6050 6800 6050 7400
Wire Wire Line
	5000 850  5000 1400
Connection ~ 5000 850 
Wire Wire Line
	9850 3750 9950 3750
Wire Wire Line
	9950 4250 9850 4250
Wire Wire Line
	9950 4750 9850 4750
Wire Wire Line
	9850 5250 9950 5250
Wire Wire Line
	3500 5150 3600 5150
Wire Wire Line
	3600 5250 3500 5250
Text Label 5800 2800 0    50   ~ 0
STAT2
Text Label 5800 2700 0    50   ~ 0
STAT1
Wire Wire Line
	5700 2800 6150 2800
Wire Wire Line
	6150 2700 5700 2700
$Comp
L Battery_Management:MCP73871-2AA U2
U 1 1 63A20AF7
P 5000 2300
F 0 "U2" H 5400 1450 50  0000 C CNN
F 1 "MCP73871-2AA" H 4600 3150 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-20-1EP_4x4mm_P0.5mm_EP2.5x2.5mm_ThermalVias" H 5200 1400 50  0001 L CIN
F 3 "http://www.mouser.com/ds/2/268/22090a-52174.pdf" H 4850 2850 50  0001 C CNN
	1    5000 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2500 6150 2500
Text Label 5800 2500 0    50   ~ 0
PG
$Comp
L FallerCarSystem_v2-rescue:PIC16F15345-I_GZ-MCU_Microchip_PIC16 U1
U 1 1 640D206D
P 4900 4850
F 0 "U1" H 4900 5831 50  0000 C CNN
F 1 "PIC16F15345-I_GZ-MCU_Microchip_PIC16" H 5800 5650 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-20-1EP_4x4mm_P0.5mm_EP2.7x2.7mm_ThermalVias" H 4900 4850 50  0001 C CNN
F 3 "" H 4900 4850 50  0001 C CNN
	1    4900 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 6700 4700 6700
$Comp
L FallerCarSystem_v2-rescue:MCP1725-ADJE_MC_DFN-8-Regulator_Linear U3
U 1 1 6410C2A5
P 5100 6550
F 0 "U3" H 5075 6965 50  0000 C CNN
F 1 "MCP1725-ADJE_MC_DFN-8-Regulator_Linear" H 5075 6874 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_3x2mm_P0.5mm_EP1.36x1.46mm_ThermalVias" H 5100 6150 50  0001 C CNN
F 3 "" H 5100 6400 50  0001 C CNN
	1    5100 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 641DD2D2
P 6200 1050
F 0 "C7" H 6315 1096 50  0000 L CNN
F 1 "4.7uF" H 6315 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6238 900 50  0001 C CNN
F 3 "~" H 6200 1050 50  0001 C CNN
	1    6200 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 641DD61C
P 6200 1250
F 0 "#PWR01" H 6200 1000 50  0001 C CNN
F 1 "GND" H 6205 1077 50  0000 C CNN
F 2 "" H 6200 1250 50  0001 C CNN
F 3 "" H 6200 1250 50  0001 C CNN
	1    6200 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1250 6200 1200
Wire Wire Line
	5800 1700 5800 850 
Wire Wire Line
	5800 850  6200 850 
Wire Wire Line
	6200 850  6200 900 
Connection ~ 5800 1700
Wire Wire Line
	5800 1700 5700 1700
$EndSCHEMATC
