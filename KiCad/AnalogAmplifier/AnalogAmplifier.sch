EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Analog Track Amplifier"
Date "2023-03-15"
Rev "1.1"
Comp "Siebwalde"
Comment1 "Re-Drawn and updated by: JSIF"
Comment2 "Org by: JMWG SIEBERS"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:DB15_Male_MountingHoles J1
U 1 1 6412375F
P 1400 1900
F 0 "J1" H 1555 1809 50  0000 L CNN
F 1 "DB15_Male_MountingHoles" H 900 2850 50  0000 L CNN
F 2 "" H 1400 1900 50  0001 C CNN
F 3 " ~" H 1400 1900 50  0001 C CNN
	1    1400 1900
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC547 Q3
U 1 1 641254CC
P 3800 4350
F 0 "Q3" H 3991 4396 50  0000 L CNN
F 1 "BC547" H 3991 4305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4000 4275 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 3800 4350 50  0001 L CNN
	1    3800 4350
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC557 Q6
U 1 1 6412606D
P 5650 4350
F 0 "Q6" H 5841 4304 50  0000 L CNN
F 1 "BC557" H 5841 4395 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5850 4275 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC556BTA-D.pdf" H 5650 4350 50  0001 L CNN
	1    5650 4350
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:2N3055 Q9
U 1 1 641268DB
P 8000 2400
F 0 "Q9" H 8190 2446 50  0000 L CNN
F 1 "2N3055" H 8190 2355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-3" H 8200 2325 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N3055-D.PDF" H 8000 2400 50  0001 L CNN
	1    8000 2400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC141 Q8
U 1 1 6412707A
P 7600 1800
F 0 "Q8" H 7791 1846 50  0000 L CNN
F 1 "BC141" H 7791 1755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 7800 1725 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/296634.pdf" H 7600 1800 50  0001 L CNN
	1    7600 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR03
U 1 1 6412B44F
P 2200 1000
F 0 "#PWR03" H 2200 850 50  0001 C CNN
F 1 "+15V" H 2215 1173 50  0000 C CNN
F 2 "" H 2200 1000 50  0001 C CNN
F 3 "" H 2200 1000 50  0001 C CNN
	1    2200 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1300 2200 1300
Wire Wire Line
	2200 1300 2200 1000
$Comp
L power:GND #PWR04
U 1 1 6412C461
P 2200 2850
F 0 "#PWR04" H 2200 2600 50  0001 C CNN
F 1 "GND" H 2205 2677 50  0000 C CNN
F 2 "" H 2200 2850 50  0001 C CNN
F 3 "" H 2200 2850 50  0001 C CNN
	1    2200 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6412CB7F
P 1000 1200
F 0 "#PWR01" H 1000 950 50  0001 C CNN
F 1 "GND" H 1005 1027 50  0000 C CNN
F 2 "" H 1000 1200 50  0001 C CNN
F 3 "" H 1000 1200 50  0001 C CNN
	1    1000 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1200 1000 750 
Wire Wire Line
	1000 750  1400 750 
Wire Wire Line
	1400 750  1400 1000
Wire Wire Line
	2200 2850 2200 1500
Wire Wire Line
	2200 1500 1700 1500
$Comp
L Amplifier_Operational:LM741 U1
U 1 1 6412D711
P 6250 1800
F 0 "U1" H 6594 1846 50  0000 L CNN
F 1 "LM741" H 6594 1755 50  0000 L CNN
F 2 "" H 6300 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 6400 1950 50  0001 C CNN
	1    6250 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 64131E87
P 5550 1700
F 0 "R9" V 5343 1700 50  0000 C CNN
F 1 "10k" V 5434 1700 50  0000 C CNN
F 2 "" V 5480 1700 50  0001 C CNN
F 3 "~" H 5550 1700 50  0001 C CNN
	1    5550 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV3
U 1 1 6413239B
P 5150 2250
F 0 "RV3" H 5081 2296 50  0000 R CNN
F 1 "100k" H 5081 2205 50  0000 R CNN
F 2 "" H 5150 2250 50  0001 C CNN
F 3 "~" H 5150 2250 50  0001 C CNN
	1    5150 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1700 5950 1700
$Comp
L power:+15V #PWR014
U 1 1 641392D3
P 6150 1050
F 0 "#PWR014" H 6150 900 50  0001 C CNN
F 1 "+15V" H 6165 1223 50  0000 C CNN
F 2 "" H 6150 1050 50  0001 C CNN
F 3 "" H 6150 1050 50  0001 C CNN
	1    6150 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1050 6150 1450
$Comp
L power:GND #PWR015
U 1 1 641398ED
P 6150 2850
F 0 "#PWR015" H 6150 2600 50  0001 C CNN
F 1 "GND" H 6155 2677 50  0000 C CNN
F 2 "" H 6150 2850 50  0001 C CNN
F 3 "" H 6150 2850 50  0001 C CNN
	1    6150 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2850 6150 2450
Wire Wire Line
	5800 2100 5800 1450
Wire Wire Line
	5800 1450 6150 1450
Connection ~ 6150 1450
Wire Wire Line
	6150 1450 6150 1500
Wire Wire Line
	5800 2400 5800 2450
Wire Wire Line
	5800 2450 6150 2450
Connection ~ 6150 2450
Wire Wire Line
	6150 2450 6150 2100
NoConn ~ 6250 2100
NoConn ~ 6350 2100
$Comp
L Device:R R15
U 1 1 6413E87C
P 7100 1800
F 0 "R15" V 6893 1800 50  0000 C CNN
F 1 "100" V 6984 1800 50  0000 C CNN
F 2 "" V 7030 1800 50  0001 C CNN
F 3 "~" H 7100 1800 50  0001 C CNN
	1    7100 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 1800 6950 1800
$Comp
L power:+15V #PWR019
U 1 1 641416D9
P 8100 1050
F 0 "#PWR019" H 8100 900 50  0001 C CNN
F 1 "+15V" H 8115 1223 50  0000 C CNN
F 2 "" H 8100 1050 50  0001 C CNN
F 3 "" H 8100 1050 50  0001 C CNN
	1    8100 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1800 7250 1800
Wire Wire Line
	8100 1050 8100 1450
Wire Wire Line
	7700 1600 7700 1450
Wire Wire Line
	7700 1450 8100 1450
Connection ~ 8100 1450
Wire Wire Line
	8100 1450 8100 2200
Wire Wire Line
	7700 2000 7700 2400
Wire Wire Line
	7700 2400 7800 2400
Text GLabel 2400 1900 2    50   Input ~ 0
RAIL_OUT
Wire Wire Line
	1700 1900 2400 1900
Text GLabel 8350 2850 2    50   Output ~ 0
RAIL_OUT
Wire Wire Line
	8100 2600 8100 2850
Wire Wire Line
	8100 2850 8350 2850
$Comp
L power:+15V #PWR011
U 1 1 6414CA96
P 5150 1150
F 0 "#PWR011" H 5150 1000 50  0001 C CNN
F 1 "+15V" H 5165 1323 50  0000 C CNN
F 2 "" H 5150 1150 50  0001 C CNN
F 3 "" H 5150 1150 50  0001 C CNN
	1    5150 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 6414E394
P 4600 2250
F 0 "R6" H 4670 2296 50  0000 L CNN
F 1 "150k" H 4670 2205 50  0000 L CNN
F 2 "" V 4530 2250 50  0001 C CNN
F 3 "~" H 4600 2250 50  0001 C CNN
	1    4600 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 6414EF62
P 4150 2250
F 0 "RV2" H 4081 2296 50  0000 R CNN
F 1 "100k" H 4081 2205 50  0000 R CNN
F 2 "" H 4150 2250 50  0001 C CNN
F 3 "~" H 4150 2250 50  0001 C CNN
	1    4150 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2400 4150 2500
Wire Wire Line
	4150 2500 4350 2500
Wire Wire Line
	4350 2250 4300 2250
Wire Wire Line
	5150 2400 5150 2500
Wire Wire Line
	5150 2500 5350 2500
Wire Wire Line
	5350 2500 5350 2250
Wire Wire Line
	5350 2250 5300 2250
$Comp
L Diode:1N4148 D5
U 1 1 641507E5
P 4150 2750
F 0 "D5" V 4104 2830 50  0000 L CNN
F 1 "1N4148" V 4195 2830 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4150 2575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4150 2750 50  0001 C CNN
	1    4150 2750
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D6
U 1 1 64152F05
P 5150 2750
F 0 "D6" V 5196 2670 50  0000 R CNN
F 1 "1N4148" V 5105 2670 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5150 2575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5150 2750 50  0001 C CNN
	1    5150 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 2500 4150 2600
Connection ~ 4150 2500
Wire Wire Line
	5150 2500 5150 2600
Connection ~ 5150 2500
Wire Wire Line
	4350 2250 4350 2500
Wire Wire Line
	4150 2900 4150 3000
Wire Wire Line
	4150 3000 4600 3000
Wire Wire Line
	4600 3000 4600 2400
Wire Wire Line
	5150 2900 5150 3000
Wire Wire Line
	5150 3000 4600 3000
Connection ~ 4600 3000
Wire Wire Line
	4150 2100 4150 1900
Wire Wire Line
	4150 1900 4600 1900
Wire Wire Line
	4600 2100 4600 1900
Connection ~ 4600 1900
Wire Wire Line
	5150 1900 5150 2100
Wire Wire Line
	4600 1900 5150 1900
Connection ~ 5150 1900
$Comp
L Device:R_POT RV1
U 1 1 6416519F
P 3700 3000
F 0 "RV1" H 3630 3046 50  0000 R CNN
F 1 "5k" H 3630 2955 50  0000 R CNN
F 2 "" H 3700 3000 50  0001 C CNN
F 3 "~" H 3700 3000 50  0001 C CNN
	1    3700 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR07
U 1 1 64165597
P 3700 1150
F 0 "#PWR07" H 3700 1000 50  0001 C CNN
F 1 "+15V" H 3715 1323 50  0000 C CNN
F 2 "" H 3700 1150 50  0001 C CNN
F 3 "" H 3700 1150 50  0001 C CNN
	1    3700 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3000 3850 3000
Connection ~ 4150 3000
Wire Wire Line
	3700 1150 3700 2850
Wire Wire Line
	5950 1900 5150 1900
Wire Wire Line
	5150 1150 5150 1250
Wire Wire Line
	5150 1550 5150 1900
Wire Wire Line
	5400 1700 1700 1700
$Comp
L power:GND #PWR08
U 1 1 64171D6A
P 3700 4700
F 0 "#PWR08" H 3700 4450 50  0001 C CNN
F 1 "GND" H 3705 4527 50  0000 C CNN
F 2 "" H 3700 4700 50  0001 C CNN
F 3 "" H 3700 4700 50  0001 C CNN
	1    3700 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4550 3700 4700
$Comp
L power:+15V #PWR016
U 1 1 64176E53
P 6450 3700
F 0 "#PWR016" H 6450 3550 50  0001 C CNN
F 1 "+15V" H 6465 3873 50  0000 C CNN
F 2 "" H 6450 3700 50  0001 C CNN
F 3 "" H 6450 3700 50  0001 C CNN
	1    6450 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 64177521
P 6450 4050
F 0 "R12" H 6520 4096 50  0000 L CNN
F 1 "1.54k" H 6520 4005 50  0000 L CNN
F 2 "" V 6380 4050 50  0001 C CNN
F 3 "~" H 6450 4050 50  0001 C CNN
	1    6450 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 64177B51
P 6900 4350
F 0 "R14" V 6693 4350 50  0000 C CNN
F 1 "2.2k" V 6784 4350 50  0000 C CNN
F 2 "" V 6830 4350 50  0001 C CNN
F 3 "~" H 6900 4350 50  0001 C CNN
	1    6900 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 641790D2
P 6200 4350
F 0 "R11" V 5993 4350 50  0000 C CNN
F 1 "1k" V 6084 4350 50  0000 C CNN
F 2 "" V 6130 4350 50  0001 C CNN
F 3 "~" H 6200 4350 50  0001 C CNN
	1    6200 4350
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR012
U 1 1 6417C6B1
P 5550 3700
F 0 "#PWR012" H 5550 3550 50  0001 C CNN
F 1 "+15V" H 5565 3873 50  0000 C CNN
F 2 "" H 5550 3700 50  0001 C CNN
F 3 "" H 5550 3700 50  0001 C CNN
	1    5550 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 6417CAA1
P 4650 4050
F 0 "R7" H 4720 4096 50  0000 L CNN
F 1 "100k" H 4720 4005 50  0000 L CNN
F 2 "" V 4580 4050 50  0001 C CNN
F 3 "~" H 4650 4050 50  0001 C CNN
	1    4650 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6417CE1E
P 4250 4350
F 0 "R4" V 4043 4350 50  0000 C CNN
F 1 "47k" V 4134 4350 50  0000 C CNN
F 2 "" V 4180 4350 50  0001 C CNN
F 3 "~" H 4250 4350 50  0001 C CNN
	1    4250 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 3150 3700 4150
Wire Wire Line
	4100 4350 4000 4350
$Comp
L Transistor_BJT:BC547 Q5
U 1 1 641836DA
P 4750 4700
F 0 "Q5" H 4941 4746 50  0000 L CNN
F 1 "BC547" H 4941 4655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4950 4625 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 4750 4700 50  0001 L CNN
	1    4750 4700
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q4
U 1 1 64184983
P 4550 5350
F 0 "Q4" H 4741 5396 50  0000 L CNN
F 1 "BC547" H 4741 5305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4750 5275 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 4550 5350 50  0001 L CNN
	1    4550 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 6418709F
P 4650 7100
F 0 "#PWR010" H 4650 6850 50  0001 C CNN
F 1 "GND" H 4655 6927 50  0000 C CNN
F 2 "" H 4650 7100 50  0001 C CNN
F 3 "" H 4650 7100 50  0001 C CNN
	1    4650 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 641875A5
P 4250 5700
F 0 "R5" H 4320 5746 50  0000 L CNN
F 1 "100k" H 4320 5655 50  0000 L CNN
F 2 "" V 4180 5700 50  0001 C CNN
F 3 "~" H 4250 5700 50  0001 C CNN
	1    4250 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5350 4250 5350
Wire Wire Line
	4250 5350 4250 5550
Wire Wire Line
	4650 5550 4650 5950
Wire Wire Line
	4250 5850 4250 5950
Wire Wire Line
	4250 5950 4650 5950
Connection ~ 4650 5950
Wire Wire Line
	4650 4900 4650 5150
Wire Wire Line
	4400 4350 4650 4350
Wire Wire Line
	4650 4350 4650 4500
Wire Wire Line
	4650 4200 4650 4350
Connection ~ 4650 4350
$Comp
L power:+15V #PWR09
U 1 1 6418FE1E
P 4650 3700
F 0 "#PWR09" H 4650 3550 50  0001 C CNN
F 1 "+15V" H 4665 3873 50  0000 C CNN
F 2 "" H 4650 3700 50  0001 C CNN
F 3 "" H 4650 3700 50  0001 C CNN
	1    4650 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3700 4650 3900
$Comp
L Device:R R8
U 1 1 641919E4
P 5250 4700
F 0 "R8" V 5043 4700 50  0000 C CNN
F 1 "4.7k" V 5134 4700 50  0000 C CNN
F 2 "" V 5180 4700 50  0001 C CNN
F 3 "~" H 5250 4700 50  0001 C CNN
	1    5250 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 4700 4950 4700
Wire Wire Line
	5400 4700 5550 4700
Wire Wire Line
	5550 4700 5550 4550
Wire Wire Line
	5550 3700 5550 4150
Text GLabel 5400 5900 0    50   Output ~ 0
OCCUPIED_OUT
Connection ~ 5550 4700
Text GLabel 2400 1600 2    50   Input ~ 0
OCCUPIED_OUT
Wire Wire Line
	6450 3700 6450 3900
Wire Wire Line
	5850 4350 6050 4350
Wire Wire Line
	6350 4350 6450 4350
Wire Wire Line
	6450 4350 6450 4200
Wire Wire Line
	6450 4350 6750 4350
Connection ~ 6450 4350
Wire Wire Line
	8100 2850 8100 4350
Wire Wire Line
	8100 4350 7050 4350
Connection ~ 8100 2850
Wire Wire Line
	2400 1600 1700 1600
$Comp
L Transistor_BJT:BC547 Q7
U 1 1 641A56EA
P 6350 5900
F 0 "Q7" H 6541 5946 50  0000 L CNN
F 1 "BC547" H 6541 5855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6550 5825 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 6350 5900 50  0001 L CNN
	1    6350 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 641AB7EF
P 5900 5900
F 0 "R10" V 5693 5900 50  0000 C CNN
F 1 "22k" V 5784 5900 50  0000 C CNN
F 2 "" V 5830 5900 50  0001 C CNN
F 3 "~" H 5900 5900 50  0001 C CNN
	1    5900 5900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 641AC5A6
P 6450 7100
F 0 "#PWR018" H 6450 6850 50  0001 C CNN
F 1 "GND" H 6455 6927 50  0000 C CNN
F 2 "" H 6450 7100 50  0001 C CNN
F 3 "" H 6450 7100 50  0001 C CNN
	1    6450 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5900 6050 5900
$Comp
L Device:LED D7
U 1 1 641B3332
P 6450 5450
F 0 "D7" V 6489 5332 50  0000 R CNN
F 1 "LED" V 6398 5332 50  0000 R CNN
F 2 "" H 6450 5450 50  0001 C CNN
F 3 "~" H 6450 5450 50  0001 C CNN
	1    6450 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 4700 5550 5900
$Comp
L power:+15V #PWR017
U 1 1 641C6501
P 6450 4850
F 0 "#PWR017" H 6450 4700 50  0001 C CNN
F 1 "+15V" H 6465 5023 50  0000 C CNN
F 2 "" H 6450 4850 50  0001 C CNN
F 3 "" H 6450 4850 50  0001 C CNN
	1    6450 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 641C6507
P 6450 5100
F 0 "R13" H 6520 5146 50  0000 L CNN
F 1 "560" H 6520 5055 50  0000 L CNN
F 2 "" V 6380 5100 50  0001 C CNN
F 3 "~" H 6450 5100 50  0001 C CNN
	1    6450 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4850 6450 4950
Wire Wire Line
	6450 5250 6450 5300
Wire Wire Line
	6450 5600 6450 5650
Wire Wire Line
	5750 5900 5550 5900
Connection ~ 5550 5900
Wire Wire Line
	5550 5900 5550 6150
$Comp
L power:GND #PWR013
U 1 1 641D45A6
P 5550 7100
F 0 "#PWR013" H 5550 6850 50  0001 C CNN
F 1 "GND" H 5555 6927 50  0000 C CNN
F 2 "" H 5550 7100 50  0001 C CNN
F 3 "" H 5550 7100 50  0001 C CNN
	1    5550 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5900 5550 5900
$Comp
L Device:CP C2
U 1 1 6414C138
P 5150 1400
F 0 "C2" H 5268 1446 50  0000 L CNN
F 1 "100u" H 5268 1355 50  0000 L CNN
F 2 "" H 5188 1250 50  0001 C CNN
F 3 "~" H 5150 1400 50  0001 C CNN
	1    5150 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 6414256B
P 5800 2250
F 0 "C4" H 5918 2296 50  0000 L CNN
F 1 "1u" H 5918 2205 50  0000 L CNN
F 2 "" H 5838 2100 50  0001 C CNN
F 3 "~" H 5800 2250 50  0001 C CNN
	1    5800 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 641D0B70
P 5550 6300
F 0 "C3" H 5668 6346 50  0000 L CNN
F 1 "10u" H 5668 6255 50  0000 L CNN
F 2 "" H 5588 6150 50  0001 C CNN
F 3 "~" H 5550 6300 50  0001 C CNN
	1    5550 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 641DC94F
P 3750 5350
F 0 "R3" V 3543 5350 50  0000 C CNN
F 1 "10k" V 3634 5350 50  0000 C CNN
F 2 "" V 3680 5350 50  0001 C CNN
F 3 "~" H 3750 5350 50  0001 C CNN
	1    3750 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 5350 4250 5350
Connection ~ 4250 5350
$Comp
L Diode:1N4148 D1
U 1 1 641DF35C
P 1600 4300
F 0 "D1" H 1600 4083 50  0000 C CNN
F 1 "1N4148" H 1600 4174 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1600 4125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1600 4300 50  0001 C CNN
	1    1600 4300
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D2
U 1 1 641E16FD
P 1600 4650
F 0 "D2" H 1600 4433 50  0000 C CNN
F 1 "1N4148" H 1600 4524 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1600 4475 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1600 4650 50  0001 C CNN
	1    1600 4650
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D3
U 1 1 641E2030
P 1600 5000
F 0 "D3" H 1600 4783 50  0000 C CNN
F 1 "1N4148" H 1600 4874 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1600 4825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1600 5000 50  0001 C CNN
	1    1600 5000
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D4
U 1 1 641E26F0
P 1600 5350
F 0 "D4" H 1600 5133 50  0000 C CNN
F 1 "1N4148" H 1600 5224 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1600 5175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1600 5350 50  0001 C CNN
	1    1600 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 4650 1850 4650
Wire Wire Line
	1750 5000 1850 5000
Wire Wire Line
	1750 5350 1850 5350
Text GLabel 1300 4300 0    50   Input ~ 0
OCCUPIED_IN1
Wire Wire Line
	1300 4300 1450 4300
Text GLabel 1300 4650 0    50   Input ~ 0
OCCUPIED_IN2
Text GLabel 1300 5000 0    50   Input ~ 0
OCCUPIED_IN3
Text GLabel 1300 5350 0    50   Input ~ 0
OCCUPIED_IN4
Wire Wire Line
	1300 4650 1450 4650
Wire Wire Line
	1300 5000 1450 5000
Wire Wire Line
	1300 5350 1450 5350
Text GLabel 2400 1800 2    50   Output ~ 0
OCCUPIED_IN1
Text GLabel 2400 2000 2    50   Output ~ 0
OCCUPIED_IN2
Text GLabel 2400 2200 2    50   Output ~ 0
OCCUPIED_IN3
Text GLabel 2400 2400 2    50   Output ~ 0
OCCUPIED_IN4
Wire Wire Line
	2400 1800 1700 1800
Wire Wire Line
	2400 2000 1700 2000
Wire Wire Line
	2400 2200 1700 2200
Wire Wire Line
	2400 2400 1700 2400
Wire Wire Line
	1750 4300 1850 4300
Wire Wire Line
	1850 4650 1850 4300
Wire Wire Line
	1850 4650 1850 5000
Connection ~ 1850 4650
Wire Wire Line
	1850 5000 1850 5350
Connection ~ 1850 5000
$Comp
L Device:CP C1
U 1 1 64227AB7
P 1850 6500
F 0 "C1" H 1968 6546 50  0000 L CNN
F 1 "47u" H 1968 6455 50  0000 L CNN
F 2 "" H 1888 6350 50  0001 C CNN
F 3 "~" H 1850 6500 50  0001 C CNN
	1    1850 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 64228C4B
P 1850 7100
F 0 "#PWR02" H 1850 6850 50  0001 C CNN
F 1 "GND" H 1855 6927 50  0000 C CNN
F 2 "" H 1850 7100 50  0001 C CNN
F 3 "" H 1850 7100 50  0001 C CNN
	1    1850 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6650 1850 7100
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 642305E6
P 2600 6650
F 0 "Q1" H 2791 6696 50  0000 L CNN
F 1 "BC547" H 2791 6605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2800 6575 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 2600 6650 50  0001 L CNN
	1    2600 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 64230BE7
P 2300 6250
F 0 "R1" H 2230 6204 50  0000 R CNN
F 1 "22k" H 2230 6295 50  0000 R CNN
F 2 "" V 2230 6250 50  0001 C CNN
F 3 "~" H 2300 6250 50  0001 C CNN
	1    2300 6250
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 64233573
P 3550 6650
F 0 "Q2" H 3741 6696 50  0000 L CNN
F 1 "BC547" H 3741 6605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3750 6575 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 3550 6650 50  0001 L CNN
	1    3550 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6424381A
P 3050 6250
F 0 "R2" V 3257 6250 50  0000 C CNN
F 1 "22k" V 3166 6250 50  0000 C CNN
F 2 "" V 2980 6250 50  0001 C CNN
F 3 "~" H 3050 6250 50  0001 C CNN
	1    3050 6250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6424F942
P 2700 7100
F 0 "#PWR05" H 2700 6850 50  0001 C CNN
F 1 "GND" H 2705 6927 50  0000 C CNN
F 2 "" H 2700 7100 50  0001 C CNN
F 3 "" H 2700 7100 50  0001 C CNN
	1    2700 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 7100 2700 6850
Wire Wire Line
	1850 5350 1850 6350
Wire Wire Line
	2900 6250 2700 6250
Wire Wire Line
	2700 6250 2700 6450
Wire Wire Line
	3200 6250 3250 6250
Wire Wire Line
	3250 6250 3250 6650
$Comp
L power:GND #PWR06
U 1 1 64267D00
P 3650 7100
F 0 "#PWR06" H 3650 6850 50  0001 C CNN
F 1 "GND" H 3655 6927 50  0000 C CNN
F 2 "" H 3650 7100 50  0001 C CNN
F 3 "" H 3650 7100 50  0001 C CNN
	1    3650 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 7100 3650 6850
Text GLabel 2700 6150 1    50   Input ~ 0
SIGNAL_RED
Wire Wire Line
	2700 6150 2700 6250
Connection ~ 2700 6250
Text GLabel 2400 2600 2    50   Output ~ 0
SIGNAL_RED
Wire Wire Line
	2400 2600 1700 2600
Text GLabel 3650 6150 1    50   Input ~ 0
SIGNAL_GREEN
Wire Wire Line
	3650 6150 3650 6450
Text GLabel 2400 2500 2    50   Output ~ 0
SIGNAL_GREEN
Wire Wire Line
	2400 2500 1700 2500
Text GLabel 6950 5650 2    50   Input ~ 0
EXT_OCCUPIED_LED
Wire Wire Line
	6950 5650 6450 5650
Connection ~ 6450 5650
Wire Wire Line
	6450 5650 6450 5700
Text GLabel 2400 1200 2    50   Output ~ 0
EXT_OCCUPIED_LED
Wire Wire Line
	2400 1200 1700 1200
NoConn ~ 1700 1400
NoConn ~ 1700 2100
NoConn ~ 1700 2300
Wire Wire Line
	1850 5350 2300 5350
Wire Wire Line
	2300 6100 2300 5350
Connection ~ 2300 5350
Wire Wire Line
	2300 5350 3600 5350
Wire Wire Line
	2300 6400 2300 6650
Wire Wire Line
	2300 6650 2400 6650
Wire Wire Line
	3350 6650 3250 6650
Wire Wire Line
	6450 6100 6450 7100
Wire Wire Line
	5550 6450 5550 7100
Wire Wire Line
	4650 5950 4650 7100
Connection ~ 1850 5350
Text Notes 3850 1550 0    50   ~ 0
RV1 = Driving speed setting\nRV2 = Deceleration setting\nRV3 = Acceleration setting
Text Notes 8350 3250 0    50   ~ 0
RAIL_OUT must be connected to the right rail of the track.\nThe left rail of the track must be connected to GND.
$EndSCHEMATC
