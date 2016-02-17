EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:raspberry_pins
LIBS:piggrl_zero_baseboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Audio"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L NC7WZ16_Dual_Buffer U4
U 1 1 56B8FA16
P 4150 2550
F 0 "U4" H 4050 2300 60  0000 C CNN
F 1 "NC7WZ16_Dual_Buffer" H 4200 3000 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SC-70-6_Handsoldering" H 4150 2550 60  0001 C CNN
F 3 "" H 4150 2550 60  0000 C CNN
F 4 "Fairchild Semiconductor" H 4150 2550 60  0001 C CNN "ManufacturerName"
F 5 "NC7WZ16P6X" H 4150 2550 60  0001 C CNN "ManufacturerPartNumber"
	1    4150 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 56B8FB31
P 7250 2250
F 0 "#PWR020" H 7250 2000 50  0001 C CNN
F 1 "GND" H 7250 2100 50  0000 C CNN
F 2 "" H 7250 2250 60  0000 C CNN
F 3 "" H 7250 2250 60  0000 C CNN
	1    7250 2250
	1    0    0    -1  
$EndComp
Text HLabel 1750 2300 0    60   Input ~ 0
Aud_PWM1
Text HLabel 1750 2600 0    60   Input ~ 0
Aud_PWM0
$Comp
L R R49
U 1 1 56B8FE95
P 2250 2300
F 0 "R49" V 2330 2300 50  0000 C CNN
F 1 "100" V 2250 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2180 2300 30  0001 C CNN
F 3 "" H 2250 2300 30  0000 C CNN
F 4 "Panasonic" H 2250 2300 60  0001 C CNN "ManufacturerName"
F 5 "ERJ-6ENF1000V" H 2250 2300 60  0001 C CNN "ManufacturerPartNumber"
	1    2250 2300
	0    1    1    0   
$EndComp
$Comp
L R R61
U 1 1 56B8FF60
P 2250 2600
F 0 "R61" V 2330 2600 50  0000 C CNN
F 1 "100" V 2250 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2180 2600 30  0001 C CNN
F 3 "" H 2250 2600 30  0000 C CNN
F 4 "Panasonic" H 2250 2600 60  0001 C CNN "ManufacturerName"
F 5 "ERJ-6ENF1000V" H 2250 2600 60  0001 C CNN "ManufacturerPartNumber"
	1    2250 2600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR021
U 1 1 56B905EE
P 3750 3050
F 0 "#PWR021" H 3750 2800 50  0001 C CNN
F 1 "GND" H 3750 2900 50  0000 C CNN
F 2 "" H 3750 3050 60  0000 C CNN
F 3 "" H 3750 3050 60  0000 C CNN
	1    3750 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 56B9060A
P 2600 3050
F 0 "#PWR022" H 2600 2800 50  0001 C CNN
F 1 "GND" H 2600 2900 50  0000 C CNN
F 2 "" H 2600 3050 60  0000 C CNN
F 3 "" H 2600 3050 60  0000 C CNN
	1    2600 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 56B90626
P 5050 3050
F 0 "#PWR023" H 5050 2800 50  0001 C CNN
F 1 "GND" H 5050 2900 50  0000 C CNN
F 2 "" H 5050 3050 60  0000 C CNN
F 3 "" H 5050 3050 60  0000 C CNN
	1    5050 3050
	1    0    0    -1  
$EndComp
$Comp
L R R62
U 1 1 56B9064A
P 2600 2850
F 0 "R62" V 2680 2850 50  0000 C CNN
F 1 "470" V 2600 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2530 2850 30  0001 C CNN
F 3 "" H 2600 2850 30  0000 C CNN
F 4 "Panasonic" H 2600 2850 60  0001 C CNN "ManufacturerName"
F 5 "ERJ-6ENF4700V" H 2600 2850 60  0001 C CNN "ManufacturerPartNumber"
	1    2600 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 56B9071C
P 2850 3050
F 0 "#PWR024" H 2850 2800 50  0001 C CNN
F 1 "GND" H 2850 2900 50  0000 C CNN
F 2 "" H 2850 3050 60  0000 C CNN
F 3 "" H 2850 3050 60  0000 C CNN
	1    2850 3050
	1    0    0    -1  
$EndComp
$Comp
L R R60
U 1 1 56B90722
P 2850 2850
F 0 "R60" V 2930 2850 50  0000 C CNN
F 1 "470" V 2850 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2780 2850 30  0001 C CNN
F 3 "" H 2850 2850 30  0000 C CNN
F 4 "Panasonic" H 2850 2850 60  0001 C CNN "ManufacturerName"
F 5 "ERJ-6ENF4700V" H 2850 2850 60  0001 C CNN "ManufacturerPartNumber"
	1    2850 2850
	1    0    0    -1  
$EndComp
$Comp
L +2V5 #PWR025
U 1 1 56B91140
P 5050 1800
F 0 "#PWR025" H 5050 1650 50  0001 C CNN
F 1 "+2V5" H 5050 1940 50  0000 C CNN
F 2 "" H 5050 1800 60  0000 C CNN
F 3 "" H 5050 1800 60  0000 C CNN
	1    5050 1800
	1    0    0    -1  
$EndComp
$Comp
L C C61
U 1 1 56B91160
P 5050 2900
F 0 "C61" H 5075 3000 50  0000 L CNN
F 1 "100n" H 5075 2800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5088 2750 30  0001 C CNN
F 3 "" H 5050 2900 60  0000 C CNN
F 4 "Vishay / Vitramon" H 5050 2900 60  0001 C CNN "ManufacturerName"
F 5 "VJ0805V104ZXQCW1BC" H 5050 2900 60  0001 C CNN "ManufacturerPartNumber"
	1    5050 2900
	1    0    0    1   
$EndComp
$Comp
L Regulator_LP2980 U3
U 1 1 56B971F8
P 2250 4600
F 0 "U3" H 2200 4250 60  0000 C CNN
F 1 "Regulator_LP2980" H 2250 5300 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 2250 4600 60  0001 C CNN
F 3 "" H 2250 4600 60  0000 C CNN
F 4 "Texas Instruments" H 2250 4600 60  0001 C CNN "ManufacturerName"
F 5 "LP2980AIM5-2.5/NOPB" H 2250 4600 60  0001 C CNN "ManufacturerPartNumber"
	1    2250 4600
	1    0    0    -1  
$EndComp
$Comp
L +2V5 #PWR026
U 1 1 56B9738D
P 1650 3950
F 0 "#PWR026" H 1650 3800 50  0001 C CNN
F 1 "+2V5" H 1650 4090 50  0000 C CNN
F 2 "" H 1650 3950 60  0000 C CNN
F 3 "" H 1650 3950 60  0000 C CNN
	1    1650 3950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR027
U 1 1 56B973B1
P 1650 4900
F 0 "#PWR027" H 1650 4750 50  0001 C CNN
F 1 "+5V" H 1650 5040 50  0000 C CNN
F 2 "" H 1650 4900 60  0000 C CNN
F 3 "" H 1650 4900 60  0000 C CNN
	1    1650 4900
	1    0    0    -1  
$EndComp
Text Notes 700  5450 0    60   ~ 0
voltage regulation taken from\nhttps://github.com/raspberrypi/documentation/blob/master/hardware/raspberrypi/schematics/Raspberry-Pi-Rev-2.1-Model-AB-Schematics.pdf
Text Notes 1050 1050 0    60   ~ 0
audio circuit taken from:\nhttps://learn.adafruit.com/introducing-the-raspberry-pi-zero/audio-outputs\nhttps://learn.adafruit.com/system/assets/assets/000/028/850/original/raspberry_pi_audio.png?1449170282
$Comp
L GND #PWR028
U 1 1 56B97487
P 2250 5050
F 0 "#PWR028" H 2250 4800 50  0001 C CNN
F 1 "GND" H 2250 4900 50  0000 C CNN
F 2 "" H 2250 5050 60  0000 C CNN
F 3 "" H 2250 5050 60  0000 C CNN
	1    2250 5050
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 56B9754B
P 1350 4100
F 0 "C2" H 1375 4200 50  0000 L CNN
F 1 "10n" H 1375 4000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1388 3950 30  0001 C CNN
F 3 "" H 1350 4100 60  0000 C CNN
F 4 "Vishay / Vitramon" H 1350 4100 60  0001 C CNN "ManufacturerName"
F 5 "VJ0805Y103JXQCW1BC" H 1350 4100 60  0001 C CNN "ManufacturerPartNumber"
	1    1350 4100
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 56B97598
P 1050 4100
F 0 "C1" H 1075 4200 50  0000 L CNN
F 1 "10u" H 1075 4000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1088 3950 30  0001 C CNN
F 3 "" H 1050 4100 60  0000 C CNN
F 4 "Vishay / Vitramon" H 1050 4100 60  0001 C CNN "ManufacturerName"
F 5 "VJ0805G106KXQTW1BC" H 1050 4100 60  0001 C CNN "ManufacturerPartNumber"
	1    1050 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 56B975E1
P 1650 4250
F 0 "#PWR029" H 1650 4000 50  0001 C CNN
F 1 "GND" H 1650 4100 50  0000 C CNN
F 2 "" H 1650 4250 60  0000 C CNN
F 3 "" H 1650 4250 60  0000 C CNN
	1    1650 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2250 7250 2250
Wire Wire Line
	1750 2300 2100 2300
Wire Wire Line
	2400 2300 3750 2300
Wire Wire Line
	1750 2600 2100 2600
Wire Wire Line
	2400 2600 3750 2600
Wire Wire Line
	2600 3000 2600 3050
Wire Wire Line
	2600 2300 2600 2700
Connection ~ 2600 2300
Wire Wire Line
	2850 3000 2850 3050
Wire Wire Line
	2850 2600 2850 2700
Connection ~ 2850 2600
Wire Wire Line
	3750 2450 3750 3050
Wire Wire Line
	5050 1800 5050 2750
Wire Wire Line
	5050 3050 5050 3050
Connection ~ 5050 2450
Wire Wire Line
	4550 2450 5050 2450
Wire Wire Line
	1650 4900 1650 5000
Wire Wire Line
	1650 5000 2450 5000
Wire Wire Line
	2050 5000 2050 4900
Connection ~ 2050 5000
Wire Wire Line
	2450 5000 2450 4900
Wire Wire Line
	2250 4900 2250 5050
Wire Wire Line
	1050 3950 2050 3950
Wire Wire Line
	1050 4250 1650 4250
Connection ~ 1350 4250
Connection ~ 1650 3950
Connection ~ 1350 3950
$Comp
L R R16
U 1 1 56B978D2
P 5600 1750
F 0 "R16" V 5680 1750 50  0000 C CNN
F 1 "100" V 5600 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5530 1750 30  0001 C CNN
F 3 "" H 5600 1750 30  0000 C CNN
F 4 "Panasonic" H 5600 1750 60  0001 C CNN "ManufacturerName"
F 5 "ERJ-6ENF1000V" H 5600 1750 60  0001 C CNN "ManufacturerPartNumber"
	1    5600 1750
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 56B97917
P 6200 2050
F 0 "R17" V 6280 2050 50  0000 C CNN
F 1 "100" V 6200 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6130 2050 30  0001 C CNN
F 3 "" H 6200 2050 30  0000 C CNN
F 4 "Panasonic" H 6200 2050 60  0001 C CNN "ManufacturerName"
F 5 "ERJ-6ENF1000V" H 6200 2050 60  0001 C CNN "ManufacturerPartNumber"
	1    6200 2050
	1    0    0    -1  
$EndComp
$Comp
L C C59
U 1 1 56B9794E
P 5900 2050
F 0 "C59" H 5925 2150 50  0000 L CNN
F 1 "100n" H 5925 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5938 1900 30  0001 C CNN
F 3 "" H 5900 2050 60  0000 C CNN
F 4 "Vishay / Vitramon" H 5900 2050 60  0001 C CNN "ManufacturerName"
F 5 "VJ0805V104ZXQCW1BC" H 5900 2050 60  0001 C CNN "ManufacturerPartNumber"
	1    5900 2050
	-1   0    0    1   
$EndComp
$Comp
L C C58
U 1 1 56B979B5
P 6550 1750
F 0 "C58" H 6575 1850 50  0000 L CNN
F 1 "47u" H 6575 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6588 1600 30  0001 C CNN
F 3 "" H 6550 1750 60  0000 C CNN
F 4 "Vishay / Vitramon" H 6550 1750 60  0001 C CNN "ManufacturerName"
F 5 "VJ0805V475MXQTW1BC" H 6550 1750 60  0001 C CNN "ManufacturerPartNumber"
	1    6550 1750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR030
U 1 1 56B97C18
P 6050 2200
F 0 "#PWR030" H 6050 1950 50  0001 C CNN
F 1 "GND" H 6050 2050 50  0000 C CNN
F 2 "" H 6050 2200 60  0000 C CNN
F 3 "" H 6050 2200 60  0000 C CNN
	1    6050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2200 6200 2200
Connection ~ 6050 2200
Wire Wire Line
	5750 1750 6400 1750
Connection ~ 6200 1750
Wire Wire Line
	6200 1750 6200 1900
Connection ~ 5900 1750
Wire Wire Line
	5900 1750 5900 1900
$Comp
L R R18
U 1 1 56B97E0F
P 5600 2700
F 0 "R18" V 5680 2700 50  0000 C CNN
F 1 "100" V 5600 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5530 2700 30  0001 C CNN
F 3 "" H 5600 2700 30  0000 C CNN
F 4 "Panasonic" H 5600 2700 60  0001 C CNN "ManufacturerName"
F 5 "ERJ-6ENF1000V" H 5600 2700 60  0001 C CNN "ManufacturerPartNumber"
	1    5600 2700
	0    1    1    0   
$EndComp
$Comp
L R R19
U 1 1 56B97E15
P 6200 3000
F 0 "R19" V 6280 3000 50  0000 C CNN
F 1 "100" V 6200 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6130 3000 30  0001 C CNN
F 3 "" H 6200 3000 30  0000 C CNN
F 4 "Panasonic" H 6200 3000 60  0001 C CNN "ManufacturerName"
F 5 "ERJ-6ENF1000V" H 6200 3000 60  0001 C CNN "ManufacturerPartNumber"
	1    6200 3000
	1    0    0    -1  
$EndComp
$Comp
L C C62
U 1 1 56B97E1B
P 5900 3000
F 0 "C62" H 5925 3100 50  0000 L CNN
F 1 "100n" H 5925 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5938 2850 30  0001 C CNN
F 3 "" H 5900 3000 60  0000 C CNN
F 4 "Vishay / Vitramon" H 5900 3000 60  0001 C CNN "ManufacturerName"
F 5 "VJ0805V104ZXQCW1BC" H 5900 3000 60  0001 C CNN "ManufacturerPartNumber"
	1    5900 3000
	-1   0    0    1   
$EndComp
$Comp
L C C60
U 1 1 56B97E21
P 6550 2700
F 0 "C60" H 6575 2800 50  0000 L CNN
F 1 "47u" H 6575 2600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6588 2550 30  0001 C CNN
F 3 "" H 6550 2700 60  0000 C CNN
F 4 "Vishay / Vitramon" H 6550 2700 60  0001 C CNN "ManufacturerName"
F 5 "VJ0805V475MXQTW1BC" H 6550 2700 60  0001 C CNN "ManufacturerPartNumber"
	1    6550 2700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR031
U 1 1 56B97E27
P 6050 3150
F 0 "#PWR031" H 6050 2900 50  0001 C CNN
F 1 "GND" H 6050 3000 50  0000 C CNN
F 2 "" H 6050 3150 60  0000 C CNN
F 3 "" H 6050 3150 60  0000 C CNN
	1    6050 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3150 6200 3150
Connection ~ 6050 3150
Wire Wire Line
	5750 2700 6400 2700
Connection ~ 6200 2700
Wire Wire Line
	6200 2700 6200 2850
Connection ~ 5900 2700
Wire Wire Line
	5900 2700 5900 2850
Wire Wire Line
	4550 2600 5450 2600
Wire Wire Line
	5450 2600 5450 2700
Wire Wire Line
	4550 2300 5450 2300
Wire Wire Line
	5450 2300 5450 1750
Wire Wire Line
	6700 1750 6700 2450
Wire Wire Line
	6700 2450 7750 2450
Wire Wire Line
	6700 2700 7550 2700
Wire Wire Line
	7550 2700 7950 2550
$Comp
L audio_jack U5
U 1 1 56BD8E08
P 8150 2550
F 0 "U5" H 8100 2250 60  0000 C CNN
F 1 "audio_jack" H 8250 2850 60  0000 C CNN
F 2 "components:audio_smd_SJ-3523-SMT-TR" H 8150 2550 60  0001 C CNN
F 3 "" H 8150 2550 60  0000 C CNN
F 4 "CUI" H 8150 2550 60  0001 C CNN "ManufacturerName"
F 5 "SJ-3523-SMT-TR" H 8150 2550 60  0001 C CNN "ManufacturerPartNumber"
	1    8150 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2250 7950 2400
Wire Wire Line
	7750 2450 7950 2700
NoConn ~ 2450 3950
$EndSCHEMATC
