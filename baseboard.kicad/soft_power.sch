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
Sheet 3 3
Title "Soft Power Button"
Date "5 nov 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R 10K1
U 1 1 5638E982
P 2850 4050
F 0 "10K1" V 2930 4050 40  0000 C CNN
F 1 "R" V 2857 4051 40  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2780 4050 30  0001 C CNN
F 3 "~" H 2850 4050 30  0000 C CNN
F 4 "Panasonic" H 2850 4050 60  0001 C CNN "ManufacturerName"
F 5 "ERJ-6ENF1002V" H 2850 4050 60  0001 C CNN "ManufacturerPartNumber"
	1    2850 4050
	-1   0    0    1   
$EndComp
$Comp
L R 100K1
U 1 1 5638E991
P 3250 3950
F 0 "100K1" V 3330 3950 40  0000 C CNN
F 1 "R" V 3257 3951 40  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3180 3950 30  0001 C CNN
F 3 "~" H 3250 3950 30  0000 C CNN
F 4 "Panasonic" H 3250 3950 60  0001 C CNN "ManufacturerName"
F 5 "ERJ-6ENF1003V" H 3250 3950 60  0001 C CNN "ManufacturerPartNumber"
	1    3250 3950
	-1   0    0    1   
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 5638E9E5
P 2350 4300
F 0 "SW1" H 2500 4410 50  0000 C CNN
F 1 "SW_PUSH" H 2350 4220 50  0000 C CNN
F 2 "switches:btn_1571262-1" H 2350 4300 60  0001 C CNN
F 3 "~" H 2350 4300 60  0000 C CNN
F 4 "TE Connectivity / Alcoswitch" H 2350 4300 60  0001 C CNN "ManufacturerName"
F 5 "1571262-1" H 2350 4300 60  0001 C CNN "ManufacturerPartNumber"
	1    2350 4300
	1    0    0    -1  
$EndComp
$Comp
L R 100K2
U 1 1 5638F5EC
P 5950 3700
F 0 "100K2" V 6030 3700 40  0000 C CNN
F 1 "R" V 5957 3701 40  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5880 3700 30  0001 C CNN
F 3 "~" H 5950 3700 30  0000 C CNN
F 4 "Panasonic" H 5950 3700 60  0001 C CNN "ManufacturerName"
F 5 "ERJ-6ENF1003V" H 5950 3700 60  0001 C CNN "ManufacturerPartNumber"
	1    5950 3700
	-1   0    0    1   
$EndComp
$Comp
L R 1K1
U 1 1 5638F607
P 4300 5000
F 0 "1K1" V 4380 5000 40  0000 C CNN
F 1 "R" V 4307 5001 40  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4230 5000 30  0001 C CNN
F 3 "~" H 4300 5000 30  0000 C CNN
F 4 "Panasonic" H 4300 5000 60  0001 C CNN "ManufacturerName"
F 5 "ERJ-6ENF1101V" H 4300 5000 60  0001 C CNN "ManufacturerPartNumber"
	1    4300 5000
	-1   0    0    1   
$EndComp
$Comp
L R 300K1
U 1 1 5638F619
P 5700 3950
F 0 "300K1" V 5780 3950 40  0000 C CNN
F 1 "R" V 5707 3951 40  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5630 3950 30  0001 C CNN
F 3 "~" H 5700 3950 30  0000 C CNN
F 4 "Panasonic" H 5700 3950 60  0001 C CNN "ManufacturerName"
F 5 "ERJ-6ENF3003V" H 5700 3950 60  0001 C CNN "ManufacturerPartNumber"
	1    5700 3950
	0    1    1    0   
$EndComp
$Comp
L C 10µf1
U 1 1 5638F658
P 5450 3750
F 0 "10µf1" H 5250 3650 40  0000 L CNN
F 1 "C" H 5456 3665 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5488 3600 30  0001 C CNN
F 3 "~" H 5450 3750 60  0000 C CNN
F 4 "Vishay / Vitramon" H 5450 3750 60  0001 C CNN "ManufacturerName"
F 5 "VJ0805G106KXQTW1BC" H 5450 3750 60  0001 C CNN "ManufacturerPartNumber"
	1    5450 3750
	-1   0    0    1   
$EndComp
$Comp
L C 1µf1
U 1 1 5638F671
P 3050 4300
F 0 "1µf1" H 3050 4400 40  0000 L CNN
F 1 "C" H 3056 4215 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3088 4150 30  0001 C CNN
F 3 "~" H 3050 4300 60  0000 C CNN
F 4 "Vishay / Vitramon" H 3050 4300 60  0001 C CNN "ManufacturerName"
F 5 "VJ0805Y105KXQTW1BC" H 3050 4300 60  0001 C CNN "ManufacturerPartNumber"
	1    3050 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 3200 4800 3200
Wire Wire Line
	2850 3900 2850 3200
Connection ~ 2850 3200
Wire Wire Line
	3250 3800 3250 3200
Connection ~ 3250 3200
$Comp
L C 0.1µf1
U 1 1 5638F756
P 4650 3500
F 0 "0.1µf1" H 4650 3600 40  0000 L CNN
F 1 "C" H 4656 3415 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4688 3350 30  0001 C CNN
F 3 "~" H 4650 3500 60  0000 C CNN
F 4 "Wurth Electronics" H 4650 3500 60  0001 C CNN "ManufacturerName"
F 5 "885012207098" H 4650 3500 60  0001 C CNN "ManufacturerPartNumber"
	1    4650 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 3600 5450 3200
Connection ~ 5450 3200
Wire Wire Line
	5950 3200 5950 3550
Connection ~ 5950 3200
Wire Wire Line
	5950 4700 2750 4700
Wire Wire Line
	5950 3850 5950 4700
$Comp
L GND #PWR032
U 1 1 5638F69B
P 1950 4750
F 0 "#PWR032" H 1950 4750 30  0001 C CNN
F 1 "GND" H 1950 4680 30  0001 C CNN
F 2 "" H 1950 4750 60  0000 C CNN
F 3 "" H 1950 4750 60  0000 C CNN
	1    1950 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4750 1950 4300
Wire Wire Line
	1950 4300 2050 4300
$Comp
L GND #PWR033
U 1 1 5638F96D
P 4950 4350
F 0 "#PWR033" H 4950 4350 30  0001 C CNN
F 1 "GND" H 4950 4280 30  0001 C CNN
F 2 "" H 4950 4350 60  0000 C CNN
F 3 "" H 4950 4350 60  0000 C CNN
	1    4950 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4200 4950 4350
Wire Wire Line
	4300 4850 4300 4700
Connection ~ 4300 4700
$Comp
L IRF7309IPBF Q1
U 2 1 563A3C3B
P 5000 3300
F 0 "Q1" H 5000 3152 40  0000 R CNN
F 1 "IRF7309IPBF" H 5000 3449 40  0000 R CNN
F 2 "SMD_Packages:SOIC-8-N" H 4821 3401 29  0001 C CNN
F 3 "" H 5000 3300 60  0000 C CNN
F 4 "International Rectifier" H 5000 3300 60  0001 C CNN "ManufacturerName"
F 5 "IRF7309PBF" H 5000 3300 60  0001 C CNN "ManufacturerPartNumber"
	2    5000 3300
	0    1    -1   0   
$EndComp
$Comp
L IRF7309IPBF Q1
U 1 1 563A3D1C
P 5050 4000
F 0 "Q1" H 5050 3852 40  0000 R CNN
F 1 "IRF7309IPBF" H 5050 4149 40  0000 R CNN
F 2 "SMD_Packages:SOIC-8-N" H 4871 4101 29  0001 C CNN
F 3 "" H 5050 4000 60  0000 C CNN
F 4 "International Rectifier" H 5050 4000 60  0001 C CNN "ManufacturerName"
F 5 "IRF7309PBF" H 5050 4000 60  0001 C CNN "ManufacturerPartNumber"
	1    5050 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4800 3500 4950 3500
Wire Wire Line
	5250 4050 5450 3950
Wire Wire Line
	5450 3950 5550 3950
Wire Wire Line
	4950 3500 4950 3800
$Comp
L D D1
U 1 1 56B9A097
P 2750 4550
F 0 "D1" H 2750 4650 50  0000 C CNN
F 1 "D" H 2750 4450 50  0000 C CNN
F 2 "Diodes_SMD:SOD-123" H 2750 4550 60  0001 C CNN
F 3 "" H 2750 4550 60  0000 C CNN
F 4 "Micro Commercial Components" H 2750 4550 60  0001 C CNN "ManufacturerName"
F 5 "1N4148W-TP" H 2750 4550 60  0001 C CNN "ManufacturerPartNumber"
	1    2750 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 4300 2900 4300
Connection ~ 2750 4300
Wire Wire Line
	2750 4300 2750 4400
Connection ~ 2850 4300
Wire Wire Line
	2850 4300 2850 4200
Wire Wire Line
	4200 3500 4500 3500
Wire Wire Line
	5450 3950 5450 3900
Connection ~ 5950 3950
Wire Wire Line
	5950 3950 5850 3950
Connection ~ 5450 3950
Wire Wire Line
	4300 5250 4300 5150
Connection ~ 4950 3700
Wire Wire Line
	4950 3700 4450 3700
Wire Wire Line
	4450 3700 4450 4300
Wire Wire Line
	4450 4300 3200 4300
Connection ~ 3250 4300
Wire Wire Line
	3250 4300 3250 4100
Text HLabel 2500 3000 0    60   Input ~ 0
Vin
Text HLabel 6500 2950 0    60   Input ~ 0
Vout
Text HLabel 4300 5250 0    60   Input ~ 0
Pwr-On
Wire Wire Line
	6650 3200 6650 2950
Wire Wire Line
	6650 2950 6500 2950
Wire Wire Line
	5200 3200 6650 3200
Wire Wire Line
	2500 3200 2500 3000
NoConn ~ 5200 3100
NoConn ~ 4850 3800
Wire Wire Line
	4200 3500 4200 3200
Connection ~ 4200 3200
$EndSCHEMATC
