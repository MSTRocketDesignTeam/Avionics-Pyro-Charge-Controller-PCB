EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date "2021-10-05"
Rev "v1.0.3"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Crystal Y?
U 1 1 61614642
P 5500 6400
AR Path="/61614642" Ref="Y?"  Part="1" 
AR Path="/6160DF75/61614642" Ref="Y1"  Part="1" 
F 0 "Y1" V 5550 6650 50  0000 C CNN
F 1 "Crystal" V 5450 6650 50  0000 C CNN
F 2 "" H 5500 6400 50  0001 C CNN
F 3 "~" H 5500 6400 50  0001 C CNN
	1    5500 6400
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61614648
P 5250 6700
AR Path="/61614648" Ref="C?"  Part="1" 
AR Path="/6160DF75/61614648" Ref="C10"  Part="1" 
F 0 "C10" V 5000 6750 50  0000 R CNN
F 1 "30pF" V 5100 6800 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5250 6700 50  0001 C CNN
F 3 "~" H 5250 6700 50  0001 C CNN
	1    5250 6700
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6161464E
P 5250 6100
AR Path="/6161464E" Ref="C?"  Part="1" 
AR Path="/6160DF75/6161464E" Ref="C9"  Part="1" 
F 0 "C9" V 5000 6150 50  0000 R CNN
F 1 "30pF" V 5100 6200 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5250 6100 50  0001 C CNN
F 3 "~" H 5250 6100 50  0001 C CNN
	1    5250 6100
	0    -1   -1   0   
$EndComp
Text Notes 4950 7400 0    50   ~ 0
CL = 2 * (Cload - Cstray)\nCload ≈ 20pF, Cstray ≈ 5pF\nCL = 2 *(20pF - 5pF)\nCL = 30pF
$Comp
L power:GND #PWR?
U 1 1 61614655
P 5050 6100
AR Path="/61614655" Ref="#PWR?"  Part="1" 
AR Path="/6160DF75/61614655" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 5050 5850 50  0001 C CNN
F 1 "GND" H 5055 5927 50  0000 C CNN
F 2 "" H 5050 6100 50  0001 C CNN
F 3 "" H 5050 6100 50  0001 C CNN
	1    5050 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6161465B
P 5050 6700
AR Path="/6161465B" Ref="#PWR?"  Part="1" 
AR Path="/6160DF75/6161465B" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 5050 6450 50  0001 C CNN
F 1 "GND" H 5055 6527 50  0000 C CNN
F 2 "" H 5050 6700 50  0001 C CNN
F 3 "" H 5050 6700 50  0001 C CNN
	1    5050 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61614661
P 4450 1000
AR Path="/61614661" Ref="#PWR?"  Part="1" 
AR Path="/6160DF75/61614661" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 4450 750 50  0001 C CNN
F 1 "GND" H 4455 827 50  0000 C CNN
F 2 "" H 4450 1000 50  0001 C CNN
F 3 "" H 4450 1000 50  0001 C CNN
	1    4450 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1000 4450 850 
Wire Wire Line
	5850 5500 5850 6700
Wire Wire Line
	5750 5500 5750 6100
Wire Wire Line
	5750 6100 5500 6100
Wire Wire Line
	5850 6700 5500 6700
Wire Wire Line
	5500 6250 5500 6100
Connection ~ 5500 6100
Wire Wire Line
	5500 6100 5350 6100
Wire Wire Line
	5500 6550 5500 6700
Connection ~ 5500 6700
Wire Wire Line
	5500 6700 5350 6700
$Comp
L Device:C_Small C?
U 1 1 61614678
P 1250 3750
AR Path="/61614678" Ref="C?"  Part="1" 
AR Path="/6160DF75/61614678" Ref="C6"  Part="1" 
F 0 "C6" H 1158 3704 50  0000 R CNN
F 1 "1uF" H 1158 3795 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1250 3750 50  0001 C CNN
F 3 "~" H 1250 3750 50  0001 C CNN
	1    1250 3750
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6161467E
P 1650 3750
AR Path="/6161467E" Ref="C?"  Part="1" 
AR Path="/6160DF75/6161467E" Ref="C7"  Part="1" 
F 0 "C7" H 1558 3704 50  0000 R CNN
F 1 "100nF" H 1558 3795 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1650 3750 50  0001 C CNN
F 3 "~" H 1650 3750 50  0001 C CNN
	1    1650 3750
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61614684
P 2050 3750
AR Path="/61614684" Ref="C?"  Part="1" 
AR Path="/6160DF75/61614684" Ref="C8"  Part="1" 
F 0 "C8" H 1958 3704 50  0000 R CNN
F 1 "100nF" H 1958 3795 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2050 3750 50  0001 C CNN
F 3 "~" H 2050 3750 50  0001 C CNN
	1    2050 3750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6161468A
P 1250 4000
AR Path="/6161468A" Ref="#PWR?"  Part="1" 
AR Path="/6160DF75/6161468A" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 1250 3750 50  0001 C CNN
F 1 "GND" H 1255 3827 50  0000 C CNN
F 2 "" H 1250 4000 50  0001 C CNN
F 3 "" H 1250 4000 50  0001 C CNN
	1    1250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4000 1250 3950
Wire Wire Line
	1250 3950 1650 3950
Wire Wire Line
	2050 3950 2050 3850
Connection ~ 1250 3950
Wire Wire Line
	1250 3950 1250 3850
Wire Wire Line
	1650 3850 1650 3950
Connection ~ 1650 3950
Wire Wire Line
	1650 3950 2050 3950
$Comp
L power:+3.3V #PWR?
U 1 1 61614698
P 1250 3500
AR Path="/61614698" Ref="#PWR?"  Part="1" 
AR Path="/6160DF75/61614698" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 1250 3350 50  0001 C CNN
F 1 "+3.3V" H 1265 3673 50  0000 C CNN
F 2 "" H 1250 3500 50  0001 C CNN
F 3 "" H 1250 3500 50  0001 C CNN
	1    1250 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3500 1250 3550
Wire Wire Line
	1250 3550 1650 3550
Wire Wire Line
	1650 3550 1650 3650
Connection ~ 1250 3550
Wire Wire Line
	1250 3550 1250 3650
Wire Wire Line
	1650 3550 2050 3550
Wire Wire Line
	2050 3550 2050 3650
Connection ~ 1650 3550
Text Notes 1200 4450 0    50   ~ 0
1uF - Bulk Filtering\n100nF - 1 per VCC pin
Wire Notes Line
	1100 4250 2400 4250
Wire Notes Line
	2400 4250 2400 3250
Wire Notes Line
	2400 3250 1100 3250
Wire Notes Line
	1100 3250 1100 4250
Text HLabel 6250 1300 1    50   Input ~ 0
SWCLK
Text HLabel 6350 1300 1    50   Input ~ 0
SWDIO
Text HLabel 6150 1300 1    50   Input ~ 0
I2C1_SCL
Text HLabel 3650 3500 0    50   Input ~ 0
NRST
Text HLabel 6650 3600 2    50   Input ~ 0
Sense_B
Text HLabel 6650 3700 2    50   Input ~ 0
Fire_A
Text HLabel 6650 3800 2    50   Input ~ 0
Fire_B
Text HLabel 6650 4300 2    50   Input ~ 0
Sense_C
Text HLabel 6650 4000 2    50   Input ~ 0
Sense_D
Text HLabel 6650 4100 2    50   Input ~ 0
Fire_C
Text HLabel 6650 4200 2    50   Input ~ 0
Fire_D
Text HLabel 6050 1300 1    50   Input ~ 0
I2C1_SDA
$Comp
L SamacSys_Parts:STM32L562VET6Q IC1
U 1 1 61A3157F
P 3650 2200
F 0 "IC1" H 5200 3650 50  0000 L CNN
F 1 "STM32L562VET6Q" H 4950 3500 50  0000 L CNN
F 2 "SamacSys_Parts:QFP50P1600X1600X160-100N" H 6500 2900 50  0001 L CNN
F 3 "https://www.st.com/resource/en/datasheet/stm32l562ve.pdf" H 6500 2800 50  0001 L CNN
F 4 "32-bit Microcontrollers - MCU 16/32-BITS MICROS" H 6500 2700 50  0001 L CNN "Description"
F 5 "1.6" H 6500 2600 50  0001 L CNN "Height"
F 6 "511-STM32L562VET6Q" H 6500 2500 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/STMicroelectronics/STM32L562VET6Q?qs=%252B6g0mu59x7LmzZ%252BsHmyBKw%3D%3D" H 6500 2400 50  0001 L CNN "Mouser Price/Stock"
F 8 "STMicroelectronics" H 6500 2300 50  0001 L CNN "Manufacturer_Name"
F 9 "STM32L562VET6Q" H 6500 2200 50  0001 L CNN "Manufacturer_Part_Number"
	1    3650 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6161462F
P 6650 2300
AR Path="/6161462F" Ref="#PWR?"  Part="1" 
AR Path="/6160DF75/6161462F" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 6650 2050 50  0001 C CNN
F 1 "GND" H 6655 2127 50  0000 C CNN
F 2 "" H 6650 2300 50  0001 C CNN
F 3 "" H 6650 2300 50  0001 C CNN
	1    6650 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 2200 7050 2200
Wire Wire Line
	4550 1300 4550 850 
Wire Wire Line
	4550 850  4450 850 
Text Notes 1100 3200 0    100  ~ 0
Microcontroller\nInput Power Filtering
Text HLabel 3650 3600 0    50   Input ~ 0
Fire
Text HLabel 3650 3700 0    50   Input ~ 0
Fire_Redundant
Text HLabel 4450 5500 3    50   Input ~ 0
Buzzer_Excitation
Text HLabel 5950 1300 1    50   Input ~ 0
Alert_Active
$Comp
L power:+3.3V #PWR?
U 1 1 6161463B
P 7050 2200
AR Path="/6161463B" Ref="#PWR?"  Part="1" 
AR Path="/6160DF75/6161463B" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 7050 2050 50  0001 C CNN
F 1 "+3.3V" H 7050 2350 50  0000 C CNN
F 2 "" H 7050 2200 50  0001 C CNN
F 3 "" H 7050 2200 50  0001 C CNN
	1    7050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 6100 5050 6100
Wire Wire Line
	5150 6700 5050 6700
Text HLabel 6650 3900 2    50   Input ~ 0
Sense_A
$EndSCHEMATC
