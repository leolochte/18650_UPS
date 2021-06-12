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
Wire Notes Line
	2700 2600 5250 2600
Wire Notes Line
	2700 700  2700 2600
Wire Notes Line
	5250 700  5250 2600
$Comp
L Mechanical:MountingHole H1
U 1 1 60BDA926
P 1050 10000
F 0 "H1" H 1150 10046 50  0000 L CNN
F 1 "MountingHole" H 1150 9955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1050 10000 50  0001 C CNN
F 3 "~" H 1050 10000 50  0001 C CNN
	1    1050 10000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60BDAC6E
P 1050 10250
F 0 "H2" H 1150 10296 50  0000 L CNN
F 1 "MountingHole" H 1150 10205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1050 10250 50  0001 C CNN
F 3 "~" H 1050 10250 50  0001 C CNN
	1    1050 10250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 60BDC958
P 1050 10600
F 0 "H3" H 1150 10646 50  0000 L CNN
F 1 "MountingHole" H 1150 10555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1050 10600 50  0001 C CNN
F 3 "~" H 1050 10600 50  0001 C CNN
	1    1050 10600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 60BDC95E
P 1050 10850
F 0 "H4" H 1150 10896 50  0000 L CNN
F 1 "MountingHole" H 1150 10805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1050 10850 50  0001 C CNN
F 3 "~" H 1050 10850 50  0001 C CNN
	1    1050 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1300 3150 1550
Wire Wire Line
	3150 1550 3350 1550
Wire Notes Line
	11500 2600 11500 700 
Wire Notes Line
	11500 700  14050 700 
Wire Notes Line
	14050 700  14050 2600
Wire Notes Line
	14050 2600 11500 2600
Text Notes 11600 900  0    50   ~ 0
External power out
$Comp
L power:+5V #PWR?
U 1 1 609CA046
P 12050 1800
AR Path="/60952D5B/609CA046" Ref="#PWR?"  Part="1" 
AR Path="/609E103F/609CA046" Ref="#PWR?"  Part="1" 
AR Path="/609CA046" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 12050 1650 50  0001 C CNN
F 1 "+5V" H 12065 1973 50  0000 C CNN
F 2 "" H 12050 1800 50  0001 C CNN
F 3 "" H 12050 1800 50  0001 C CNN
	1    12050 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 609CA03A
P 12350 1600
AR Path="/60952D5B/609CA03A" Ref="#PWR?"  Part="1" 
AR Path="/609E103F/609CA03A" Ref="#PWR?"  Part="1" 
AR Path="/609CA03A" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 12350 1450 50  0001 C CNN
F 1 "+3V3" H 12365 1773 50  0000 C CNN
F 2 "" H 12350 1600 50  0001 C CNN
F 3 "" H 12350 1600 50  0001 C CNN
	1    12350 1600
	1    0    0    -1  
$EndComp
Text Notes 900  7200 0    50   ~ 0
Current Sensor
Wire Notes Line
	700  6950 4950 6950
Wire Notes Line
	700  9650 700  6950
Wire Notes Line
	4950 9650 700  9650
Wire Notes Line
	4950 9650 4950 6950
$Comp
L power:GNDD #PWR?
U 1 1 609F2F31
P 3300 8850
AR Path="/609F1585/609F2F31" Ref="#PWR?"  Part="1" 
AR Path="/609F2F31" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 3300 8600 50  0001 C CNN
F 1 "GNDD" H 3304 8695 50  0000 C CNN
F 2 "" H 3300 8850 50  0001 C CNN
F 3 "" H 3300 8850 50  0001 C CNN
	1    3300 8850
	1    0    0    -1  
$EndComp
Connection ~ 1300 8050
Wire Wire Line
	1300 8100 1300 8050
$Comp
L power:GNDD #PWR?
U 1 1 609F2F39
P 1300 8100
AR Path="/609F1585/609F2F39" Ref="#PWR?"  Part="1" 
AR Path="/609F2F39" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 1300 7850 50  0001 C CNN
F 1 "GNDD" H 1304 7945 50  0000 C CNN
F 2 "" H 1300 8100 50  0001 C CNN
F 3 "" H 1300 8100 50  0001 C CNN
	1    1300 8100
	1    0    0    -1  
$EndComp
Connection ~ 1800 7750
Wire Wire Line
	2600 7750 2600 8050
Wire Wire Line
	1800 7750 2600 7750
Wire Wire Line
	1800 8050 1800 8000
Wire Wire Line
	1300 8050 1800 8050
Wire Wire Line
	1300 8000 1300 8050
Wire Wire Line
	1300 7750 1300 7700
Connection ~ 1300 7750
Wire Wire Line
	1800 7750 1800 7800
Wire Wire Line
	1300 7750 1800 7750
Wire Wire Line
	1300 7800 1300 7750
$Comp
L Device:C_Small C?
U 1 1 609F2F4A
P 1300 7900
AR Path="/609F1585/609F2F4A" Ref="C?"  Part="1" 
AR Path="/609F2F4A" Ref="C12"  Part="1" 
F 0 "C12" H 1392 7946 50  0000 L CNN
F 1 "10 uF" H 1392 7855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1300 7900 50  0001 C CNN
F 3 "~" H 1300 7900 50  0001 C CNN
	1    1300 7900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 609F2F50
P 1800 7900
AR Path="/609F1585/609F2F50" Ref="C?"  Part="1" 
AR Path="/609F2F50" Ref="C13"  Part="1" 
F 0 "C13" H 1892 7946 50  0000 L CNN
F 1 "100 nF" H 1892 7855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1800 7900 50  0001 C CNN
F 3 "~" H 1800 7900 50  0001 C CNN
	1    1800 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 8550 2100 8550
Wire Wire Line
	2100 8350 2200 8350
Text GLabel 2100 8350 0    50   Input ~ 0
Shunt+
Text GLabel 2100 8550 0    50   Input ~ 0
Shunt-
Wire Wire Line
	2600 8950 2600 8850
$Comp
L power:GNDD #PWR?
U 1 1 609F2F61
P 2600 8950
AR Path="/609F1585/609F2F61" Ref="#PWR?"  Part="1" 
AR Path="/609F2F61" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 2600 8700 50  0001 C CNN
F 1 "GNDD" H 2604 8795 50  0000 C CNN
F 2 "" H 2600 8950 50  0001 C CNN
F 3 "" H 2600 8950 50  0001 C CNN
	1    2600 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 8250 3100 8250
Wire Wire Line
	3100 8350 3000 8350
Text GLabel 3100 8350 2    50   Input ~ 0
I2C1_SCL
Text GLabel 3100 8250 2    50   Input ~ 0
I2C1_SDA
Wire Wire Line
	2600 4900 2150 4900
Wire Wire Line
	2600 4950 2600 4900
Wire Wire Line
	2600 5300 2950 5300
Connection ~ 2600 5300
Wire Wire Line
	2100 5300 2600 5300
Wire Wire Line
	2600 5150 2600 5300
Wire Wire Line
	2150 4950 2150 4900
Wire Wire Line
	2150 5200 2950 5200
Connection ~ 2150 5200
Wire Wire Line
	2150 5150 2150 5200
Wire Wire Line
	2100 5200 2150 5200
$Comp
L Device:R_Small R?
U 1 1 609F2F77
P 2150 5050
AR Path="/609F1585/609F2F77" Ref="R?"  Part="1" 
AR Path="/609F2F77" Ref="R12"  Part="1" 
F 0 "R12" H 2209 5096 50  0000 L CNN
F 1 "10 kOhm" H 2209 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2150 5050 50  0001 C CNN
F 3 "~" H 2150 5050 50  0001 C CNN
	1    2150 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 609F2F7D
P 2600 5050
AR Path="/609F1585/609F2F7D" Ref="R?"  Part="1" 
AR Path="/609F2F7D" Ref="R13"  Part="1" 
F 0 "R13" H 2659 5096 50  0000 L CNN
F 1 "10 kOhm" H 2659 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2600 5050 50  0001 C CNN
F 3 "~" H 2600 5050 50  0001 C CNN
	1    2600 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4600 2950 4600
Wire Notes Line
	700  3000 4950 3000
$Comp
L Analog_ADC:INA219AxD U7
U 1 1 609F2F8B
P 2600 8450
AR Path="/609F2F8B" Ref="U7"  Part="1" 
AR Path="/609F1585/609F2F8B" Ref="U?"  Part="1" 
F 0 "U7" H 2350 8800 50  0000 C CNN
F 1 "INA219AxD" H 2900 8800 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3400 8100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 2950 8350 50  0001 C CNN
	1    2600 8450
	1    0    0    -1  
$EndComp
Text Notes 850  3200 0    50   ~ 0
MCU
$Comp
L MCU_ST_STM32F0:STM32F030F4Px U9
U 1 1 609F2F92
P 3450 4900
AR Path="/609F2F92" Ref="U9"  Part="1" 
AR Path="/609F1585/609F2F92" Ref="U?"  Part="1" 
F 0 "U9" H 3750 5550 50  0000 C CNN
F 1 "STM32F030F4Px" H 3000 5550 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 3050 4200 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00088500.pdf" H 3450 4900 50  0001 C CNN
	1    3450 4900
	1    0    0    -1  
$EndComp
Text GLabel 2100 5300 0    50   Input ~ 0
I2C1_SCL
Text GLabel 2100 5200 0    50   Input ~ 0
I2C1_SDA
$Comp
L power:GNDD #PWR0111
U 1 1 609F2F9A
P 3450 5800
AR Path="/609F2F9A" Ref="#PWR0111"  Part="1" 
AR Path="/609F1585/609F2F9A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0111" H 3450 5550 50  0001 C CNN
F 1 "GNDD" H 3454 5645 50  0000 C CNN
F 2 "" H 3450 5800 50  0001 C CNN
F 3 "" H 3450 5800 50  0001 C CNN
	1    3450 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C19
U 1 1 609F2FA0
P 4300 3800
AR Path="/609F2FA0" Ref="C19"  Part="1" 
AR Path="/609F1585/609F2FA0" Ref="C?"  Part="1" 
F 0 "C19" H 4392 3846 50  0000 L CNN
F 1 "1 uF" H 4392 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4300 3800 50  0001 C CNN
F 3 "~" H 4300 3800 50  0001 C CNN
	1    4300 3800
	1    0    0    -1  
$EndComp
Connection ~ 2400 3950
Wire Wire Line
	2850 3950 2850 3900
Wire Wire Line
	2400 3950 2850 3950
Wire Wire Line
	1950 3950 1950 3900
Connection ~ 1950 3950
Wire Wire Line
	2400 3950 2400 3900
Wire Wire Line
	1950 3950 2400 3950
Wire Wire Line
	1950 4000 1950 3950
$Comp
L power:GNDD #PWR0112
U 1 1 609F2FAE
P 1950 4000
AR Path="/609F2FAE" Ref="#PWR0112"  Part="1" 
AR Path="/609F1585/609F2FAE" Ref="#PWR?"  Part="1" 
F 0 "#PWR0112" H 1950 3750 50  0001 C CNN
F 1 "GNDD" H 1954 3845 50  0000 C CNN
F 2 "" H 1950 4000 50  0001 C CNN
F 3 "" H 1950 4000 50  0001 C CNN
	1    1950 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 609F2FB4
P 2400 3800
AR Path="/609F2FB4" Ref="C16"  Part="1" 
AR Path="/609F1585/609F2FB4" Ref="C?"  Part="1" 
F 0 "C16" H 2308 3754 50  0000 R CNN
F 1 "200 nF" H 2308 3845 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2400 3800 50  0001 C CNN
F 3 "~" H 2400 3800 50  0001 C CNN
	1    2400 3800
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C17
U 1 1 609F2FBA
P 2850 3800
AR Path="/609F2FBA" Ref="C17"  Part="1" 
AR Path="/609F1585/609F2FBA" Ref="C?"  Part="1" 
F 0 "C17" H 2759 3754 50  0000 R CNN
F 1 "4.7 uF" H 2759 3845 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2850 3800 50  0001 C CNN
F 3 "~" H 2850 3800 50  0001 C CNN
	1    2850 3800
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C15
U 1 1 609F2FC0
P 1950 3800
AR Path="/609F2FC0" Ref="C15"  Part="1" 
AR Path="/609F1585/609F2FC0" Ref="C?"  Part="1" 
F 0 "C15" H 1859 3754 50  0000 R CNN
F 1 "200 nF" H 1859 3845 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1950 3800 50  0001 C CNN
F 3 "~" H 1950 3800 50  0001 C CNN
	1    1950 3800
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C18
U 1 1 609F2FC6
P 3850 3800
AR Path="/609F2FC6" Ref="C18"  Part="1" 
AR Path="/609F1585/609F2FC6" Ref="C?"  Part="1" 
F 0 "C18" H 3942 3846 50  0000 L CNN
F 1 "10 nF" H 3942 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3850 3800 50  0001 C CNN
F 3 "~" H 3850 3800 50  0001 C CNN
	1    3850 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0113
U 1 1 609F2FCC
P 4300 4050
AR Path="/609F2FCC" Ref="#PWR0113"  Part="1" 
AR Path="/609F1585/609F2FCC" Ref="#PWR?"  Part="1" 
F 0 "#PWR0113" H 4300 3800 50  0001 C CNN
F 1 "GNDD" H 4304 3895 50  0000 C CNN
F 2 "" H 4300 4050 50  0001 C CNN
F 3 "" H 4300 4050 50  0001 C CNN
	1    4300 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3900 3850 3950
Wire Wire Line
	3850 3950 4300 3950
Wire Wire Line
	4300 3950 4300 3900
Wire Wire Line
	4300 4050 4300 3950
Connection ~ 4300 3950
Wire Wire Line
	1950 3700 1950 3600
Wire Wire Line
	2400 3600 2400 3700
Wire Wire Line
	2850 3600 2850 3700
Wire Wire Line
	1950 3600 2400 3600
Wire Wire Line
	2400 3600 2850 3600
Connection ~ 2400 3600
Wire Wire Line
	4300 3700 4300 3600
Wire Wire Line
	4300 3600 3850 3600
Wire Wire Line
	3850 3600 3850 3700
Wire Wire Line
	3850 3600 3550 3600
Connection ~ 3850 3600
Connection ~ 2850 3600
Wire Wire Line
	3450 5800 3450 5700
Text GLabel 4050 5400 2    50   Input ~ 0
SWDIO
Text GLabel 4050 5500 2    50   Input ~ 0
SWCLK
Wire Wire Line
	4050 5500 3950 5500
Wire Wire Line
	4050 5400 3950 5400
Wire Wire Line
	2000 4600 2000 4950
Text GLabel 4050 4700 2    50   Input ~ 0
USART1_RX
Text GLabel 4050 4600 2    50   Input ~ 0
USART1_TX
Wire Wire Line
	4050 4600 3950 4600
Wire Wire Line
	3950 4700 4050 4700
Wire Wire Line
	2850 3600 3450 3600
Wire Wire Line
	3550 3600 3550 4200
Wire Wire Line
	3450 3600 3450 4200
Connection ~ 1650 4950
Wire Wire Line
	2000 4950 1650 4950
Wire Wire Line
	1250 5000 1250 4950
$Comp
L power:GNDD #PWR0114
U 1 1 609F2FF3
P 1250 5000
AR Path="/609F2FF3" Ref="#PWR0114"  Part="1" 
AR Path="/609F1585/609F2FF3" Ref="#PWR?"  Part="1" 
F 0 "#PWR0114" H 1250 4750 50  0001 C CNN
F 1 "GNDD" H 1254 4845 50  0000 C CNN
F 2 "" H 1250 5000 50  0001 C CNN
F 3 "" H 1250 5000 50  0001 C CNN
	1    1250 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4950 1250 4950
Wire Wire Line
	1650 4800 1650 4950
Connection ~ 1650 4400
Wire Wire Line
	1650 4400 1650 4600
$Comp
L Device:C_Small C14
U 1 1 609F2FFD
P 1650 4700
AR Path="/609F2FFD" Ref="C14"  Part="1" 
AR Path="/609F1585/609F2FFD" Ref="C?"  Part="1" 
F 0 "C14" H 1742 4746 50  0000 L CNN
F 1 "100 nF" H 1742 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1650 4700 50  0001 C CNN
F 3 "~" H 1650 4700 50  0001 C CNN
	1    1650 4700
	-1   0    0    1   
$EndComp
Text GLabel 1150 4400 0    50   Input ~ 0
NRST
Wire Wire Line
	1650 4400 2950 4400
Text GLabel 4050 4400 2    50   Input ~ 0
PA0
Text GLabel 4050 4500 2    50   Input ~ 0
PA1
Text GLabel 4050 5200 2    50   Input ~ 0
PA9
Text GLabel 4050 5300 2    50   Input ~ 0
PA10
Text GLabel 2850 5500 0    50   Input ~ 0
PB1
Wire Wire Line
	2850 5500 2950 5500
Wire Wire Line
	4050 4400 3950 4400
Wire Wire Line
	3950 4500 4050 4500
Wire Wire Line
	4050 4800 3950 4800
Wire Wire Line
	3950 4900 4050 4900
Wire Wire Line
	4050 5200 3950 5200
Wire Wire Line
	3950 5300 4050 5300
Wire Wire Line
	1150 4400 1250 4400
Wire Wire Line
	3000 8650 3300 8650
Wire Wire Line
	3300 8650 3300 8850
Wire Wire Line
	3300 8650 3300 8550
Wire Wire Line
	3300 8550 3000 8550
Connection ~ 3300 8650
Wire Wire Line
	1950 3600 1950 3450
Connection ~ 1950 3600
Wire Wire Line
	4300 3600 4300 3500
Connection ~ 4300 3600
Wire Notes Line
	700  6600 4950 6600
Wire Notes Line
	700  3000 700  6600
Wire Notes Line
	4950 3000 4950 6600
$Comp
L CUSTOM_PARTS:SSD1306_128_32 U8
U 1 1 60A28C8B
P 8000 1500
AR Path="/60A28C8B" Ref="U8"  Part="1" 
AR Path="/609F1585/60A28C8B" Ref="U?"  Part="1" 
F 0 "U8" H 8050 1150 50  0000 L CNN
F 1 "SSD1306_128_32" H 7900 1700 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical_SMD_Pin1Left" H 8300 2000 50  0001 C CNN
F 3 "" H 8000 1500 50  0001 C CNN
	1    8000 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0117
U 1 1 60A28C91
P 8300 2000
AR Path="/60A28C91" Ref="#PWR0117"  Part="1" 
AR Path="/609F1585/60A28C91" Ref="#PWR?"  Part="1" 
F 0 "#PWR0117" H 8300 1750 50  0001 C CNN
F 1 "GNDD" H 8304 1845 50  0000 C CNN
F 2 "" H 8300 2000 50  0001 C CNN
F 3 "" H 8300 2000 50  0001 C CNN
	1    8300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2000 8300 1900
Text GLabel 7800 1700 0    50   Input ~ 0
I2C1_SDA
Text GLabel 7800 1600 0    50   Input ~ 0
I2C1_SCL
Wire Wire Line
	7800 1600 7900 1600
Wire Wire Line
	7800 1700 7900 1700
$Comp
L CUSTOM_PARTS:ALPSALPINE_SKRHADE011 SW?
U 1 1 60A28C9C
P 6250 1400
AR Path="/609F1585/60A28C9C" Ref="SW?"  Part="1" 
AR Path="/60A28C9C" Ref="SW2"  Part="1" 
F 0 "SW2" H 6450 1565 50  0000 C CNN
F 1 "ALPSALPINE_SKRHADE011" H 6450 1474 50  0000 C CNN
F 2 "CUSTOM_FOOTPRINTS:SKRHADE011" H 6250 1400 50  0001 C CNN
F 3 "" H 6250 1400 50  0001 C CNN
	1    6250 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0118
U 1 1 60A28CA7
P 6400 2050
AR Path="/60A28CA7" Ref="#PWR0118"  Part="1" 
AR Path="/609F1585/60A28CA7" Ref="#PWR?"  Part="1" 
F 0 "#PWR0118" H 6400 1800 50  0001 C CNN
F 1 "GNDD" H 6404 1895 50  0000 C CNN
F 2 "" H 6400 2050 50  0001 C CNN
F 3 "" H 6400 2050 50  0001 C CNN
	1    6400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1900 6400 2050
Wire Wire Line
	6550 2000 6500 2000
Wire Wire Line
	6500 2000 6500 1900
Wire Wire Line
	6150 1500 6050 1500
Wire Wire Line
	6050 1750 6150 1750
Wire Wire Line
	6850 1750 6750 1750
Wire Wire Line
	6750 1500 6850 1500
Wire Wire Line
	7650 1500 7650 1400
Wire Wire Line
	7650 1500 7900 1500
Wire Notes Line
	8750 700  5750 700 
Wire Notes Line
	8750 2600 8750 700 
Wire Notes Line
	5750 700  5750 2600
Wire Notes Line
	5750 2600 8750 2600
Text Notes 6000 950  0    50   ~ 0
OLED & Control
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J2
U 1 1 60A7875A
P 12750 1750
F 0 "J2" H 13400 1400 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 13050 2000 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical_SMD" H 12750 1750 50  0001 C CNN
F 3 "~" H 12750 1750 50  0001 C CNN
	1    12750 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0120
U 1 1 60A78DC5
P 13150 2000
AR Path="/60A78DC5" Ref="#PWR0120"  Part="1" 
AR Path="/609F1585/60A78DC5" Ref="#PWR?"  Part="1" 
F 0 "#PWR0120" H 13150 1750 50  0001 C CNN
F 1 "GNDD" H 13154 1845 50  0000 C CNN
F 2 "" H 13150 2000 50  0001 C CNN
F 3 "" H 13150 2000 50  0001 C CNN
	1    13150 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	12550 1650 12350 1650
Wire Wire Line
	12350 1650 12350 1600
Wire Wire Line
	12550 1750 12350 1750
Wire Wire Line
	12350 1750 12350 1650
Connection ~ 12350 1650
Wire Wire Line
	12550 1850 12350 1850
Wire Wire Line
	12050 1850 12050 1800
Wire Wire Line
	12550 1950 12350 1950
Wire Wire Line
	12350 1950 12350 1850
Connection ~ 12350 1850
Wire Wire Line
	12350 1850 12050 1850
Wire Wire Line
	13150 2000 13150 1950
Wire Wire Line
	13150 1650 13050 1650
Wire Wire Line
	13150 1750 13050 1750
Connection ~ 13150 1750
Wire Wire Line
	13150 1750 13150 1650
Wire Wire Line
	13050 1850 13150 1850
Connection ~ 13150 1850
Wire Wire Line
	13150 1850 13150 1750
Wire Wire Line
	13150 1950 13050 1950
Connection ~ 13150 1950
Wire Wire Line
	13150 1950 13150 1850
Wire Wire Line
	2150 4850 2150 4900
Connection ~ 2150 4900
Text GLabel 4050 4800 2    50   Input ~ 0
PA4
Text GLabel 4050 4900 2    50   Input ~ 0
PA5
Text GLabel 4050 5000 2    50   Input ~ 0
PA6
Wire Wire Line
	4050 5000 3950 5000
$Comp
L Device:R_Small R?
U 1 1 60AC88F6
P 1250 4150
AR Path="/609F1585/60AC88F6" Ref="R?"  Part="1" 
AR Path="/60AC88F6" Ref="R17"  Part="1" 
F 0 "R17" H 1309 4196 50  0000 L CNN
F 1 "10 kOhm" H 1309 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1250 4150 50  0001 C CNN
F 3 "~" H 1250 4150 50  0001 C CNN
	1    1250 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4400 1250 4250
Connection ~ 1250 4400
Wire Wire Line
	1250 4400 1650 4400
Wire Wire Line
	1250 4050 1250 3950
Text GLabel 4050 5100 2    50   Input ~ 0
PA7
Wire Wire Line
	3950 5100 4050 5100
$Comp
L power:-BATT #PWR0121
U 1 1 60CA2639
P 1400 2250
AR Path="/60CA2639" Ref="#PWR0121"  Part="1" 
AR Path="/60952D5B/60CA2639" Ref="#PWR?"  Part="1" 
F 0 "#PWR0121" H 1400 2100 50  0001 C CNN
F 1 "-BATT" H 1415 2423 50  0000 C CNN
F 2 "" H 1400 2250 50  0001 C CNN
F 3 "" H 1400 2250 50  0001 C CNN
	1    1400 2250
	-1   0    0    1   
$EndComp
Wire Notes Line
	11500 4950 11500 3050
Text Notes 11650 3300 0    50   ~ 0
3V3 Buck
Text Notes 11650 5350 0    50   ~ 0
5V Boost
Wire Notes Line
	11500 7050 11500 5150
Wire Notes Line
	5750 3050 9250 3050
Wire Notes Line
	9250 4950 9250 3050
Wire Notes Line
	5750 7050 9250 7050
Wire Notes Line
	9250 5150 9250 7050
Wire Notes Line
	5750 5150 9250 5150
Wire Notes Line
	5750 5150 5750 7050
Wire Notes Line
	5750 4950 9250 4950
Wire Notes Line
	5750 4950 5750 3050
Wire Wire Line
	6600 6150 6600 6350
Wire Wire Line
	6650 6150 6600 6150
Wire Wire Line
	6500 6350 6500 6400
Connection ~ 6500 6350
Wire Wire Line
	6500 6350 6600 6350
Wire Wire Line
	6500 6300 6500 6350
Connection ~ 7450 6350
Wire Wire Line
	7450 6350 7500 6350
Wire Wire Line
	7450 6250 7450 6350
Wire Wire Line
	7500 6250 7450 6250
Wire Wire Line
	8300 6100 8300 6050
Wire Wire Line
	8300 6350 8300 6300
Connection ~ 8300 6350
Connection ~ 8200 6350
Wire Wire Line
	8200 6350 8300 6350
Wire Wire Line
	8200 6250 8150 6250
Wire Wire Line
	8200 6350 8200 6250
Wire Wire Line
	8150 6350 8200 6350
Wire Wire Line
	8300 6400 8300 6350
$Comp
L CUSTOM_PARTS:FS8205A U4
U 1 1 60CF54D6
P 8050 6450
AR Path="/60CF54D6" Ref="U4"  Part="1" 
AR Path="/60952D5B/60CF54D6" Ref="U?"  Part="1" 
F 0 "U4" H 8150 6700 50  0000 C CNN
F 1 "FS8205A" H 8400 6700 50  0000 C CNN
F 2 "Package_SO:TSSOP-8_4.4x3mm_P0.65mm" H 8050 6450 50  0001 C CNN
F 3 "" H 8050 6450 50  0001 C CNN
	1    8050 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	8200 6150 8150 6150
$Comp
L power:GNDD #PWR016
U 1 1 60CF54DD
P 8300 6400
AR Path="/60CF54DD" Ref="#PWR016"  Part="1" 
AR Path="/60952D5B/60CF54DD" Ref="#PWR?"  Part="1" 
F 0 "#PWR016" H 8300 6150 50  0001 C CNN
F 1 "GNDD" H 8304 6245 50  0000 C CNN
F 2 "" H 8300 6400 50  0001 C CNN
F 3 "" H 8300 6400 50  0001 C CNN
	1    8300 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5800 6500 5750
$Comp
L power:+BATT #PWR010
U 1 1 60CF54E4
P 6500 5750
AR Path="/60CF54E4" Ref="#PWR010"  Part="1" 
AR Path="/60952D5B/60CF54E4" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 6500 5600 50  0001 C CNN
F 1 "+BATT" H 6515 5923 50  0000 C CNN
F 2 "" H 6500 5750 50  0001 C CNN
F 3 "" H 6500 5750 50  0001 C CNN
	1    6500 5750
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR011
U 1 1 60CF54EA
P 6500 6400
AR Path="/60CF54EA" Ref="#PWR011"  Part="1" 
AR Path="/60952D5B/60CF54EA" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 6500 6250 50  0001 C CNN
F 1 "-BATT" H 6515 6573 50  0000 C CNN
F 2 "" H 6500 6400 50  0001 C CNN
F 3 "" H 6500 6400 50  0001 C CNN
	1    6500 6400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 6050 6500 6000
Connection ~ 6500 6050
Wire Wire Line
	6650 6050 6500 6050
Wire Wire Line
	6500 6100 6500 6050
$Comp
L Device:R_Small R4
U 1 1 60CF54F4
P 8300 6200
AR Path="/60CF54F4" Ref="R4"  Part="1" 
AR Path="/60952D5B/60CF54F4" Ref="R?"  Part="1" 
F 0 "R4" H 8241 6154 50  0000 R CNN
F 1 "1 kOhm" H 8241 6245 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8300 6200 50  0001 C CNN
F 3 "~" H 8300 6200 50  0001 C CNN
	1    8300 6200
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 60CF54FA
P 6500 5900
AR Path="/60CF54FA" Ref="R1"  Part="1" 
AR Path="/60952D5B/60CF54FA" Ref="R?"  Part="1" 
F 0 "R1" H 6442 5854 50  0000 R CNN
F 1 "330 Ohm" H 6442 5945 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6500 5900 50  0001 C CNN
F 3 "~" H 6500 5900 50  0001 C CNN
	1    6500 5900
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 60CF5500
P 6500 6200
AR Path="/60CF5500" Ref="C2"  Part="1" 
AR Path="/60952D5B/60CF5500" Ref="C?"  Part="1" 
F 0 "C2" H 6409 6154 50  0000 R CNN
F 1 "10 nF" H 6409 6245 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6500 6200 50  0001 C CNN
F 3 "~" H 6500 6200 50  0001 C CNN
	1    6500 6200
	1    0    0    1   
$EndComp
$Comp
L CUSTOM_PARTS:R5478 U2
U 1 1 60CF5506
P 7200 6150
AR Path="/60CF5506" Ref="U2"  Part="1" 
AR Path="/60952D5B/60CF5506" Ref="U?"  Part="1" 
F 0 "U2" H 7425 5685 50  0000 C CNN
F 1 "R5478" H 7425 5776 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 7300 6450 50  0001 C CNN
F 3 "" H 7200 6150 50  0001 C CNN
	1    7200 6150
	-1   0    0    1   
$EndComp
Text Notes 5900 5400 0    50   ~ 0
Battery Protection Circuit
Wire Wire Line
	8450 3950 8450 4050
Wire Wire Line
	8450 4350 8450 4250
Wire Wire Line
	8050 4350 8050 4300
Connection ~ 8050 4350
Wire Wire Line
	8050 4350 8450 4350
Wire Wire Line
	8400 3950 8450 3950
$Comp
L Device:R_Small R5
U 1 1 60CF5513
P 8450 4150
AR Path="/60CF5513" Ref="R5"  Part="1" 
AR Path="/60952D5B/60CF5513" Ref="R?"  Part="1" 
F 0 "R5" H 8550 4200 50  0000 L CNN
F 1 "1.25 kOhm" H 8509 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8450 4150 50  0001 C CNN
F 3 "~" H 8450 4150 50  0001 C CNN
	1    8450 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4400 8050 4350
Wire Wire Line
	8500 3800 8500 3700
Wire Wire Line
	8400 3800 8500 3800
$Comp
L power:+BATT #PWR017
U 1 1 60CF551C
P 8500 3700
AR Path="/60CF551C" Ref="#PWR017"  Part="1" 
AR Path="/60952D5B/60CF551C" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 8500 3550 50  0001 C CNN
F 1 "+BATT" H 8515 3873 50  0000 C CNN
F 2 "" H 8500 3700 50  0001 C CNN
F 3 "" H 8500 3700 50  0001 C CNN
	1    8500 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3950 7650 3950
Wire Wire Line
	7250 3950 7350 3950
$Comp
L Device:R_Small R3
U 1 1 60CF5524
P 7150 3950
AR Path="/60CF5524" Ref="R3"  Part="1" 
AR Path="/60952D5B/60CF5524" Ref="R?"  Part="1" 
F 0 "R3" V 7050 3950 50  0000 C CNN
F 1 "1 kOhm" V 6950 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7150 3950 50  0001 C CNN
F 3 "~" H 7150 3950 50  0001 C CNN
	1    7150 3950
	0    1    -1   0   
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 60CF552A
P 7450 3950
AR Path="/60CF552A" Ref="D1"  Part="1" 
AR Path="/60952D5B/60CF552A" Ref="D?"  Part="1" 
F 0 "D1" H 7450 4150 50  0000 R CNN
F 1 "LED_CHRG" H 7600 4050 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 7450 3950 50  0001 C CNN
F 3 "~" V 7450 3950 50  0001 C CNN
	1    7450 3950
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 60CF5530
P 6550 3950
AR Path="/60CF5530" Ref="C3"  Part="1" 
AR Path="/60952D5B/60CF5530" Ref="C?"  Part="1" 
F 0 "C3" H 6350 3900 50  0000 L CNN
F 1 "1 uF" H 6250 4000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6550 3950 50  0001 C CNN
F 3 "~" H 6550 3950 50  0001 C CNN
	1    6550 3950
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 60CF5536
P 6100 3750
AR Path="/60CF5536" Ref="#PWR08"  Part="1" 
AR Path="/60952D5B/60CF5536" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 6100 3600 50  0001 C CNN
F 1 "VCC" H 6117 3923 50  0000 C CNN
F 2 "" H 6100 3750 50  0001 C CNN
F 3 "" H 6100 3750 50  0001 C CNN
	1    6100 3750
	1    0    0    -1  
$EndComp
$Comp
L CUSTOM_PARTS:STC4054 U3
U 1 1 60CF553C
P 7750 3800
AR Path="/60CF553C" Ref="U3"  Part="1" 
AR Path="/60952D5B/60CF553C" Ref="U?"  Part="1" 
F 0 "U3" H 8025 4065 50  0000 C CNN
F 1 "STC4054" H 8025 3974 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5" H 7700 4500 50  0001 C CNN
F 3 "" H 7950 3950 50  0001 C CNN
	1    7750 3800
	1    0    0    -1  
$EndComp
Text Notes 5900 3250 0    50   ~ 0
CC/CV Charger
$Comp
L power:-BATT #PWR013
U 1 1 60CF5543
P 6600 9450
AR Path="/60CF5543" Ref="#PWR013"  Part="1" 
AR Path="/60952D5B/60CF5543" Ref="#PWR?"  Part="1" 
F 0 "#PWR013" H 6600 9300 50  0001 C CNN
F 1 "-BATT" H 6615 9623 50  0000 C CNN
F 2 "" H 6600 9450 50  0001 C CNN
F 3 "" H 6600 9450 50  0001 C CNN
	1    6600 9450
	-1   0    0    1   
$EndComp
Text Notes 5850 7450 0    50   ~ 0
Li-Ion Battery
$Comp
L power:+BATT #PWR012
U 1 1 60CF554A
P 6600 7800
AR Path="/60CF554A" Ref="#PWR012"  Part="1" 
AR Path="/60952D5B/60CF554A" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 6600 7650 50  0001 C CNN
F 1 "+BATT" H 6615 7973 50  0000 C CNN
F 2 "" H 6600 7800 50  0001 C CNN
F 3 "" H 6600 7800 50  0001 C CNN
	1    6600 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 60CF5550
P 6600 9250
AR Path="/60CF5550" Ref="BT1"  Part="1" 
AR Path="/60952D5B/60CF5550" Ref="BT?"  Part="1" 
F 0 "BT1" H 6200 9350 50  0000 L CNN
F 1 "INR18650-35E" H 5900 9250 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_1042_1x18650" V 6600 9310 50  0001 C CNN
F 3 "~" V 6600 9310 50  0001 C CNN
	1    6600 9250
	1    0    0    -1  
$EndComp
Text GLabel 6700 7900 2    50   Input ~ 0
Shunt-
Text GLabel 6700 8300 2    50   Input ~ 0
Shunt+
$Comp
L Device:C_Small C1
U 1 1 60CF5558
P 6100 3950
AR Path="/60CF5558" Ref="C1"  Part="1" 
AR Path="/60952D5B/60CF5558" Ref="C?"  Part="1" 
F 0 "C1" H 5900 3900 50  0000 L CNN
F 1 "100 nF" H 5750 4000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6100 3950 50  0001 C CNN
F 3 "~" H 6100 3950 50  0001 C CNN
	1    6100 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	7650 3800 7000 3800
Wire Wire Line
	6100 3800 6100 3750
Wire Wire Line
	6100 3850 6100 3800
Connection ~ 6100 3800
Wire Wire Line
	6550 3850 6550 3800
Connection ~ 6550 3800
Wire Wire Line
	6550 3800 6100 3800
Wire Wire Line
	6550 4050 6550 4100
Wire Wire Line
	6550 4100 6100 4100
Wire Wire Line
	6100 4100 6100 4150
Wire Wire Line
	6100 4100 6100 4050
Connection ~ 6100 4100
Wire Wire Line
	7050 3950 7000 3950
Wire Wire Line
	7000 3950 7000 3800
Connection ~ 7000 3800
Wire Wire Line
	7000 3800 6550 3800
Wire Wire Line
	6600 6350 7450 6350
Connection ~ 6600 6350
Wire Wire Line
	7300 6050 8300 6050
Wire Notes Line
	14600 4950 14600 3050
$Comp
L Device:R R?
U 1 1 60CF55A9
P 6600 8100
AR Path="/60952D5B/60CF55A9" Ref="R?"  Part="1" 
AR Path="/60CF55A9" Ref="R2"  Part="1" 
F 0 "R2" H 6513 8146 50  0000 R CNN
F 1 "0.1 Ohm" H 6513 8055 50  0000 R CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 6530 8100 50  0001 C CNN
F 3 "~" H 6600 8100 50  0001 C CNN
	1    6600 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 7800 6600 7900
Wire Wire Line
	6600 8250 6600 8300
Wire Wire Line
	6700 8300 6600 8300
Wire Wire Line
	6700 7900 6600 7900
Connection ~ 6600 7900
Wire Wire Line
	6600 7900 6600 7950
Wire Notes Line
	5750 7250 5750 10000
Wire Notes Line
	5750 10000 7400 10000
Wire Notes Line
	7400 7250 7400 10000
Wire Notes Line
	5750 7250 7400 7250
$Comp
L Switch:SW_SPDT SW?
U 1 1 60CF55D5
P 6600 8750
AR Path="/60952D5B/60CF55D5" Ref="SW?"  Part="1" 
AR Path="/60CF55D5" Ref="SW1"  Part="1" 
F 0 "SW1" V 6650 9150 50  0000 R CNN
F 1 "SW_SPDT" V 6550 9300 50  0000 R CNN
F 2 "CUSTOM_FOOTPRINTS:ALPS_SPEF210101" H 6600 8750 50  0001 C CNN
F 3 "~" H 6600 8750 50  0001 C CNN
	1    6600 8750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6700 8550 6700 8400
Wire Wire Line
	6700 8400 6600 8400
Wire Wire Line
	6600 8400 6600 8300
Connection ~ 6600 8300
NoConn ~ 6500 8550
Wire Wire Line
	7300 6150 7500 6150
Wire Wire Line
	8200 5950 8200 6150
Wire Wire Line
	7300 5950 8200 5950
$Comp
L power:-BATT #PWR015
U 1 1 60CF5635
P 8050 4400
AR Path="/60CF5635" Ref="#PWR015"  Part="1" 
AR Path="/60952D5B/60CF5635" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 8050 4250 50  0001 C CNN
F 1 "-BATT" H 8065 4573 50  0000 C CNN
F 2 "" H 8050 4400 50  0001 C CNN
F 3 "" H 8050 4400 50  0001 C CNN
	1    8050 4400
	-1   0    0    1   
$EndComp
$Comp
L power:-BATT #PWR09
U 1 1 60CF563B
P 6100 4150
AR Path="/60CF563B" Ref="#PWR09"  Part="1" 
AR Path="/60952D5B/60CF563B" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 6100 4000 50  0001 C CNN
F 1 "-BATT" H 6115 4323 50  0000 C CNN
F 2 "" H 6100 4150 50  0001 C CNN
F 3 "" H 6100 4150 50  0001 C CNN
	1    6100 4150
	-1   0    0    1   
$EndComp
$Comp
L CUSTOM_PARTS:XC9236Axx U6
U 1 1 60E78821
P 12650 3750
F 0 "U6" H 12900 4015 50  0000 C CNN
F 1 "XC9236Axx" H 12900 3924 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 12550 3950 50  0001 C CNN
F 3 "" H 12550 3950 50  0001 C CNN
	1    12650 3750
	1    0    0    -1  
$EndComp
$Comp
L CUSTOM_PARTS:ME2188Cxx U5
U 1 1 60E79620
P 12550 5800
F 0 "U5" H 12950 5965 50  0000 C CNN
F 1 "ME2188Cxx" H 12950 5874 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 12150 6100 50  0001 C CNN
F 3 "" H 12150 6100 50  0001 C CNN
	1    12550 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR025
U 1 1 60E79E71
P 13000 6450
AR Path="/60E79E71" Ref="#PWR025"  Part="1" 
AR Path="/60952D5B/60E79E71" Ref="#PWR?"  Part="1" 
F 0 "#PWR025" H 13000 6200 50  0001 C CNN
F 1 "GNDD" H 13004 6295 50  0000 C CNN
F 2 "" H 13000 6450 50  0001 C CNN
F 3 "" H 13000 6450 50  0001 C CNN
	1    13000 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR020
U 1 1 60E7A2E4
P 11850 5800
AR Path="/60E7A2E4" Ref="#PWR020"  Part="1" 
AR Path="/60952D5B/60E7A2E4" Ref="#PWR?"  Part="1" 
F 0 "#PWR020" H 11850 5650 50  0001 C CNN
F 1 "+BATT" H 11865 5973 50  0000 C CNN
F 2 "" H 11850 5800 50  0001 C CNN
F 3 "" H 11850 5800 50  0001 C CNN
	1    11850 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L1
U 1 1 60E7C4C0
P 12450 5900
F 0 "L1" V 12635 5900 50  0000 C CNN
F 1 "22 uH" V 12544 5900 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns-SRN6028" H 12450 5900 50  0001 C CNN
F 3 "~" H 12450 5900 50  0001 C CNN
	1    12450 5900
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 60E7CE1D
P 11850 6100
F 0 "C5" H 11650 6150 50  0000 L CNN
F 1 "10 uF" H 11550 6050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 11850 6100 50  0001 C CNN
F 3 "~" H 11850 6100 50  0001 C CNN
	1    11850 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR021
U 1 1 60E7D828
P 11850 6300
AR Path="/60E7D828" Ref="#PWR021"  Part="1" 
AR Path="/60952D5B/60E7D828" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 11850 6050 50  0001 C CNN
F 1 "GNDD" H 11854 6145 50  0000 C CNN
F 2 "" H 11850 6300 50  0001 C CNN
F 3 "" H 11850 6300 50  0001 C CNN
	1    11850 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	11850 6300 11850 6200
Wire Wire Line
	11850 6000 11850 5900
Connection ~ 11850 5900
Wire Wire Line
	11850 5900 11850 5800
Wire Wire Line
	12650 5900 12550 5900
Wire Wire Line
	13350 6000 13350 5900
Wire Wire Line
	13250 5900 13350 5900
Connection ~ 13350 5900
$Comp
L power:GNDD #PWR028
U 1 1 60EF3049
P 13350 6300
AR Path="/60EF3049" Ref="#PWR028"  Part="1" 
AR Path="/60952D5B/60EF3049" Ref="#PWR?"  Part="1" 
F 0 "#PWR028" H 13350 6050 50  0001 C CNN
F 1 "GNDD" H 13354 6145 50  0000 C CNN
F 2 "" H 13350 6300 50  0001 C CNN
F 3 "" H 13350 6300 50  0001 C CNN
	1    13350 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	13000 6450 13000 6350
Wire Wire Line
	13350 6300 13350 6200
$Comp
L power:GNDD #PWR024
U 1 1 60F1C7D3
P 12900 4400
AR Path="/60F1C7D3" Ref="#PWR024"  Part="1" 
AR Path="/60952D5B/60F1C7D3" Ref="#PWR?"  Part="1" 
F 0 "#PWR024" H 12900 4150 50  0001 C CNN
F 1 "GNDD" H 12904 4245 50  0000 C CNN
F 2 "" H 12900 4400 50  0001 C CNN
F 3 "" H 12900 4400 50  0001 C CNN
	1    12900 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	12900 4400 12900 4300
$Comp
L Device:L_Small L2
U 1 1 60F45DB4
P 13450 3950
F 0 "L2" V 13250 3950 50  0000 C CNN
F 1 "1.5 uH" V 13350 3950 50  0000 C CNN
F 2 "Inductor_SMD:L_Taiyo-Yuden_MD-4040" H 13450 3950 50  0001 C CNN
F 3 "~" H 13450 3950 50  0001 C CNN
	1    13450 3950
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C9
U 1 1 60F46334
P 13900 3900
F 0 "C9" H 13992 3946 50  0000 L CNN
F 1 "10 uF" H 13992 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 13900 3900 50  0001 C CNN
F 3 "~" H 13900 3900 50  0001 C CNN
	1    13900 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 60F46E67
P 12000 3900
F 0 "C4" H 11750 3950 50  0000 L CNN
F 1 "4.7 uF" H 11600 3850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 12000 3900 50  0001 C CNN
F 3 "~" H 12000 3900 50  0001 C CNN
	1    12000 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR018
U 1 1 60F47302
P 12000 3650
AR Path="/60F47302" Ref="#PWR018"  Part="1" 
AR Path="/60952D5B/60F47302" Ref="#PWR?"  Part="1" 
F 0 "#PWR018" H 12000 3500 50  0001 C CNN
F 1 "+BATT" H 12015 3823 50  0000 C CNN
F 2 "" H 12000 3650 50  0001 C CNN
F 3 "" H 12000 3650 50  0001 C CNN
	1    12000 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	12000 3750 12000 3650
Wire Wire Line
	12000 3800 12000 3750
Connection ~ 12000 3750
$Comp
L power:GNDD #PWR019
U 1 1 60F71B2A
P 12000 4100
AR Path="/60F71B2A" Ref="#PWR019"  Part="1" 
AR Path="/60952D5B/60F71B2A" Ref="#PWR?"  Part="1" 
F 0 "#PWR019" H 12000 3850 50  0001 C CNN
F 1 "GNDD" H 12004 3945 50  0000 C CNN
F 2 "" H 12000 4100 50  0001 C CNN
F 3 "" H 12000 4100 50  0001 C CNN
	1    12000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	12000 4100 12000 4000
Wire Wire Line
	13250 3950 13350 3950
Wire Wire Line
	13550 3950 13650 3950
Wire Wire Line
	13650 3950 13650 3750
Wire Wire Line
	13650 3750 13250 3750
$Comp
L power:GNDD #PWR032
U 1 1 60FF4FD4
P 13900 4100
AR Path="/60FF4FD4" Ref="#PWR032"  Part="1" 
AR Path="/60952D5B/60FF4FD4" Ref="#PWR?"  Part="1" 
F 0 "#PWR032" H 13900 3850 50  0001 C CNN
F 1 "GNDD" H 13904 3945 50  0000 C CNN
F 2 "" H 13900 4100 50  0001 C CNN
F 3 "" H 13900 4100 50  0001 C CNN
	1    13900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	13900 4100 13900 4000
Wire Notes Line
	11500 7050 14600 7050
Wire Notes Line
	14600 5150 14600 7050
Wire Notes Line
	14600 5150 11500 5150
Wire Notes Line
	11500 4950 14600 4950
Wire Notes Line
	14600 3050 11500 3050
$Comp
L CUSTOM_PARTS:LR9102G-xx U10
U 1 1 610DD8FC
P 12900 7950
F 0 "U10" H 13150 8215 50  0000 C CNN
F 1 "LR9102G-xx" H 13150 8124 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 12800 8150 50  0001 C CNN
F 3 "" H 12800 8150 50  0001 C CNN
	1    12900 7950
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR022
U 1 1 610DE2F9
P 11950 7900
AR Path="/610DE2F9" Ref="#PWR022"  Part="1" 
AR Path="/60952D5B/610DE2F9" Ref="#PWR?"  Part="1" 
F 0 "#PWR022" H 11950 7750 50  0001 C CNN
F 1 "+BATT" H 11965 8073 50  0000 C CNN
F 2 "" H 11950 7900 50  0001 C CNN
F 3 "" H 11950 7900 50  0001 C CNN
	1    11950 7900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR023
U 1 1 610DE59F
P 11950 8300
AR Path="/610DE59F" Ref="#PWR023"  Part="1" 
AR Path="/60952D5B/610DE59F" Ref="#PWR?"  Part="1" 
F 0 "#PWR023" H 11950 8050 50  0001 C CNN
F 1 "GNDD" H 11954 8145 50  0000 C CNN
F 2 "" H 11950 8300 50  0001 C CNN
F 3 "" H 11950 8300 50  0001 C CNN
	1    11950 8300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 610DEFB1
P 11950 8100
F 0 "C6" H 11700 8150 50  0000 L CNN
F 1 "1 uF" H 11550 8050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 11950 8100 50  0001 C CNN
F 3 "~" H 11950 8100 50  0001 C CNN
	1    11950 8100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 610DF973
P 13700 8150
F 0 "C8" H 13792 8196 50  0000 L CNN
F 1 "1 uF" H 13792 8105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 13700 8150 50  0001 C CNN
F 3 "~" H 13700 8150 50  0001 C CNN
	1    13700 8150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR026
U 1 1 610EB0C3
P 13150 8450
AR Path="/610EB0C3" Ref="#PWR026"  Part="1" 
AR Path="/60952D5B/610EB0C3" Ref="#PWR?"  Part="1" 
F 0 "#PWR026" H 13150 8200 50  0001 C CNN
F 1 "GNDD" H 13154 8295 50  0000 C CNN
F 2 "" H 13150 8450 50  0001 C CNN
F 3 "" H 13150 8450 50  0001 C CNN
	1    13150 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	11950 8000 11950 7950
Wire Wire Line
	11950 8300 11950 8200
Wire Wire Line
	13150 8450 13150 8350
Wire Wire Line
	13700 8050 13700 7950
Wire Wire Line
	13700 7950 13500 7950
$Comp
L power:GNDD #PWR030
U 1 1 61116A3C
P 13700 8350
AR Path="/61116A3C" Ref="#PWR030"  Part="1" 
AR Path="/60952D5B/61116A3C" Ref="#PWR?"  Part="1" 
F 0 "#PWR030" H 13700 8100 50  0001 C CNN
F 1 "GNDD" H 13704 8195 50  0000 C CNN
F 2 "" H 13700 8350 50  0001 C CNN
F 3 "" H 13700 8350 50  0001 C CNN
	1    13700 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	13700 8350 13700 8250
Connection ~ 11950 7950
Wire Wire Line
	11950 7950 11950 7900
Connection ~ 13700 7950
Wire Notes Line
	11500 7300 14600 7300
Wire Notes Line
	14600 7300 14600 9100
Wire Notes Line
	14600 9100 11500 9100
Wire Notes Line
	11500 9100 11500 7300
Text Notes 11650 7550 0    50   ~ 0
3V3 LDO for onboard
$Comp
L power:+3.3VA #PWR04
U 1 1 6119432F
P 1300 7700
F 0 "#PWR04" H 1300 7550 50  0001 C CNN
F 1 "+3.3VA" H 1315 7873 50  0000 C CNN
F 2 "" H 1300 7700 50  0001 C CNN
F 3 "" H 1300 7700 50  0001 C CNN
	1    1300 7700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR01
U 1 1 611A01CD
P 1250 3950
F 0 "#PWR01" H 1250 3800 50  0001 C CNN
F 1 "+3.3VA" H 1265 4123 50  0000 C CNN
F 2 "" H 1250 3950 50  0001 C CNN
F 3 "" H 1250 3950 50  0001 C CNN
	1    1250 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR05
U 1 1 611D80B4
P 1950 3450
F 0 "#PWR05" H 1950 3300 50  0001 C CNN
F 1 "+3.3VA" H 1965 3623 50  0000 C CNN
F 2 "" H 1950 3450 50  0001 C CNN
F 3 "" H 1950 3450 50  0001 C CNN
	1    1950 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR07
U 1 1 611D83AE
P 4300 3500
F 0 "#PWR07" H 4300 3350 50  0001 C CNN
F 1 "+3.3VA" H 4315 3673 50  0000 C CNN
F 2 "" H 4300 3500 50  0001 C CNN
F 3 "" H 4300 3500 50  0001 C CNN
	1    4300 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR06
U 1 1 611D8855
P 3150 1300
F 0 "#PWR06" H 3150 1150 50  0001 C CNN
F 1 "+3.3VA" H 3165 1473 50  0000 C CNN
F 2 "" H 3150 1300 50  0001 C CNN
F 3 "" H 3150 1300 50  0001 C CNN
	1    3150 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR014
U 1 1 611D8C4A
P 7650 1400
F 0 "#PWR014" H 7650 1250 50  0001 C CNN
F 1 "+3.3VA" H 7665 1573 50  0000 C CNN
F 2 "" H 7650 1400 50  0001 C CNN
F 3 "" H 7650 1400 50  0001 C CNN
	1    7650 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C7
U 1 1 60C5B788
P 13350 6100
F 0 "C7" H 13438 6146 50  0000 L CNN
F 1 "100 uF" H 13438 6055 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.4" H 13350 6100 50  0001 C CNN
F 3 "~" H 13350 6100 50  0001 C CNN
	1    13350 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	13650 3750 13900 3750
Connection ~ 13650 3750
Connection ~ 13900 3750
Wire Wire Line
	13900 3750 13900 3800
$Comp
L Connector:USB_A J3
U 1 1 60D1113B
P 9900 1600
F 0 "J3" H 9957 2067 50  0000 C CNN
F 1 "USB_A" H 9957 1976 50  0000 C CNN
F 2 "Connector_USB:USB_A_CNCTech_1001-011-01101_Horizontal" H 10050 1550 50  0001 C CNN
F 3 " ~" H 10050 1550 50  0001 C CNN
	1    9900 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0101
U 1 1 60D119C8
P 9900 2100
AR Path="/60D119C8" Ref="#PWR0101"  Part="1" 
AR Path="/60952D5B/60D119C8" Ref="#PWR?"  Part="1" 
F 0 "#PWR0101" H 9900 1850 50  0001 C CNN
F 1 "GNDD" H 9904 1945 50  0000 C CNN
F 2 "" H 9900 2100 50  0001 C CNN
F 3 "" H 9900 2100 50  0001 C CNN
	1    9900 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2100 9900 2000
NoConn ~ 9800 2000
NoConn ~ 10200 1700
NoConn ~ 10200 1600
$Comp
L power:+5V #PWR0102
U 1 1 60D43744
P 10300 1300
AR Path="/60D43744" Ref="#PWR0102"  Part="1" 
AR Path="/60952D5B/60D43744" Ref="#PWR?"  Part="1" 
F 0 "#PWR0102" H 10300 1150 50  0001 C CNN
F 1 "+5V" H 10315 1473 50  0000 C CNN
F 2 "" H 10300 1300 50  0001 C CNN
F 3 "" H 10300 1300 50  0001 C CNN
	1    10300 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 1400 10300 1400
Wire Wire Line
	10300 1400 10300 1300
Wire Notes Line
	9200 700  11200 700 
Wire Notes Line
	11200 700  11200 2600
Wire Notes Line
	11200 2600 9200 2600
Wire Notes Line
	9200 2600 9200 700 
Text Notes 9350 900  0    50   ~ 0
5V USB Out
$Comp
L Switch:SW_SPDT SW4
U 1 1 60D7A956
P 9550 8700
F 0 "SW4" H 9550 8375 50  0000 C CNN
F 1 "SW_SPDT" H 9550 8466 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_PCM12" H 9550 8700 50  0001 C CNN
F 3 "~" H 9550 8700 50  0001 C CNN
	1    9550 8700
	-1   0    0    1   
$EndComp
Text GLabel 12450 3950 0    50   Input ~ 0
BuckCE
Wire Wire Line
	12000 3750 12550 3750
Wire Wire Line
	12450 3950 12550 3950
Text GLabel 12500 6050 0    50   Input ~ 0
BoostCE
Wire Wire Line
	11850 5900 12350 5900
Wire Wire Line
	12500 6050 12650 6050
$Comp
L Switch:SW_SPDT SW3
U 1 1 60DE3F94
P 9550 7900
F 0 "SW3" H 9550 7575 50  0000 C CNN
F 1 "SW_SPDT" H 9550 7666 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_PCM12" H 9550 7900 50  0001 C CNN
F 3 "~" H 9550 7900 50  0001 C CNN
	1    9550 7900
	-1   0    0    1   
$EndComp
Wire Wire Line
	11950 7950 12800 7950
Text GLabel 12650 8100 0    50   Input ~ 0
LDOCE
Wire Wire Line
	12650 8100 12800 8100
$Comp
L Switch:SW_SPDT SW5
U 1 1 60E190CF
P 9550 9450
F 0 "SW5" H 9550 9125 50  0000 C CNN
F 1 "SW_SPDT" H 9550 9216 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_PCM12" H 9550 9450 50  0001 C CNN
F 3 "~" H 9550 9450 50  0001 C CNN
	1    9550 9450
	-1   0    0    1   
$EndComp
Text GLabel 6850 1750 2    50   Input ~ 0
PA9
Text GLabel 6050 1500 0    50   Input ~ 0
PA4
Text GLabel 6850 1500 2    50   Input ~ 0
PA5
Text GLabel 6050 1750 0    50   Input ~ 0
PA6
Text GLabel 8350 8000 0    50   Input ~ 0
PA0
Text GLabel 8350 8800 0    50   Input ~ 0
PA1
Text GLabel 9900 7900 2    50   Input ~ 0
BuckCE
Text GLabel 9900 8700 2    50   Input ~ 0
BoostCE
Text GLabel 9900 9450 2    50   Input ~ 0
LDOCE
Wire Wire Line
	9750 9450 9900 9450
Wire Wire Line
	9900 8700 9750 8700
Wire Wire Line
	9900 7900 9750 7900
$Comp
L power:+BATT #PWR0103
U 1 1 60F18D84
P 9150 7750
AR Path="/60F18D84" Ref="#PWR0103"  Part="1" 
AR Path="/60952D5B/60F18D84" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 9150 7600 50  0001 C CNN
F 1 "+BATT" H 9165 7923 50  0000 C CNN
F 2 "" H 9150 7750 50  0001 C CNN
F 3 "" H 9150 7750 50  0001 C CNN
	1    9150 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 7800 9150 7800
Wire Wire Line
	9150 7800 9150 7750
$Comp
L power:+BATT #PWR0108
U 1 1 60F4F5BA
P 9150 8550
AR Path="/60F4F5BA" Ref="#PWR0108"  Part="1" 
AR Path="/60952D5B/60F4F5BA" Ref="#PWR?"  Part="1" 
F 0 "#PWR0108" H 9150 8400 50  0001 C CNN
F 1 "+BATT" H 9165 8723 50  0000 C CNN
F 2 "" H 9150 8550 50  0001 C CNN
F 3 "" H 9150 8550 50  0001 C CNN
	1    9150 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 8600 9150 8600
Wire Wire Line
	9150 8600 9150 8550
$Comp
L power:+BATT #PWR0115
U 1 1 60F5D0E9
P 9150 9300
AR Path="/60F5D0E9" Ref="#PWR0115"  Part="1" 
AR Path="/60952D5B/60F5D0E9" Ref="#PWR?"  Part="1" 
F 0 "#PWR0115" H 9150 9150 50  0001 C CNN
F 1 "+BATT" H 9165 9473 50  0000 C CNN
F 2 "" H 9150 9300 50  0001 C CNN
F 3 "" H 9150 9300 50  0001 C CNN
	1    9150 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 9350 9150 9350
Wire Wire Line
	9150 9350 9150 9300
$Comp
L power:GNDD #PWR0116
U 1 1 60F6B587
P 8550 9150
AR Path="/60F6B587" Ref="#PWR0116"  Part="1" 
AR Path="/60952D5B/60F6B587" Ref="#PWR?"  Part="1" 
F 0 "#PWR0116" H 8550 8900 50  0001 C CNN
F 1 "GNDD" H 8554 8995 50  0000 C CNN
F 2 "" H 8550 9150 50  0001 C CNN
F 3 "" H 8550 9150 50  0001 C CNN
	1    8550 9150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60F6BA86
P 8550 8950
AR Path="/609F1585/60F6BA86" Ref="R?"  Part="1" 
AR Path="/60F6BA86" Ref="R7"  Part="1" 
F 0 "R7" H 8609 8996 50  0000 L CNN
F 1 "10 kOhm" H 8609 8905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8550 8950 50  0001 C CNN
F 3 "~" H 8550 8950 50  0001 C CNN
	1    8550 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 9150 8550 9050
$Comp
L power:GNDD #PWR0119
U 1 1 60F89502
P 9150 9600
AR Path="/60F89502" Ref="#PWR0119"  Part="1" 
AR Path="/60952D5B/60F89502" Ref="#PWR?"  Part="1" 
F 0 "#PWR0119" H 9150 9350 50  0001 C CNN
F 1 "GNDD" H 9154 9445 50  0000 C CNN
F 2 "" H 9150 9600 50  0001 C CNN
F 3 "" H 9150 9600 50  0001 C CNN
	1    9150 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 9550 9150 9550
Wire Wire Line
	9150 9550 9150 9600
$Comp
L power:GNDD #PWR0122
U 1 1 60FA7CBC
P 8550 8350
AR Path="/60FA7CBC" Ref="#PWR0122"  Part="1" 
AR Path="/60952D5B/60FA7CBC" Ref="#PWR?"  Part="1" 
F 0 "#PWR0122" H 8550 8100 50  0001 C CNN
F 1 "GNDD" H 8554 8195 50  0000 C CNN
F 2 "" H 8550 8350 50  0001 C CNN
F 3 "" H 8550 8350 50  0001 C CNN
	1    8550 8350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60FA7CC2
P 8550 8150
AR Path="/609F1585/60FA7CC2" Ref="R?"  Part="1" 
AR Path="/60FA7CC2" Ref="R6"  Part="1" 
F 0 "R6" H 8609 8196 50  0000 L CNN
F 1 "10 kOhm" H 8609 8105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8550 8150 50  0001 C CNN
F 3 "~" H 8550 8150 50  0001 C CNN
	1    8550 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 8350 8550 8250
Wire Wire Line
	9350 8800 8550 8800
Wire Wire Line
	8550 8800 8550 8850
Wire Wire Line
	9350 8000 8550 8000
Wire Wire Line
	8550 8000 8550 8050
Wire Wire Line
	8550 8800 8350 8800
Connection ~ 8550 8800
Wire Wire Line
	8550 8000 8350 8000
Connection ~ 8550 8000
$Comp
L power:+5V #PWR0123
U 1 1 61021F4B
P 2600 10050
AR Path="/61021F4B" Ref="#PWR0123"  Part="1" 
AR Path="/60952D5B/61021F4B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0123" H 2600 9900 50  0001 C CNN
F 1 "+5V" H 2615 10223 50  0000 C CNN
F 2 "" H 2600 10050 50  0001 C CNN
F 3 "" H 2600 10050 50  0001 C CNN
	1    2600 10050
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D2
U 1 1 61023872
P 2600 10450
F 0 "D2" H 2944 10496 50  0000 L CNN
F 1 "WS2812B" H 2944 10405 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 2650 10150 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 2700 10075 50  0001 L TNN
	1    2600 10450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 10150 2600 10050
$Comp
L power:GNDD #PWR0124
U 1 1 610617F6
P 2600 10850
AR Path="/610617F6" Ref="#PWR0124"  Part="1" 
AR Path="/60952D5B/610617F6" Ref="#PWR?"  Part="1" 
F 0 "#PWR0124" H 2600 10600 50  0001 C CNN
F 1 "GNDD" H 2604 10695 50  0000 C CNN
F 2 "" H 2600 10850 50  0001 C CNN
F 3 "" H 2600 10850 50  0001 C CNN
	1    2600 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 10850 2600 10750
Text GLabel 2200 10450 0    50   Input ~ 0
PA7
Wire Wire Line
	2200 10450 2300 10450
Wire Notes Line
	7650 7250 10650 7250
Wire Notes Line
	10650 7250 10650 10000
Wire Notes Line
	10650 10000 7650 10000
Wire Notes Line
	7650 10000 7650 7250
Text Notes 7800 7500 0    50   ~ 0
Regulator switches
Text GLabel 6550 2000 2    50   Input ~ 0
PA10
Text GLabel 4150 10550 0    50   Input ~ 0
PB1
NoConn ~ 4150 10550
NoConn ~ 2900 10450
Wire Wire Line
	13900 3700 13900 3750
$Comp
L power:+3V3 #PWR031
U 1 1 60F8808E
P 13900 3700
AR Path="/60F8808E" Ref="#PWR031"  Part="1" 
AR Path="/60952D5B/60F8808E" Ref="#PWR?"  Part="1" 
F 0 "#PWR031" H 13900 3550 50  0001 C CNN
F 1 "+3V3" H 13915 3873 50  0000 C CNN
F 2 "" H 13900 3700 50  0001 C CNN
F 3 "" H 13900 3700 50  0001 C CNN
	1    13900 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	13350 5900 13350 5800
$Comp
L power:+5V #PWR027
U 1 1 60E79ACF
P 13350 5800
AR Path="/60E79ACF" Ref="#PWR027"  Part="1" 
AR Path="/60952D5B/60E79ACF" Ref="#PWR?"  Part="1" 
F 0 "#PWR027" H 13350 5650 50  0001 C CNN
F 1 "+5V" H 13365 5973 50  0000 C CNN
F 2 "" H 13350 5800 50  0001 C CNN
F 3 "" H 13350 5800 50  0001 C CNN
	1    13350 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0110
U 1 1 61291B27
P 2150 4850
F 0 "#PWR0110" H 2150 4700 50  0001 C CNN
F 1 "+3.3VA" H 2165 5023 50  0000 C CNN
F 2 "" H 2150 4850 50  0001 C CNN
F 3 "" H 2150 4850 50  0001 C CNN
	1    2150 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	13700 7950 13700 7850
$Comp
L power:+3.3VA #PWR029
U 1 1 6112D4E0
P 13700 7850
F 0 "#PWR029" H 13700 7700 50  0001 C CNN
F 1 "+3.3VA" H 13715 8023 50  0000 C CNN
F 2 "" H 13700 7850 50  0001 C CNN
F 3 "" H 13700 7850 50  0001 C CNN
	1    13700 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 9350 6600 9450
Wire Wire Line
	6600 8950 6600 9050
$EndSCHEMATC
