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
Text Notes 6900 3850 0    50   ~ 0
Current Sensor
Wire Notes Line
	6700 3600 10950 3600
Wire Notes Line
	6700 6300 6700 3600
Wire Notes Line
	10950 6300 6700 6300
Wire Notes Line
	10950 6300 10950 3600
Connection ~ 9950 5700
Wire Wire Line
	9950 5650 9950 5700
Wire Wire Line
	9950 5700 9950 5750
Wire Wire Line
	10450 5700 9950 5700
Wire Wire Line
	10450 5400 10450 5700
Wire Wire Line
	10450 5000 10450 4900
Wire Wire Line
	9950 4650 9950 4600
Connection ~ 9950 4650
Wire Wire Line
	10450 4650 10450 4700
Wire Wire Line
	9950 4650 10450 4650
Wire Wire Line
	9950 4700 9950 4650
Wire Wire Line
	9950 5250 9950 4900
Wire Wire Line
	9750 5300 9000 5300
Wire Wire Line
	9750 5450 9750 5300
Wire Wire Line
	9800 5450 9750 5450
Wire Wire Line
	10300 5200 9000 5200
$Comp
L Device:R_Small R15
U 1 1 60A6E936
P 10450 4800
F 0 "R15" H 10509 4846 50  0000 L CNN
F 1 "3.3 kOhm" H 10509 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10450 4800 50  0001 C CNN
F 3 "~" H 10450 4800 50  0001 C CNN
	1    10450 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R14
U 1 1 60A6E380
P 9950 4800
F 0 "R14" H 10009 4846 50  0000 L CNN
F 1 "3.3 kOhm" H 10009 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9950 4800 50  0001 C CNN
F 3 "~" H 9950 4800 50  0001 C CNN
	1    9950 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR033
U 1 1 60A8063F
P 9950 5750
F 0 "#PWR033" H 9950 5500 50  0001 C CNN
F 1 "GNDD" H 9954 5595 50  0000 C CNN
F 2 "" H 9950 5750 50  0001 C CNN
F 3 "" H 9950 5750 50  0001 C CNN
	1    9950 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR032
U 1 1 60A7FF1E
P 9950 4600
F 0 "#PWR032" H 9950 4450 50  0001 C CNN
F 1 "+3V3" H 9965 4773 50  0000 C CNN
F 2 "" H 9950 4600 50  0001 C CNN
F 3 "" H 9950 4600 50  0001 C CNN
	1    9950 4600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP3
U 1 1 60A7C8BD
P 9950 5450
F 0 "JP3" V 10000 5550 50  0000 L CNN
F 1 "A0_SEL" V 9900 5550 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9950 5450 50  0001 C CNN
F 3 "~" H 9950 5450 50  0001 C CNN
	1    9950 5450
	0    1    -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP4
U 1 1 60A6FBF5
P 10450 5200
F 0 "JP4" V 10496 5268 50  0000 L CNN
F 1 "A1_SEL" V 10405 5268 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 10450 5200 50  0001 C CNN
F 3 "~" H 10450 5200 50  0001 C CNN
	1    10450 5200
	0    1    -1   0   
$EndComp
Connection ~ 7300 4700
Wire Wire Line
	7300 4750 7300 4700
$Comp
L power:GNDD #PWR021
U 1 1 60A6B871
P 7300 4750
F 0 "#PWR021" H 7300 4500 50  0001 C CNN
F 1 "GNDD" H 7304 4595 50  0000 C CNN
F 2 "" H 7300 4750 50  0001 C CNN
F 3 "" H 7300 4750 50  0001 C CNN
	1    7300 4750
	1    0    0    -1  
$EndComp
Connection ~ 7800 4400
Wire Wire Line
	8600 4400 8600 4700
Wire Wire Line
	7800 4400 8600 4400
Wire Wire Line
	7800 4700 7800 4650
Wire Wire Line
	7300 4700 7800 4700
Wire Wire Line
	7300 4650 7300 4700
Wire Wire Line
	7300 4400 7300 4350
Connection ~ 7300 4400
Wire Wire Line
	7800 4400 7800 4450
Wire Wire Line
	7300 4400 7800 4400
Wire Wire Line
	7300 4450 7300 4400
$Comp
L Device:C_Small C12
U 1 1 60A62811
P 7300 4550
F 0 "C12" H 7392 4596 50  0000 L CNN
F 1 "10 uF" H 7392 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7300 4550 50  0001 C CNN
F 3 "~" H 7300 4550 50  0001 C CNN
	1    7300 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 60A624C3
P 7800 4550
F 0 "C14" H 7892 4596 50  0000 L CNN
F 1 "0.1 uF" H 7892 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7800 4550 50  0001 C CNN
F 3 "~" H 7800 4550 50  0001 C CNN
	1    7800 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR020
U 1 1 60A61B2B
P 7300 4350
F 0 "#PWR020" H 7300 4200 50  0001 C CNN
F 1 "+3V3" H 7315 4523 50  0000 C CNN
F 2 "" H 7300 4350 50  0001 C CNN
F 3 "" H 7300 4350 50  0001 C CNN
	1    7300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 5200 8100 5200
Wire Wire Line
	8100 5000 8200 5000
Text GLabel 8100 5000 0    50   Input ~ 0
Shunt+
Text GLabel 8100 5200 0    50   Input ~ 0
Shunt-
Wire Wire Line
	8600 5600 8600 5500
$Comp
L power:GNDD #PWR029
U 1 1 60A261D9
P 8600 5600
F 0 "#PWR029" H 8600 5350 50  0001 C CNN
F 1 "GNDD" H 8604 5445 50  0000 C CNN
F 2 "" H 8600 5600 50  0001 C CNN
F 3 "" H 8600 5600 50  0001 C CNN
	1    8600 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4900 9100 4900
Wire Wire Line
	9100 5000 9000 5000
Text GLabel 9100 5000 2    50   Input ~ 0
I2C1_SCL
Text GLabel 9100 4900 2    50   Input ~ 0
I2C1_SDA
Connection ~ 8150 2250
Wire Wire Line
	8600 2250 8150 2250
Wire Wire Line
	8600 2300 8600 2250
Wire Wire Line
	8600 2650 8950 2650
Connection ~ 8600 2650
Wire Wire Line
	8100 2650 8600 2650
Wire Wire Line
	8600 2500 8600 2650
Wire Wire Line
	8150 2300 8150 2250
Wire Wire Line
	8150 2550 8950 2550
Connection ~ 8150 2550
Wire Wire Line
	8150 2500 8150 2550
Wire Wire Line
	8100 2550 8150 2550
$Comp
L Device:R_Small R12
U 1 1 60A18B1F
P 8150 2400
F 0 "R12" H 8209 2446 50  0000 L CNN
F 1 "10 kOhm" H 8209 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8150 2400 50  0001 C CNN
F 3 "~" H 8150 2400 50  0001 C CNN
	1    8150 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 60A1692D
P 8600 2400
F 0 "R13" H 8659 2446 50  0000 L CNN
F 1 "10 kOhm" H 8659 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8600 2400 50  0001 C CNN
F 3 "~" H 8600 2400 50  0001 C CNN
	1    8600 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR030
U 1 1 60A15FE5
P 8650 2200
F 0 "#PWR030" H 8650 2050 50  0001 C CNN
F 1 "+3V3" H 8665 2373 50  0000 C CNN
F 2 "" H 8650 2200 50  0001 C CNN
F 3 "" H 8650 2200 50  0001 C CNN
	1    8650 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1950 8950 1950
Wire Notes Line
	6700 750  10950 750 
Wire Notes Line
	6700 3450 6700 750 
Wire Notes Line
	10950 3450 6700 3450
$Comp
L Analog_ADC:INA219AxD U?
U 1 1 609FD239
P 8600 5100
AR Path="/609FD239" Ref="U?"  Part="1" 
AR Path="/609F1585/609FD239" Ref="U8"  Part="1" 
F 0 "U8" H 8350 5450 50  0000 C CNN
F 1 "INA219AxD" H 8900 5450 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9400 4750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 8950 5000 50  0001 C CNN
	1    8600 5100
	1    0    0    -1  
$EndComp
Text Notes 6900 1000 0    50   ~ 0
MCU
$Comp
L MCU_ST_STM32F0:STM32F030F4Px U?
U 1 1 609FD203
P 9450 2250
AR Path="/609FD203" Ref="U?"  Part="1" 
AR Path="/609F1585/609FD203" Ref="U9"  Part="1" 
F 0 "U9" H 9750 2900 50  0000 C CNN
F 1 "STM32F030F4Px" H 9000 2900 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 9050 1550 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00088500.pdf" H 9450 2250 50  0001 C CNN
	1    9450 2250
	1    0    0    -1  
$EndComp
Text GLabel 8100 2650 0    50   Input ~ 0
I2C1_SCL
Text GLabel 8100 2550 0    50   Input ~ 0
I2C1_SDA
$Comp
L power:GNDD #PWR?
U 1 1 609FD1F9
P 9450 3150
AR Path="/609FD1F9" Ref="#PWR?"  Part="1" 
AR Path="/609F1585/609FD1F9" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 9450 2900 50  0001 C CNN
F 1 "GNDD" H 9454 2995 50  0000 C CNN
F 2 "" H 9450 3150 50  0001 C CNN
F 3 "" H 9450 3150 50  0001 C CNN
	1    9450 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 609FD1F3
P 10300 1150
AR Path="/609FD1F3" Ref="C?"  Part="1" 
AR Path="/609F1585/609FD1F3" Ref="C19"  Part="1" 
F 0 "C19" H 10392 1196 50  0000 L CNN
F 1 "1 uF" H 10392 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10300 1150 50  0001 C CNN
F 3 "~" H 10300 1150 50  0001 C CNN
	1    10300 1150
	1    0    0    -1  
$EndComp
Connection ~ 8400 1300
Wire Wire Line
	8850 1300 8850 1250
Wire Wire Line
	8400 1300 8850 1300
Wire Wire Line
	7950 1300 7950 1250
Connection ~ 7950 1300
Wire Wire Line
	8400 1300 8400 1250
Wire Wire Line
	7950 1300 8400 1300
Wire Wire Line
	7950 1350 7950 1300
Text GLabel 7850 950  0    50   Input ~ 0
MCU_PWR
$Comp
L power:GNDD #PWR?
U 1 1 609FD1E4
P 7950 1350
AR Path="/609FD1E4" Ref="#PWR?"  Part="1" 
AR Path="/609F1585/609FD1E4" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 7950 1100 50  0001 C CNN
F 1 "GNDD" H 7954 1195 50  0000 C CNN
F 2 "" H 7950 1350 50  0001 C CNN
F 3 "" H 7950 1350 50  0001 C CNN
	1    7950 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 609FD1DE
P 8400 1150
AR Path="/609FD1DE" Ref="C?"  Part="1" 
AR Path="/609F1585/609FD1DE" Ref="C16"  Part="1" 
F 0 "C16" H 8308 1104 50  0000 R CNN
F 1 "200 nF" H 8308 1195 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8400 1150 50  0001 C CNN
F 3 "~" H 8400 1150 50  0001 C CNN
	1    8400 1150
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 609FD1D8
P 8850 1150
AR Path="/609FD1D8" Ref="C?"  Part="1" 
AR Path="/609F1585/609FD1D8" Ref="C17"  Part="1" 
F 0 "C17" H 8759 1104 50  0000 R CNN
F 1 "4.7 uF" H 8759 1195 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8850 1150 50  0001 C CNN
F 3 "~" H 8850 1150 50  0001 C CNN
	1    8850 1150
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 609FD1D2
P 7950 1150
AR Path="/609FD1D2" Ref="C?"  Part="1" 
AR Path="/609F1585/609FD1D2" Ref="C15"  Part="1" 
F 0 "C15" H 7859 1104 50  0000 R CNN
F 1 "200 nF" H 7859 1195 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7950 1150 50  0001 C CNN
F 3 "~" H 7950 1150 50  0001 C CNN
	1    7950 1150
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 609FD1CC
P 9850 1150
AR Path="/609FD1CC" Ref="C?"  Part="1" 
AR Path="/609F1585/609FD1CC" Ref="C18"  Part="1" 
F 0 "C18" H 9942 1196 50  0000 L CNN
F 1 "10 nF" H 9942 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9850 1150 50  0001 C CNN
F 3 "~" H 9850 1150 50  0001 C CNN
	1    9850 1150
	1    0    0    -1  
$EndComp
Text GLabel 10400 950  2    50   Input ~ 0
MCU_PWR
$Comp
L power:GNDD #PWR?
U 1 1 609FD1C5
P 10300 1400
AR Path="/609FD1C5" Ref="#PWR?"  Part="1" 
AR Path="/609F1585/609FD1C5" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 10300 1150 50  0001 C CNN
F 1 "GNDD" H 10304 1245 50  0000 C CNN
F 2 "" H 10300 1400 50  0001 C CNN
F 3 "" H 10300 1400 50  0001 C CNN
	1    10300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1250 9850 1300
Wire Wire Line
	9850 1300 10300 1300
Wire Wire Line
	10300 1300 10300 1250
Wire Wire Line
	10300 1400 10300 1300
Connection ~ 10300 1300
Wire Wire Line
	7950 1050 7950 950 
Wire Wire Line
	8400 950  8400 1050
Wire Wire Line
	7950 950  7850 950 
Connection ~ 7950 950 
Wire Wire Line
	8850 950  8850 1050
Wire Wire Line
	7950 950  8400 950 
Wire Wire Line
	8400 950  8850 950 
Connection ~ 8400 950 
Wire Wire Line
	10300 1050 10300 950 
Wire Wire Line
	10300 950  9850 950 
Wire Wire Line
	9850 950  9850 1050
Wire Wire Line
	9850 950  9550 950 
Connection ~ 9850 950 
Connection ~ 8850 950 
Wire Wire Line
	10400 950  10300 950 
Connection ~ 10300 950 
Wire Wire Line
	9450 3150 9450 3050
Text GLabel 10050 2750 2    50   Input ~ 0
SWDIO
Text GLabel 10050 2850 2    50   Input ~ 0
SWCLK
Wire Wire Line
	10050 2850 9950 2850
Wire Wire Line
	10050 2750 9950 2750
Wire Wire Line
	8000 1950 8000 2300
Text GLabel 10050 2050 2    50   Input ~ 0
USART1_RX
Text GLabel 10050 1950 2    50   Input ~ 0
USART1_TX
Wire Wire Line
	10050 1950 9950 1950
Wire Wire Line
	9950 2050 10050 2050
Wire Wire Line
	8850 950  9450 950 
Wire Wire Line
	9550 950  9550 1550
Wire Wire Line
	9450 950  9450 1550
Wire Notes Line
	10950 3450 10950 750 
$Comp
L power:+3.3V #PWR?
U 1 1 609FD225
P 3350 1750
AR Path="/609FD225" Ref="#PWR?"  Part="1" 
AR Path="/609F1585/609FD225" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 3350 1600 50  0001 C CNN
F 1 "+3.3V" H 3365 1923 50  0000 C CNN
F 2 "" H 3350 1750 50  0001 C CNN
F 3 "" H 3350 1750 50  0001 C CNN
	1    3350 1750
	1    0    0    -1  
$EndComp
Text GLabel 4400 1900 2    50   Input ~ 0
MCU_PWR
$Comp
L CUSTOM_PARTS:SSD1306_128_32 U?
U 1 1 609FD217
P 1850 1750
AR Path="/609FD217" Ref="U?"  Part="1" 
AR Path="/609F1585/609FD217" Ref="U7"  Part="1" 
F 0 "U7" H 1900 1400 50  0000 L CNN
F 1 "SSD1306_128_32" H 1750 1950 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 2150 2250 50  0001 C CNN
F 3 "" H 1850 1750 50  0001 C CNN
	1    1850 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 609FD211
P 2150 2250
AR Path="/609FD211" Ref="#PWR?"  Part="1" 
AR Path="/609F1585/609FD211" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 2150 2000 50  0001 C CNN
F 1 "GNDD" H 2154 2095 50  0000 C CNN
F 2 "" H 2150 2250 50  0001 C CNN
F 3 "" H 2150 2250 50  0001 C CNN
	1    2150 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2250 2150 2150
Text GLabel 1650 1950 0    50   Input ~ 0
I2C1_SDA
Text GLabel 1650 1850 0    50   Input ~ 0
I2C1_SCL
Wire Wire Line
	1650 1850 1750 1850
Wire Wire Line
	1650 1950 1750 1950
Text GLabel 1650 1750 0    50   Input ~ 0
MCU_PWR
Wire Wire Line
	1650 1750 1750 1750
Connection ~ 7650 2300
Wire Wire Line
	8000 2300 7650 2300
Wire Wire Line
	7250 2350 7250 2300
$Comp
L power:GNDD #PWR?
U 1 1 609FD18E
P 7250 2350
AR Path="/609FD18E" Ref="#PWR?"  Part="1" 
AR Path="/609F1585/609FD18E" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 7250 2100 50  0001 C CNN
F 1 "GNDD" H 7254 2195 50  0000 C CNN
F 2 "" H 7250 2350 50  0001 C CNN
F 3 "" H 7250 2350 50  0001 C CNN
	1    7250 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2300 7250 2300
Wire Wire Line
	7650 2150 7650 2300
Connection ~ 7650 1750
Wire Wire Line
	7650 1750 7650 1950
$Comp
L Device:C_Small C?
U 1 1 609FD19E
P 7650 2050
AR Path="/609FD19E" Ref="C?"  Part="1" 
AR Path="/609F1585/609FD19E" Ref="C13"  Part="1" 
F 0 "C13" H 7742 2096 50  0000 L CNN
F 1 "0.1 uF" H 7742 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7650 2050 50  0001 C CNN
F 3 "~" H 7650 2050 50  0001 C CNN
	1    7650 2050
	-1   0    0    1   
$EndComp
Text GLabel 7150 1750 0    50   Input ~ 0
NRST
Wire Wire Line
	7650 1750 8950 1750
Text GLabel 10050 1750 2    50   Input ~ 0
PA0
Text GLabel 10050 1850 2    50   Input ~ 0
PA1
Text GLabel 10050 2550 2    50   Input ~ 0
PA9
Text GLabel 10050 2650 2    50   Input ~ 0
PA10
Text GLabel 8850 2850 0    50   Input ~ 0
PB1
Wire Wire Line
	8850 2850 8950 2850
Wire Wire Line
	10050 1750 9950 1750
Wire Wire Line
	9950 1850 10050 1850
Wire Wire Line
	10050 2150 9950 2150
Wire Wire Line
	9950 2250 10050 2250
Wire Wire Line
	10050 2350 9950 2350
Wire Wire Line
	9950 2450 10050 2450
Wire Wire Line
	10050 2550 9950 2550
Wire Wire Line
	9950 2650 10050 2650
$Comp
L power:GNDD #PWR?
U 1 1 60982C12
P 1800 3800
AR Path="/60982C12" Ref="#PWR?"  Part="1" 
AR Path="/609F1585/60982C12" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 1800 3550 50  0001 C CNN
F 1 "GNDD" H 1804 3645 50  0000 C CNN
F 2 "" H 1800 3800 50  0001 C CNN
F 3 "" H 1800 3800 50  0001 C CNN
	1    1800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3800 1800 3700
Text GLabel 2850 3500 2    50   Input ~ 0
PA0
Text GLabel 2850 3600 2    50   Input ~ 0
PA1
Text GLabel 2850 3700 2    50   Input ~ 0
PA9
Text GLabel 2850 3800 2    50   Input ~ 0
PA10
Text GLabel 2850 3900 2    50   Input ~ 0
PB1
Wire Wire Line
	2850 3500 2700 3500
Wire Wire Line
	2850 3600 2700 3600
Wire Wire Line
	2700 3700 2850 3700
Wire Wire Line
	2850 3800 2700 3800
Wire Wire Line
	2700 3900 2850 3900
$Comp
L CUSTOM_PARTS:5_Way_Tactile SW2
U 1 1 609A29BD
P 2400 3700
F 0 "SW2" H 2400 4167 50  0000 C CNN
F 1 "5_Way_Tactile" H 2400 4076 50  0000 C CNN
F 2 "CUSTOM_FOOTPRINTS:5_Way_Tactical" H 2450 4100 50  0001 C CNN
F 3 "~" H 2450 4100 50  0001 C CNN
	1    2400 3700
	1    0    0    -1  
$EndComp
Text GLabel 10050 2450 2    50   Input ~ 0
RSPI0_MOSI
Text GLabel 10050 2250 2    50   Input ~ 0
RSPI0_SCLK
Text GLabel 10050 2150 2    50   Input ~ 0
RSPI0_CE0
Text GLabel 10050 2350 2    50   Input ~ 0
RSPI0_MISO
Wire Wire Line
	1800 3700 2100 3700
Wire Wire Line
	4400 1900 4300 1900
Wire Wire Line
	3350 1800 3350 1750
Wire Wire Line
	3900 1800 3350 1800
$Comp
L Switch:SW_DPDT_x2 SW?
U 1 1 609FD21F
P 4100 1900
AR Path="/609FD21F" Ref="SW?"  Part="1" 
AR Path="/609F1585/609FD21F" Ref="SW3"  Part="1" 
F 0 "SW3" H 4100 2250 50  0000 C CNN
F 1 "PWR MODE" H 4100 2100 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CuK_OS102011MA1QN1_SPDT_Angled" H 4100 1900 50  0001 C CNN
F 3 "~" H 4100 1900 50  0001 C CNN
	1    4100 1900
	-1   0    0    -1  
$EndComp
NoConn ~ 3900 2000
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 60A693A4
P 8250 2150
AR Path="/60A693A4" Ref="JP?"  Part="1" 
AR Path="/609F1585/60A693A4" Ref="JP5"  Part="1" 
F 0 "JP5" H 8250 2335 50  0000 C CNN
F 1 "Jumper_NO_Small" H 8250 2244 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8250 2150 50  0001 C CNN
F 3 "~" H 8250 2150 50  0001 C CNN
	1    8250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2200 8350 2200
Wire Wire Line
	8350 2200 8350 2150
Wire Wire Line
	8150 2150 8150 2250
Wire Wire Line
	7150 1750 7650 1750
$EndSCHEMATC
