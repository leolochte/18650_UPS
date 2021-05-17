EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
$Comp
L Mechanical:MountingHole H1
U 1 1 60BDA926
P 5400 6600
F 0 "H1" H 5500 6646 50  0000 L CNN
F 1 "MountingHole" H 5500 6555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5400 6600 50  0001 C CNN
F 3 "~" H 5400 6600 50  0001 C CNN
	1    5400 6600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60BDAC6E
P 5400 6850
F 0 "H2" H 5500 6896 50  0000 L CNN
F 1 "MountingHole" H 5500 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5400 6850 50  0001 C CNN
F 3 "~" H 5400 6850 50  0001 C CNN
	1    5400 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 60BDC958
P 5400 7200
F 0 "H3" H 5500 7246 50  0000 L CNN
F 1 "MountingHole" H 5500 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5400 7200 50  0001 C CNN
F 3 "~" H 5400 7200 50  0001 C CNN
	1    5400 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 60BDC95E
P 5400 7450
F 0 "H4" H 5500 7496 50  0000 L CNN
F 1 "MountingHole" H 5500 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5400 7450 50  0001 C CNN
F 3 "~" H 5400 7450 50  0001 C CNN
	1    5400 7450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 609FA77F
P 3150 1300
F 0 "#PWR0101" H 3150 1150 50  0001 C CNN
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
Wire Notes Line
	8250 6350 8250 4450
Wire Notes Line
	8250 4450 10800 4450
Wire Notes Line
	10800 4450 10800 6350
Wire Notes Line
	10800 6350 8250 6350
Text Notes 8350 4650 0    50   ~ 0
External Communication
$Comp
L power:+5V #PWR?
U 1 1 609CA046
P 8800 5550
AR Path="/60952D5B/609CA046" Ref="#PWR?"  Part="1" 
AR Path="/609E103F/609CA046" Ref="#PWR?"  Part="1" 
AR Path="/609CA046" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 8800 5400 50  0001 C CNN
F 1 "+5V" H 8815 5723 50  0000 C CNN
F 2 "" H 8800 5550 50  0001 C CNN
F 3 "" H 8800 5550 50  0001 C CNN
	1    8800 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 609CA03A
P 9100 5350
AR Path="/60952D5B/609CA03A" Ref="#PWR?"  Part="1" 
AR Path="/609E103F/609CA03A" Ref="#PWR?"  Part="1" 
AR Path="/609CA03A" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 9100 5200 50  0001 C CNN
F 1 "+3V3" H 9115 5523 50  0000 C CNN
F 2 "" H 9100 5350 50  0001 C CNN
F 3 "" H 9100 5350 50  0001 C CNN
	1    9100 5350
	1    0    0    -1  
$EndComp
Text Notes 900  5050 0    50   ~ 0
Current Sensor
Wire Notes Line
	700  4800 4950 4800
Wire Notes Line
	700  7500 700  4800
Wire Notes Line
	4950 7500 700  7500
Wire Notes Line
	4950 7500 4950 4800
$Comp
L power:GNDD #PWR?
U 1 1 609F2F31
P 3300 6700
AR Path="/609F1585/609F2F31" Ref="#PWR?"  Part="1" 
AR Path="/609F2F31" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 3300 6450 50  0001 C CNN
F 1 "GNDD" H 3304 6545 50  0000 C CNN
F 2 "" H 3300 6700 50  0001 C CNN
F 3 "" H 3300 6700 50  0001 C CNN
	1    3300 6700
	1    0    0    -1  
$EndComp
Connection ~ 1300 5900
Wire Wire Line
	1300 5950 1300 5900
$Comp
L power:GNDD #PWR?
U 1 1 609F2F39
P 1300 5950
AR Path="/609F1585/609F2F39" Ref="#PWR?"  Part="1" 
AR Path="/609F2F39" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 1300 5700 50  0001 C CNN
F 1 "GNDD" H 1304 5795 50  0000 C CNN
F 2 "" H 1300 5950 50  0001 C CNN
F 3 "" H 1300 5950 50  0001 C CNN
	1    1300 5950
	1    0    0    -1  
$EndComp
Connection ~ 1800 5600
Wire Wire Line
	2600 5600 2600 5900
Wire Wire Line
	1800 5600 2600 5600
Wire Wire Line
	1800 5900 1800 5850
Wire Wire Line
	1300 5900 1800 5900
Wire Wire Line
	1300 5850 1300 5900
Wire Wire Line
	1300 5600 1300 5550
Connection ~ 1300 5600
Wire Wire Line
	1800 5600 1800 5650
Wire Wire Line
	1300 5600 1800 5600
Wire Wire Line
	1300 5650 1300 5600
$Comp
L Device:C_Small C?
U 1 1 609F2F4A
P 1300 5750
AR Path="/609F1585/609F2F4A" Ref="C?"  Part="1" 
AR Path="/609F2F4A" Ref="C12"  Part="1" 
F 0 "C12" H 1392 5796 50  0000 L CNN
F 1 "10 uF" H 1392 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1300 5750 50  0001 C CNN
F 3 "~" H 1300 5750 50  0001 C CNN
	1    1300 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 609F2F50
P 1800 5750
AR Path="/609F1585/609F2F50" Ref="C?"  Part="1" 
AR Path="/609F2F50" Ref="C13"  Part="1" 
F 0 "C13" H 1892 5796 50  0000 L CNN
F 1 "0.1 uF" H 1892 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1800 5750 50  0001 C CNN
F 3 "~" H 1800 5750 50  0001 C CNN
	1    1800 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 609F2F56
P 1300 5550
AR Path="/609F1585/609F2F56" Ref="#PWR?"  Part="1" 
AR Path="/609F2F56" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 1300 5400 50  0001 C CNN
F 1 "+3V3" H 1315 5723 50  0000 C CNN
F 2 "" H 1300 5550 50  0001 C CNN
F 3 "" H 1300 5550 50  0001 C CNN
	1    1300 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6400 2100 6400
Wire Wire Line
	2100 6200 2200 6200
Text GLabel 2100 6200 0    50   Input ~ 0
Shunt+
Text GLabel 2100 6400 0    50   Input ~ 0
Shunt-
Wire Wire Line
	2600 6800 2600 6700
$Comp
L power:GNDD #PWR?
U 1 1 609F2F61
P 2600 6800
AR Path="/609F1585/609F2F61" Ref="#PWR?"  Part="1" 
AR Path="/609F2F61" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 2600 6550 50  0001 C CNN
F 1 "GNDD" H 2604 6645 50  0000 C CNN
F 2 "" H 2600 6800 50  0001 C CNN
F 3 "" H 2600 6800 50  0001 C CNN
	1    2600 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6100 3100 6100
Wire Wire Line
	3100 6200 3000 6200
Text GLabel 3100 6200 2    50   Input ~ 0
I2C1_SCL
Text GLabel 3100 6100 2    50   Input ~ 0
I2C1_SDA
Wire Wire Line
	8550 2600 8100 2600
Wire Wire Line
	8550 2650 8550 2600
Wire Wire Line
	8550 3000 8900 3000
Connection ~ 8550 3000
Wire Wire Line
	8050 3000 8550 3000
Wire Wire Line
	8550 2850 8550 3000
Wire Wire Line
	8100 2650 8100 2600
Wire Wire Line
	8100 2900 8900 2900
Connection ~ 8100 2900
Wire Wire Line
	8100 2850 8100 2900
Wire Wire Line
	8050 2900 8100 2900
$Comp
L Device:R_Small R?
U 1 1 609F2F77
P 8100 2750
AR Path="/609F1585/609F2F77" Ref="R?"  Part="1" 
AR Path="/609F2F77" Ref="R12"  Part="1" 
F 0 "R12" H 8159 2796 50  0000 L CNN
F 1 "10 kOhm" H 8159 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8100 2750 50  0001 C CNN
F 3 "~" H 8100 2750 50  0001 C CNN
	1    8100 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 609F2F7D
P 8550 2750
AR Path="/609F1585/609F2F7D" Ref="R?"  Part="1" 
AR Path="/609F2F7D" Ref="R13"  Part="1" 
F 0 "R13" H 8609 2796 50  0000 L CNN
F 1 "10 kOhm" H 8609 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8550 2750 50  0001 C CNN
F 3 "~" H 8550 2750 50  0001 C CNN
	1    8550 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 609F2F83
P 8100 2550
AR Path="/609F1585/609F2F83" Ref="#PWR?"  Part="1" 
AR Path="/609F2F83" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 8100 2400 50  0001 C CNN
F 1 "+3V3" H 8115 2723 50  0000 C CNN
F 2 "" H 8100 2550 50  0001 C CNN
F 3 "" H 8100 2550 50  0001 C CNN
	1    8100 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2300 8900 2300
Wire Notes Line
	6650 700  10900 700 
$Comp
L Analog_ADC:INA219AxD U7
U 1 1 609F2F8B
P 2600 6300
AR Path="/609F2F8B" Ref="U7"  Part="1" 
AR Path="/609F1585/609F2F8B" Ref="U?"  Part="1" 
F 0 "U7" H 2350 6650 50  0000 C CNN
F 1 "INA219AxD" H 2900 6650 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3400 5950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 2950 6200 50  0001 C CNN
	1    2600 6300
	1    0    0    -1  
$EndComp
Text Notes 6800 900  0    50   ~ 0
MCU
$Comp
L MCU_ST_STM32F0:STM32F030F4Px U9
U 1 1 609F2F92
P 9400 2600
AR Path="/609F2F92" Ref="U9"  Part="1" 
AR Path="/609F1585/609F2F92" Ref="U?"  Part="1" 
F 0 "U9" H 9700 3250 50  0000 C CNN
F 1 "STM32F030F4Px" H 8950 3250 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 9000 1900 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00088500.pdf" H 9400 2600 50  0001 C CNN
	1    9400 2600
	1    0    0    -1  
$EndComp
Text GLabel 8050 3000 0    50   Input ~ 0
I2C1_SCL
Text GLabel 8050 2900 0    50   Input ~ 0
I2C1_SDA
$Comp
L power:GNDD #PWR0111
U 1 1 609F2F9A
P 9400 3500
AR Path="/609F2F9A" Ref="#PWR0111"  Part="1" 
AR Path="/609F1585/609F2F9A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0111" H 9400 3250 50  0001 C CNN
F 1 "GNDD" H 9404 3345 50  0000 C CNN
F 2 "" H 9400 3500 50  0001 C CNN
F 3 "" H 9400 3500 50  0001 C CNN
	1    9400 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C19
U 1 1 609F2FA0
P 10250 1500
AR Path="/609F2FA0" Ref="C19"  Part="1" 
AR Path="/609F1585/609F2FA0" Ref="C?"  Part="1" 
F 0 "C19" H 10342 1546 50  0000 L CNN
F 1 "1 uF" H 10342 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10250 1500 50  0001 C CNN
F 3 "~" H 10250 1500 50  0001 C CNN
	1    10250 1500
	1    0    0    -1  
$EndComp
Connection ~ 8350 1650
Wire Wire Line
	8800 1650 8800 1600
Wire Wire Line
	8350 1650 8800 1650
Wire Wire Line
	7900 1650 7900 1600
Connection ~ 7900 1650
Wire Wire Line
	8350 1650 8350 1600
Wire Wire Line
	7900 1650 8350 1650
Wire Wire Line
	7900 1700 7900 1650
$Comp
L power:GNDD #PWR0112
U 1 1 609F2FAE
P 7900 1700
AR Path="/609F2FAE" Ref="#PWR0112"  Part="1" 
AR Path="/609F1585/609F2FAE" Ref="#PWR?"  Part="1" 
F 0 "#PWR0112" H 7900 1450 50  0001 C CNN
F 1 "GNDD" H 7904 1545 50  0000 C CNN
F 2 "" H 7900 1700 50  0001 C CNN
F 3 "" H 7900 1700 50  0001 C CNN
	1    7900 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 609F2FB4
P 8350 1500
AR Path="/609F2FB4" Ref="C16"  Part="1" 
AR Path="/609F1585/609F2FB4" Ref="C?"  Part="1" 
F 0 "C16" H 8258 1454 50  0000 R CNN
F 1 "200 nF" H 8258 1545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8350 1500 50  0001 C CNN
F 3 "~" H 8350 1500 50  0001 C CNN
	1    8350 1500
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C17
U 1 1 609F2FBA
P 8800 1500
AR Path="/609F2FBA" Ref="C17"  Part="1" 
AR Path="/609F1585/609F2FBA" Ref="C?"  Part="1" 
F 0 "C17" H 8709 1454 50  0000 R CNN
F 1 "4.7 uF" H 8709 1545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8800 1500 50  0001 C CNN
F 3 "~" H 8800 1500 50  0001 C CNN
	1    8800 1500
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C15
U 1 1 609F2FC0
P 7900 1500
AR Path="/609F2FC0" Ref="C15"  Part="1" 
AR Path="/609F1585/609F2FC0" Ref="C?"  Part="1" 
F 0 "C15" H 7809 1454 50  0000 R CNN
F 1 "200 nF" H 7809 1545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7900 1500 50  0001 C CNN
F 3 "~" H 7900 1500 50  0001 C CNN
	1    7900 1500
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C18
U 1 1 609F2FC6
P 9800 1500
AR Path="/609F2FC6" Ref="C18"  Part="1" 
AR Path="/609F1585/609F2FC6" Ref="C?"  Part="1" 
F 0 "C18" H 9892 1546 50  0000 L CNN
F 1 "10 nF" H 9892 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9800 1500 50  0001 C CNN
F 3 "~" H 9800 1500 50  0001 C CNN
	1    9800 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0113
U 1 1 609F2FCC
P 10250 1750
AR Path="/609F2FCC" Ref="#PWR0113"  Part="1" 
AR Path="/609F1585/609F2FCC" Ref="#PWR?"  Part="1" 
F 0 "#PWR0113" H 10250 1500 50  0001 C CNN
F 1 "GNDD" H 10254 1595 50  0000 C CNN
F 2 "" H 10250 1750 50  0001 C CNN
F 3 "" H 10250 1750 50  0001 C CNN
	1    10250 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1600 9800 1650
Wire Wire Line
	9800 1650 10250 1650
Wire Wire Line
	10250 1650 10250 1600
Wire Wire Line
	10250 1750 10250 1650
Connection ~ 10250 1650
Wire Wire Line
	7900 1400 7900 1300
Wire Wire Line
	8350 1300 8350 1400
Wire Wire Line
	8800 1300 8800 1400
Wire Wire Line
	7900 1300 8350 1300
Wire Wire Line
	8350 1300 8800 1300
Connection ~ 8350 1300
Wire Wire Line
	10250 1400 10250 1300
Wire Wire Line
	10250 1300 9800 1300
Wire Wire Line
	9800 1300 9800 1400
Wire Wire Line
	9800 1300 9500 1300
Connection ~ 9800 1300
Connection ~ 8800 1300
Wire Wire Line
	9400 3500 9400 3400
Text GLabel 10000 3100 2    50   Input ~ 0
SWDIO
Text GLabel 10000 3200 2    50   Input ~ 0
SWCLK
Wire Wire Line
	10000 3200 9900 3200
Wire Wire Line
	10000 3100 9900 3100
Wire Wire Line
	7950 2300 7950 2650
Text GLabel 10000 2400 2    50   Input ~ 0
USART1_RX
Text GLabel 10000 2300 2    50   Input ~ 0
USART1_TX
Wire Wire Line
	10000 2300 9900 2300
Wire Wire Line
	9900 2400 10000 2400
Wire Wire Line
	8800 1300 9400 1300
Wire Wire Line
	9500 1300 9500 1900
Wire Wire Line
	9400 1300 9400 1900
Connection ~ 7600 2650
Wire Wire Line
	7950 2650 7600 2650
Wire Wire Line
	7200 2700 7200 2650
$Comp
L power:GNDD #PWR0114
U 1 1 609F2FF3
P 7200 2700
AR Path="/609F2FF3" Ref="#PWR0114"  Part="1" 
AR Path="/609F1585/609F2FF3" Ref="#PWR?"  Part="1" 
F 0 "#PWR0114" H 7200 2450 50  0001 C CNN
F 1 "GNDD" H 7204 2545 50  0000 C CNN
F 2 "" H 7200 2700 50  0001 C CNN
F 3 "" H 7200 2700 50  0001 C CNN
	1    7200 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2650 7200 2650
Wire Wire Line
	7600 2500 7600 2650
Connection ~ 7600 2100
Wire Wire Line
	7600 2100 7600 2300
$Comp
L Device:C_Small C14
U 1 1 609F2FFD
P 7600 2400
AR Path="/609F2FFD" Ref="C14"  Part="1" 
AR Path="/609F1585/609F2FFD" Ref="C?"  Part="1" 
F 0 "C14" H 7692 2446 50  0000 L CNN
F 1 "0.1 uF" H 7692 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7600 2400 50  0001 C CNN
F 3 "~" H 7600 2400 50  0001 C CNN
	1    7600 2400
	-1   0    0    1   
$EndComp
Text GLabel 7100 2100 0    50   Input ~ 0
NRST
Wire Wire Line
	7600 2100 8900 2100
Text GLabel 10000 2100 2    50   Input ~ 0
PA0
Text GLabel 10000 2200 2    50   Input ~ 0
PA1
Text GLabel 10000 2900 2    50   Input ~ 0
PA9
Text GLabel 10000 3000 2    50   Input ~ 0
PA10
Text GLabel 8800 3200 0    50   Input ~ 0
PB1
Wire Wire Line
	8800 3200 8900 3200
Wire Wire Line
	10000 2100 9900 2100
Wire Wire Line
	9900 2200 10000 2200
Wire Wire Line
	10000 2500 9900 2500
Wire Wire Line
	9900 2600 10000 2600
Wire Wire Line
	10000 2900 9900 2900
Wire Wire Line
	9900 3000 10000 3000
Wire Wire Line
	7100 2100 7600 2100
Wire Wire Line
	3000 6500 3300 6500
Wire Wire Line
	3300 6500 3300 6700
Wire Wire Line
	3300 6500 3300 6400
Wire Wire Line
	3300 6400 3000 6400
Connection ~ 3300 6500
$Comp
L power:+3.3V #PWR0115
U 1 1 609F3026
P 7900 1150
AR Path="/609F3026" Ref="#PWR0115"  Part="1" 
AR Path="/609F1585/609F3026" Ref="#PWR?"  Part="1" 
F 0 "#PWR0115" H 7900 1000 50  0001 C CNN
F 1 "+3.3V" H 7915 1323 50  0000 C CNN
F 2 "" H 7900 1150 50  0001 C CNN
F 3 "" H 7900 1150 50  0001 C CNN
	1    7900 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0116
U 1 1 609F302C
P 10250 1200
AR Path="/609F302C" Ref="#PWR0116"  Part="1" 
AR Path="/609F1585/609F302C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0116" H 10250 1050 50  0001 C CNN
F 1 "+3.3V" H 10265 1373 50  0000 C CNN
F 2 "" H 10250 1200 50  0001 C CNN
F 3 "" H 10250 1200 50  0001 C CNN
	1    10250 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1300 7900 1150
Connection ~ 7900 1300
Wire Wire Line
	10250 1300 10250 1200
Connection ~ 10250 1300
Wire Notes Line
	6650 4300 10900 4300
Wire Notes Line
	6650 700  6650 4300
Wire Notes Line
	10900 700  10900 4300
$Comp
L CUSTOM_PARTS:SSD1306_128_32 U8
U 1 1 60A28C8B
P 7350 5250
AR Path="/60A28C8B" Ref="U8"  Part="1" 
AR Path="/609F1585/60A28C8B" Ref="U?"  Part="1" 
F 0 "U8" H 7400 4900 50  0000 L CNN
F 1 "SSD1306_128_32" H 7250 5450 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical_SMD_Pin1Left" H 7650 5750 50  0001 C CNN
F 3 "" H 7350 5250 50  0001 C CNN
	1    7350 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0117
U 1 1 60A28C91
P 7650 5750
AR Path="/60A28C91" Ref="#PWR0117"  Part="1" 
AR Path="/609F1585/60A28C91" Ref="#PWR?"  Part="1" 
F 0 "#PWR0117" H 7650 5500 50  0001 C CNN
F 1 "GNDD" H 7654 5595 50  0000 C CNN
F 2 "" H 7650 5750 50  0001 C CNN
F 3 "" H 7650 5750 50  0001 C CNN
	1    7650 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5750 7650 5650
Text GLabel 7150 5450 0    50   Input ~ 0
I2C1_SDA
Text GLabel 7150 5350 0    50   Input ~ 0
I2C1_SCL
Wire Wire Line
	7150 5350 7250 5350
Wire Wire Line
	7150 5450 7250 5450
$Comp
L CUSTOM_PARTS:ALPSALPINE_SKRHADE011 SW?
U 1 1 60A28C9C
P 5600 5150
AR Path="/609F1585/60A28C9C" Ref="SW?"  Part="1" 
AR Path="/60A28C9C" Ref="SW2"  Part="1" 
F 0 "SW2" H 5800 5315 50  0000 C CNN
F 1 "ALPSALPINE_SKRHADE011" H 5800 5224 50  0000 C CNN
F 2 "CUSTOM_FOOTPRINTS:SKRHADE011" H 5600 5150 50  0001 C CNN
F 3 "" H 5600 5150 50  0001 C CNN
	1    5600 5150
	1    0    0    -1  
$EndComp
Text GLabel 5400 5250 0    50   Input ~ 0
PA0
Text GLabel 6200 5250 2    50   Input ~ 0
PA1
Text GLabel 5400 5500 0    50   Input ~ 0
PA9
Text GLabel 6200 5500 2    50   Input ~ 0
PA10
Text GLabel 5900 5750 2    50   Input ~ 0
PB1
$Comp
L power:GNDD #PWR0118
U 1 1 60A28CA7
P 5750 5800
AR Path="/60A28CA7" Ref="#PWR0118"  Part="1" 
AR Path="/609F1585/60A28CA7" Ref="#PWR?"  Part="1" 
F 0 "#PWR0118" H 5750 5550 50  0001 C CNN
F 1 "GNDD" H 5754 5645 50  0000 C CNN
F 2 "" H 5750 5800 50  0001 C CNN
F 3 "" H 5750 5800 50  0001 C CNN
	1    5750 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5650 5750 5800
Wire Wire Line
	5900 5750 5850 5750
Wire Wire Line
	5850 5750 5850 5650
Wire Wire Line
	5500 5250 5400 5250
Wire Wire Line
	5400 5500 5500 5500
Wire Wire Line
	6200 5500 6100 5500
Wire Wire Line
	6100 5250 6200 5250
$Comp
L power:+3.3V #PWR0119
U 1 1 60A28CB4
P 7000 5150
AR Path="/60A28CB4" Ref="#PWR0119"  Part="1" 
AR Path="/609F1585/60A28CB4" Ref="#PWR?"  Part="1" 
F 0 "#PWR0119" H 7000 5000 50  0001 C CNN
F 1 "+3.3V" H 7015 5323 50  0000 C CNN
F 2 "" H 7000 5150 50  0001 C CNN
F 3 "" H 7000 5150 50  0001 C CNN
	1    7000 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5250 7000 5150
Wire Wire Line
	7000 5250 7250 5250
Wire Notes Line
	8100 4450 5100 4450
Wire Notes Line
	8100 6350 8100 4450
Wire Notes Line
	5100 4450 5100 6350
Wire Notes Line
	5100 6350 8100 6350
Text Notes 5350 4700 0    50   ~ 0
OLED & Control
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J2
U 1 1 60A7875A
P 9500 5500
F 0 "J2" H 10150 5150 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 9800 5750 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical_SMD" H 9500 5500 50  0001 C CNN
F 3 "~" H 9500 5500 50  0001 C CNN
	1    9500 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0120
U 1 1 60A78DC5
P 9900 5750
AR Path="/60A78DC5" Ref="#PWR0120"  Part="1" 
AR Path="/609F1585/60A78DC5" Ref="#PWR?"  Part="1" 
F 0 "#PWR0120" H 9900 5500 50  0001 C CNN
F 1 "GNDD" H 9904 5595 50  0000 C CNN
F 2 "" H 9900 5750 50  0001 C CNN
F 3 "" H 9900 5750 50  0001 C CNN
	1    9900 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5400 9100 5400
Wire Wire Line
	9100 5400 9100 5350
Wire Wire Line
	9300 5500 9100 5500
Wire Wire Line
	9100 5500 9100 5400
Connection ~ 9100 5400
Wire Wire Line
	9300 5600 9100 5600
Wire Wire Line
	8800 5600 8800 5550
Wire Wire Line
	9300 5700 9100 5700
Wire Wire Line
	9100 5700 9100 5600
Connection ~ 9100 5600
Wire Wire Line
	9100 5600 8800 5600
Wire Wire Line
	9900 5750 9900 5700
Wire Wire Line
	9900 5400 9800 5400
Wire Wire Line
	9900 5500 9800 5500
Connection ~ 9900 5500
Wire Wire Line
	9900 5500 9900 5400
Wire Wire Line
	9800 5600 9900 5600
Connection ~ 9900 5600
Wire Wire Line
	9900 5600 9900 5500
Wire Wire Line
	9900 5700 9800 5700
Connection ~ 9900 5700
Wire Wire Line
	9900 5700 9900 5600
Wire Wire Line
	8100 2550 8100 2600
Connection ~ 8100 2600
Text GLabel 10000 2500 2    50   Input ~ 0
PA4
Text GLabel 10000 2600 2    50   Input ~ 0
PA5
NoConn ~ 9900 2800
Text GLabel 10000 2700 2    50   Input ~ 0
PA6
Wire Wire Line
	10000 2700 9900 2700
$EndSCHEMATC
