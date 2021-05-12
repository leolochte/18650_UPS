EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 950  4900 0    50   ~ 0
Current Sensor
Wire Notes Line
	750  4650 5000 4650
Wire Notes Line
	750  7350 750  4650
Wire Notes Line
	5000 7350 750  7350
Wire Notes Line
	5000 7350 5000 4650
$Comp
L power:GNDD #PWR033
U 1 1 60A8063F
P 3350 6550
F 0 "#PWR033" H 3350 6300 50  0001 C CNN
F 1 "GNDD" H 3354 6395 50  0000 C CNN
F 2 "" H 3350 6550 50  0001 C CNN
F 3 "" H 3350 6550 50  0001 C CNN
	1    3350 6550
	1    0    0    -1  
$EndComp
Connection ~ 1350 5750
Wire Wire Line
	1350 5800 1350 5750
$Comp
L power:GNDD #PWR021
U 1 1 60A6B871
P 1350 5800
F 0 "#PWR021" H 1350 5550 50  0001 C CNN
F 1 "GNDD" H 1354 5645 50  0000 C CNN
F 2 "" H 1350 5800 50  0001 C CNN
F 3 "" H 1350 5800 50  0001 C CNN
	1    1350 5800
	1    0    0    -1  
$EndComp
Connection ~ 1850 5450
Wire Wire Line
	2650 5450 2650 5750
Wire Wire Line
	1850 5450 2650 5450
Wire Wire Line
	1850 5750 1850 5700
Wire Wire Line
	1350 5750 1850 5750
Wire Wire Line
	1350 5700 1350 5750
Wire Wire Line
	1350 5450 1350 5400
Connection ~ 1350 5450
Wire Wire Line
	1850 5450 1850 5500
Wire Wire Line
	1350 5450 1850 5450
Wire Wire Line
	1350 5500 1350 5450
$Comp
L Device:C_Small C12
U 1 1 60A62811
P 1350 5600
F 0 "C12" H 1442 5646 50  0000 L CNN
F 1 "10 uF" H 1442 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1350 5600 50  0001 C CNN
F 3 "~" H 1350 5600 50  0001 C CNN
	1    1350 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 60A624C3
P 1850 5600
F 0 "C14" H 1942 5646 50  0000 L CNN
F 1 "0.1 uF" H 1942 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1850 5600 50  0001 C CNN
F 3 "~" H 1850 5600 50  0001 C CNN
	1    1850 5600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR020
U 1 1 60A61B2B
P 1350 5400
F 0 "#PWR020" H 1350 5250 50  0001 C CNN
F 1 "+3V3" H 1365 5573 50  0000 C CNN
F 2 "" H 1350 5400 50  0001 C CNN
F 3 "" H 1350 5400 50  0001 C CNN
	1    1350 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 6250 2150 6250
Wire Wire Line
	2150 6050 2250 6050
Text GLabel 2150 6050 0    50   Input ~ 0
Shunt+
Text GLabel 2150 6250 0    50   Input ~ 0
Shunt-
Wire Wire Line
	2650 6650 2650 6550
$Comp
L power:GNDD #PWR029
U 1 1 60A261D9
P 2650 6650
F 0 "#PWR029" H 2650 6400 50  0001 C CNN
F 1 "GNDD" H 2654 6495 50  0000 C CNN
F 2 "" H 2650 6650 50  0001 C CNN
F 3 "" H 2650 6650 50  0001 C CNN
	1    2650 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 5950 3150 5950
Wire Wire Line
	3150 6050 3050 6050
Text GLabel 3150 6050 2    50   Input ~ 0
I2C1_SCL
Text GLabel 3150 5950 2    50   Input ~ 0
I2C1_SDA
Connection ~ 2200 2600
Wire Wire Line
	2650 2600 2200 2600
Wire Wire Line
	2650 2650 2650 2600
Wire Wire Line
	2650 3000 3000 3000
Connection ~ 2650 3000
Wire Wire Line
	2150 3000 2650 3000
Wire Wire Line
	2650 2850 2650 3000
Wire Wire Line
	2200 2650 2200 2600
Wire Wire Line
	2200 2900 3000 2900
Connection ~ 2200 2900
Wire Wire Line
	2200 2850 2200 2900
Wire Wire Line
	2150 2900 2200 2900
$Comp
L Device:R_Small R12
U 1 1 60A18B1F
P 2200 2750
F 0 "R12" H 2259 2796 50  0000 L CNN
F 1 "10 kOhm" H 2259 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2200 2750 50  0001 C CNN
F 3 "~" H 2200 2750 50  0001 C CNN
	1    2200 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 60A1692D
P 2650 2750
F 0 "R13" H 2709 2796 50  0000 L CNN
F 1 "10 kOhm" H 2709 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2650 2750 50  0001 C CNN
F 3 "~" H 2650 2750 50  0001 C CNN
	1    2650 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR030
U 1 1 60A15FE5
P 2700 2550
F 0 "#PWR030" H 2700 2400 50  0001 C CNN
F 1 "+3V3" H 2715 2723 50  0000 C CNN
F 2 "" H 2700 2550 50  0001 C CNN
F 3 "" H 2700 2550 50  0001 C CNN
	1    2700 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2300 3000 2300
Wire Notes Line
	750  700  5000 700 
$Comp
L Analog_ADC:INA219AxD U?
U 1 1 609FD239
P 2650 6150
AR Path="/609FD239" Ref="U?"  Part="1" 
AR Path="/609F1585/609FD239" Ref="U8"  Part="1" 
F 0 "U8" H 2400 6500 50  0000 C CNN
F 1 "INA219AxD" H 2950 6500 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3450 5800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 3000 6050 50  0001 C CNN
	1    2650 6150
	1    0    0    -1  
$EndComp
Text Notes 900  900  0    50   ~ 0
MCU
$Comp
L MCU_ST_STM32F0:STM32F030F4Px U?
U 1 1 609FD203
P 3500 2600
AR Path="/609FD203" Ref="U?"  Part="1" 
AR Path="/609F1585/609FD203" Ref="U9"  Part="1" 
F 0 "U9" H 3800 3250 50  0000 C CNN
F 1 "STM32F030F4Px" H 3050 3250 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 3100 1900 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00088500.pdf" H 3500 2600 50  0001 C CNN
	1    3500 2600
	1    0    0    -1  
$EndComp
Text GLabel 2150 3000 0    50   Input ~ 0
I2C1_SCL
Text GLabel 2150 2900 0    50   Input ~ 0
I2C1_SDA
$Comp
L power:GNDD #PWR?
U 1 1 609FD1F9
P 3500 3500
AR Path="/609FD1F9" Ref="#PWR?"  Part="1" 
AR Path="/609F1585/609FD1F9" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 3500 3250 50  0001 C CNN
F 1 "GNDD" H 3504 3345 50  0000 C CNN
F 2 "" H 3500 3500 50  0001 C CNN
F 3 "" H 3500 3500 50  0001 C CNN
	1    3500 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 609FD1F3
P 4350 1500
AR Path="/609FD1F3" Ref="C?"  Part="1" 
AR Path="/609F1585/609FD1F3" Ref="C19"  Part="1" 
F 0 "C19" H 4442 1546 50  0000 L CNN
F 1 "1 uF" H 4442 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4350 1500 50  0001 C CNN
F 3 "~" H 4350 1500 50  0001 C CNN
	1    4350 1500
	1    0    0    -1  
$EndComp
Connection ~ 2450 1650
Wire Wire Line
	2900 1650 2900 1600
Wire Wire Line
	2450 1650 2900 1650
Wire Wire Line
	2000 1650 2000 1600
Connection ~ 2000 1650
Wire Wire Line
	2450 1650 2450 1600
Wire Wire Line
	2000 1650 2450 1650
Wire Wire Line
	2000 1700 2000 1650
$Comp
L power:GNDD #PWR?
U 1 1 609FD1E4
P 2000 1700
AR Path="/609FD1E4" Ref="#PWR?"  Part="1" 
AR Path="/609F1585/609FD1E4" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 2000 1450 50  0001 C CNN
F 1 "GNDD" H 2004 1545 50  0000 C CNN
F 2 "" H 2000 1700 50  0001 C CNN
F 3 "" H 2000 1700 50  0001 C CNN
	1    2000 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 609FD1DE
P 2450 1500
AR Path="/609FD1DE" Ref="C?"  Part="1" 
AR Path="/609F1585/609FD1DE" Ref="C16"  Part="1" 
F 0 "C16" H 2358 1454 50  0000 R CNN
F 1 "200 nF" H 2358 1545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2450 1500 50  0001 C CNN
F 3 "~" H 2450 1500 50  0001 C CNN
	1    2450 1500
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 609FD1D8
P 2900 1500
AR Path="/609FD1D8" Ref="C?"  Part="1" 
AR Path="/609F1585/609FD1D8" Ref="C17"  Part="1" 
F 0 "C17" H 2809 1454 50  0000 R CNN
F 1 "4.7 uF" H 2809 1545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2900 1500 50  0001 C CNN
F 3 "~" H 2900 1500 50  0001 C CNN
	1    2900 1500
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 609FD1D2
P 2000 1500
AR Path="/609FD1D2" Ref="C?"  Part="1" 
AR Path="/609F1585/609FD1D2" Ref="C15"  Part="1" 
F 0 "C15" H 1909 1454 50  0000 R CNN
F 1 "200 nF" H 1909 1545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2000 1500 50  0001 C CNN
F 3 "~" H 2000 1500 50  0001 C CNN
	1    2000 1500
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 609FD1CC
P 3900 1500
AR Path="/609FD1CC" Ref="C?"  Part="1" 
AR Path="/609F1585/609FD1CC" Ref="C18"  Part="1" 
F 0 "C18" H 3992 1546 50  0000 L CNN
F 1 "10 nF" H 3992 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3900 1500 50  0001 C CNN
F 3 "~" H 3900 1500 50  0001 C CNN
	1    3900 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 609FD1C5
P 4350 1750
AR Path="/609FD1C5" Ref="#PWR?"  Part="1" 
AR Path="/609F1585/609FD1C5" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 4350 1500 50  0001 C CNN
F 1 "GNDD" H 4354 1595 50  0000 C CNN
F 2 "" H 4350 1750 50  0001 C CNN
F 3 "" H 4350 1750 50  0001 C CNN
	1    4350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1600 3900 1650
Wire Wire Line
	3900 1650 4350 1650
Wire Wire Line
	4350 1650 4350 1600
Wire Wire Line
	4350 1750 4350 1650
Connection ~ 4350 1650
Wire Wire Line
	2000 1400 2000 1300
Wire Wire Line
	2450 1300 2450 1400
Wire Wire Line
	2900 1300 2900 1400
Wire Wire Line
	2000 1300 2450 1300
Wire Wire Line
	2450 1300 2900 1300
Connection ~ 2450 1300
Wire Wire Line
	4350 1400 4350 1300
Wire Wire Line
	4350 1300 3900 1300
Wire Wire Line
	3900 1300 3900 1400
Wire Wire Line
	3900 1300 3600 1300
Connection ~ 3900 1300
Connection ~ 2900 1300
Wire Wire Line
	3500 3500 3500 3400
Text GLabel 4100 3100 2    50   Input ~ 0
SWDIO
Text GLabel 4100 3200 2    50   Input ~ 0
SWCLK
Wire Wire Line
	4100 3200 4000 3200
Wire Wire Line
	4100 3100 4000 3100
Wire Wire Line
	2050 2300 2050 2650
Text GLabel 4100 2400 2    50   Input ~ 0
USART1_RX
Text GLabel 4100 2300 2    50   Input ~ 0
USART1_TX
Wire Wire Line
	4100 2300 4000 2300
Wire Wire Line
	4000 2400 4100 2400
Wire Wire Line
	2900 1300 3500 1300
Wire Wire Line
	3600 1300 3600 1900
Wire Wire Line
	3500 1300 3500 1900
$Comp
L CUSTOM_PARTS:SSD1306_128_32 U?
U 1 1 609FD217
P 9250 1800
AR Path="/609FD217" Ref="U?"  Part="1" 
AR Path="/609F1585/609FD217" Ref="U7"  Part="1" 
F 0 "U7" H 9300 1450 50  0000 L CNN
F 1 "SSD1306_128_32" H 9150 2000 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical_SMD_Pin1Left" H 9550 2300 50  0001 C CNN
F 3 "" H 9250 1800 50  0001 C CNN
	1    9250 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 609FD211
P 9550 2300
AR Path="/609FD211" Ref="#PWR?"  Part="1" 
AR Path="/609F1585/609FD211" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 9550 2050 50  0001 C CNN
F 1 "GNDD" H 9554 2145 50  0000 C CNN
F 2 "" H 9550 2300 50  0001 C CNN
F 3 "" H 9550 2300 50  0001 C CNN
	1    9550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 2300 9550 2200
Text GLabel 9050 2000 0    50   Input ~ 0
I2C1_SDA
Text GLabel 9050 1900 0    50   Input ~ 0
I2C1_SCL
Wire Wire Line
	9050 1900 9150 1900
Wire Wire Line
	9050 2000 9150 2000
Connection ~ 1700 2650
Wire Wire Line
	2050 2650 1700 2650
Wire Wire Line
	1300 2700 1300 2650
$Comp
L power:GNDD #PWR?
U 1 1 609FD18E
P 1300 2700
AR Path="/609FD18E" Ref="#PWR?"  Part="1" 
AR Path="/609F1585/609FD18E" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 1300 2450 50  0001 C CNN
F 1 "GNDD" H 1304 2545 50  0000 C CNN
F 2 "" H 1300 2700 50  0001 C CNN
F 3 "" H 1300 2700 50  0001 C CNN
	1    1300 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2650 1300 2650
Wire Wire Line
	1700 2500 1700 2650
Connection ~ 1700 2100
Wire Wire Line
	1700 2100 1700 2300
$Comp
L Device:C_Small C?
U 1 1 609FD19E
P 1700 2400
AR Path="/609FD19E" Ref="C?"  Part="1" 
AR Path="/609F1585/609FD19E" Ref="C13"  Part="1" 
F 0 "C13" H 1792 2446 50  0000 L CNN
F 1 "0.1 uF" H 1792 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1700 2400 50  0001 C CNN
F 3 "~" H 1700 2400 50  0001 C CNN
	1    1700 2400
	-1   0    0    1   
$EndComp
Text GLabel 1200 2100 0    50   Input ~ 0
NRST
Wire Wire Line
	1700 2100 3000 2100
Text GLabel 4100 2100 2    50   Input ~ 0
PA0
Text GLabel 4100 2200 2    50   Input ~ 0
PA1
Text GLabel 4100 2900 2    50   Input ~ 0
PA9
Text GLabel 4100 3000 2    50   Input ~ 0
PA10
Text GLabel 2900 3200 0    50   Input ~ 0
PB1
Wire Wire Line
	2900 3200 3000 3200
Wire Wire Line
	4100 2100 4000 2100
Wire Wire Line
	4000 2200 4100 2200
Wire Wire Line
	4100 2500 4000 2500
Wire Wire Line
	4000 2600 4100 2600
Wire Wire Line
	4100 2700 4000 2700
Wire Wire Line
	4000 2800 4100 2800
Wire Wire Line
	4100 2900 4000 2900
Wire Wire Line
	4000 3000 4100 3000
Text GLabel 4100 2800 2    50   Input ~ 0
RSPI0_MOSI
Text GLabel 4100 2600 2    50   Input ~ 0
RSPI0_SCLK
Text GLabel 4100 2500 2    50   Input ~ 0
RSPI0_CE0
Text GLabel 4100 2700 2    50   Input ~ 0
RSPI0_MISO
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 60A693A4
P 2300 2500
AR Path="/60A693A4" Ref="JP?"  Part="1" 
AR Path="/609F1585/60A693A4" Ref="JP5"  Part="1" 
F 0 "JP5" H 2300 2685 50  0000 C CNN
F 1 "Jumper_NO_Small" H 2300 2594 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 2300 2500 50  0001 C CNN
F 3 "~" H 2300 2500 50  0001 C CNN
	1    2300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2550 2400 2550
Wire Wire Line
	2400 2550 2400 2500
Wire Wire Line
	2200 2500 2200 2600
Wire Wire Line
	1200 2100 1700 2100
$Comp
L CUSTOM_PARTS:ALPSALPINE_SKRHADE011 SW4
U 1 1 609B1B1E
P 7500 1700
F 0 "SW4" H 7700 1865 50  0000 C CNN
F 1 "ALPSALPINE_SKRHADE011" H 7700 1774 50  0000 C CNN
F 2 "CUSTOM_FOOTPRINTS:SKRHADE011" H 7500 1700 50  0001 C CNN
F 3 "" H 7500 1700 50  0001 C CNN
	1    7500 1700
	1    0    0    -1  
$EndComp
Text GLabel 7300 1800 0    50   Input ~ 0
PA0
Text GLabel 8100 1800 2    50   Input ~ 0
PA1
Text GLabel 7300 2050 0    50   Input ~ 0
PA9
Text GLabel 8100 2050 2    50   Input ~ 0
PA10
Text GLabel 7800 2300 2    50   Input ~ 0
PB1
$Comp
L power:GNDD #PWR?
U 1 1 609B5F1D
P 7650 2350
AR Path="/609B5F1D" Ref="#PWR?"  Part="1" 
AR Path="/609F1585/609B5F1D" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 7650 2100 50  0001 C CNN
F 1 "GNDD" H 7654 2195 50  0000 C CNN
F 2 "" H 7650 2350 50  0001 C CNN
F 3 "" H 7650 2350 50  0001 C CNN
	1    7650 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2200 7650 2350
Wire Wire Line
	7800 2300 7750 2300
Wire Wire Line
	7750 2300 7750 2200
Wire Wire Line
	7400 1800 7300 1800
Wire Wire Line
	7300 2050 7400 2050
Wire Wire Line
	8100 2050 8000 2050
Wire Wire Line
	8000 1800 8100 1800
Wire Wire Line
	3050 6350 3350 6350
Wire Wire Line
	3350 6350 3350 6550
Wire Wire Line
	3350 6350 3350 6250
Wire Wire Line
	3350 6250 3050 6250
Connection ~ 3350 6350
$Comp
L power:+3.3V #PWR?
U 1 1 609EA939
P 2000 1150
AR Path="/609EA939" Ref="#PWR?"  Part="1" 
AR Path="/609F1585/609EA939" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 1000 50  0001 C CNN
F 1 "+3.3V" H 2015 1323 50  0000 C CNN
F 2 "" H 2000 1150 50  0001 C CNN
F 3 "" H 2000 1150 50  0001 C CNN
	1    2000 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 609EB8E2
P 4350 1200
AR Path="/609EB8E2" Ref="#PWR?"  Part="1" 
AR Path="/609F1585/609EB8E2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4350 1050 50  0001 C CNN
F 1 "+3.3V" H 4365 1373 50  0000 C CNN
F 2 "" H 4350 1200 50  0001 C CNN
F 3 "" H 4350 1200 50  0001 C CNN
	1    4350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1300 2000 1150
Connection ~ 2000 1300
Wire Wire Line
	4350 1300 4350 1200
Connection ~ 4350 1300
$Comp
L power:+3.3V #PWR?
U 1 1 609FCF0D
P 8900 1700
AR Path="/609FCF0D" Ref="#PWR?"  Part="1" 
AR Path="/609F1585/609FCF0D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8900 1550 50  0001 C CNN
F 1 "+3.3V" H 8915 1873 50  0000 C CNN
F 2 "" H 8900 1700 50  0001 C CNN
F 3 "" H 8900 1700 50  0001 C CNN
	1    8900 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1800 8900 1700
Wire Wire Line
	8900 1800 9150 1800
Wire Notes Line
	750  4300 5000 4300
Wire Notes Line
	750  700  750  4300
Wire Notes Line
	5000 700  5000 4300
$EndSCHEMATC
