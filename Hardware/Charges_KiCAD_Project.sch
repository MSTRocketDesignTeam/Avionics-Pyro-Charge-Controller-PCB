EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "Charges PCB Schematic"
Date "2021-10-026"
Rev "v1.0.3"
Comp "Missouri S&T Rocket Design Team '21 (Jacob King)"
Comment1 "https://github.com/MSTRocketDesignTeam/Avionics-Charges-PCB"
Comment2 "Intended as initial pre-production design"
Comment3 "Schematic depicting logical connections between components"
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR017
U 1 1 61951EE2
P 9300 6250
F 0 "#PWR017" H 9300 6000 50  0001 C CNN
F 1 "GND" H 9300 6100 50  0000 C CNN
F 2 "" H 9300 6250 50  0001 C CNN
F 3 "" H 9300 6250 50  0001 C CNN
	1    9300 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6186C5E0
P 6850 6250
F 0 "#PWR06" H 6850 6000 50  0001 C CNN
F 1 "GND" H 6850 6100 50  0000 C CNN
F 2 "" H 6850 6250 50  0001 C CNN
F 3 "" H 6850 6250 50  0001 C CNN
	1    6850 6250
	1    0    0    -1  
$EndComp
Connection ~ 9300 3800
Wire Wire Line
	9800 3800 9800 3950
Wire Wire Line
	9300 3800 9800 3800
Connection ~ 9300 3600
Wire Wire Line
	9800 3600 9800 3750
Wire Wire Line
	9300 3600 9800 3600
Connection ~ 9300 3500
Wire Wire Line
	9800 3500 9800 3100
Wire Wire Line
	9300 3500 9800 3500
Connection ~ 9300 3300
Wire Wire Line
	9300 2900 10650 2900
Wire Wire Line
	9300 3300 9300 2900
Wire Wire Line
	9800 3750 10700 3750
Wire Wire Line
	7750 3300 7750 3450
Wire Wire Line
	7900 3500 7900 3700
Wire Wire Line
	7050 3750 7450 3750
Wire Wire Line
	7450 3600 8200 3600
Wire Wire Line
	7450 3750 7450 3600
Wire Wire Line
	7050 3000 7450 3000
Wire Wire Line
	7450 3400 8200 3400
Wire Wire Line
	7450 3000 7450 3400
Wire Wire Line
	8200 3500 7900 3500
Wire Wire Line
	8200 3300 7750 3300
Connection ~ 9500 4000
Connection ~ 8200 3800
Wire Wire Line
	9500 4300 9500 4000
Wire Wire Line
	8100 4300 9500 4300
Wire Wire Line
	8100 3800 8100 4300
Wire Wire Line
	8200 3800 8100 3800
Connection ~ 9400 3900
Connection ~ 8200 4000
Wire Wire Line
	8200 4000 8200 4200
Wire Wire Line
	9400 4200 9400 3900
Wire Wire Line
	8200 4200 9400 4200
Wire Wire Line
	9500 3700 9300 3700
Wire Wire Line
	9500 4000 9500 3700
Wire Wire Line
	9300 4000 9500 4000
Wire Wire Line
	9400 3400 9300 3400
Wire Wire Line
	9400 3900 9400 3400
Wire Wire Line
	9300 3900 9400 3900
Connection ~ 9300 3700
Wire Wire Line
	9300 3600 9300 3700
Connection ~ 9300 3400
Wire Wire Line
	9300 3400 9300 3500
Wire Wire Line
	9300 3700 9300 3800
Wire Wire Line
	8200 3700 8200 3800
Wire Wire Line
	9300 3300 9300 3400
Wire Wire Line
	8200 3900 8200 4000
$Comp
L Charges_KiCAD_Project-rescue:SI7232DN-T1-GE3-SamacSys_Parts Q2
U 1 1 61B6124E
P 8200 3300
F 0 "Q2" H 8750 3565 50  0000 C CNN
F 1 "SI7232DN-T1-GE3" H 8750 3474 50  0000 C CNN
F 2 "SamacSys_Parts:SI7232DNT1GE3" H 9150 3400 50  0001 L CNN
F 3 "https://www.vishay.com/docs/68986/si7232dn.pdf" H 9150 3300 50  0001 L CNN
F 4 "Dual N-Channel (D-S)MOSFET 20V Vds 8V Vgs PowerPAK 1212-8 " H 9150 3200 50  0001 L CNN "Description"
F 5 "1.12" H 9150 3100 50  0001 L CNN "Height"
F 6 "781-SI7232DN-GE3" H 9150 3000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Vishay-Semiconductors/SI7232DN-T1-GE3?qs=%252BPu8jn5UVnH5FJ8Jo4EbFw%3D%3D" H 9150 2900 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 9150 2800 50  0001 L CNN "Manufacturer_Name"
F 9 "SI7232DN-T1-GE3" H 9150 2700 50  0001 L CNN "Manufacturer_Part_Number"
	1    8200 3300
	1    0    0    -1  
$EndComp
Connection ~ 7050 3000
Wire Wire Line
	6650 3000 6400 3000
Connection ~ 7050 3750
Wire Wire Line
	6650 3750 6400 3750
$Comp
L Charges_KiCAD_Project-rescue:RESISTOR0402-SparkFun-Resistors R9
U 1 1 61B6123C
P 7050 3200
F 0 "R9" V 7000 3250 45  0000 L CNN
F 1 "10k" V 7100 3250 45  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7050 3350 20  0001 C CNN
F 3 "" H 7050 3200 60  0001 C CNN
F 4 " " V 7134 3268 60  0000 L CNN "Field4"
	1    7050 3200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 61B61235
P 7050 3400
F 0 "#PWR09" H 7050 3150 50  0001 C CNN
F 1 "GND" H 7055 3227 50  0000 C CNN
F 2 "" H 7050 3400 50  0001 C CNN
F 3 "" H 7050 3400 50  0001 C CNN
	1    7050 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 61B6122E
P 7050 4150
F 0 "#PWR010" H 7050 3900 50  0001 C CNN
F 1 "GND" H 7055 3977 50  0000 C CNN
F 2 "" H 7050 4150 50  0001 C CNN
F 3 "" H 7050 4150 50  0001 C CNN
	1    7050 4150
	1    0    0    -1  
$EndComp
$Comp
L Charges_KiCAD_Project-rescue:RESISTOR0402-SparkFun-Resistors R10
U 1 1 61B61228
P 7050 3950
F 0 "R10" V 7000 4000 45  0000 L CNN
F 1 "10k" V 7100 4000 45  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7050 4100 20  0001 C CNN
F 3 "" H 7050 3950 60  0001 C CNN
F 4 " " V 7134 4018 60  0000 L CNN "Field4"
	1    7050 3950
	0    1    1    0   
$EndComp
Text Label 10650 2900 0    50   ~ 0
Fet_C
$Comp
L Charges_KiCAD_Project-rescue:RESISTOR0402-SparkFun-Resistors R6
U 1 1 61B61220
P 6850 3750
F 0 "R6" H 6850 3950 45  0000 C CNN
F 1 "1k" H 6850 3850 45  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6850 3900 20  0001 C CNN
F 3 "" H 6850 3750 60  0001 C CNN
F 4 " " H 6850 3871 60  0000 C CNN "Field4"
	1    6850 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 3950 10700 3950
Text Label 10650 3100 0    50   ~ 0
Sense_C
Text Label 6400 3750 2    50   ~ 0
Fire_D
Connection ~ 10450 3950
Text Label 6400 3000 2    50   ~ 0
Fire_C
Text Label 10700 3950 0    50   ~ 0
Sense_D
Connection ~ 10450 3100
Wire Wire Line
	10450 3100 10650 3100
Text Label 10700 3750 0    50   ~ 0
Fet_D
$Comp
L power:GND #PWR015
U 1 1 61B6120F
P 7900 3700
F 0 "#PWR015" H 7900 3450 50  0001 C CNN
F 1 "GND" H 7905 3527 50  0000 C CNN
F 2 "" H 7900 3700 50  0001 C CNN
F 3 "" H 7900 3700 50  0001 C CNN
	1    7900 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 61B61209
P 10450 3500
F 0 "#PWR021" H 10450 3250 50  0001 C CNN
F 1 "GND" H 10455 3327 50  0000 C CNN
F 2 "" H 10450 3500 50  0001 C CNN
F 3 "" H 10450 3500 50  0001 C CNN
	1    10450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3100 10050 3100
$Comp
L Charges_KiCAD_Project-rescue:RESISTOR0402-SparkFun-Resistors R23
U 1 1 61B61202
P 10450 3300
F 0 "R23" V 10400 3400 45  0000 L CNN
F 1 "27k" V 10500 3400 45  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10450 3450 20  0001 C CNN
F 3 "" H 10450 3300 60  0001 C CNN
F 4 " " V 10534 3368 60  0000 L CNN "Field4"
	1    10450 3300
	0    1    1    0   
$EndComp
$Comp
L Charges_KiCAD_Project-rescue:RESISTOR0402-SparkFun-Resistors R19
U 1 1 61B611FB
P 10250 3100
F 0 "R19" H 10250 3250 45  0000 C CNN
F 1 "100k" H 10250 3200 45  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10250 3250 20  0001 C CNN
F 3 "" H 10250 3100 60  0001 C CNN
F 4 " " H 10250 3221 60  0000 C CNN "Field4"
	1    10250 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 61B611F4
P 7750 3450
F 0 "#PWR013" H 7750 3200 50  0001 C CNN
F 1 "GND" H 7755 3277 50  0000 C CNN
F 2 "" H 7750 3450 50  0001 C CNN
F 3 "" H 7750 3450 50  0001 C CNN
	1    7750 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 61B611EE
P 10450 4350
F 0 "#PWR022" H 10450 4100 50  0001 C CNN
F 1 "GND" H 10455 4177 50  0000 C CNN
F 2 "" H 10450 4350 50  0001 C CNN
F 3 "" H 10450 4350 50  0001 C CNN
	1    10450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3950 10050 3950
$Comp
L Charges_KiCAD_Project-rescue:RESISTOR0402-SparkFun-Resistors R24
U 1 1 61B611E7
P 10450 4150
F 0 "R24" V 10400 4250 45  0000 L CNN
F 1 "27k" V 10500 4250 45  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10450 4300 20  0001 C CNN
F 3 "" H 10450 4150 60  0001 C CNN
F 4 " " V 10534 4218 60  0000 L CNN "Field4"
	1    10450 4150
	0    1    1    0   
$EndComp
$Comp
L Charges_KiCAD_Project-rescue:RESISTOR0402-SparkFun-Resistors R20
U 1 1 61B611E0
P 10250 3950
F 0 "R20" H 10250 4100 45  0000 C CNN
F 1 "100k" H 10250 4050 45  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10250 4100 20  0001 C CNN
F 3 "" H 10250 3950 60  0001 C CNN
F 4 " " H 10250 4071 60  0000 C CNN "Field4"
	1    10250 3950
	1    0    0    -1  
$EndComp
$Comp
L Charges_KiCAD_Project-rescue:RESISTOR0402-SparkFun-Resistors R5
U 1 1 61B611D9
P 6850 3000
F 0 "R5" H 6850 3200 45  0000 C CNN
F 1 "1k" H 6850 3100 45  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6850 3150 20  0001 C CNN
F 3 "" H 6850 3000 60  0001 C CNN
F 4 " " H 6850 3121 60  0000 C CNN "Field4"
	1    6850 3000
	1    0    0    -1  
$EndComp
Connection ~ 9250 1750
Wire Wire Line
	9750 1750 9750 1900
Wire Wire Line
	9250 1750 9750 1750
Connection ~ 9250 1550
Wire Wire Line
	9750 1550 9750 1700
Wire Wire Line
	9250 1550 9750 1550
Connection ~ 9250 1450
Wire Wire Line
	9750 1450 9750 1050
Wire Wire Line
	9250 1450 9750 1450
Connection ~ 9250 1250
Wire Wire Line
	9250 850  10600 850 
Wire Wire Line
	9250 1250 9250 850 
Wire Wire Line
	9750 1700 10650 1700
Wire Wire Line
	7700 1250 7700 1400
Wire Wire Line
	7850 1450 7850 1650
Wire Wire Line
	7000 1700 7400 1700
Wire Wire Line
	7400 1550 8150 1550
Wire Wire Line
	7400 1700 7400 1550
Wire Wire Line
	7000 950  7400 950 
Wire Wire Line
	7400 1350 8150 1350
Wire Wire Line
	7400 950  7400 1350
Wire Wire Line
	8150 1450 7850 1450
Wire Wire Line
	8150 1250 7700 1250
Connection ~ 9450 1950
Connection ~ 8150 1750
Wire Wire Line
	9450 2250 9450 1950
Wire Wire Line
	8050 2250 9450 2250
Wire Wire Line
	8050 1750 8050 2250
Wire Wire Line
	8150 1750 8050 1750
Connection ~ 9350 1850
Connection ~ 8150 1950
Wire Wire Line
	8150 1950 8150 2150
Wire Wire Line
	9350 2150 9350 1850
Wire Wire Line
	8150 2150 9350 2150
Wire Wire Line
	9450 1650 9250 1650
Wire Wire Line
	9450 1950 9450 1650
Wire Wire Line
	9250 1950 9450 1950
Wire Wire Line
	9350 1350 9250 1350
Wire Wire Line
	9350 1850 9350 1350
Wire Wire Line
	9250 1850 9350 1850
Connection ~ 9250 1650
Wire Wire Line
	9250 1550 9250 1650
Connection ~ 9250 1350
Wire Wire Line
	9250 1350 9250 1450
Wire Wire Line
	9250 1650 9250 1750
Wire Wire Line
	8150 1650 8150 1750
Wire Wire Line
	9250 1250 9250 1350
Wire Wire Line
	8150 1850 8150 1950
$Comp
L power:+5V #PWR016
U 1 1 61AEDED1
P 8900 5400
F 0 "#PWR016" H 8900 5250 50  0001 C CNN
F 1 "+5V" H 8915 5573 50  0000 C CNN
F 2 "" H 8900 5400 50  0001 C CNN
F 3 "" H 8900 5400 50  0001 C CNN
	1    8900 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 619BBC40
P 1050 4200
F 0 "#PWR02" H 1050 3950 50  0001 C CNN
F 1 "GND" H 1050 4050 50  0000 C CNN
F 2 "" H 1050 4200 50  0001 C CNN
F 3 "" H 1050 4200 50  0001 C CNN
	1    1050 4200
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 619B8BF4
P 1050 4550
F 0 "#PWR03" H 1050 4400 50  0001 C CNN
F 1 "+3.3V" H 1050 4700 50  0000 C CNN
F 2 "" H 1050 4550 50  0001 C CNN
F 3 "" H 1050 4550 50  0001 C CNN
	1    1050 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1050 4550 1150 4550
Wire Wire Line
	1050 4200 1150 4200
$Comp
L power:GND #PWR01
U 1 1 619BAF49
P 1050 3800
F 0 "#PWR01" H 1050 3550 50  0001 C CNN
F 1 "GND" H 1050 3650 50  0000 C CNN
F 2 "" H 1050 3800 50  0001 C CNN
F 3 "" H 1050 3800 50  0001 C CNN
	1    1050 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 5600 7400 5600
Text Label 7400 5500 2    50   ~ 0
Fet_A
Text Label 7400 5700 2    50   ~ 0
Fet_B
$Comp
L Device:CP1_Small C2
U 1 1 6185ACBF
P 6850 5900
F 0 "C2" H 6900 5750 50  0000 R CNN
F 1 "CP1_Small" H 7050 5800 50  0000 R CNN
F 2 "Capacitor_THT:CP_Axial_L18.0mm_D6.5mm_P25.00mm_Horizontal" H 6850 5900 50  0001 C CNN
F 3 "~" H 6850 5900 50  0001 C CNN
	1    6850 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 6000 6850 6250
Wire Wire Line
	6850 5050 7050 5050
Wire Wire Line
	6850 5300 6850 5050
$Comp
L power:GND #PWR011
U 1 1 6186B3F6
P 7050 5050
F 0 "#PWR011" H 7050 4800 50  0001 C CNN
F 1 "GND" H 7055 4877 50  0000 C CNN
F 2 "" H 7050 5050 50  0001 C CNN
F 3 "" H 7050 5050 50  0001 C CNN
	1    7050 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C1
U 1 1 618582E1
P 6850 5400
F 0 "C1" H 6900 5250 50  0000 R CNN
F 1 "CP1_Small" H 7050 5300 50  0000 R CNN
F 2 "Capacitor_THT:CP_Axial_L18.0mm_D6.5mm_P25.00mm_Horizontal" H 6850 5400 50  0001 C CNN
F 3 "~" H 6850 5400 50  0001 C CNN
	1    6850 5400
	1    0    0    1   
$EndComp
Wire Wire Line
	7250 5600 7250 5500
$Comp
L power:+5V #PWR05
U 1 1 61AEEE7D
P 6450 5400
F 0 "#PWR05" H 6450 5250 50  0001 C CNN
F 1 "+5V" H 6465 5573 50  0000 C CNN
F 2 "" H 6450 5400 50  0001 C CNN
F 3 "" H 6450 5400 50  0001 C CNN
	1    6450 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3750 4250 3900
Wire Wire Line
	4250 3650 4250 3500
Text Label 950  1950 2    50   ~ 0
Alert_Active
Text Label 3500 1750 2    50   ~ 0
Alert_Active
Wire Wire Line
	1050 3800 1150 3800
Text Label 2350 2150 0    50   ~ 0
Fire_Redundant
Text Label 2350 2300 0    50   ~ 0
Fire
Text Label 4800 1600 0    50   ~ 0
Fire
Text Label 4800 1500 0    50   ~ 0
Fire_Redundant
Text Label 4800 1050 0    50   ~ 0
Fire_A
Text Label 4800 1150 0    50   ~ 0
Fire_B
Text Label 4800 1900 0    50   ~ 0
Buzzer_Excitation
Text Label 4800 1250 0    50   ~ 0
Fire_C
Text Label 4800 1350 0    50   ~ 0
Fire_D
Text Label 4800 2200 0    50   ~ 0
Alert_sda
Text Label 4800 2300 0    50   ~ 0
Alert_scl
NoConn ~ 950  1450
NoConn ~ 950  1300
NoConn ~ 950  1150
Text Label 950  2250 2    50   ~ 0
NRST
Text Label 3500 2200 2    50   ~ 0
NRST
Text Label 950  2150 2    50   ~ 0
SWCLK
Text Label 3500 2050 2    50   ~ 0
SWCLK
Text Label 950  2050 2    50   ~ 0
SWDIO
Text Label 3500 1900 2    50   ~ 0
SWDIO
Text Label 950  1650 2    50   ~ 0
Alert_scl
Text Label 950  1800 2    50   ~ 0
Alert_sda
Connection ~ 7000 950 
Wire Wire Line
	6600 950  6350 950 
Connection ~ 7000 1700
Wire Wire Line
	6600 1700 6350 1700
$Comp
L Charges_KiCAD_Project-rescue:RESISTOR0402-SparkFun-Resistors R7
U 1 1 617A98EF
P 7000 1150
F 0 "R7" V 6950 1200 45  0000 L CNN
F 1 "10k" V 7050 1200 45  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7000 1300 20  0001 C CNN
F 3 "" H 7000 1150 60  0001 C CNN
F 4 " " V 7084 1218 60  0000 L CNN "Field4"
	1    7000 1150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 617BFF76
P 7000 1350
F 0 "#PWR07" H 7000 1100 50  0001 C CNN
F 1 "GND" H 7005 1177 50  0000 C CNN
F 2 "" H 7000 1350 50  0001 C CNN
F 3 "" H 7000 1350 50  0001 C CNN
	1    7000 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 617D1DF3
P 7000 2100
F 0 "#PWR08" H 7000 1850 50  0001 C CNN
F 1 "GND" H 7005 1927 50  0000 C CNN
F 2 "" H 7000 2100 50  0001 C CNN
F 3 "" H 7000 2100 50  0001 C CNN
	1    7000 2100
	1    0    0    -1  
$EndComp
$Comp
L Charges_KiCAD_Project-rescue:RESISTOR0402-SparkFun-Resistors R8
U 1 1 617D1DC6
P 7000 1900
F 0 "R8" V 6950 1950 45  0000 L CNN
F 1 "10k" V 7050 1950 45  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7000 2050 20  0001 C CNN
F 3 "" H 7000 1900 60  0001 C CNN
F 4 " " V 7084 1968 60  0000 L CNN "Field4"
	1    7000 1900
	0    1    1    0   
$EndComp
Text Label 3500 1350 2    50   ~ 0
Sense_D
Text Label 3500 1250 2    50   ~ 0
Sense_C
Text Label 1150 4350 2    50   ~ 0
SWCLK
Text Label 1150 4000 2    50   ~ 0
SWDIO
Wire Wire Line
	9700 5600 9700 5500
$Comp
L Device:CP1_Small C3
U 1 1 61951F00
P 9300 5400
F 0 "C3" H 9350 5250 50  0000 R CNN
F 1 "CP1_Small" H 9500 5300 50  0000 R CNN
F 2 "Capacitor_THT:CP_Axial_L18.0mm_D6.5mm_P25.00mm_Horizontal" H 9300 5400 50  0001 C CNN
F 3 "~" H 9300 5400 50  0001 C CNN
	1    9300 5400
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 61951EEB
P 9500 5050
F 0 "#PWR018" H 9500 4800 50  0001 C CNN
F 1 "GND" H 9505 4877 50  0000 C CNN
F 2 "" H 9500 5050 50  0001 C CNN
F 3 "" H 9500 5050 50  0001 C CNN
	1    9500 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5300 9300 5050
Wire Wire Line
	9300 5050 9500 5050
Wire Wire Line
	9300 6000 9300 6250
$Comp
L Device:CP1_Small C4
U 1 1 61951ECD
P 9300 5900
F 0 "C4" H 9350 5750 50  0000 R CNN
F 1 "CP1_Small" H 9500 5800 50  0000 R CNN
F 2 "Capacitor_THT:CP_Axial_L18.0mm_D6.5mm_P25.00mm_Horizontal" H 9300 5900 50  0001 C CNN
F 3 "~" H 9300 5900 50  0001 C CNN
	1    9300 5900
	1    0    0    -1  
$EndComp
Text Label 9850 5700 2    50   ~ 0
Fet_D
Text Label 9850 5500 2    50   ~ 0
Fet_C
Wire Wire Line
	9700 5600 9850 5600
Text Label 10600 850  0    50   ~ 0
Fet_A
Text Label 3500 1150 2    50   ~ 0
Sense_B
Text Label 3500 1050 2    50   ~ 0
Sense_A
Text Label 4250 3500 2    50   ~ 0
Buzzer_Excitation
$Comp
L Charges_KiCAD_Project-rescue:RESISTOR0402-SparkFun-Resistors R4
U 1 1 617D1DBF
P 6800 1700
F 0 "R4" H 6800 1900 45  0000 C CNN
F 1 "1k" H 6800 1800 45  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6800 1850 20  0001 C CNN
F 3 "" H 6800 1700 60  0001 C CNN
F 4 " " H 6800 1821 60  0000 C CNN "Field4"
	1    6800 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 1900 10650 1900
Text Label 10600 1050 0    50   ~ 0
Sense_A
Text Label 6350 1700 2    50   ~ 0
Fire_B
Connection ~ 10400 1900
Text Label 6350 950  2    50   ~ 0
Fire_A
Text Label 10650 1900 0    50   ~ 0
Sense_B
Connection ~ 10400 1050
Wire Wire Line
	10400 1050 10600 1050
Text Label 10650 1700 0    50   ~ 0
Fet_B
$Comp
L power:GND #PWR014
U 1 1 617D1DED
P 7850 1650
F 0 "#PWR014" H 7850 1400 50  0001 C CNN
F 1 "GND" H 7855 1477 50  0000 C CNN
F 2 "" H 7850 1650 50  0001 C CNN
F 3 "" H 7850 1650 50  0001 C CNN
	1    7850 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 617D1DE7
P 10400 1450
F 0 "#PWR019" H 10400 1200 50  0001 C CNN
F 1 "GND" H 10405 1277 50  0000 C CNN
F 2 "" H 10400 1450 50  0001 C CNN
F 3 "" H 10400 1450 50  0001 C CNN
	1    10400 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 1050 10000 1050
$Comp
L Charges_KiCAD_Project-rescue:RESISTOR0402-SparkFun-Resistors R21
U 1 1 617D1DDB
P 10400 1250
F 0 "R21" V 10350 1350 45  0000 L CNN
F 1 "27k" V 10450 1350 45  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10400 1400 20  0001 C CNN
F 3 "" H 10400 1250 60  0001 C CNN
F 4 " " V 10484 1318 60  0000 L CNN "Field4"
	1    10400 1250
	0    1    1    0   
$EndComp
$Comp
L Charges_KiCAD_Project-rescue:RESISTOR0402-SparkFun-Resistors R17
U 1 1 617D1DD4
P 10200 1050
F 0 "R17" H 10200 1200 45  0000 C CNN
F 1 "100k" H 10200 1150 45  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10200 1200 20  0001 C CNN
F 3 "" H 10200 1050 60  0001 C CNN
F 4 " " H 10200 1171 60  0000 C CNN "Field4"
	1    10200 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 617BF9E9
P 7700 1400
F 0 "#PWR012" H 7700 1150 50  0001 C CNN
F 1 "GND" H 7705 1227 50  0000 C CNN
F 2 "" H 7700 1400 50  0001 C CNN
F 3 "" H 7700 1400 50  0001 C CNN
	1    7700 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 617BC23A
P 10400 2300
F 0 "#PWR020" H 10400 2050 50  0001 C CNN
F 1 "GND" H 10405 2127 50  0000 C CNN
F 2 "" H 10400 2300 50  0001 C CNN
F 3 "" H 10400 2300 50  0001 C CNN
	1    10400 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 1900 10000 1900
$Comp
L Charges_KiCAD_Project-rescue:RESISTOR0402-SparkFun-Resistors R22
U 1 1 617B585E
P 10400 2100
F 0 "R22" V 10350 2200 45  0000 L CNN
F 1 "27k" V 10450 2200 45  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10400 2250 20  0001 C CNN
F 3 "" H 10400 2100 60  0001 C CNN
F 4 " " V 10484 2168 60  0000 L CNN "Field4"
	1    10400 2100
	0    1    1    0   
$EndComp
$Comp
L Charges_KiCAD_Project-rescue:RESISTOR0402-SparkFun-Resistors R3
U 1 1 617957C5
P 6800 950
F 0 "R3" H 6800 1150 45  0000 C CNN
F 1 "1k" H 6800 1050 45  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6800 1100 20  0001 C CNN
F 3 "" H 6800 950 60  0001 C CNN
F 4 " " H 6800 1071 60  0000 C CNN "Field4"
	1    6800 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 61CCC163
P 4250 3900
F 0 "#PWR04" H 4250 3650 50  0001 C CNN
F 1 "GND" H 4255 3727 50  0000 C CNN
F 2 "" H 4250 3900 50  0001 C CNN
F 3 "" H 4250 3900 50  0001 C CNN
	1    4250 3900
	1    0    0    -1  
$EndComp
$Comp
L Charges_KiCAD_Project-rescue:TP124005-2-SamacSys_Parts IC1
U 1 1 61D18EB9
P 4250 3650
F 0 "IC1" H 4878 3646 50  0000 L CNN
F 1 "TP124005-2" H 4878 3555 50  0000 L CNN
F 2 "SamacSys_Parts:TP1240052" H 4900 3750 50  0001 L CNN
F 3 "" H 4900 3650 50  0001 L CNN
F 4 "Speakers & Transducers Piezo Transducer" H 4900 3550 50  0001 L CNN "Description"
F 5 "7.3" H 4900 3450 50  0001 L CNN "Height"
F 6 "497-TP124005-2" H 4900 3350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/DB-Unlimited/TP124005-2?qs=Ip090ROfjuEdkpJRQQNuSA%3D%3D" H 4900 3250 50  0001 L CNN "Mouser Price/Stock"
F 8 "DB Unlimited" H 4900 3150 50  0001 L CNN "Manufacturer_Name"
F 9 "TP124005-2" H 4900 3050 50  0001 L CNN "Manufacturer_Part_Number"
	1    4250 3650
	1    0    0    -1  
$EndComp
$Comp
L Charges_KiCAD_Project-rescue:TB002-500-04BE-SamacSys_Parts J1
U 1 1 61D32EFF
P 7400 5500
F 0 "J1" H 8028 5396 50  0000 L CNN
F 1 "796684-4" H 8028 5305 50  0000 L CNN
F 2 "RDT_Custom_Footprints:TB00250004BE" H 8050 5600 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/TB002-500-04BE.pdf" H 8050 5500 50  0001 L CNN
F 4 "Fixed Terminal Blocks screw type, 5.00 , horizontal, 4 poles, CUI Blue, slotted screw, PCB mount" H 8050 5400 50  0001 L CNN "Description"
F 5 "10" H 8050 5300 50  0001 L CNN "Height"
F 6 "490-TB002-500-04BE" H 8050 5200 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TB002-500-04BE?qs=vLWxofP3U2xeSOvlh9kMGw%3D%3D" H 8050 5100 50  0001 L CNN "Mouser Price/Stock"
F 8 "CUI Inc." H 8050 5000 50  0001 L CNN "Manufacturer_Name"
F 9 "TB002-500-04BE" H 8050 4900 50  0001 L CNN "Manufacturer_Part_Number"
	1    7400 5500
	1    0    0    -1  
$EndComp
$Comp
L Charges_KiCAD_Project-rescue:TB002-500-04BE-SamacSys_Parts J2
U 1 1 61D35C6A
P 9850 5500
F 0 "J2" H 10478 5396 50  0000 L CNN
F 1 "796684-4" H 10478 5305 50  0000 L CNN
F 2 "RDT_Custom_Footprints:TB00250004BE" H 10500 5600 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/TB002-500-04BE.pdf" H 10500 5500 50  0001 L CNN
F 4 "Fixed Terminal Blocks screw type, 5.00 , horizontal, 4 poles, CUI Blue, slotted screw, PCB mount" H 10500 5400 50  0001 L CNN "Description"
F 5 "10" H 10500 5300 50  0001 L CNN "Height"
F 6 "490-TB002-500-04BE" H 10500 5200 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TB002-500-04BE?qs=vLWxofP3U2xeSOvlh9kMGw%3D%3D" H 10500 5100 50  0001 L CNN "Mouser Price/Stock"
F 8 "CUI Inc." H 10500 5000 50  0001 L CNN "Manufacturer_Name"
F 9 "TB002-500-04BE" H 10500 4900 50  0001 L CNN "Manufacturer_Part_Number"
	1    9850 5500
	1    0    0    -1  
$EndComp
$Comp
L Charges_KiCAD_Project-rescue:RESISTOR0402-SparkFun-Resistors R18
U 1 1 617B3C91
P 10200 1900
F 0 "R18" H 10200 2050 45  0000 C CNN
F 1 "100k" H 10200 2000 45  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10200 2050 20  0001 C CNN
F 3 "" H 10200 1900 60  0001 C CNN
F 4 " " H 10200 2021 60  0000 C CNN "Field4"
	1    10200 1900
	1    0    0    -1  
$EndComp
$Comp
L Charges_KiCAD_Project-rescue:SI7232DN-T1-GE3-SamacSys_Parts Q1
U 1 1 61A5982E
P 8150 1250
F 0 "Q1" H 8700 1515 50  0000 C CNN
F 1 "SI7232DN-T1-GE3" H 8700 1424 50  0000 C CNN
F 2 "SamacSys_Parts:SI7232DNT1GE3" H 9100 1350 50  0001 L CNN
F 3 "https://www.vishay.com/docs/68986/si7232dn.pdf" H 9100 1250 50  0001 L CNN
F 4 "Dual N-Channel (D-S)MOSFET 20V Vds 8V Vgs PowerPAK 1212-8 " H 9100 1150 50  0001 L CNN "Description"
F 5 "1.12" H 9100 1050 50  0001 L CNN "Height"
F 6 "781-SI7232DN-GE3" H 9100 950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Vishay-Semiconductors/SI7232DN-T1-GE3?qs=%252BPu8jn5UVnH5FJ8Jo4EbFw%3D%3D" H 9100 850 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 9100 750 50  0001 L CNN "Manufacturer_Name"
F 9 "SI7232DN-T1-GE3" H 9100 650 50  0001 L CNN "Manufacturer_Part_Number"
	1    8150 1250
	1    0    0    -1  
$EndComp
$Sheet
S 3500 900  1300 1500
U 6160DF75
F0 "MCU_L562VET6Q" 50
F1 "COMPONENT_SHEETS/STM32L562VET6Q.sch" 50
F2 "SWCLK" I L 3500 2050 50 
F3 "SWDIO" I L 3500 1900 50 
F4 "I2C1_SDA" I R 4800 2200 50 
F5 "I2C1_SCL" I R 4800 2300 50 
F6 "NRST" I L 3500 2200 50 
F7 "Sense_A" I L 3500 1050 50 
F8 "Sense_B" I L 3500 1150 50 
F9 "Fire_A" I R 4800 1050 50 
F10 "Fire_B" I R 4800 1150 50 
F11 "Buzzer_Excitation" I R 4800 1900 50 
F12 "Sense_C" I L 3500 1250 50 
F13 "Sense_D" I L 3500 1350 50 
F14 "Fire_C" I R 4800 1250 50 
F15 "Fire_D" I R 4800 1350 50 
F16 "Fire_Redundant" I R 4800 1500 50 
F17 "Fire" I R 4800 1600 50 
F18 "Alert_Active" I L 3500 1750 50 
$EndSheet
$Sheet
S 1150 3450 1300 1250
U 6199791F
F0 "Barometer_MS5607" 50
F1 "COMPONENT_SHEETS/BAROMETER_MS5607-02.sch" 50
F2 "SDI_SDA" I L 1150 4000 50 
F3 "SCLK" I L 1150 4350 50 
F4 "SDO" I L 1150 3800 50 
F5 "~CSB" I L 1150 4200 50 
F6 "PS" I L 1150 4550 50 
$EndSheet
$Sheet
S 950  900  1400 1500
U 61A437B5
F0 "DSUB_37_Male" 50
F1 "COMPONENT_SHEETS/DSUB-37_Male.sch" 50
F2 "t_mosi" I L 950 1150 50 
F3 "t_miso" I L 950 1300 50 
F4 "t_clk" I L 950 1450 50 
F5 "Alert_scl" I L 950 1650 50 
F6 "Alert_sda" I L 950 1800 50 
F7 "Alert_Active" I L 950 1950 50 
F8 "SWDIO" I L 950 2050 50 
F9 "SWCLK" I L 950 2150 50 
F10 "NRST" I L 950 2250 50 
F11 "Fire" I R 2350 2300 50 
F12 "Fire_redundant" I R 2350 2150 50 
$EndSheet
Wire Wire Line
	6450 5400 6450 5500
Wire Wire Line
	6450 5800 6850 5800
Wire Wire Line
	6850 5800 7400 5800
Connection ~ 6850 5800
Wire Wire Line
	6450 5500 6850 5500
Connection ~ 6450 5500
Wire Wire Line
	6450 5500 6450 5800
Wire Wire Line
	6850 5500 7250 5500
Connection ~ 6850 5500
Wire Wire Line
	8900 5400 8900 5500
Wire Wire Line
	9300 5500 8900 5500
Connection ~ 8900 5500
Wire Wire Line
	8900 5500 8900 5800
Wire Wire Line
	9300 5500 9700 5500
Connection ~ 9300 5500
Wire Wire Line
	9300 5800 9850 5800
Wire Wire Line
	9300 5800 8900 5800
Connection ~ 9300 5800
$EndSCHEMATC
