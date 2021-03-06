EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "18650_UPS"
Date "2021-05-02"
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 850  6450 0    50   ~ 0
STLINK
Wire Wire Line
	2550 7450 2650 7450
Wire Wire Line
	1000 7150 1300 7150
Wire Wire Line
	1000 7250 1000 7150
Wire Wire Line
	2550 7550 2650 7550
Wire Wire Line
	1200 7550 1300 7550
Wire Wire Line
	2650 7050 2550 7050
Wire Wire Line
	2650 7150 2550 7150
Text GLabel 2650 7150 2    50   Input ~ 0
SWCLK
Text GLabel 2650 7050 2    50   Input ~ 0
SWDIO
Text GLabel 2650 7550 2    50   Input ~ 0
USART1_TX
Text GLabel 1200 7550 0    50   Input ~ 0
USART1_RX
Wire Wire Line
	1200 7450 1300 7450
Wire Wire Line
	1200 7350 1300 7350
Wire Wire Line
	1300 7250 1200 7250
Wire Wire Line
	2550 7250 2650 7250
Wire Wire Line
	2650 7350 2550 7350
Text GLabel 2650 7450 2    50   Input ~ 0
NRST
NoConn ~ 1200 7450
NoConn ~ 2650 7250
NoConn ~ 2650 7350
NoConn ~ 1200 7350
NoConn ~ 1200 7250
$Comp
L CUSTOM_PARTS:STLINK-V3MINI U1
U 1 1 60A55415
P 1400 6950
F 0 "U1" H 1925 7215 50  0000 C CNN
F 1 "STLINK-V3MINI" H 1925 7124 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x07_P1.27mm_Vertical_SMD" H 2250 7400 50  0001 C CNN
F 3 "" H 2250 7100 50  0001 C CNN
	1    1400 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1650 1350 1650
Wire Wire Line
	1350 1550 1300 1550
Wire Wire Line
	1300 1450 1350 1450
NoConn ~ 1350 1450
NoConn ~ 1350 1550
NoConn ~ 1350 1650
Wire Wire Line
	900  1850 900  1900
NoConn ~ 900  1900
$Comp
L Connector:USB_B_Micro J1
U 1 1 608DB6B4
P 1000 1450
F 0 "J1" H 1057 1917 50  0000 C CNN
F 1 "USB_B_Micro" H 1057 1826 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 1150 1400 50  0001 C CNN
F 3 "~" H 1150 1400 50  0001 C CNN
	1    1000 1450
	1    0    0    -1  
$EndComp
Wire Notes Line
	650  6200 3200 6200
Wire Notes Line
	650  8100 3200 8100
Wire Notes Line
	650  6200 650  8100
Wire Notes Line
	3200 6200 3200 8100
$Comp
L Mechanical:MountingHole H1
U 1 1 60BDA926
P 10850 10050
F 0 "H1" H 10950 10096 50  0000 L CNN
F 1 "MountingHole" H 10950 10005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10850 10050 50  0001 C CNN
F 3 "~" H 10850 10050 50  0001 C CNN
	1    10850 10050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60BDAC6E
P 10850 10300
F 0 "H2" H 10950 10346 50  0000 L CNN
F 1 "MountingHole" H 10950 10255 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10850 10300 50  0001 C CNN
F 3 "~" H 10850 10300 50  0001 C CNN
	1    10850 10300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 60BDC958
P 10850 10650
F 0 "H3" H 10950 10696 50  0000 L CNN
F 1 "MountingHole" H 10950 10605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10850 10650 50  0001 C CNN
F 3 "~" H 10850 10650 50  0001 C CNN
	1    10850 10650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 60BDC95E
P 10850 10900
F 0 "H4" H 10950 10946 50  0000 L CNN
F 1 "MountingHole" H 10950 10855 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10850 10900 50  0001 C CNN
F 3 "~" H 10850 10900 50  0001 C CNN
	1    10850 10900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6800 1100 7050
Wire Wire Line
	1100 7050 1300 7050
Wire Notes Line
	3750 10200 3750 8300
Text Notes 3850 8500 0    50   ~ 0
External power out
Text Notes 850  3500 0    50   ~ 0
Current Sensor
Wire Notes Line
	650  3250 4900 3250
Wire Notes Line
	650  5950 650  3250
Wire Notes Line
	4900 5950 650  5950
Wire Notes Line
	4900 5950 4900 3250
$Comp
L Device:Battery_Cell BT1
U 1 1 60CF5550
P 4350 1900
AR Path="/60CF5550" Ref="BT1"  Part="1" 
AR Path="/60952D5B/60CF5550" Ref="BT?"  Part="1" 
F 0 "BT1" H 4500 1950 50  0000 L CNN
F 1 "INR18650-35E" H 4450 1850 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_1042_1x18650" V 4350 1960 50  0001 C CNN
F 3 "~" V 4350 1960 50  0001 C CNN
	1    4350 1900
	1    0    0    -1  
$EndComp
$Comp
L CUSTOM_PARTS:LR9102G-xx U10
U 1 1 610DD8FC
P 6800 1300
F 0 "U10" H 7050 1565 50  0000 C CNN
F 1 "LR9102G-xx" H 7050 1474 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 6700 1500 50  0001 C CNN
F 3 "" H 6700 1500 50  0001 C CNN
	1    6800 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 610DF973
P 7600 1500
F 0 "C8" H 7692 1546 50  0000 L CNN
F 1 "1 uF" H 7692 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7600 1500 50  0001 C CNN
F 3 "~" H 7600 1500 50  0001 C CNN
	1    7600 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1400 7600 1300
Wire Wire Line
	7600 1300 7400 1300
Connection ~ 7600 1300
Wire Notes Line
	5400 650  8500 650 
Wire Notes Line
	8500 650  8500 2450
Wire Notes Line
	8500 2450 5400 2450
Wire Notes Line
	5400 2450 5400 650 
Text Notes 5550 900  0    50   ~ 0
3V3 LDO for onboard
Wire Wire Line
	7600 1300 7600 1200
$Comp
L CUSTOM_PARTS:MP2667 U11
U 1 1 6103F8F5
P 2750 1250
F 0 "U11" H 3100 1515 50  0000 C CNN
F 1 "MP2667" H 3100 1424 50  0000 C CNN
F 2 "CUSTOM_FOOTPRINTS:QFN-10-MP2667" H 2750 1700 50  0001 C CNN
F 3 "" H 2750 1250 50  0001 C CNN
	1    2750 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 61331026
P 3700 2200
F 0 "R8" H 3750 2250 50  0000 L CNN
F 1 "10 kOhm" H 3750 2150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3700 2200 50  0001 C CNN
F 3 "~" H 3700 2200 50  0001 C CNN
	1    3700 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 61351A86
P 1700 1400
F 0 "C10" H 1792 1446 50  0000 L CNN
F 1 "1 uF" H 1792 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1700 1400 50  0001 C CNN
F 3 "~" H 1700 1400 50  0001 C CNN
	1    1700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1600 1700 1500
Wire Wire Line
	1700 1300 1700 1250
$Comp
L Device:C_Small C11
U 1 1 613F3D5B
P 2000 2000
F 0 "C11" H 2092 2046 50  0000 L CNN
F 1 "100 nF" H 2092 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2000 2000 50  0001 C CNN
F 3 "~" H 2000 2000 50  0001 C CNN
	1    2000 2000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 6141453D
P 2000 2200
F 0 "#PWR0111" H 2000 1950 50  0001 C CNN
F 1 "GND" H 2005 2027 50  0000 C CNN
F 2 "" H 2000 2200 50  0001 C CNN
F 3 "" H 2000 2200 50  0001 C CNN
	1    2000 2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2000 2200 2000 2100
Text GLabel 2550 1750 0    50   Input ~ 0
MP-INT
Text GLabel 2600 1950 0    50   Input ~ 0
I2C1_SCL
Wire Wire Line
	2600 1950 2650 1950
Text GLabel 2600 1850 0    50   Input ~ 0
I2C1_SDA
Wire Wire Line
	2600 1850 2650 1850
Wire Wire Line
	2000 1450 2650 1450
Wire Wire Line
	2650 1250 1700 1250
$Comp
L power:GND #PWR0112
U 1 1 614AE615
P 3100 2200
F 0 "#PWR0112" H 3100 1950 50  0001 C CNN
F 1 "GND" H 3105 2027 50  0000 C CNN
F 2 "" H 3100 2200 50  0001 C CNN
F 3 "" H 3100 2200 50  0001 C CNN
	1    3100 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2200 3100 2150
$Comp
L Device:C_Small C20
U 1 1 614C0BF7
P 3950 1850
F 0 "C20" H 4042 1896 50  0000 L CNN
F 1 "10 uF" H 4042 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3950 1850 50  0001 C CNN
F 3 "~" H 3950 1850 50  0001 C CNN
	1    3950 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1700 4350 1650
Wire Wire Line
	4350 1650 3950 1650
Wire Wire Line
	3950 1750 3950 1650
Wire Wire Line
	4350 2000 4350 2050
Wire Wire Line
	3950 2050 3950 1950
Wire Wire Line
	3950 2050 4350 2050
$Comp
L power:GND #PWR0113
U 1 1 6154E5DC
P 4350 2100
F 0 "#PWR0113" H 4350 1850 50  0001 C CNN
F 1 "GND" H 4355 1927 50  0000 C CNN
F 2 "" H 4350 2100 50  0001 C CNN
F 3 "" H 4350 2100 50  0001 C CNN
	1    4350 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2100 4350 2050
Connection ~ 4350 2050
Wire Wire Line
	3550 1550 3600 1550
Wire Wire Line
	3600 1550 3600 1650
Wire Wire Line
	3600 1650 3550 1650
Wire Wire Line
	3950 1650 3600 1650
Connection ~ 3950 1650
Connection ~ 3600 1650
$Comp
L Device:R_Small R9
U 1 1 61685EE4
P 3700 2500
F 0 "R9" H 3750 2550 50  0000 L CNN
F 1 "10 kOhm" H 3750 2450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3700 2500 50  0001 C CNN
F 3 "~" H 3700 2500 50  0001 C CNN
	1    3700 2500
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0116
U 1 1 61699C65
P 3700 2000
F 0 "#PWR0116" H 3700 1850 50  0001 C CNN
F 1 "VBUS" H 3715 2173 50  0000 C CNN
F 2 "" H 3700 2000 50  0001 C CNN
F 3 "" H 3700 2000 50  0001 C CNN
	1    3700 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2100 3700 2000
Wire Wire Line
	3700 2400 3700 2350
$Comp
L power:GND #PWR0117
U 1 1 616C1EAC
P 3700 2700
F 0 "#PWR0117" H 3700 2450 50  0001 C CNN
F 1 "GND" H 3705 2527 50  0000 C CNN
F 2 "" H 3700 2700 50  0001 C CNN
F 3 "" H 3700 2700 50  0001 C CNN
	1    3700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2700 3700 2600
Wire Wire Line
	3550 1950 3600 1950
Wire Wire Line
	3600 2350 3600 1950
Wire Wire Line
	3600 2350 3700 2350
Connection ~ 3700 2350
Wire Wire Line
	3700 2350 3700 2300
Wire Notes Line
	650  650  650  3050
Text Notes 750  800  0    50   ~ 0
Battery Management System
Wire Wire Line
	1700 1250 1300 1250
Connection ~ 1700 1250
$Comp
L power:GND #PWR0108
U 1 1 613A27DB
P 1700 1600
F 0 "#PWR0108" H 1700 1350 50  0001 C CNN
F 1 "GND" H 1705 1427 50  0000 C CNN
F 2 "" H 1700 1600 50  0001 C CNN
F 3 "" H 1700 1600 50  0001 C CNN
	1    1700 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 61877F53
P 1000 1950
F 0 "#PWR0101" H 1000 1700 50  0001 C CNN
F 1 "GND" H 1005 1777 50  0000 C CNN
F 2 "" H 1000 1950 50  0001 C CNN
F 3 "" H 1000 1950 50  0001 C CNN
	1    1000 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1950 1000 1850
Wire Notes Line
	650  3050 5200 3050
Wire Notes Line
	650  650  5200 650 
Wire Wire Line
	7600 1700 7600 1600
Wire Wire Line
	7050 1800 7050 1700
Wire Wire Line
	5850 1350 5850 1300
Wire Wire Line
	5850 1650 5850 1550
$Comp
L Device:C_Small C6
U 1 1 610DEFB1
P 5850 1450
F 0 "C6" H 5600 1500 50  0000 L CNN
F 1 "1 uF" H 5450 1400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5850 1450 50  0001 C CNN
F 3 "~" H 5850 1450 50  0001 C CNN
	1    5850 1450
	1    0    0    -1  
$EndComp
Connection ~ 5850 1300
Wire Wire Line
	5850 1300 5850 1250
Wire Wire Line
	6550 1450 6700 1450
$Comp
L power:GND #PWR0103
U 1 1 61A2ADCE
P 5850 1650
F 0 "#PWR0103" H 5850 1400 50  0001 C CNN
F 1 "GND" H 5855 1477 50  0000 C CNN
F 2 "" H 5850 1650 50  0001 C CNN
F 3 "" H 5850 1650 50  0001 C CNN
	1    5850 1650
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR0106
U 1 1 61A2B28D
P 5850 1250
F 0 "#PWR0106" H 5850 1100 50  0001 C CNN
F 1 "VSS" H 5867 1423 50  0000 C CNN
F 2 "" H 5850 1250 50  0001 C CNN
F 3 "" H 5850 1250 50  0001 C CNN
	1    5850 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 61A2B7BF
P 7050 1800
F 0 "#PWR0107" H 7050 1550 50  0001 C CNN
F 1 "GND" H 7055 1627 50  0000 C CNN
F 2 "" H 7050 1800 50  0001 C CNN
F 3 "" H 7050 1800 50  0001 C CNN
	1    7050 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 61A2B9D6
P 7600 1700
F 0 "#PWR0109" H 7600 1450 50  0001 C CNN
F 1 "GND" H 7605 1527 50  0000 C CNN
F 2 "" H 7600 1700 50  0001 C CNN
F 3 "" H 7600 1700 50  0001 C CNN
	1    7600 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 61AB05BD
P 1000 7250
F 0 "#PWR0129" H 1000 7000 50  0001 C CNN
F 1 "GND" H 1005 7077 50  0000 C CNN
F 2 "" H 1000 7250 50  0001 C CNN
F 3 "" H 1000 7250 50  0001 C CNN
	1    1000 7250
	1    0    0    -1  
$EndComp
Wire Notes Line
	3750 10200 5750 10200
Wire Notes Line
	5750 10200 5750 8300
Wire Notes Line
	5750 8300 3750 8300
Text GLabel 4850 1150 2    50   Input ~ 0
IN+
Text GLabel 4850 1000 2    50   Input ~ 0
IN-
Connection ~ 4800 1250
$Comp
L power:VSS #PWR0115
U 1 1 6165E066
P 4800 900
F 0 "#PWR0115" H 4800 750 50  0001 C CNN
F 1 "VSS" H 4817 1073 50  0000 C CNN
F 2 "" H 4800 900 50  0001 C CNN
F 3 "" H 4800 900 50  0001 C CNN
	1    4800 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1250 3550 1250
Wire Wire Line
	4800 1300 4800 1250
Wire Wire Line
	4800 1600 4800 1500
$Comp
L power:GND #PWR0114
U 1 1 6160F560
P 4800 1600
F 0 "#PWR0114" H 4800 1350 50  0001 C CNN
F 1 "GND" H 4805 1427 50  0000 C CNN
F 2 "" H 4800 1600 50  0001 C CNN
F 3 "" H 4800 1600 50  0001 C CNN
	1    4800 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C21
U 1 1 615FBE8A
P 4800 1400
F 0 "C21" H 4892 1446 50  0000 L CNN
F 1 "2.2 uF" H 4892 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4800 1400 50  0001 C CNN
F 3 "~" H 4800 1400 50  0001 C CNN
	1    4800 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1150 4850 1150
Wire Wire Line
	4800 1150 4800 1250
Wire Wire Line
	4850 1000 4800 1000
Wire Wire Line
	4800 1000 4800 900 
Wire Notes Line
	5200 650  5200 3050
$Comp
L MCU_ST_STM32L1:STM32L151RCTx U5
U 1 1 6104DD43
P 14000 3650
F 0 "U5" H 13850 4600 50  0000 C CNN
F 1 "STM32L151RCTx" H 13850 4700 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 13400 1950 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00048356.pdf" H 14000 3650 50  0001 C CNN
	1    14000 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0105
U 1 1 61365390
P 1100 6800
F 0 "#PWR0105" H 1100 6650 50  0001 C CNN
F 1 "+3V3" H 1115 6973 50  0000 C CNN
F 2 "" H 1100 6800 50  0001 C CNN
F 3 "" H 1100 6800 50  0001 C CNN
	1    1100 6800
	1    0    0    -1  
$EndComp
Text GLabel 13150 4350 0    50   Input ~ 0
MP-INT
Text GLabel 14700 4450 2    50   Input ~ 0
USART1_RX
Text GLabel 14700 3450 2    50   Input ~ 0
SWCLK
Text GLabel 14700 3350 2    50   Input ~ 0
SWDIO
Text GLabel 14700 4350 2    50   Input ~ 0
USART1_TX
Text GLabel 10850 2050 0    50   Input ~ 0
NRST
Text GLabel 14700 2850 2    50   Input ~ 0
EA-RST
Text Notes 3800 6450 0    50   ~ 0
Control
Text GLabel 14750 3050 2    50   Input ~ 0
INA-ALERT
Wire Notes Line
	3500 6200 7400 6200
Wire Notes Line
	7400 6200 7400 8100
Wire Notes Line
	7400 8100 3500 8100
Wire Notes Line
	3500 8100 3500 6200
$Comp
L power:+3V3 #PWR0126
U 1 1 616373C3
P 7600 1200
F 0 "#PWR0126" H 7600 1050 50  0001 C CNN
F 1 "+3V3" H 7615 1373 50  0000 C CNN
F 2 "" H 7600 1200 50  0001 C CNN
F 3 "" H 7600 1200 50  0001 C CNN
	1    7600 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 6168F49C
P 4200 8900
F 0 "J2" H 4280 8892 50  0000 L CNN
F 1 "Conn_01x02" H 4280 8801 50  0000 L CNN
F 2 "CUSTOM_FOOTPRINTS:Pin_Socket_SMD_Horizontal_1x2" H 4200 8900 50  0001 C CNN
F 3 "~" H 4200 8900 50  0001 C CNN
	1    4200 8900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 616907AB
P 3950 8850
AR Path="/60952D5B/616907AB" Ref="#PWR?"  Part="1" 
AR Path="/609E103F/616907AB" Ref="#PWR?"  Part="1" 
AR Path="/616907AB" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 3950 8700 50  0001 C CNN
F 1 "+3V3" H 3965 9023 50  0000 C CNN
F 2 "" H 3950 8850 50  0001 C CNN
F 3 "" H 3950 8850 50  0001 C CNN
	1    3950 8850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 6169F74E
P 3950 9050
F 0 "#PWR0130" H 3950 8800 50  0001 C CNN
F 1 "GND" H 3955 8877 50  0000 C CNN
F 2 "" H 3950 9050 50  0001 C CNN
F 3 "" H 3950 9050 50  0001 C CNN
	1    3950 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 9050 3950 9000
Wire Wire Line
	3950 9000 4000 9000
Wire Wire Line
	4000 8900 3950 8900
Wire Wire Line
	3950 8900 3950 8850
$Comp
L Device:C_Small C?
U 1 1 61224FB6
P 13550 1450
AR Path="/609F1585/61224FB6" Ref="C?"  Part="1" 
AR Path="/61224FB6" Ref="C16"  Part="1" 
F 0 "C16" H 13642 1496 50  0000 L CNN
F 1 "100 nF" H 13642 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 13550 1450 50  0001 C CNN
F 3 "~" H 13550 1450 50  0001 C CNN
	1    13550 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612254A2
P 11550 1450
AR Path="/609F1585/612254A2" Ref="C?"  Part="1" 
AR Path="/612254A2" Ref="C7"  Part="1" 
F 0 "C7" H 11642 1496 50  0000 L CNN
F 1 "4.7 uF" H 11642 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 11550 1450 50  0001 C CNN
F 3 "~" H 11550 1450 50  0001 C CNN
	1    11550 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0150
U 1 1 61230728
P 14000 5650
F 0 "#PWR0150" H 14000 5400 50  0001 C CNN
F 1 "GND" H 14005 5477 50  0000 C CNN
F 2 "" H 14000 5650 50  0001 C CNN
F 3 "" H 14000 5650 50  0001 C CNN
	1    14000 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	13800 5450 13800 5550
Wire Wire Line
	13800 5550 13900 5550
Wire Wire Line
	14200 5550 14200 5450
Wire Wire Line
	14000 5650 14000 5550
Connection ~ 14000 5550
Wire Wire Line
	14000 5550 14100 5550
Wire Wire Line
	13900 5450 13900 5550
Connection ~ 13900 5550
Wire Wire Line
	13900 5550 14000 5550
Wire Wire Line
	14000 5550 14000 5450
Wire Wire Line
	14100 5450 14100 5550
Connection ~ 14100 5550
Wire Wire Line
	14100 5550 14200 5550
Wire Wire Line
	14100 1850 14100 1750
Wire Wire Line
	14100 1750 14000 1750
Wire Wire Line
	13800 1750 13800 1850
Wire Wire Line
	13900 1850 13900 1750
Connection ~ 13900 1750
Wire Wire Line
	13900 1750 13800 1750
Wire Wire Line
	14000 1850 14000 1750
Connection ~ 14000 1750
Wire Wire Line
	14000 1750 13900 1750
$Comp
L Device:C_Small C?
U 1 1 612A369A
P 14600 1450
AR Path="/609F1585/612A369A" Ref="C?"  Part="1" 
AR Path="/612A369A" Ref="C17"  Part="1" 
F 0 "C17" H 14692 1496 50  0000 L CNN
F 1 "100 nF" H 14692 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 14600 1450 50  0001 C CNN
F 3 "~" H 14600 1450 50  0001 C CNN
	1    14600 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612A3955
P 15100 1450
AR Path="/609F1585/612A3955" Ref="C?"  Part="1" 
AR Path="/612A3955" Ref="C18"  Part="1" 
F 0 "C18" H 15192 1496 50  0000 L CNN
F 1 "1 uF" H 15192 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15100 1450 50  0001 C CNN
F 3 "~" H 15100 1450 50  0001 C CNN
	1    15100 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0151
U 1 1 612A3D57
P 14600 1650
F 0 "#PWR0151" H 14600 1400 50  0001 C CNN
F 1 "GND" H 14605 1477 50  0000 C CNN
F 2 "" H 14600 1650 50  0001 C CNN
F 3 "" H 14600 1650 50  0001 C CNN
	1    14600 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0152
U 1 1 612A41D8
P 15100 1650
F 0 "#PWR0152" H 15100 1400 50  0001 C CNN
F 1 "GND" H 15105 1477 50  0000 C CNN
F 2 "" H 15100 1650 50  0001 C CNN
F 3 "" H 15100 1650 50  0001 C CNN
	1    15100 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	14600 1650 14600 1550
Wire Wire Line
	15100 1550 15100 1650
$Comp
L power:+3V3 #PWR0153
U 1 1 612BA41D
P 15100 1200
F 0 "#PWR0153" H 15100 1050 50  0001 C CNN
F 1 "+3V3" H 15115 1373 50  0000 C CNN
F 2 "" H 15100 1200 50  0001 C CNN
F 3 "" H 15100 1200 50  0001 C CNN
	1    15100 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	15100 1350 15100 1250
Wire Wire Line
	15100 1250 14600 1250
Wire Wire Line
	14600 1250 14600 1350
Connection ~ 15100 1250
Wire Wire Line
	15100 1250 15100 1200
Wire Wire Line
	14600 1250 14200 1250
Wire Wire Line
	14200 1250 14200 1850
Connection ~ 14600 1250
$Comp
L Device:C_Small C?
U 1 1 612F4600
P 13050 1450
AR Path="/609F1585/612F4600" Ref="C?"  Part="1" 
AR Path="/612F4600" Ref="C14"  Part="1" 
F 0 "C14" H 13142 1496 50  0000 L CNN
F 1 "100 nF" H 13142 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 13050 1450 50  0001 C CNN
F 3 "~" H 13050 1450 50  0001 C CNN
	1    13050 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612F491D
P 12550 1450
AR Path="/609F1585/612F491D" Ref="C?"  Part="1" 
AR Path="/612F491D" Ref="C12"  Part="1" 
F 0 "C12" H 12642 1496 50  0000 L CNN
F 1 "100 nF" H 12642 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 12550 1450 50  0001 C CNN
F 3 "~" H 12550 1450 50  0001 C CNN
	1    12550 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612F4CC6
P 12050 1450
AR Path="/609F1585/612F4CC6" Ref="C?"  Part="1" 
AR Path="/612F4CC6" Ref="C9"  Part="1" 
F 0 "C9" H 12142 1496 50  0000 L CNN
F 1 "100 nF" H 12142 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 12050 1450 50  0001 C CNN
F 3 "~" H 12050 1450 50  0001 C CNN
	1    12050 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0154
U 1 1 612F5026
P 13550 1650
F 0 "#PWR0154" H 13550 1400 50  0001 C CNN
F 1 "GND" H 13555 1477 50  0000 C CNN
F 2 "" H 13550 1650 50  0001 C CNN
F 3 "" H 13550 1650 50  0001 C CNN
	1    13550 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0155
U 1 1 612F52AC
P 13050 1650
F 0 "#PWR0155" H 13050 1400 50  0001 C CNN
F 1 "GND" H 13055 1477 50  0000 C CNN
F 2 "" H 13050 1650 50  0001 C CNN
F 3 "" H 13050 1650 50  0001 C CNN
	1    13050 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0156
U 1 1 612F54AE
P 12550 1650
F 0 "#PWR0156" H 12550 1400 50  0001 C CNN
F 1 "GND" H 12555 1477 50  0000 C CNN
F 2 "" H 12550 1650 50  0001 C CNN
F 3 "" H 12550 1650 50  0001 C CNN
	1    12550 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0157
U 1 1 612F572E
P 12050 1650
F 0 "#PWR0157" H 12050 1400 50  0001 C CNN
F 1 "GND" H 12055 1477 50  0000 C CNN
F 2 "" H 12050 1650 50  0001 C CNN
F 3 "" H 12050 1650 50  0001 C CNN
	1    12050 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0158
U 1 1 612F581A
P 11550 1200
F 0 "#PWR0158" H 11550 1050 50  0001 C CNN
F 1 "+3V3" H 11565 1373 50  0000 C CNN
F 2 "" H 11550 1200 50  0001 C CNN
F 3 "" H 11550 1200 50  0001 C CNN
	1    11550 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	13550 1350 13550 1250
Wire Wire Line
	13550 1250 13050 1250
Wire Wire Line
	11550 1250 11550 1200
Wire Wire Line
	12050 1350 12050 1250
Wire Wire Line
	12050 1650 12050 1550
Wire Wire Line
	12550 1350 12550 1250
Connection ~ 12550 1250
Wire Wire Line
	12550 1250 12050 1250
Wire Wire Line
	13050 1350 13050 1250
Connection ~ 13050 1250
Wire Wire Line
	13050 1250 12550 1250
Wire Wire Line
	12550 1650 12550 1550
Wire Wire Line
	13050 1650 13050 1550
Wire Wire Line
	13550 1650 13550 1550
Wire Wire Line
	13550 1250 14000 1250
Wire Wire Line
	14000 1250 14000 1750
Connection ~ 13550 1250
$Comp
L power:GND #PWR0159
U 1 1 61372A07
P 11550 1650
F 0 "#PWR0159" H 11550 1400 50  0001 C CNN
F 1 "GND" H 11555 1477 50  0000 C CNN
F 2 "" H 11550 1650 50  0001 C CNN
F 3 "" H 11550 1650 50  0001 C CNN
	1    11550 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	11550 1650 11550 1550
Wire Wire Line
	12050 1250 11550 1250
Wire Wire Line
	11550 1250 11550 1350
Connection ~ 12050 1250
Connection ~ 11550 1250
$Comp
L Device:C_Small C?
U 1 1 613A65D4
P 11000 2250
AR Path="/609F1585/613A65D4" Ref="C?"  Part="1" 
AR Path="/613A65D4" Ref="C5"  Part="1" 
F 0 "C5" H 11092 2296 50  0000 L CNN
F 1 "100 nF" H 11092 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 11000 2250 50  0001 C CNN
F 3 "~" H 11000 2250 50  0001 C CNN
	1    11000 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0160
U 1 1 613A7855
P 11000 2450
F 0 "#PWR0160" H 11000 2200 50  0001 C CNN
F 1 "GND" H 11005 2277 50  0000 C CNN
F 2 "" H 11000 2450 50  0001 C CNN
F 3 "" H 11000 2450 50  0001 C CNN
	1    11000 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 2450 11000 2350
Wire Wire Line
	11000 2050 11000 2150
Wire Wire Line
	10850 2050 11000 2050
Connection ~ 11000 2050
$Comp
L Device:R_Small R?
U 1 1 613DE92E
P 11000 1850
AR Path="/609F1585/613DE92E" Ref="R?"  Part="1" 
AR Path="/613DE92E" Ref="R2"  Part="1" 
F 0 "R2" H 11059 1896 50  0000 L CNN
F 1 "10 kOhm" H 11059 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 11000 1850 50  0001 C CNN
F 3 "~" H 11000 1850 50  0001 C CNN
	1    11000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 2050 11000 1950
$Comp
L power:+3V3 #PWR0161
U 1 1 61408205
P 11000 1650
F 0 "#PWR0161" H 11000 1500 50  0001 C CNN
F 1 "+3V3" H 11015 1823 50  0000 C CNN
F 2 "" H 11000 1650 50  0001 C CNN
F 3 "" H 11000 1650 50  0001 C CNN
	1    11000 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 1750 11000 1650
Wire Wire Line
	11000 2050 13300 2050
$Comp
L power:GND #PWR0162
U 1 1 61425714
P 13100 2400
F 0 "#PWR0162" H 13100 2150 50  0001 C CNN
F 1 "GND" H 13105 2227 50  0000 C CNN
F 2 "" H 13100 2400 50  0001 C CNN
F 3 "" H 13100 2400 50  0001 C CNN
	1    13100 2400
	1    0    0    -1  
$EndComp
NoConn ~ 13300 2450
Wire Wire Line
	13100 2400 13100 2250
Wire Wire Line
	13100 2250 13300 2250
Wire Wire Line
	14700 3350 14600 3350
Wire Wire Line
	14700 3450 14600 3450
Wire Wire Line
	14700 4350 14600 4350
Wire Wire Line
	14700 4450 14600 4450
Wire Wire Line
	14600 5250 14700 5250
Wire Wire Line
	14700 5150 14600 5150
Wire Wire Line
	14600 5050 14700 5050
Wire Wire Line
	13150 4350 13300 4350
Wire Wire Line
	14600 3050 14750 3050
Wire Wire Line
	14700 2850 14600 2850
NoConn ~ 13300 5250
NoConn ~ 13300 5150
NoConn ~ 13300 5050
NoConn ~ 13300 4950
NoConn ~ 13300 4850
NoConn ~ 13300 4750
NoConn ~ 13300 4650
NoConn ~ 13300 4550
NoConn ~ 13200 3750
NoConn ~ 14700 2750
NoConn ~ 13300 4250
NoConn ~ 13300 4150
NoConn ~ 13300 4050
NoConn ~ 13300 3950
NoConn ~ 13300 3550
NoConn ~ 13300 3350
NoConn ~ 13300 3250
Text Notes 10900 1050 0    50   ~ 0
MCU
Wire Notes Line
	10400 700  15850 700 
Wire Notes Line
	15850 6200 10400 6200
Wire Notes Line
	10400 6200 10400 700 
$Comp
L power:VBUS #PWR01
U 1 1 6191A448
P 1700 1150
F 0 "#PWR01" H 1700 1000 50  0001 C CNN
F 1 "VBUS" H 1715 1323 50  0000 C CNN
F 2 "" H 1700 1150 50  0001 C CNN
F 3 "" H 1700 1150 50  0001 C CNN
	1    1700 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1250 1700 1150
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 610BC06E
P 4200 9850
F 0 "J3" H 4280 9842 50  0000 L CNN
F 1 "Conn_01x02" H 4280 9751 50  0000 L CNN
F 2 "CUSTOM_FOOTPRINTS:Pin_Socket_SMD_Horizontal_1x2" H 4200 9850 50  0001 C CNN
F 3 "~" H 4200 9850 50  0001 C CNN
	1    4200 9850
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 610BC51A
P 3900 9900
F 0 "#PWR0102" H 3900 9650 50  0001 C CNN
F 1 "GND" H 3905 9727 50  0000 C CNN
F 2 "" H 3900 9900 50  0001 C CNN
F 3 "" H 3900 9900 50  0001 C CNN
	1    3900 9900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 9900 3900 9850
Wire Wire Line
	3900 9850 4000 9850
$Comp
L power:VSS #PWR0125
U 1 1 610EA3BC
P 3900 9700
F 0 "#PWR0125" H 3900 9550 50  0001 C CNN
F 1 "VSS" H 3917 9873 50  0000 C CNN
F 2 "" H 3900 9700 50  0001 C CNN
F 3 "" H 3900 9700 50  0001 C CNN
	1    3900 9700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 9700 3900 9750
Wire Wire Line
	3900 9750 4000 9750
Text GLabel 2300 4650 2    50   Input ~ 0
I2C1_SCL
Text GLabel 2300 4750 2    50   Input ~ 0
I2C1_SDA
$Comp
L power:+3V3 #PWR0104
U 1 1 610D390F
P 1150 3900
F 0 "#PWR0104" H 1150 3750 50  0001 C CNN
F 1 "+3V3" H 1165 4073 50  0000 C CNN
F 2 "" H 1150 3900 50  0001 C CNN
F 3 "" H 1150 3900 50  0001 C CNN
	1    1150 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 610D42BC
P 1700 5550
F 0 "#PWR0128" H 1700 5300 50  0001 C CNN
F 1 "GND" H 1705 5377 50  0000 C CNN
F 2 "" H 1700 5550 50  0001 C CNN
F 3 "" H 1700 5550 50  0001 C CNN
	1    1700 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 610D4642
P 1150 4100
AR Path="/609F1585/610D4642" Ref="C?"  Part="1" 
AR Path="/610D4642" Ref="C1"  Part="1" 
F 0 "C1" H 1242 4146 50  0000 L CNN
F 1 "100 nF" H 1242 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1150 4100 50  0001 C CNN
F 3 "~" H 1150 4100 50  0001 C CNN
	1    1150 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 610F5E26
P 1150 4300
F 0 "#PWR0131" H 1150 4050 50  0001 C CNN
F 1 "GND" H 1155 4127 50  0000 C CNN
F 2 "" H 1150 4300 50  0001 C CNN
F 3 "" H 1150 4300 50  0001 C CNN
	1    1150 4300
	1    0    0    -1  
$EndComp
Text GLabel 1100 4650 0    50   Input ~ 0
IN+
Text GLabel 1100 5050 0    50   Input ~ 0
IN-
$Comp
L Device:R_Small R1
U 1 1 6110DC0F
P 1150 4850
F 0 "R1" H 900 4900 50  0000 L CNN
F 1 "0.01 Ohm" H 700 4800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1150 4850 50  0001 C CNN
F 3 "~" H 1150 4850 50  0001 C CNN
	1    1150 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 4650 1150 4650
Wire Wire Line
	1150 4650 1150 4750
Wire Wire Line
	1100 5050 1150 5050
Wire Wire Line
	1150 5050 1150 4950
Wire Wire Line
	1150 4650 1250 4650
Connection ~ 1150 4650
Wire Wire Line
	1150 5050 1250 5050
Connection ~ 1150 5050
Wire Wire Line
	1150 4300 1150 4200
Wire Wire Line
	1150 4000 1150 3950
Wire Wire Line
	1150 3950 1700 3950
Wire Wire Line
	1700 3950 1700 4450
Connection ~ 1150 3950
Wire Wire Line
	1150 3950 1150 3900
Wire Wire Line
	2300 4650 2200 4650
Wire Wire Line
	2200 4750 2300 4750
Wire Wire Line
	1250 5250 1150 5250
Wire Wire Line
	1150 5250 1150 5050
Wire Wire Line
	1700 5550 1700 5450
Text GLabel 2950 4950 2    50   Input ~ 0
INA-ALERT
$Comp
L CUSTOM_PARTS:INA237 U2
U 1 1 6124DE74
P 1350 4650
F 0 "U2" H 1500 4850 50  0000 C CNN
F 1 "INA237" H 1900 4850 50  0000 C CNN
F 2 "Package_SO:VSSOP-10_3x3mm_P0.5mm" H 1900 4800 50  0001 C CNN
F 3 "" H 1900 4800 50  0001 C CNN
	1    1350 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6126AD49
P 2850 4700
AR Path="/609F1585/6126AD49" Ref="R?"  Part="1" 
AR Path="/6126AD49" Ref="R3"  Part="1" 
F 0 "R3" H 2909 4746 50  0000 L CNN
F 1 "10 kOhm" H 2909 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2850 4700 50  0001 C CNN
F 3 "~" H 2850 4700 50  0001 C CNN
	1    2850 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4950 2850 4950
Wire Wire Line
	2850 4800 2850 4950
Connection ~ 2850 4950
Wire Wire Line
	2850 4950 2950 4950
$Comp
L power:+3V3 #PWR0132
U 1 1 6131F8CB
P 2850 4500
F 0 "#PWR0132" H 2850 4350 50  0001 C CNN
F 1 "+3V3" H 2865 4673 50  0000 C CNN
F 2 "" H 2850 4500 50  0001 C CNN
F 3 "" H 2850 4500 50  0001 C CNN
	1    2850 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0134
U 1 1 613204FF
P 3650 5050
F 0 "#PWR0134" H 3650 4900 50  0001 C CNN
F 1 "+3V3" H 3665 5223 50  0000 C CNN
F 2 "" H 3650 5050 50  0001 C CNN
F 3 "" H 3650 5050 50  0001 C CNN
	1    3650 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4600 2850 4500
Wire Wire Line
	5450 4450 5450 4350
$Comp
L power:+3V3 #PWR0136
U 1 1 613C9614
P 5450 4350
F 0 "#PWR0136" H 5450 4200 50  0001 C CNN
F 1 "+3V3" H 5465 4523 50  0000 C CNN
F 2 "" H 5450 4350 50  0001 C CNN
F 3 "" H 5450 4350 50  0001 C CNN
	1    5450 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 613C960D
P 5450 4550
AR Path="/609F1585/613C960D" Ref="R?"  Part="1" 
AR Path="/613C960D" Ref="R4"  Part="1" 
F 0 "R4" H 5509 4596 50  0000 L CNN
F 1 "10 kOhm" H 5509 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5450 4550 50  0001 C CNN
F 3 "~" H 5450 4550 50  0001 C CNN
	1    5450 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4650 6000 4950
Wire Wire Line
	6000 4450 6000 4350
$Comp
L power:+3V3 #PWR0135
U 1 1 6138CC09
P 6000 4350
F 0 "#PWR0135" H 6000 4200 50  0001 C CNN
F 1 "+3V3" H 6015 4523 50  0000 C CNN
F 2 "" H 6000 4350 50  0001 C CNN
F 3 "" H 6000 4350 50  0001 C CNN
	1    6000 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6138CC02
P 6000 4550
AR Path="/609F1585/6138CC02" Ref="R?"  Part="1" 
AR Path="/6138CC02" Ref="R5"  Part="1" 
F 0 "R5" H 6059 4596 50  0000 L CNN
F 1 "10 kOhm" H 6059 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6000 4550 50  0001 C CNN
F 3 "~" H 6000 4550 50  0001 C CNN
	1    6000 4550
	1    0    0    -1  
$EndComp
Wire Notes Line
	15850 700  15850 6200
Text GLabel 14700 4650 2    50   Input ~ 0
I2C1_SDA
Text GLabel 14700 4550 2    50   Input ~ 0
I2C1_SCL
Text GLabel 5450 4950 3    50   Input ~ 0
I2C1_SCL
Text GLabel 6000 4950 3    50   Input ~ 0
I2C1_SDA
Wire Wire Line
	5450 4650 5450 4950
Wire Wire Line
	14700 4550 14600 4550
Wire Wire Line
	14600 4650 14700 4650
NoConn ~ 14700 2950
NoConn ~ 13200 3850
NoConn ~ 14700 3150
NoConn ~ 14700 3250
NoConn ~ 14700 3550
NoConn ~ 14700 3750
NoConn ~ 14700 3850
NoConn ~ 14700 3950
NoConn ~ 14700 4050
NoConn ~ 14700 4150
NoConn ~ 14700 4250
NoConn ~ 14700 4750
NoConn ~ 14700 4850
NoConn ~ 14700 2350
NoConn ~ 14700 2450
NoConn ~ 14700 2550
NoConn ~ 14700 2650
Wire Wire Line
	14600 2650 14700 2650
Wire Wire Line
	14600 2550 14700 2550
Wire Wire Line
	14600 2450 14700 2450
Wire Wire Line
	14700 2350 14600 2350
Wire Wire Line
	14700 4850 14600 4850
Wire Wire Line
	14700 4750 14600 4750
Wire Wire Line
	14700 4250 14600 4250
Wire Wire Line
	14600 4150 14700 4150
Wire Wire Line
	14700 4050 14600 4050
Wire Wire Line
	14600 3950 14700 3950
Wire Wire Line
	14700 3850 14600 3850
Wire Wire Line
	14600 3750 14700 3750
Wire Wire Line
	14700 3550 14600 3550
Wire Wire Line
	14600 3250 14700 3250
Wire Wire Line
	14700 3150 14600 3150
Wire Wire Line
	13300 3850 13200 3850
Wire Wire Line
	14600 2950 14700 2950
Wire Wire Line
	14600 2250 14700 2250
Wire Wire Line
	14600 2150 14700 2150
Wire Wire Line
	14600 2050 14700 2050
NoConn ~ 14700 2050
NoConn ~ 14700 2150
NoConn ~ 14700 2250
$Comp
L Switch:SW_SPDT LDO1
U 1 1 614E8F27
P 7550 4700
F 0 "LDO1" H 7550 4985 50  0000 C CNN
F 1 "SW_SPDT" H 7550 4894 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_PCM12" H 7550 4700 50  0001 C CNN
F 3 "~" H 7550 4700 50  0001 C CNN
	1    7550 4700
	1    0    0    -1  
$EndComp
Text GLabel 6550 1450 0    50   Input ~ 0
LDO-CE
Wire Wire Line
	5850 1300 6700 1300
Text GLabel 7250 4700 0    50   Input ~ 0
LDO-CE
Wire Wire Line
	7250 4700 7350 4700
$Comp
L power:GND #PWR0137
U 1 1 610C0876
P 7850 4900
F 0 "#PWR0137" H 7850 4650 50  0001 C CNN
F 1 "GND" H 7855 4727 50  0000 C CNN
F 2 "" H 7850 4900 50  0001 C CNN
F 3 "" H 7850 4900 50  0001 C CNN
	1    7850 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4800 7850 4800
Wire Wire Line
	7850 4800 7850 4900
$Comp
L power:VSS #PWR0138
U 1 1 610CF4B9
P 7850 4500
F 0 "#PWR0138" H 7850 4350 50  0001 C CNN
F 1 "VSS" H 7867 4673 50  0000 C CNN
F 2 "" H 7850 4500 50  0001 C CNN
F 3 "" H 7850 4500 50  0001 C CNN
	1    7850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4600 7850 4600
Wire Wire Line
	7850 4600 7850 4500
Text GLabel 9650 8200 0    50   Input ~ 0
I2C1_SCL
Text GLabel 9650 7850 0    50   Input ~ 0
I2C1_SDA
$Comp
L power:+3V3 #PWR?
U 1 1 61107270
P 9500 8550
AR Path="/60952D5B/61107270" Ref="#PWR?"  Part="1" 
AR Path="/609E103F/61107270" Ref="#PWR?"  Part="1" 
AR Path="/61107270" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 9500 8400 50  0001 C CNN
F 1 "+3V3" H 9515 8723 50  0000 C CNN
F 2 "" H 9500 8550 50  0001 C CNN
F 3 "" H 9500 8550 50  0001 C CNN
	1    9500 8550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 6110753E
P 9750 9050
F 0 "#PWR0118" H 9750 8800 50  0001 C CNN
F 1 "GND" H 9755 8877 50  0000 C CNN
F 2 "" H 9750 9050 50  0001 C CNN
F 3 "" H 9750 9050 50  0001 C CNN
	1    9750 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 8200 9750 8200
Wire Wire Line
	9750 7850 9650 7850
Wire Wire Line
	9750 9000 9750 9050
$Comp
L Connector:TestPoint TP1
U 1 1 6119D182
P 9750 7750
F 0 "TP1" H 9808 7868 50  0000 L CNN
F 1 "TestPoint" H 9808 7777 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 9950 7750 50  0001 C CNN
F 3 "~" H 9950 7750 50  0001 C CNN
	1    9750 7750
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 6119DF05
P 9750 8100
F 0 "TP2" H 9808 8218 50  0000 L CNN
F 1 "TestPoint" H 9808 8127 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 9950 8100 50  0001 C CNN
F 3 "~" H 9950 8100 50  0001 C CNN
	1    9750 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 7850 9750 7750
Wire Wire Line
	9750 8200 9750 8100
$Comp
L Connector:TestPoint TP3
U 1 1 612117DE
P 9750 8600
F 0 "TP3" H 9808 8718 50  0000 L CNN
F 1 "TestPoint" H 9808 8627 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 9950 8600 50  0001 C CNN
F 3 "~" H 9950 8600 50  0001 C CNN
	1    9750 8600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 612118F2
P 9750 9000
F 0 "TP4" H 9808 9118 50  0000 L CNN
F 1 "TestPoint" H 9808 9027 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 9950 9000 50  0001 C CNN
F 3 "~" H 9950 9000 50  0001 C CNN
	1    9750 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 8700 9750 8700
Wire Wire Line
	9750 8700 9750 8600
Wire Wire Line
	9500 8550 9500 8700
Wire Wire Line
	2200 5150 2250 5150
Wire Wire Line
	3650 5150 3650 5050
Wire Wire Line
	2200 5250 2250 5250
Wire Wire Line
	2250 5250 2250 5150
Connection ~ 2250 5150
Wire Wire Line
	2250 5150 3650 5150
$Comp
L Device:R_Small R6
U 1 1 611844F6
P 2250 1550
F 0 "R6" V 2200 1650 50  0000 L CNN
F 1 "100 kOhm" V 2350 1350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2250 1550 50  0001 C CNN
F 3 "~" H 2250 1550 50  0001 C CNN
	1    2250 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 1450 2000 1550
Wire Wire Line
	2550 1750 2600 1750
Wire Wire Line
	2600 1750 2600 1550
Wire Wire Line
	2600 1550 2350 1550
Connection ~ 2600 1750
Wire Wire Line
	2600 1750 2650 1750
Wire Wire Line
	2150 1550 2000 1550
Wire Wire Line
	2000 1900 2000 1550
Connection ~ 2000 1550
Wire Wire Line
	14700 2750 14600 2750
Wire Wire Line
	13200 3750 13300 3750
Text GLabel 5150 6600 1    50   Input ~ 0
SW-A
Wire Wire Line
	5150 6750 5150 6600
Text GLabel 4550 7050 0    50   Input ~ 0
SW-B
Wire Wire Line
	4700 7050 4550 7050
Text GLabel 5150 7700 3    50   Input ~ 0
SW-C
Wire Wire Line
	5150 7550 5150 7700
Text GLabel 14700 5250 2    50   Input ~ 0
SW-A
Text GLabel 14700 5150 2    50   Input ~ 0
SW-B
Text GLabel 14700 5050 2    50   Input ~ 0
SW-C
NoConn ~ 13200 4450
Wire Wire Line
	13200 4450 13300 4450
$Comp
L CUSTOM_PARTS:TM-2027 S1
U 1 1 61148628
P 5050 6800
F 0 "S1" H 5300 6850 50  0000 C CNN
F 1 "TM-2027" H 4800 6850 50  0000 C CNN
F 2 "CUSTOM_FOOTPRINTS:TM-2027" H 5900 6950 50  0001 C CNN
F 3 "" H 5400 6800 50  0001 C CNN
	1    5050 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 61148C56
P 4550 7350
F 0 "#PWR0119" H 4550 7100 50  0001 C CNN
F 1 "GND" H 4555 7177 50  0000 C CNN
F 2 "" H 4550 7350 50  0001 C CNN
F 3 "" H 4550 7350 50  0001 C CNN
	1    4550 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 7350 4550 7250
Wire Wire Line
	4550 7250 4700 7250
Text GLabel 5750 7050 2    50   Input ~ 0
SW-D
Wire Wire Line
	5600 7050 5750 7050
Wire Wire Line
	5750 7250 5600 7250
Text GLabel 5750 7250 2    50   Input ~ 0
MP-INT
Text GLabel 14700 4950 2    50   Input ~ 0
SW-D
Wire Wire Line
	14700 4950 14600 4950
$EndSCHEMATC
