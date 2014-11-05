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
LIBS:diagram-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "5 nov 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +5V #PWR?
U 1 1 54472C2C
P 6250 1850
F 0 "#PWR?" H 6250 1940 20  0001 C CNN
F 1 "+5V" H 6250 1940 30  0000 C CNN
F 2 "" H 6250 1850 60  0000 C CNN
F 3 "" H 6250 1850 60  0000 C CNN
	1    6250 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 54472C47
P 5650 5150
F 0 "#PWR?" H 5650 5150 30  0001 C CNN
F 1 "GND" H 5650 5080 30  0001 C CNN
F 2 "" H 5650 5150 60  0000 C CNN
F 3 "" H 5650 5150 60  0000 C CNN
	1    5650 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2850 6450 2850
Wire Wire Line
	6450 2850 6450 3400
Wire Wire Line
	6450 3400 6900 3400
Wire Wire Line
	5700 2550 6550 2550
Wire Wire Line
	6550 2550 6550 3900
Wire Wire Line
	6550 3900 6900 3900
Wire Wire Line
	5700 2150 6650 2150
Wire Wire Line
	6650 2150 6650 3600
Wire Wire Line
	6650 3600 6900 3600
Wire Wire Line
	5700 1850 7600 1850
Wire Wire Line
	6750 1850 6750 3700
Wire Wire Line
	6750 3700 6900 3700
$Comp
L 74HC595 U?
U 1 1 5459AA37
P 7600 3850
F 0 "U?" H 7750 4450 70  0000 C CNN
F 1 "74HC595" H 7600 3250 70  0000 C CNN
F 2 "~" H 7600 3850 60  0000 C CNN
F 3 "~" H 7600 3850 60  0000 C CNN
	1    7600 3850
	1    0    0    -1  
$EndComp
Connection ~ 6750 1850
Wire Wire Line
	5650 4000 5650 5150
Wire Wire Line
	10950 4750 4100 4750
Wire Wire Line
	7300 4750 7300 4400
Wire Wire Line
	5650 4000 6900 4000
Connection ~ 5650 4750
$Comp
L R R?
U 1 1 5459AABD
P 5850 3200
F 0 "R?" V 5930 3200 40  0000 C CNN
F 1 "R" V 5857 3201 40  0000 C CNN
F 2 "~" V 5780 3200 30  0000 C CNN
F 3 "~" H 5850 3200 30  0000 C CNN
	1    5850 3200
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5459AADB
P 6050 3200
F 0 "R?" V 6130 3200 40  0000 C CNN
F 1 "R" V 6057 3201 40  0000 C CNN
F 2 "~" V 5980 3200 30  0000 C CNN
F 3 "~" H 6050 3200 30  0000 C CNN
	1    6050 3200
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5459AAEA
P 6250 3200
F 0 "R?" V 6330 3200 40  0000 C CNN
F 1 "R" V 6257 3201 40  0000 C CNN
F 2 "~" V 6180 3200 30  0000 C CNN
F 3 "~" H 6250 3200 30  0000 C CNN
	1    6250 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 2850 5850 2950
Connection ~ 5850 2850
Wire Wire Line
	5850 3450 5850 4000
Connection ~ 5850 4000
Wire Wire Line
	6050 2550 6050 2950
Connection ~ 6050 2550
Wire Wire Line
	6050 3450 6050 4000
Connection ~ 6050 4000
Wire Wire Line
	6250 2150 6250 2950
Connection ~ 6250 2150
Wire Wire Line
	6250 3450 6250 4000
Connection ~ 6250 4000
$Comp
L LED D?
U 1 1 5459ABDF
P 8800 3400
F 0 "D?" H 8800 3500 50  0000 C CNN
F 1 "LED" H 8800 3300 50  0000 C CNN
F 2 "~" H 8800 3400 60  0000 C CNN
F 3 "~" H 8800 3400 60  0000 C CNN
	1    8800 3400
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5459ABF6
P 9200 3500
F 0 "D?" H 9200 3600 50  0000 C CNN
F 1 "LED" H 9200 3400 50  0000 C CNN
F 2 "~" H 9200 3500 60  0000 C CNN
F 3 "~" H 9200 3500 60  0000 C CNN
	1    9200 3500
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5459ABFC
P 9600 3600
F 0 "D?" H 9600 3700 50  0000 C CNN
F 1 "LED" H 9600 3500 50  0000 C CNN
F 2 "~" H 9600 3600 60  0000 C CNN
F 3 "~" H 9600 3600 60  0000 C CNN
	1    9600 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3400 8600 3400
Wire Wire Line
	8300 3500 9000 3500
Wire Wire Line
	8300 3600 9400 3600
$Comp
L LED D?
U 1 1 5459AC65
P 10000 3700
F 0 "D?" H 10000 3800 50  0000 C CNN
F 1 "LED" H 10000 3600 50  0000 C CNN
F 2 "~" H 10000 3700 60  0000 C CNN
F 3 "~" H 10000 3700 60  0000 C CNN
	1    10000 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3700 9800 3700
$Comp
L R R?
U 1 1 5459AC90
P 10500 3400
F 0 "R?" V 10580 3400 40  0000 C CNN
F 1 "R" V 10507 3401 40  0000 C CNN
F 2 "~" V 10430 3400 30  0000 C CNN
F 3 "~" H 10500 3400 30  0000 C CNN
	1    10500 3400
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5459AC9D
P 10500 3500
F 0 "R?" V 10580 3500 40  0000 C CNN
F 1 "R" V 10507 3501 40  0000 C CNN
F 2 "~" V 10430 3500 30  0000 C CNN
F 3 "~" H 10500 3500 30  0000 C CNN
	1    10500 3500
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5459ACA3
P 10500 3600
F 0 "R?" V 10580 3600 40  0000 C CNN
F 1 "R" V 10507 3601 40  0000 C CNN
F 2 "~" V 10430 3600 30  0000 C CNN
F 3 "~" H 10500 3600 30  0000 C CNN
	1    10500 3600
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5459ACA9
P 10500 3700
F 0 "R?" V 10580 3700 40  0000 C CNN
F 1 "R" V 10507 3701 40  0000 C CNN
F 2 "~" V 10430 3700 30  0000 C CNN
F 3 "~" H 10500 3700 30  0000 C CNN
	1    10500 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 3400 10250 3400
Wire Wire Line
	9400 3500 10250 3500
Wire Wire Line
	9800 3600 10250 3600
Wire Wire Line
	10200 3700 10250 3700
Wire Wire Line
	10750 3400 10950 3400
Wire Wire Line
	10950 3400 10950 4750
Wire Wire Line
	10750 3500 10950 3500
Connection ~ 10950 3500
Wire Wire Line
	10750 3600 10950 3600
Connection ~ 10950 3600
Wire Wire Line
	10950 3700 10750 3700
Connection ~ 7300 4750
Connection ~ 10950 3700
NoConn ~ 8300 3800
NoConn ~ 8300 3900
NoConn ~ 8300 4000
NoConn ~ 8300 4100
NoConn ~ 8300 4300
$Comp
L ATTINY45 U?
U 1 1 5459B09B
P 5000 2350
F 0 "U?" H 5000 3050 60  0000 C CNN
F 1 "ATTINY45" H 5000 1700 60  0000 C CNN
F 2 "" H 5000 2350 60  0000 C CNN
F 3 "" H 5000 2350 60  0000 C CNN
	1    5000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2850 4100 2850
Wire Wire Line
	4100 2850 4100 4750
NoConn ~ 4250 2550
NoConn ~ 4250 2150
NoConn ~ 4250 1850
Wire Wire Line
	7600 1850 7600 3300
$EndSCHEMATC
