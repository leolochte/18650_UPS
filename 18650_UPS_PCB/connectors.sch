EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1450 2100 0    50   Input ~ 0
RSPI1_SCLK
Text GLabel 1450 2000 0    50   Input ~ 0
RSPI1_MISO
Text GLabel 1450 1900 0    50   Input ~ 0
RSPI1_MOSI
Text GLabel 2150 2100 2    50   Input ~ 0
RSPI1_CE2
$Comp
L power:+5V #PWR?
U 1 1 609E59F6
P 2550 3600
AR Path="/609E59F6" Ref="#PWR?"  Part="1" 
AR Path="/609D2C2C/609E59F6" Ref="#PWR?"  Part="1" 
AR Path="/609E103F/609E59F6" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 2550 3450 50  0001 C CNN
F 1 "+5V" H 2565 3773 50  0000 C CNN
F 2 "" H 2550 3600 50  0001 C CNN
F 3 "" H 2550 3600 50  0001 C CNN
	1    2550 3600
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 609E59FC
P 2950 3900
AR Path="/609E59FC" Ref="#PWR?"  Part="1" 
AR Path="/609D2C2C/609E59FC" Ref="#PWR?"  Part="1" 
AR Path="/609E103F/609E59FC" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 2950 3650 50  0001 C CNN
F 1 "GNDD" H 2954 3745 50  0000 C CNN
F 2 "" H 2950 3900 50  0001 C CNN
F 3 "" H 2950 3900 50  0001 C CNN
	1    2950 3900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2100 3700 2550 3700
Wire Wire Line
	2550 3700 2550 3600
NoConn ~ 2100 3600
Wire Wire Line
	2950 3900 2950 3800
Wire Wire Line
	2200 3900 2100 3900
Wire Wire Line
	2100 4000 2200 4000
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 609E5A09
P 1800 5550
AR Path="/609E5A09" Ref="J?"  Part="1" 
AR Path="/609D2C2C/609E5A09" Ref="J?"  Part="1" 
AR Path="/609E103F/609E5A09" Ref="J6"  Part="1" 
F 0 "J6" H 1850 5767 50  0000 C CNN
F 1 "Conn_02x01" H 1850 5676 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical_SMD" H 1800 5550 50  0001 C CNN
F 3 "~" H 1800 5550 50  0001 C CNN
	1    1800 5550
	1    0    0    -1  
$EndComp
Text GLabel 2200 4650 2    50   Input ~ 0
RSWCLK
Text GLabel 2200 4450 2    50   Input ~ 0
RSWDIO
Text GLabel 2200 4100 2    50   Input ~ 0
RNRST
Wire Wire Line
	2200 4100 2100 4100
Wire Wire Line
	2200 4650 2100 4650
Wire Wire Line
	2100 4450 2200 4450
NoConn ~ 2100 4550
NoConn ~ 1600 3600
Text GLabel 1500 3800 0    50   Input ~ 0
I2C1_SCL
Text GLabel 1500 3700 0    50   Input ~ 0
I2C1_SDA
NoConn ~ 1600 3900
NoConn ~ 1600 4000
NoConn ~ 1600 4100
Text GLabel 1500 4550 0    50   Input ~ 0
RSPI0_MOSI
Text GLabel 1500 4650 0    50   Input ~ 0
RSPI0_MISO
Text GLabel 1500 4750 0    50   Input ~ 0
RSPI0_SCLK
Text GLabel 2200 4750 2    50   Input ~ 0
RSPI0_CE0
Wire Wire Line
	2200 4750 2100 4750
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J?
U 1 1 609E5A21
P 1800 4550
AR Path="/609E5A21" Ref="J?"  Part="1" 
AR Path="/609D2C2C/609E5A21" Ref="J?"  Part="1" 
AR Path="/609E103F/609E5A21" Ref="J9"  Part="1" 
F 0 "J9" H 1850 4867 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 1850 4776 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical_SMD" H 1800 4550 50  0001 C CNN
F 3 "~" H 1800 4550 50  0001 C CNN
	1    1800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4550 1600 4550
Wire Wire Line
	1600 4650 1500 4650
Wire Wire Line
	1500 4750 1600 4750
NoConn ~ 1600 4450
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J?
U 1 1 609E5A2B
P 1800 3800
AR Path="/609E5A2B" Ref="J?"  Part="1" 
AR Path="/609D2C2C/609E5A2B" Ref="J?"  Part="1" 
AR Path="/609E103F/609E5A2B" Ref="J10"  Part="1" 
F 0 "J10" H 1850 4217 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 1850 4126 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x06_P2.54mm_Vertical_SMD" H 1800 3800 50  0001 C CNN
F 3 "~" H 1800 3800 50  0001 C CNN
	1    1800 3800
	1    0    0    -1  
$EndComp
Text GLabel 2200 5550 2    50   Input ~ 0
RSPI1_MOSI
Text GLabel 1500 5450 0    50   Input ~ 0
RSPI1_MISO
Text GLabel 2200 5650 2    50   Input ~ 0
RSPI1_SCLK
Text GLabel 2200 5450 2    50   Input ~ 0
RSPI1_CE2
NoConn ~ 1600 5650
NoConn ~ 1600 5550
Wire Wire Line
	1600 5450 1500 5450
Wire Wire Line
	2100 5450 2200 5450
Wire Wire Line
	2200 5550 2100 5550
Wire Wire Line
	2100 5650 2200 5650
Text GLabel 2200 4000 2    50   Input ~ 0
RUART_RX
Text GLabel 2200 3900 2    50   Input ~ 0
RUART_TX
Wire Wire Line
	1500 3700 1600 3700
Wire Wire Line
	1600 3800 1500 3800
$Comp
L power:+3V3 #PWR?
U 1 1 60A03F17
P 1250 1450
AR Path="/60952D5B/60A03F17" Ref="#PWR?"  Part="1" 
AR Path="/609E103F/60A03F17" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 1250 1300 50  0001 C CNN
F 1 "+3V3" H 1265 1623 50  0000 C CNN
F 2 "" H 1250 1450 50  0001 C CNN
F 3 "" H 1250 1450 50  0001 C CNN
	1    1250 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 60A03F2F
P 2850 1900
AR Path="/60952D5B/60A03F2F" Ref="#PWR?"  Part="1" 
AR Path="/609E103F/60A03F2F" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 2850 1650 50  0001 C CNN
F 1 "GNDD" H 2854 1745 50  0000 C CNN
F 2 "" H 2850 1900 50  0001 C CNN
F 3 "" H 2850 1900 50  0001 C CNN
	1    2850 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60A03F49
P 1050 1650
AR Path="/60952D5B/60A03F49" Ref="#PWR?"  Part="1" 
AR Path="/609E103F/60A03F49" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 1050 1500 50  0001 C CNN
F 1 "+5V" H 1065 1823 50  0000 C CNN
F 2 "" H 1050 1650 50  0001 C CNN
F 3 "" H 1050 1650 50  0001 C CNN
	1    1050 1650
	1    0    0    -1  
$EndComp
Wire Notes Line
	650  6150 650  2950
Text Notes 950  3200 0    50   ~ 0
RPi Zero W
Wire Notes Line
	650  2600 650  700 
Wire Notes Line
	650  700  3200 700 
Wire Notes Line
	3200 700  3200 2600
Wire Notes Line
	3200 2600 650  2600
Text Notes 850  1000 0    50   ~ 0
External Communication
Text Notes 3100 3450 0    50   ~ 0
RSPI0 -> On-Board STM\nRSPI1 -> External\nSWD  -> External\nUART -> External
Wire Wire Line
	2100 3800 2950 3800
Text GLabel 5600 1950 2    50   Input ~ 0
RNRST
Text GLabel 5600 2050 2    50   Input ~ 0
RUART_RX
Text GLabel 4150 2050 0    50   Input ~ 0
RUART_TX
Text GLabel 5600 1650 2    50   Input ~ 0
RSWCLK
Text GLabel 5600 1550 2    50   Input ~ 0
RSWDIO
Wire Notes Line
	4650 2950 4650 6150
Wire Notes Line
	650  2950 4650 2950
Wire Notes Line
	650  6150 4650 6150
Text GLabel 2150 2000 2    50   Input ~ 0
I2C1_SCL
Text GLabel 2150 1900 2    50   Input ~ 0
I2C1_SDA
Wire Wire Line
	2050 1900 2150 1900
Wire Wire Line
	2150 2000 2050 2000
Wire Wire Line
	2050 2100 2150 2100
Wire Wire Line
	1450 2100 1550 2100
Wire Wire Line
	1550 2000 1450 2000
Wire Wire Line
	1450 1900 1550 1900
$Comp
L CUSTOM_PARTS:STLINK-V3MINI U10
U 1 1 60A7309F
P 4350 1450
F 0 "U10" H 4875 1715 50  0000 C CNN
F 1 "STLINK-V3MINI" H 4875 1624 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x07_P1.27mm_Vertical_SMD" H 5200 1900 50  0001 C CNN
F 3 "" H 5200 1600 50  0001 C CNN
	1    4350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2050 4250 2050
Wire Wire Line
	5500 2050 5600 2050
Wire Wire Line
	5600 1950 5500 1950
Wire Wire Line
	5500 1650 5600 1650
Wire Wire Line
	5600 1550 5500 1550
NoConn ~ 5500 1750
NoConn ~ 5500 1850
NoConn ~ 4250 1950
NoConn ~ 4250 1850
NoConn ~ 4250 1750
NoConn ~ 4250 1650
NoConn ~ 4250 1550
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J11
U 1 1 60A9B64C
P 1750 1800
F 0 "J11" H 1800 2317 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 1800 2226 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x07_P2.54mm_Vertical_SMD" H 1750 1800 50  0001 C CNN
F 3 "~" H 1750 1800 50  0001 C CNN
	1    1750 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1650 1050 1700
Wire Wire Line
	1050 1700 1400 1700
Wire Wire Line
	1550 1800 1400 1800
Wire Wire Line
	1400 1800 1400 1700
Connection ~ 1400 1700
Wire Wire Line
	1400 1700 1550 1700
Wire Wire Line
	1550 1500 1400 1500
Wire Wire Line
	1250 1500 1250 1450
Wire Wire Line
	1550 1600 1400 1600
Wire Wire Line
	1400 1600 1400 1500
Connection ~ 1400 1500
Wire Wire Line
	1400 1500 1250 1500
Wire Wire Line
	2850 1900 2850 1800
Wire Wire Line
	2850 1800 2250 1800
Wire Wire Line
	2250 1800 2250 1700
Wire Wire Line
	2250 1700 2050 1700
Connection ~ 2250 1800
Wire Wire Line
	2250 1800 2050 1800
Wire Wire Line
	2250 1700 2250 1600
Wire Wire Line
	2250 1600 2050 1600
Connection ~ 2250 1700
Wire Wire Line
	2250 1600 2250 1500
Wire Wire Line
	2250 1500 2050 1500
Connection ~ 2250 1600
Wire Notes Line
	3550 2600 3550 700 
Wire Notes Line
	3550 700  6100 700 
Wire Notes Line
	6100 700  6100 2600
Wire Notes Line
	6100 2600 3550 2600
Text Notes 3750 1000 0    50   ~ 0
RPI OpenOCD-STLINK
$EndSCHEMATC
