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
Date "5 nov 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 5200 3350
NoConn ~ 5200 3750
NoConn ~ 3750 3750
NoConn ~ 3750 3350
NoConn ~ 3750 3050
Wire Wire Line
	3300 4050 3300 4050
Wire Wire Line
	3300 4050 3300 4100
Wire Wire Line
	3750 4550 3750 4050
Wire Wire Line
	5200 4050 5200 4550
Wire Wire Line
	5200 3050 5500 3050
Wire Wire Line
	4700 4550 4150 4550
Wire Wire Line
	3750 4050 3300 4050
$Comp
L GND #PWR?
U 1 1 543886A7
P 3300 4100
F 0 "#PWR?" H 3300 4100 30  0001 C CNN
F 1 "GND" H 3300 4030 30  0001 C CNN
F 2 "" H 3300 4100 60  0001 C CNN
F 3 "" H 3300 4100 60  0001 C CNN
	1    3300 4100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 543885F2
P 5500 3050
F 0 "#PWR?" H 5500 3150 30  0001 C CNN
F 1 "VCC" H 5500 3150 30  0000 C CNN
F 2 "" H 5500 3050 60  0001 C CNN
F 3 "" H 5500 3050 60  0001 C CNN
	1    5500 3050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 543884EA
P 4950 4550
F 0 "R?" H 5030 4550 50  0000 C CNN
F 1 "470" V 4950 4550 50  0000 C CNN
F 2 "" H 4950 4550 60  0001 C CNN
F 3 "" H 4950 4550 60  0001 C CNN
	1    4950 4550
	0    1    1    0   
$EndComp
$Comp
L LED D?
U 1 1 543884D7
P 3950 4550
F 0 "D?" H 3950 4650 50  0000 C CNN
F 1 "LED" H 3950 4450 50  0000 C CNN
F 2 "" H 3950 4550 60  0001 C CNN
F 3 "" H 3950 4550 60  0001 C CNN
	1    3950 4550
	-1   0    0    1   
$EndComp
$Comp
L ATTINY45 U?
U 1 1 5459A754
P 4500 3550
F 0 "U?" H 4500 4250 60  0000 C CNN
F 1 "ATTINY45" H 4500 2900 60  0000 C CNN
F 2 "~" H 4500 3550 60  0000 C CNN
F 3 "~" H 4500 3550 60  0000 C CNN
	1    4500 3550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
