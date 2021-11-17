EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "MS5607-02BA Barometer Chip"
Date "2021-10-01"
Rev "v1.0.4"
Comp "Missouri S&T Rocket Design Team '21 (Thomas Francois)"
Comment1 "https://github.com/MSTRocketDesignTeam/Avionics-Data-Collection-PCB"
Comment2 "Intended as initial pre-production design"
Comment3 "Schematic depicting logical connections between components"
Comment4 ""
$EndDescr
Wire Wire Line
	5900 3200 5900 3250
Wire Wire Line
	5900 4050 5900 4100
Wire Wire Line
	5900 3200 6350 3200
Wire Wire Line
	6350 3200 6350 3150
Wire Wire Line
	5900 4100 6350 4100
Connection ~ 5900 4100
Wire Wire Line
	5900 4100 5900 4150
Wire Notes Line
	6750 2800 5000 2800
Text Notes 6200 2750 2    100  ~ 0
Barometer Chip
Connection ~ 6350 3200
Wire Wire Line
	6350 3200 6350 3500
Text HLabel 5500 3650 0    50   Input ~ 0
SDI_SDA
Text HLabel 5500 3750 0    50   Input ~ 0
SCLK
Text HLabel 5500 3550 0    50   Input ~ 0
SDO
Text HLabel 5500 3850 0    50   Input ~ 0
~CSB
Text Notes 5050 4650 0    50   ~ 0
MS5607-02 I2C Addresses:\nAD0 = 0 -> 0x77\nAD0 = 1 -> 0x76
Wire Notes Line
	6750 4700 5000 4700
Wire Notes Line
	6750 2800 6750 4700
Wire Notes Line
	5000 2800 5000 4700
Text Notes 5450 4900 0    50   ~ 0
Pressure range should be \nsufficientfor ~ 100,000 feet.
$Comp
L power:+3.3V #PWR?
U 1 1 619A1EC3
P 6350 3150
F 0 "#PWR?" H 6350 3000 50  0001 C CNN
F 1 "+3.3V" H 6365 3323 50  0000 C CNN
F 2 "" H 6350 3150 50  0001 C CNN
F 3 "" H 6350 3150 50  0001 C CNN
	1    6350 3150
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Pressure:MS5607-02BA U?
U 1 1 619AA1D5
P 5900 3650
F 0 "U?" H 6230 3696 50  0000 L CNN
F 1 "MS5607-02BA" H 6230 3605 50  0000 L CNN
F 2 "Package_LGA:LGA-8_3x5mm_P1.25mm" H 5900 3650 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Data+Sheet%7FMS5607-02BA03%7FB2%7Fpdf%7FEnglish%7FENG_DS_MS5607-02BA03_B2.pdf%7FCAT-BLPS0035" H 5900 3650 50  0001 C CNN
	1    5900 3650
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 619ADA7B
P 5900 4150
F 0 "#PWR?" H 5900 3900 50  0001 C CNN
F 1 "Earth" H 5900 4000 50  0001 C CNN
F 2 "" H 5900 4150 50  0001 C CNN
F 3 "~" H 5900 4150 50  0001 C CNN
	1    5900 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C100nF
U 1 1 619AE3A1
P 6350 3600
F 0 "C100nF" H 6442 3646 50  0000 L CNN
F 1 "C_Small" H 6442 3555 50  0000 L CNN
F 2 "" H 6350 3600 50  0001 C CNN
F 3 "~" H 6350 3600 50  0001 C CNN
	1    6350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3700 6350 4100
Text HLabel 5500 3450 0    50   Input ~ 0
PS
$EndSCHEMATC
