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
LIBS:special
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
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "22 oct 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PIC12C508A U?
U 1 1 54472BE4
P 5000 2350
F 0 "U?" H 5000 3050 60  0001 C CNN
F 1 "ATTiny45" H 5000 1700 60  0000 C CNN
F 2 "" H 5000 2350 60  0000 C CNN
F 3 "" H 5000 2350 60  0000 C CNN
	1    5000 2350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 54472C2C
P 6250 1450
F 0 "#PWR?" H 6250 1540 20  0001 C CNN
F 1 "+5V" H 6250 1540 30  0000 C CNN
F 2 "" H 6250 1450 60  0000 C CNN
F 3 "" H 6250 1450 60  0000 C CNN
	1    6250 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 54472C47
P 2950 7600
F 0 "#PWR?" H 2950 7600 30  0001 C CNN
F 1 "GND" H 2950 7530 30  0001 C CNN
F 2 "" H 2950 7600 60  0000 C CNN
F 3 "" H 2950 7600 60  0000 C CNN
	1    2950 7600
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW?
U 1 1 54472C75
P 5150 5900
F 0 "SW?" H 5300 6010 50  0001 C CNN
F 1 "SW_PUSH" H 5150 5820 50  0000 C CNN
F 2 "~" H 5150 5900 60  0000 C CNN
F 3 "~" H 5150 5900 60  0000 C CNN
	1    5150 5900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 54472CED
P 3400 5900
F 0 "R?" V 3480 5900 40  0000 C CNN
F 1 "R" V 3407 5901 40  0000 C CNN
F 2 "~" V 3330 5900 30  0000 C CNN
F 3 "~" H 3400 5900 30  0000 C CNN
	1    3400 5900
	0    1    1    0   
$EndComp
$Comp
L 74LS151 U?
U 1 1 54472E72
P 4400 3950
F 0 "U?" H 4400 3950 60  0000 C CNN
F 1 "74LS151" H 4400 3800 60  0000 C CNN
F 2 "~" H 4400 3950 60  0000 C CNN
F 3 "~" H 4400 3950 60  0000 C CNN
	1    4400 3950
	0    -1   -1   0   
$EndComp
$Comp
L SW_PUSH SW?
U 1 1 54472F32
P 5150 6150
F 0 "SW?" H 5300 6260 50  0001 C CNN
F 1 "SW_PUSH" H 5150 6070 50  0000 C CNN
F 2 "~" H 5150 6150 60  0000 C CNN
F 3 "~" H 5150 6150 60  0000 C CNN
	1    5150 6150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 54472F39
P 3400 6150
F 0 "R?" V 3480 6150 40  0000 C CNN
F 1 "R" V 3407 6151 40  0000 C CNN
F 2 "~" V 3330 6150 30  0000 C CNN
F 3 "~" H 3400 6150 30  0000 C CNN
	1    3400 6150
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH SW?
U 1 1 54472F41
P 5150 6400
F 0 "SW?" H 5300 6510 50  0001 C CNN
F 1 "SW_PUSH" H 5150 6320 50  0000 C CNN
F 2 "~" H 5150 6400 60  0000 C CNN
F 3 "~" H 5150 6400 60  0000 C CNN
	1    5150 6400
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 54472F48
P 3400 6400
F 0 "R?" V 3480 6400 40  0000 C CNN
F 1 "R" V 3407 6401 40  0000 C CNN
F 2 "~" V 3330 6400 30  0000 C CNN
F 3 "~" H 3400 6400 30  0000 C CNN
	1    3400 6400
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH SW?
U 1 1 54472F6A
P 5150 6650
F 0 "SW?" H 5300 6760 50  0001 C CNN
F 1 "SW_PUSH" H 5150 6570 50  0000 C CNN
F 2 "~" H 5150 6650 60  0000 C CNN
F 3 "~" H 5150 6650 60  0000 C CNN
	1    5150 6650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 54472F71
P 3400 6650
F 0 "R?" V 3480 6650 40  0000 C CNN
F 1 "R" V 3407 6651 40  0000 C CNN
F 2 "~" V 3330 6650 30  0000 C CNN
F 3 "~" H 3400 6650 30  0000 C CNN
	1    3400 6650
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH SW?
U 1 1 54472F79
P 5150 6900
F 0 "SW?" H 5300 7010 50  0001 C CNN
F 1 "SW_PUSH" H 5150 6820 50  0000 C CNN
F 2 "~" H 5150 6900 60  0000 C CNN
F 3 "~" H 5150 6900 60  0000 C CNN
	1    5150 6900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 54472F80
P 3400 6900
F 0 "R?" V 3480 6900 40  0000 C CNN
F 1 "R" V 3407 6901 40  0000 C CNN
F 2 "~" V 3330 6900 30  0000 C CNN
F 3 "~" H 3400 6900 30  0000 C CNN
	1    3400 6900
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH SW?
U 1 1 54472F88
P 5150 7150
F 0 "SW?" H 5300 7260 50  0001 C CNN
F 1 "SW_PUSH" H 5150 7070 50  0000 C CNN
F 2 "~" H 5150 7150 60  0000 C CNN
F 3 "~" H 5150 7150 60  0000 C CNN
	1    5150 7150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 54472F8F
P 3400 7150
F 0 "R?" V 3480 7150 40  0000 C CNN
F 1 "R" V 3407 7151 40  0000 C CNN
F 2 "~" V 3330 7150 30  0000 C CNN
F 3 "~" H 3400 7150 30  0000 C CNN
	1    3400 7150
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH SW?
U 1 1 54472F97
P 5150 7400
F 0 "SW?" H 5300 7510 50  0001 C CNN
F 1 "SW_PUSH" H 5150 7320 50  0000 C CNN
F 2 "~" H 5150 7400 60  0000 C CNN
F 3 "~" H 5150 7400 60  0000 C CNN
	1    5150 7400
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 54472F9E
P 3400 7400
F 0 "R?" V 3480 7400 40  0000 C CNN
F 1 "R" V 3407 7401 40  0000 C CNN
F 2 "~" V 3330 7400 30  0000 C CNN
F 3 "~" H 3400 7400 30  0000 C CNN
	1    3400 7400
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH SW?
U 1 1 54473191
P 5150 5650
F 0 "SW?" H 5300 5760 50  0001 C CNN
F 1 "SW_PUSH" H 5150 5570 50  0000 C CNN
F 2 "~" H 5150 5650 60  0000 C CNN
F 3 "~" H 5150 5650 60  0000 C CNN
	1    5150 5650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 54473198
P 3400 5650
F 0 "R?" V 3480 5650 40  0000 C CNN
F 1 "R" V 3407 5651 40  0000 C CNN
F 2 "~" V 3330 5650 30  0000 C CNN
F 3 "~" H 3400 5650 30  0000 C CNN
	1    3400 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 1850 5700 1850
Connection ~ 6250 1850
Wire Wire Line
	6250 5900 5450 5900
Wire Wire Line
	2950 5900 3150 5900
Connection ~ 2950 5900
Wire Wire Line
	6250 6150 5450 6150
Wire Wire Line
	2950 6150 3150 6150
Wire Wire Line
	6250 6400 5450 6400
Wire Wire Line
	2950 6400 3150 6400
Wire Wire Line
	6250 6650 5450 6650
Wire Wire Line
	2950 6650 3150 6650
Wire Wire Line
	6250 6900 5450 6900
Wire Wire Line
	2950 6900 3150 6900
Wire Wire Line
	6250 7150 5450 7150
Wire Wire Line
	2950 7150 3150 7150
Wire Wire Line
	6250 7400 5450 7400
Wire Wire Line
	2950 7400 3150 7400
Connection ~ 6250 5900
Connection ~ 6250 6150
Connection ~ 6250 6400
Connection ~ 6250 6650
Connection ~ 6250 6900
Connection ~ 6250 7150
Wire Wire Line
	6250 1450 6250 7400
Wire Wire Line
	5450 5650 6250 5650
Wire Wire Line
	3650 5650 4850 5650
Wire Wire Line
	3150 5650 2950 5650
Connection ~ 6250 5650
Wire Wire Line
	3650 5900 4850 5900
Wire Wire Line
	3650 6150 4850 6150
Wire Wire Line
	3650 6400 4850 6400
Wire Wire Line
	3650 6650 4850 6650
Wire Wire Line
	3650 6900 4850 6900
Wire Wire Line
	3650 7150 4850 7150
Wire Wire Line
	3650 7400 4850 7400
Wire Wire Line
	3750 4650 3750 5650
Connection ~ 3750 5650
Connection ~ 3850 5900
Wire Wire Line
	3950 4650 3950 6150
Connection ~ 3950 6150
Wire Wire Line
	4050 4650 4050 6400
Connection ~ 4050 6400
Wire Wire Line
	4150 4650 4150 6650
Connection ~ 4150 6650
Wire Wire Line
	4250 4650 4250 6900
Connection ~ 4250 6900
Wire Wire Line
	4350 4650 4350 7150
Connection ~ 4350 7150
Wire Wire Line
	4450 4650 4450 7400
Connection ~ 4450 7400
Wire Wire Line
	5700 2150 6150 2150
Wire Wire Line
	6150 2150 6150 5450
Wire Wire Line
	6150 5450 4650 5450
Wire Wire Line
	4650 5450 4650 4650
Wire Wire Line
	3850 4650 3850 5900
Wire Wire Line
	4750 4650 4750 5350
Wire Wire Line
	4750 5350 6050 5350
Wire Wire Line
	6050 5350 6050 2550
Wire Wire Line
	6050 2550 5700 2550
Wire Wire Line
	4850 4650 4850 5250
Wire Wire Line
	4850 5250 5950 5250
Wire Wire Line
	5950 5250 5950 2850
Wire Wire Line
	5950 2850 5700 2850
Wire Wire Line
	5050 4650 5050 5050
Wire Wire Line
	2950 5050 5250 5050
Wire Wire Line
	2950 2850 2950 7600
Connection ~ 2950 5650
Connection ~ 2950 6150
Connection ~ 2950 6400
Connection ~ 2950 6650
Connection ~ 2950 6900
Connection ~ 2950 7150
Connection ~ 2950 7400
Wire Wire Line
	4250 2850 2950 2850
Connection ~ 2950 5050
Wire Wire Line
	4250 2150 3900 2150
Wire Wire Line
	3900 2150 3900 3250
Wire Wire Line
	5100 4250 5250 4250
Wire Wire Line
	5250 4250 5250 5050
Connection ~ 5050 5050
$EndSCHEMATC
