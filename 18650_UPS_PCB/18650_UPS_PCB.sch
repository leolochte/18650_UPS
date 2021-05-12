EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "18650_UPS"
Date "2021-05-02"
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 7100 7050 0    50   ~ 0
To-Do:\n- pullup scl sda ?\n- check new symbol pins\n- mosfet gate conenctions order\n- breakout for other stm32 pins
Text Notes 2900 950  0    50   ~ 0
STLINK
Wire Wire Line
	4600 1950 4700 1950
Wire Wire Line
	3050 1650 3350 1650
Wire Wire Line
	3050 1750 3050 1650
$Comp
L power:GNDD #PWR03
U 1 1 60A430D7
P 3050 1750
F 0 "#PWR03" H 3050 1500 50  0001 C CNN
F 1 "GNDD" H 3054 1595 50  0000 C CNN
F 2 "" H 3050 1750 50  0001 C CNN
F 3 "" H 3050 1750 50  0001 C CNN
	1    3050 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2050 4700 2050
Wire Wire Line
	3250 2050 3350 2050
Wire Wire Line
	4700 1550 4600 1550
Wire Wire Line
	4700 1650 4600 1650
Text GLabel 4700 1650 2    50   Input ~ 0
SWCLK
Text GLabel 4700 1550 2    50   Input ~ 0
SWDIO
Text GLabel 4700 2050 2    50   Input ~ 0
USART1_TX
Text GLabel 3250 2050 0    50   Input ~ 0
USART1_RX
Wire Wire Line
	3250 1950 3350 1950
Wire Wire Line
	3250 1850 3350 1850
Wire Wire Line
	3350 1750 3250 1750
Wire Wire Line
	4600 1750 4700 1750
Wire Wire Line
	4700 1850 4600 1850
Text GLabel 4700 1950 2    50   Input ~ 0
NRST
NoConn ~ 3250 1950
NoConn ~ 4700 1750
NoConn ~ 4700 1850
NoConn ~ 3250 1850
NoConn ~ 3250 1750
$Comp
L CUSTOM_PARTS:STLINK-V3MINI U1
U 1 1 60A55415
P 3450 1450
F 0 "U1" H 3975 1715 50  0000 C CNN
F 1 "STLINK-V3MINI" H 3975 1624 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x07_P1.27mm_Vertical_SMD" H 4300 1900 50  0001 C CNN
F 3 "" H 4300 1600 50  0001 C CNN
	1    3450 1450
	1    0    0    -1  
$EndComp
Wire Notes Line
	2300 700  2300 2600
Wire Notes Line
	2300 2600 700  2600
Wire Wire Line
	1700 1900 1750 1900
Wire Wire Line
	1750 1800 1700 1800
Wire Wire Line
	1700 1700 1750 1700
NoConn ~ 1750 1700
NoConn ~ 1750 1800
NoConn ~ 1750 1900
Wire Wire Line
	1300 2100 1300 2150
NoConn ~ 1300 2150
$Comp
L power:VCC #PWR02
U 1 1 60915445
P 1850 1350
F 0 "#PWR02" H 1850 1200 50  0001 C CNN
F 1 "VCC" H 1867 1523 50  0000 C CNN
F 2 "" H 1850 1350 50  0001 C CNN
F 3 "" H 1850 1350 50  0001 C CNN
	1    1850 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1500 1850 1350
Wire Wire Line
	1700 1500 1850 1500
Wire Wire Line
	1400 2100 1400 2250
$Comp
L power:GND #PWR01
U 1 1 608F93B3
P 1400 2250
F 0 "#PWR01" H 1400 2000 50  0001 C CNN
F 1 "GND" H 1405 2077 50  0000 C CNN
F 2 "" H 1400 2250 50  0001 C CNN
F 3 "" H 1400 2250 50  0001 C CNN
	1    1400 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 608DB6B4
P 1400 1700
F 0 "J1" H 1457 2167 50  0000 C CNN
F 1 "USB_B_Micro" H 1457 2076 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 1550 1650 50  0001 C CNN
F 3 "~" H 1550 1650 50  0001 C CNN
	1    1400 1700
	1    0    0    -1  
$EndComp
Text Notes 850  900  0    50   ~ 0
USB Micro B
Wire Notes Line
	700  700  2300 700 
Wire Notes Line
	700  2600 700  700 
Wire Notes Line
	2700 700  5250 700 
$Sheet
S 12500 650  2500 1600
U 60952D5B
F0 "power" 50
F1 "power.sch" 50
$EndSheet
Wire Notes Line
	2700 2600 5250 2600
Wire Notes Line
	2700 700  2700 2600
Wire Notes Line
	5250 700  5250 2600
$Sheet
S 12500 2700 2500 1500
U 609F1585
F0 "mcu_sense" 50
F1 "mcu_sense.sch" 50
$EndSheet
$Comp
L Mechanical:MountingHole H1
U 1 1 60BDA926
P 4400 4400
F 0 "H1" H 4500 4446 50  0000 L CNN
F 1 "MountingHole" H 4500 4355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4400 4400 50  0001 C CNN
F 3 "~" H 4400 4400 50  0001 C CNN
	1    4400 4400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60BDAC6E
P 4400 4650
F 0 "H2" H 4500 4696 50  0000 L CNN
F 1 "MountingHole" H 4500 4605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4400 4650 50  0001 C CNN
F 3 "~" H 4400 4650 50  0001 C CNN
	1    4400 4650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 60BDC958
P 4400 5000
F 0 "H3" H 4500 5046 50  0000 L CNN
F 1 "MountingHole" H 4500 4955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4400 5000 50  0001 C CNN
F 3 "~" H 4400 5000 50  0001 C CNN
	1    4400 5000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 60BDC95E
P 4400 5250
F 0 "H4" H 4500 5296 50  0000 L CNN
F 1 "MountingHole" H 4500 5205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4400 5250 50  0001 C CNN
F 3 "~" H 4400 5250 50  0001 C CNN
	1    4400 5250
	1    0    0    -1  
$EndComp
$Sheet
S 12500 4750 2500 1600
U 609E103F
F0 "connectors" 50
F1 "connectors.sch" 50
$EndSheet
$Comp
L power:+3V3 #PWR?
U 1 1 609FA77F
P 3150 1300
F 0 "#PWR?" H 3150 1150 50  0001 C CNN
F 1 "+3V3" H 3165 1473 50  0000 C CNN
F 2 "" H 3150 1300 50  0001 C CNN
F 3 "" H 3150 1300 50  0001 C CNN
	1    3150 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1300 3150 1550
Wire Wire Line
	3150 1550 3350 1550
$EndSCHEMATC
