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
	6050 10150 6050 8250
Text Notes 6150 8450 0    50   ~ 0
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
Text GLabel 2500 4700 2    50   Input ~ 0
I2C1_SCL
Text GLabel 2500 4800 2    50   Input ~ 0
I2C1_SDA
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
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7600 1500 50  0001 C CNN
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
$Comp
L Connector:USB_A J3
U 1 1 60D1113B
P 4450 9150
F 0 "J3" H 4507 9617 50  0000 C CNN
F 1 "USB_A" H 4507 9526 50  0000 C CNN
F 2 "Connector_USB:USB_A_CNCTech_1001-011-01101_Horizontal" H 4600 9100 50  0001 C CNN
F 3 " ~" H 4600 9100 50  0001 C CNN
	1    4450 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 9650 4450 9550
NoConn ~ 4350 9550
NoConn ~ 4750 9250
NoConn ~ 4750 9150
$Comp
L power:+5V #PWR0102
U 1 1 60D43744
P 4850 8850
AR Path="/60D43744" Ref="#PWR0102"  Part="1" 
AR Path="/60952D5B/60D43744" Ref="#PWR?"  Part="1" 
F 0 "#PWR0102" H 4850 8700 50  0001 C CNN
F 1 "+5V" H 4865 9023 50  0000 C CNN
F 2 "" H 4850 8850 50  0001 C CNN
F 3 "" H 4850 8850 50  0001 C CNN
	1    4850 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 8950 4850 8950
Wire Wire Line
	4850 8950 4850 8850
Wire Notes Line
	3750 8250 5750 8250
Text Notes 3900 8450 0    50   ~ 0
5V USB Out
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
P 2000 1600
F 0 "C11" H 2092 1646 50  0000 L CNN
F 1 "100 nF" H 2092 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2000 1600 50  0001 C CNN
F 3 "~" H 2000 1600 50  0001 C CNN
	1    2000 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 6141453D
P 2000 1800
F 0 "#PWR0111" H 2000 1550 50  0001 C CNN
F 1 "GND" H 2005 1627 50  0000 C CNN
F 2 "" H 2000 1800 50  0001 C CNN
F 3 "" H 2000 1800 50  0001 C CNN
	1    2000 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1800 2000 1700
Text GLabel 2600 1750 0    50   Input ~ 0
MP-INT
Wire Wire Line
	2600 1750 2650 1750
Text GLabel 2600 1950 0    50   Input ~ 0
I2C1_SCL
Wire Wire Line
	2600 1950 2650 1950
Text GLabel 2600 1850 0    50   Input ~ 0
I2C1_SDA
Wire Wire Line
	2600 1850 2650 1850
Wire Wire Line
	2000 1500 2000 1450
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
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5850 1450 50  0001 C CNN
F 3 "~" H 5850 1450 50  0001 C CNN
	1    5850 1450
	1    0    0    -1  
$EndComp
Connection ~ 5850 1300
Wire Wire Line
	5850 1300 5850 1250
Wire Wire Line
	5850 1300 6550 1300
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
$Comp
L power:GND #PWR0132
U 1 1 61ADEE57
P 4450 9650
F 0 "#PWR0132" H 4450 9400 50  0001 C CNN
F 1 "GND" H 4455 9477 50  0000 C CNN
F 2 "" H 4450 9650 50  0001 C CNN
F 3 "" H 4450 9650 50  0001 C CNN
	1    4450 9650
	1    0    0    -1  
$EndComp
Wire Notes Line
	3750 8250 3750 10050
Wire Notes Line
	3750 10050 5750 10050
Wire Notes Line
	5750 8250 5750 10050
Wire Notes Line
	6050 10150 8050 10150
Wire Notes Line
	8050 10150 8050 8250
Wire Notes Line
	8050 8250 6050 8250
$Comp
L Sensor:INA260 U2
U 1 1 61E689C7
P 2000 4800
F 0 "U2" H 2100 5350 50  0000 C CNN
F 1 "INA260" H 2200 5200 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 2000 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina260.pdf" H 2000 4700 50  0001 C CNN
	1    2000 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4600 1550 4600
Wire Wire Line
	1550 4600 1550 4700
Wire Wire Line
	1550 4700 1600 4700
$Comp
L power:GND #PWR0143
U 1 1 61E89DAA
P 2000 5300
F 0 "#PWR0143" H 2000 5050 50  0001 C CNN
F 1 "GND" H 2005 5127 50  0000 C CNN
F 2 "" H 2000 5300 50  0001 C CNN
F 3 "" H 2000 5300 50  0001 C CNN
	1    2000 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5200 2000 5300
Wire Wire Line
	2500 4700 2400 4700
Wire Wire Line
	2400 4800 2500 4800
$Comp
L Device:C_Small C?
U 1 1 61EFAA01
P 1500 4050
AR Path="/609F1585/61EFAA01" Ref="C?"  Part="1" 
AR Path="/61EFAA01" Ref="C1"  Part="1" 
F 0 "C1" H 1592 4096 50  0000 L CNN
F 1 "100 nF" H 1592 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1500 4050 50  0001 C CNN
F 3 "~" H 1500 4050 50  0001 C CNN
	1    1500 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0145
U 1 1 61EFB1C2
P 1500 4250
F 0 "#PWR0145" H 1500 4000 50  0001 C CNN
F 1 "GND" H 1505 4077 50  0000 C CNN
F 2 "" H 1500 4250 50  0001 C CNN
F 3 "" H 1500 4250 50  0001 C CNN
	1    1500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4250 1500 4150
Wire Wire Line
	1500 3950 1500 3900
Wire Wire Line
	2000 4400 2000 3900
Wire Wire Line
	2000 3900 1500 3900
Connection ~ 1500 3900
Wire Wire Line
	1500 3900 1500 3850
Text GLabel 1450 4600 0    50   Input ~ 0
IN+
Text GLabel 1450 5000 0    50   Input ~ 0
IN-
Wire Wire Line
	1450 4600 1550 4600
Connection ~ 1550 4600
Wire Wire Line
	1600 5000 1450 5000
$Comp
L Device:R_Small R?
U 1 1 61F84090
P 2450 4300
AR Path="/609F1585/61F84090" Ref="R?"  Part="1" 
AR Path="/61F84090" Ref="R1"  Part="1" 
F 0 "R1" H 2509 4346 50  0000 L CNN
F 1 "10 kOhm" H 2509 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2450 4300 50  0001 C CNN
F 3 "~" H 2450 4300 50  0001 C CNN
	1    2450 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4600 2450 4600
Wire Wire Line
	2450 4600 2450 4400
Wire Wire Line
	2450 4200 2450 3900
Wire Wire Line
	2450 3900 2000 3900
Connection ~ 2000 3900
Wire Wire Line
	2500 4600 2450 4600
Connection ~ 2450 4600
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 61FED1FE
P 3450 4700
F 0 "JP1" H 3400 4850 50  0000 L CNN
F 1 "INA_ADR_0" H 3800 4700 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3450 4700 50  0001 C CNN
F 3 "~" H 3450 4700 50  0001 C CNN
	1    3450 4700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP2
U 1 1 6201301A
P 3450 5200
F 0 "JP2" H 3400 5350 50  0000 L CNN
F 1 "INA_ADR_1" H 2700 5200 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3450 5200 50  0001 C CNN
F 3 "~" H 3450 5200 50  0001 C CNN
	1    3450 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 5200 3750 5200
Wire Wire Line
	3750 5200 3750 4700
Wire Wire Line
	3750 3900 2450 3900
Connection ~ 2450 3900
Wire Wire Line
	3650 4700 3750 4700
Connection ~ 3750 4700
Wire Wire Line
	3750 4700 3750 3900
Wire Wire Line
	2400 4900 3450 4900
Wire Wire Line
	3450 4900 3450 4850
Wire Wire Line
	2400 5000 3450 5000
Wire Wire Line
	3450 5000 3450 5050
$Comp
L power:GND #PWR0146
U 1 1 620DC800
P 3200 5250
F 0 "#PWR0146" H 3200 5000 50  0001 C CNN
F 1 "GND" H 3050 5200 50  0000 C CNN
F 2 "" H 3200 5250 50  0001 C CNN
F 3 "" H 3200 5250 50  0001 C CNN
	1    3200 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0147
U 1 1 620EFD95
P 3200 4750
F 0 "#PWR0147" H 3200 4500 50  0001 C CNN
F 1 "GND" H 3050 4700 50  0000 C CNN
F 2 "" H 3200 4750 50  0001 C CNN
F 3 "" H 3200 4750 50  0001 C CNN
	1    3200 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5250 3200 5200
Wire Wire Line
	3200 5200 3250 5200
Wire Wire Line
	3200 4750 3200 4700
Wire Wire Line
	3200 4700 3250 4700
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
L MCU_ST_STM32L1:STM32L151RCTx U?
U 1 1 6104DD43
P 13000 4800
F 0 "U?" H 12950 6781 50  0000 C CNN
F 1 "STM32L151RCTx" H 12950 6690 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 12400 3100 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00048356.pdf" H 13000 4800 50  0001 C CNN
	1    13000 4800
	1    0    0    -1  
$EndComp
$Comp
L CUSTOM_PARTS:EA_DOGS164N-A U?
U 1 1 6134EF70
P 1750 8450
F 0 "U?" H 1900 8265 50  0000 C CNN
F 1 "EA_DOGS164N-A" H 1900 8174 50  0000 C CNN
F 2 "CUSTOM_FOOTPRINTS:EA_DOGS164N-A" H 2550 8350 50  0001 C CNN
F 3 "" H 1600 8200 50  0001 C CNN
	1    1750 8450
	1    0    0    -1  
$EndComp
Text GLabel 1900 10050 3    50   Input ~ 0
I2C1_SCL
Text GLabel 2100 10050 3    50   Input ~ 0
I2C1_SDA
$Comp
L Jumper:SolderJumper_3_Open JP?
U 1 1 6135625C
P 1700 10500
F 0 "JP?" H 1650 10650 50  0000 L CNN
F 1 "EA_ADR" H 1600 10750 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 1700 10500 50  0001 C CNN
F 3 "~" H 1700 10500 50  0001 C CNN
	1    1700 10500
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61357486
P 1500 3850
F 0 "#PWR?" H 1500 3700 50  0001 C CNN
F 1 "+3V3" H 1515 4023 50  0000 C CNN
F 2 "" H 1500 3850 50  0001 C CNN
F 3 "" H 1500 3850 50  0001 C CNN
	1    1500 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61365390
P 1100 6800
F 0 "#PWR?" H 1100 6650 50  0001 C CNN
F 1 "+3V3" H 1115 6973 50  0000 C CNN
F 2 "" H 1100 6800 50  0001 C CNN
F 3 "" H 1100 6800 50  0001 C CNN
	1    1100 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 6138FC89
P 1400 10400
F 0 "#PWR?" H 1400 10250 50  0001 C CNN
F 1 "+3V3" H 1415 10573 50  0000 C CNN
F 2 "" H 1400 10400 50  0001 C CNN
F 3 "" H 1400 10400 50  0001 C CNN
	1    1400 10400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61390758
P 2000 10550
F 0 "#PWR?" H 2000 10300 50  0001 C CNN
F 1 "GND" H 2005 10377 50  0000 C CNN
F 2 "" H 2000 10550 50  0001 C CNN
F 3 "" H 2000 10550 50  0001 C CNN
	1    2000 10550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 10400 1400 10500
Wire Wire Line
	1400 10500 1500 10500
Wire Wire Line
	1900 10500 2000 10500
Wire Wire Line
	2000 10500 2000 10550
$Comp
L Device:C_Small C?
U 1 1 613B458A
P 1000 9050
F 0 "C?" H 1092 9096 50  0000 L CNN
F 1 "1 uF" H 1092 9005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 9050 50  0001 C CNN
F 3 "~" H 1000 9050 50  0001 C CNN
	1    1000 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 9200 1000 9200
Wire Wire Line
	1000 9200 1000 9150
Wire Wire Line
	1250 8900 1000 8900
Wire Wire Line
	1000 8900 1000 8950
$Comp
L power:+3V3 #PWR?
U 1 1 613C383A
P 1000 8850
F 0 "#PWR?" H 1000 8700 50  0001 C CNN
F 1 "+3V3" H 1015 9023 50  0000 C CNN
F 2 "" H 1000 8850 50  0001 C CNN
F 3 "" H 1000 8850 50  0001 C CNN
	1    1000 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 8900 1000 8850
Connection ~ 1000 8900
Wire Wire Line
	2100 9750 2000 9750
Wire Wire Line
	2000 9750 2000 9700
Connection ~ 2100 9750
Wire Wire Line
	2100 9750 2100 9700
Wire Wire Line
	1700 9700 1700 10350
$Comp
L power:GND #PWR?
U 1 1 61409A5C
P 1800 9800
F 0 "#PWR?" H 1800 9550 50  0001 C CNN
F 1 "GND" H 1805 9627 50  0000 C CNN
F 2 "" H 1800 9800 50  0001 C CNN
F 3 "" H 1800 9800 50  0001 C CNN
	1    1800 9800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 9700 1900 10050
Wire Wire Line
	2100 9750 2100 10050
Wire Wire Line
	1800 9800 1800 9700
$Comp
L Device:C_Small C?
U 1 1 61422489
P 1000 9750
F 0 "C?" H 1092 9796 50  0000 L CNN
F 1 "1 uF" H 1092 9705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 9750 50  0001 C CNN
F 3 "~" H 1000 9750 50  0001 C CNN
	1    1000 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 9500 1000 9500
Wire Wire Line
	1000 9500 1000 9650
Wire Wire Line
	1000 9850 1000 9950
$Comp
L power:GND #PWR?
U 1 1 6143322B
P 1000 9950
F 0 "#PWR?" H 1000 9700 50  0001 C CNN
F 1 "GND" H 1005 9777 50  0000 C CNN
F 2 "" H 1000 9950 50  0001 C CNN
F 3 "" H 1000 9950 50  0001 C CNN
	1    1000 9950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61433F5B
P 3100 8950
F 0 "#PWR?" H 3100 8700 50  0001 C CNN
F 1 "GND" H 3105 8777 50  0000 C CNN
F 2 "" H 3100 8950 50  0001 C CNN
F 3 "" H 3100 8950 50  0001 C CNN
	1    3100 8950
	1    0    0    -1  
$EndComp
Text GLabel 2650 9200 2    50   Input ~ 0
EA_RST
Wire Wire Line
	3100 8950 3100 8900
Wire Wire Line
	3100 8900 2550 8900
Wire Wire Line
	2550 9200 2650 9200
Text Notes 800  8450 0    50   ~ 0
LCD Textdisplay
Wire Notes Line
	650  8250 650  11050
Wire Notes Line
	650  11050 3400 11050
Wire Notes Line
	3400 11050 3400 8250
Wire Notes Line
	3400 8250 650  8250
Text GLabel 11600 3400 0    50   Input ~ 0
MP-INT
Text GLabel 11650 3750 0    50   Input ~ 0
I2C1_SCL
Text GLabel 11650 3650 0    50   Input ~ 0
I2C1_SDA
Text GLabel 11650 4000 0    50   Input ~ 0
USART1_RX
Text GLabel 11650 4400 0    50   Input ~ 0
SWCLK
Text GLabel 11650 4500 0    50   Input ~ 0
SWDIO
Text GLabel 11650 4100 0    50   Input ~ 0
USART1_TX
Text GLabel 11650 4200 0    50   Input ~ 0
NRST
Text GLabel 11650 4750 0    50   Input ~ 0
EA_RST
$Comp
L CUSTOM_PARTS:TM-2027 S?
U 1 1 614C68DA
P 4400 6800
F 0 "S?" H 4700 6800 50  0000 C CNN
F 1 "TM-2027" H 4200 6800 50  0000 C CNN
F 2 "CUSTOM_FOOTPRINTS:TM-2027" H 5250 6950 50  0001 C CNN
F 3 "" H 4750 6800 50  0001 C CNN
	1    4400 6800
	1    0    0    -1  
$EndComp
Text GLabel 4500 6700 1    50   Input ~ 0
TM-A
Wire Wire Line
	4500 6700 4500 6750
Wire Wire Line
	4050 7050 3950 7050
Wire Wire Line
	4500 7550 4500 7650
Wire Wire Line
	4950 7250 5100 7250
Wire Wire Line
	4950 7050 5100 7050
Text GLabel 3950 7050 0    50   Input ~ 0
TM-B
Text GLabel 5100 7050 2    50   Input ~ 0
TM-D
Text GLabel 5100 7250 2    50   Input ~ 0
TM-Center
Text GLabel 4500 7650 3    50   Input ~ 0
TM-C
$Comp
L power:GND #PWR?
U 1 1 61502D4C
P 3850 7350
F 0 "#PWR?" H 3850 7100 50  0001 C CNN
F 1 "GND" H 3855 7177 50  0000 C CNN
F 2 "" H 3850 7350 50  0001 C CNN
F 3 "" H 3850 7350 50  0001 C CNN
	1    3850 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 7250 3850 7350
Wire Wire Line
	3850 7250 4050 7250
Text GLabel 11650 5000 0    50   Input ~ 0
TM-A
Text GLabel 11650 5100 0    50   Input ~ 0
TM-B
Text GLabel 11650 5200 0    50   Input ~ 0
TM-C
Text GLabel 11650 5300 0    50   Input ~ 0
TM-D
Text GLabel 11650 5400 0    50   Input ~ 0
TM-Center
Text Notes 3800 6450 0    50   ~ 0
Control
Text GLabel 2500 4600 2    50   Input ~ 0
INA-ALERT
Text GLabel 11650 5650 0    50   Input ~ 0
INA-ALERT
$Comp
L Switch:SW_DIP_x02 SW?
U 1 1 61567236
P 6500 7250
F 0 "SW?" H 6500 7617 50  0000 C CNN
F 1 "SW_DIP_x02" H 6500 7526 50  0000 C CNN
F 2 "CUSTOM_FOOTPRINTS:TS6637TP-4P" H 6500 7250 50  0001 C CNN
F 3 "~" H 6500 7250 50  0001 C CNN
	1    6500 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 7250 6150 7250
Wire Wire Line
	6150 7250 6150 7200
Wire Wire Line
	6150 7150 6200 7150
Wire Wire Line
	6800 7150 6850 7150
Wire Wire Line
	6850 7150 6850 7200
Wire Wire Line
	6850 7250 6800 7250
Text GLabel 6950 7200 2    50   Input ~ 0
MP-INT
Wire Wire Line
	6950 7200 6850 7200
Connection ~ 6850 7200
Wire Wire Line
	6850 7200 6850 7250
$Comp
L power:GND #PWR?
U 1 1 61596BD9
P 6000 7300
F 0 "#PWR?" H 6000 7050 50  0001 C CNN
F 1 "GND" H 6005 7127 50  0000 C CNN
F 2 "" H 6000 7300 50  0001 C CNN
F 3 "" H 6000 7300 50  0001 C CNN
	1    6000 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 7200 6000 7200
Wire Wire Line
	6000 7200 6000 7300
Connection ~ 6150 7200
Wire Wire Line
	6150 7200 6150 7150
Wire Notes Line
	3500 6200 7400 6200
Wire Notes Line
	7400 6200 7400 8100
Wire Notes Line
	7400 8100 3500 8100
Wire Notes Line
	3500 8100 3500 6200
Wire Wire Line
	6550 1450 6550 1300
Connection ~ 6550 1300
Wire Wire Line
	6550 1300 6700 1300
$Comp
L power:+5V #PWR?
U 1 1 61637044
P 11450 7400
AR Path="/61637044" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/61637044" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 11450 7250 50  0001 C CNN
F 1 "+5V" H 11465 7573 50  0000 C CNN
F 2 "" H 11450 7400 50  0001 C CNN
F 3 "" H 11450 7400 50  0001 C CNN
	1    11450 7400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 616373C3
P 7600 1200
F 0 "#PWR?" H 7600 1050 50  0001 C CNN
F 1 "+3V3" H 7615 1373 50  0000 C CNN
F 2 "" H 7600 1200 50  0001 C CNN
F 3 "" H 7600 1200 50  0001 C CNN
	1    7600 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 6168F49C
P 6500 8800
F 0 "J?" H 6580 8792 50  0000 L CNN
F 1 "Conn_01x02" H 6580 8701 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 6500 8800 50  0001 C CNN
F 3 "~" H 6500 8800 50  0001 C CNN
	1    6500 8800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 616907AB
P 6250 8750
AR Path="/60952D5B/616907AB" Ref="#PWR?"  Part="1" 
AR Path="/609E103F/616907AB" Ref="#PWR?"  Part="1" 
AR Path="/616907AB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6250 8600 50  0001 C CNN
F 1 "+3V3" H 6265 8923 50  0000 C CNN
F 2 "" H 6250 8750 50  0001 C CNN
F 3 "" H 6250 8750 50  0001 C CNN
	1    6250 8750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61690A42
P 6250 9550
AR Path="/60952D5B/61690A42" Ref="#PWR?"  Part="1" 
AR Path="/609E103F/61690A42" Ref="#PWR?"  Part="1" 
AR Path="/61690A42" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6250 9400 50  0001 C CNN
F 1 "+5V" H 6265 9723 50  0000 C CNN
F 2 "" H 6250 9550 50  0001 C CNN
F 3 "" H 6250 9550 50  0001 C CNN
	1    6250 9550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6169F74E
P 6250 8950
F 0 "#PWR?" H 6250 8700 50  0001 C CNN
F 1 "GND" H 6255 8777 50  0000 C CNN
F 2 "" H 6250 8950 50  0001 C CNN
F 3 "" H 6250 8950 50  0001 C CNN
	1    6250 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 8950 6250 8900
Wire Wire Line
	6250 8900 6300 8900
Wire Wire Line
	6300 8800 6250 8800
Wire Wire Line
	6250 8800 6250 8750
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 616AFB0A
P 7400 8800
F 0 "J?" H 7480 8792 50  0000 L CNN
F 1 "Conn_01x02" H 7480 8701 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 7400 8800 50  0001 C CNN
F 3 "~" H 7400 8800 50  0001 C CNN
	1    7400 8800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 616AFB10
P 7150 8750
AR Path="/60952D5B/616AFB10" Ref="#PWR?"  Part="1" 
AR Path="/609E103F/616AFB10" Ref="#PWR?"  Part="1" 
AR Path="/616AFB10" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7150 8600 50  0001 C CNN
F 1 "+3V3" H 7165 8923 50  0000 C CNN
F 2 "" H 7150 8750 50  0001 C CNN
F 3 "" H 7150 8750 50  0001 C CNN
	1    7150 8750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 616AFB16
P 7150 8950
F 0 "#PWR?" H 7150 8700 50  0001 C CNN
F 1 "GND" H 7155 8777 50  0000 C CNN
F 2 "" H 7150 8950 50  0001 C CNN
F 3 "" H 7150 8950 50  0001 C CNN
	1    7150 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 8950 7150 8900
Wire Wire Line
	7150 8900 7200 8900
Wire Wire Line
	7200 8800 7150 8800
Wire Wire Line
	7150 8800 7150 8750
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 616C0E49
P 6500 9600
F 0 "J?" H 6580 9592 50  0000 L CNN
F 1 "Conn_01x02" H 6580 9501 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 6500 9600 50  0001 C CNN
F 3 "~" H 6500 9600 50  0001 C CNN
	1    6500 9600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 616C0E55
P 6250 9750
F 0 "#PWR?" H 6250 9500 50  0001 C CNN
F 1 "GND" H 6255 9577 50  0000 C CNN
F 2 "" H 6250 9750 50  0001 C CNN
F 3 "" H 6250 9750 50  0001 C CNN
	1    6250 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 9750 6250 9700
Wire Wire Line
	6250 9700 6300 9700
Wire Wire Line
	6300 9600 6250 9600
Wire Wire Line
	6250 9600 6250 9550
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 616C0E5F
P 7400 9600
F 0 "J?" H 7480 9592 50  0000 L CNN
F 1 "Conn_01x02" H 7480 9501 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 7400 9600 50  0001 C CNN
F 3 "~" H 7400 9600 50  0001 C CNN
	1    7400 9600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 616C0E6B
P 7150 9750
F 0 "#PWR?" H 7150 9500 50  0001 C CNN
F 1 "GND" H 7155 9577 50  0000 C CNN
F 2 "" H 7150 9750 50  0001 C CNN
F 3 "" H 7150 9750 50  0001 C CNN
	1    7150 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 9750 7150 9700
Wire Wire Line
	7150 9700 7200 9700
Wire Wire Line
	7200 9600 7150 9600
Wire Wire Line
	7150 9600 7150 9550
$Comp
L power:+5V #PWR?
U 1 1 616D9F1A
P 7150 9550
AR Path="/60952D5B/616D9F1A" Ref="#PWR?"  Part="1" 
AR Path="/609E103F/616D9F1A" Ref="#PWR?"  Part="1" 
AR Path="/616D9F1A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7150 9400 50  0001 C CNN
F 1 "+5V" H 7165 9723 50  0000 C CNN
F 2 "" H 7150 9550 50  0001 C CNN
F 3 "" H 7150 9550 50  0001 C CNN
	1    7150 9550
	1    0    0    -1  
$EndComp
Text Notes 11300 7550 0    50   ~ 0
TPS61032 -> Symbol
$EndSCHEMATC
