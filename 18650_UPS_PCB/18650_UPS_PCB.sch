EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
$Comp
L Regulator_Switching:TPS63000 U?
U 1 1 60A4B63C
P 8900 1650
F 0 "U?" H 8650 2250 50  0000 C CNN
F 1 "TPS63000" H 9000 2250 50  0000 C CNN
F 2 "Package_SON:Texas_DRC0010J_ThermalVias" H 9750 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps63000.pdf" H 8600 2200 50  0001 C CNN
	1    8900 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L?
U 1 1 60A4BF10
P 8900 950
F 0 "L?" V 9085 950 50  0000 C CNN
F 1 "2.2uH" V 8994 950 50  0000 C CNN
F 2 "" H 8900 950 50  0001 C CNN
F 3 "~" H 8900 950 50  0001 C CNN
	1    8900 950 
	0    -1   -1   0   
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 60A596C7
P 6550 1400
F 0 "#PWR?" H 6550 1250 50  0001 C CNN
F 1 "+BATT" H 6565 1573 50  0000 C CNN
F 2 "" H 6550 1400 50  0001 C CNN
F 3 "" H 6550 1400 50  0001 C CNN
	1    6550 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1450 6550 1400
$Comp
L power:+3V3 #PWR?
U 1 1 60A5D560
P 10600 1400
F 0 "#PWR?" H 10600 1250 50  0001 C CNN
F 1 "+3V3" H 10615 1573 50  0000 C CNN
F 2 "" H 10600 1400 50  0001 C CNN
F 3 "" H 10600 1400 50  0001 C CNN
	1    10600 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 1450 10600 1400
Wire Wire Line
	9300 1450 10000 1450
$Comp
L Device:C_Small C?
U 1 1 60901BCE
P 6550 1950
F 0 "C?" H 6459 1904 50  0000 R CNN
F 1 "10uF" H 6459 1995 50  0000 R CNN
F 2 "" H 6550 1950 50  0001 C CNN
F 3 "~" H 6550 1950 50  0001 C CNN
	1    6550 1950
	1    0    0    1   
$EndComp
Connection ~ 6550 1450
$Comp
L Device:R_Small R?
U 1 1 6090A790
P 6800 1550
F 0 "R?" V 6900 1600 50  0000 R CNN
F 1 "100" V 7000 1650 50  0000 R CNN
F 2 "" H 6800 1550 50  0001 C CNN
F 3 "~" H 6800 1550 50  0001 C CNN
	1    6800 1550
	0    -1   1    0   
$EndComp
Wire Wire Line
	6550 1450 6550 1550
Wire Wire Line
	6700 1550 6550 1550
Connection ~ 6550 1550
$Comp
L Device:C_Small C?
U 1 1 609182CF
P 7100 1950
F 0 "C?" H 7350 1900 50  0000 R CNN
F 1 "0.1uF" H 7450 2000 50  0000 R CNN
F 2 "" H 7100 1950 50  0001 C CNN
F 3 "~" H 7100 1950 50  0001 C CNN
	1    7100 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 1550 6550 1850
Wire Wire Line
	6900 1550 7100 1550
Wire Wire Line
	7100 1550 7100 1850
Wire Wire Line
	6550 2050 6550 2150
Wire Wire Line
	7100 2050 7100 2150
Wire Wire Line
	7100 2150 6550 2150
Connection ~ 6550 2150
Wire Wire Line
	6550 2150 6550 2250
Connection ~ 7100 1550
$Comp
L Switch:SW_DPDT_x2 SW?
U 1 1 6093377F
P 7550 2050
F 0 "SW?" H 7550 1850 50  0000 C CNN
F 1 "ENABLE" H 7550 1750 50  0000 C CNN
F 2 "" H 7550 2050 50  0001 C CNN
F 3 "~" H 7550 2050 50  0001 C CNN
	1    7550 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7350 2150 7100 2150
Connection ~ 7100 2150
Wire Wire Line
	7350 1950 7300 1950
Wire Wire Line
	7300 1950 7300 1550
Connection ~ 7300 1550
Wire Wire Line
	7300 1550 7100 1550
Wire Wire Line
	7750 2050 7800 2050
Wire Wire Line
	7800 2050 7800 1650
$Comp
L Device:Jumper_NC_Dual JP?
U 1 1 60969779
P 8200 2050
F 0 "JP?" H 8200 2197 50  0000 C CNN
F 1 "PWRSAVE" H 8200 2288 50  0000 C CNN
F 2 "" H 8200 2050 50  0001 C CNN
F 3 "~" H 8200 2050 50  0001 C CNN
	1    8200 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	7950 2050 7800 2050
Connection ~ 7800 2050
Wire Wire Line
	8200 1950 8200 1850
$Comp
L power:GND #PWR?
U 1 1 60991282
P 8800 2350
F 0 "#PWR?" H 8800 2100 50  0001 C CNN
F 1 "GND" H 8805 2177 50  0000 C CNN
F 2 "" H 8800 2350 50  0001 C CNN
F 3 "" H 8800 2350 50  0001 C CNN
	1    8800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2050 8450 2050
Wire Wire Line
	8200 1850 8500 1850
Wire Wire Line
	7800 1650 8500 1650
Wire Wire Line
	7300 1550 8500 1550
Wire Wire Line
	6550 1450 8500 1450
Wire Wire Line
	8800 2350 8800 2300
Wire Wire Line
	8800 2300 8900 2300
Wire Wire Line
	8900 2300 8900 2250
Connection ~ 8800 2300
Wire Wire Line
	8800 2300 8800 2250
Wire Wire Line
	8800 2300 8500 2300
Wire Wire Line
	8500 2050 8500 2300
$Comp
L Device:C_Small C?
U 1 1 609C7D9E
P 10150 1600
F 0 "C?" H 10059 1554 50  0000 R CNN
F 1 "10 uF" H 10059 1645 50  0000 R CNN
F 2 "" H 10150 1600 50  0001 C CNN
F 3 "~" H 10150 1600 50  0001 C CNN
	1    10150 1600
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 609C8162
P 10600 1600
F 0 "C?" H 10509 1554 50  0000 R CNN
F 1 "10 uF" H 10509 1645 50  0000 R CNN
F 2 "" H 10600 1600 50  0001 C CNN
F 3 "~" H 10600 1600 50  0001 C CNN
	1    10600 1600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 609D456E
P 9850 1650
F 0 "R?" V 9950 1600 50  0000 L CNN
F 1 "R_Small" V 10050 1550 50  0000 L CNN
F 2 "" H 9850 1650 50  0001 C CNN
F 3 "~" H 9850 1650 50  0001 C CNN
	1    9850 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 609D492B
P 9600 1800
F 0 "R?" H 9659 1846 50  0000 L CNN
F 1 "R_Small" H 9659 1755 50  0000 L CNN
F 2 "" H 9600 1800 50  0001 C CNN
F 3 "~" H 9600 1800 50  0001 C CNN
	1    9600 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	10600 1500 10600 1450
Connection ~ 10600 1450
$Comp
L power:GND #PWR?
U 1 1 609E7A47
P 10600 1800
F 0 "#PWR?" H 10600 1550 50  0001 C CNN
F 1 "GND" H 10605 1627 50  0000 C CNN
F 2 "" H 10600 1800 50  0001 C CNN
F 3 "" H 10600 1800 50  0001 C CNN
	1    10600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 1800 10600 1750
Wire Wire Line
	10150 1500 10150 1450
Connection ~ 10150 1450
Wire Wire Line
	10150 1450 10600 1450
Wire Wire Line
	10150 1700 10150 1750
Wire Wire Line
	10150 1750 10600 1750
Connection ~ 10600 1750
Wire Wire Line
	10600 1750 10600 1700
Wire Wire Line
	9300 1650 9600 1650
Wire Wire Line
	9600 1650 9600 1700
Wire Wire Line
	9600 1650 9750 1650
Connection ~ 9600 1650
Wire Wire Line
	9950 1650 10000 1650
Wire Wire Line
	10000 1650 10000 1450
Connection ~ 10000 1450
Wire Wire Line
	10000 1450 10150 1450
$Comp
L power:GND #PWR?
U 1 1 60A12406
P 9600 2000
F 0 "#PWR?" H 9600 1750 50  0001 C CNN
F 1 "GND" H 9605 1827 50  0000 C CNN
F 2 "" H 9600 2000 50  0001 C CNN
F 3 "" H 9600 2000 50  0001 C CNN
	1    9600 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2000 9600 1900
Wire Notes Line
	6200 2600 6200 700 
Wire Notes Line
	6200 700  11000 700 
Wire Notes Line
	11000 700  11000 2600
Wire Notes Line
	11000 2600 6200 2600
Wire Wire Line
	8400 1250 8400 950 
Wire Wire Line
	8400 950  8800 950 
Wire Wire Line
	8400 1250 8500 1250
Wire Wire Line
	9000 950  9400 950 
Wire Wire Line
	9400 950  9400 1250
Wire Wire Line
	9300 1250 9400 1250
Text Notes 6350 900  0    50   ~ 0
3V3 Buck/Boost
$Comp
L power:+5V #PWR?
U 1 1 60A6BE3E
P 10600 3500
F 0 "#PWR?" H 10600 3350 50  0001 C CNN
F 1 "+5V" H 10615 3673 50  0000 C CNN
F 2 "" H 10600 3500 50  0001 C CNN
F 3 "" H 10600 3500 50  0001 C CNN
	1    10600 3500
	1    0    0    -1  
$EndComp
Text Notes 6350 3000 0    50   ~ 0
5V Buck/Boost
Wire Wire Line
	9300 3350 9400 3350
Wire Wire Line
	9400 3050 9400 3350
Wire Wire Line
	9000 3050 9400 3050
Wire Wire Line
	8400 3350 8500 3350
Wire Wire Line
	8400 3050 8800 3050
Wire Wire Line
	8400 3350 8400 3050
Wire Notes Line
	11000 4700 6200 4700
Wire Notes Line
	11000 2800 11000 4700
Wire Notes Line
	6200 2800 11000 2800
Wire Notes Line
	6200 4700 6200 2800
Wire Wire Line
	9600 4100 9600 4000
$Comp
L power:GND #PWR?
U 1 1 60A60291
P 9600 4100
F 0 "#PWR?" H 9600 3850 50  0001 C CNN
F 1 "GND" H 9605 3927 50  0000 C CNN
F 2 "" H 9600 4100 50  0001 C CNN
F 3 "" H 9600 4100 50  0001 C CNN
	1    9600 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 3750 10000 3550
Wire Wire Line
	9950 3750 10000 3750
Wire Wire Line
	9600 3750 9750 3750
Wire Wire Line
	9600 3750 9600 3800
Connection ~ 9600 3750
Wire Wire Line
	9300 3750 9600 3750
Wire Wire Line
	10600 3850 10600 3800
Wire Wire Line
	10150 3850 10600 3850
Wire Wire Line
	10150 3800 10150 3850
Wire Wire Line
	10000 3550 10150 3550
Wire Wire Line
	10150 3550 10600 3550
Connection ~ 10150 3550
Wire Wire Line
	10150 3600 10150 3550
Connection ~ 10600 3850
Wire Wire Line
	10600 3900 10600 3850
$Comp
L power:GND #PWR?
U 1 1 60A6027B
P 10600 3900
F 0 "#PWR?" H 10600 3650 50  0001 C CNN
F 1 "GND" H 10605 3727 50  0000 C CNN
F 2 "" H 10600 3900 50  0001 C CNN
F 3 "" H 10600 3900 50  0001 C CNN
	1    10600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 3600 10600 3550
$Comp
L Device:R_Small R?
U 1 1 60A60273
P 9600 3900
F 0 "R?" H 9659 3946 50  0000 L CNN
F 1 "R_Small" H 9659 3855 50  0000 L CNN
F 2 "" H 9600 3900 50  0001 C CNN
F 3 "~" H 9600 3900 50  0001 C CNN
	1    9600 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60A6026D
P 9850 3750
F 0 "R?" V 9950 3700 50  0000 L CNN
F 1 "R_Small" V 10050 3650 50  0000 L CNN
F 2 "" H 9850 3750 50  0001 C CNN
F 3 "~" H 9850 3750 50  0001 C CNN
	1    9850 3750
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60A60267
P 10600 3700
F 0 "C?" H 10509 3654 50  0000 R CNN
F 1 "10 uF" H 10509 3745 50  0000 R CNN
F 2 "" H 10600 3700 50  0001 C CNN
F 3 "~" H 10600 3700 50  0001 C CNN
	1    10600 3700
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60A60261
P 10150 3700
F 0 "C?" H 10059 3654 50  0000 R CNN
F 1 "10 uF" H 10059 3745 50  0000 R CNN
F 2 "" H 10150 3700 50  0001 C CNN
F 3 "~" H 10150 3700 50  0001 C CNN
	1    10150 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8500 4150 8500 4400
Wire Wire Line
	8800 4400 8500 4400
Wire Wire Line
	8800 4400 8800 4350
Wire Wire Line
	8900 4400 8900 4350
Connection ~ 8800 4400
Wire Wire Line
	8800 4400 8900 4400
Wire Wire Line
	8800 4450 8800 4400
Wire Wire Line
	6550 3550 8500 3550
Wire Wire Line
	7800 3750 8500 3750
Wire Wire Line
	8200 3950 8500 3950
Wire Wire Line
	8500 4150 8450 4150
$Comp
L power:GND #PWR?
U 1 1 60A6024F
P 8800 4450
F 0 "#PWR?" H 8800 4200 50  0001 C CNN
F 1 "GND" H 8805 4277 50  0000 C CNN
F 2 "" H 8800 4450 50  0001 C CNN
F 3 "" H 8800 4450 50  0001 C CNN
	1    8800 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4050 8200 3950
Wire Wire Line
	7950 4150 7800 4150
$Comp
L Device:Jumper_NC_Dual JP?
U 1 1 60A60246
P 8200 4150
F 0 "JP?" H 8200 4297 50  0000 C CNN
F 1 "PWRSAVE" H 8200 4388 50  0000 C CNN
F 2 "" H 8200 4150 50  0001 C CNN
F 3 "~" H 8200 4150 50  0001 C CNN
	1    8200 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 4150 7800 3750
Connection ~ 7800 4150
Wire Wire Line
	7750 4150 7800 4150
Wire Wire Line
	7300 3650 8500 3650
Wire Wire Line
	7300 3650 7100 3650
Connection ~ 7300 3650
Wire Wire Line
	7300 4050 7300 3650
Wire Wire Line
	7350 4050 7300 4050
$Comp
L Switch:SW_DPDT_x2 SW?
U 1 1 60A60238
P 7550 4150
F 0 "SW?" H 7550 3950 50  0000 C CNN
F 1 "ENABLE" H 7550 3850 50  0000 C CNN
F 2 "" H 7550 4150 50  0001 C CNN
F 3 "~" H 7550 4150 50  0001 C CNN
	1    7550 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6550 4250 6550 4350
Wire Wire Line
	7350 4250 7100 4250
Wire Wire Line
	7100 4250 6550 4250
Connection ~ 7100 4250
Wire Wire Line
	7100 4150 7100 4250
Connection ~ 6550 4250
Wire Wire Line
	6550 4150 6550 4250
Wire Wire Line
	7100 3650 7100 3950
Connection ~ 7100 3650
Wire Wire Line
	6900 3650 7100 3650
Wire Wire Line
	6550 3650 6550 3950
$Comp
L Device:C_Small C?
U 1 1 60A60229
P 7100 4050
F 0 "C?" H 7350 4000 50  0000 R CNN
F 1 "0.1uF" H 7450 4100 50  0000 R CNN
F 2 "" H 7100 4050 50  0001 C CNN
F 3 "~" H 7100 4050 50  0001 C CNN
	1    7100 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 3650 6550 3650
Connection ~ 6550 3650
Wire Wire Line
	6550 3550 6550 3650
$Comp
L Device:R_Small R?
U 1 1 60A60220
P 6800 3650
F 0 "R?" V 6900 3700 50  0000 R CNN
F 1 "100" V 7000 3750 50  0000 R CNN
F 2 "" H 6800 3650 50  0001 C CNN
F 3 "~" H 6800 3650 50  0001 C CNN
	1    6800 3650
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60A60213
P 6550 4050
F 0 "C?" H 6459 4004 50  0000 R CNN
F 1 "10uF" H 6459 4095 50  0000 R CNN
F 2 "" H 6550 4050 50  0001 C CNN
F 3 "~" H 6550 4050 50  0001 C CNN
	1    6550 4050
	1    0    0    1   
$EndComp
Connection ~ 10000 3550
Wire Wire Line
	9300 3550 10000 3550
Connection ~ 10600 3550
Wire Wire Line
	10600 3550 10600 3500
Connection ~ 6550 3550
Wire Wire Line
	6550 3550 6550 3500
$Comp
L power:+BATT #PWR?
U 1 1 60A60204
P 6550 3500
F 0 "#PWR?" H 6550 3350 50  0001 C CNN
F 1 "+BATT" H 6565 3673 50  0000 C CNN
F 2 "" H 6550 3500 50  0001 C CNN
F 3 "" H 6550 3500 50  0001 C CNN
	1    6550 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L?
U 1 1 60A601FE
P 8900 3050
F 0 "L?" V 9085 3050 50  0000 C CNN
F 1 "2.2uH" V 8994 3050 50  0000 C CNN
F 2 "" H 8900 3050 50  0001 C CNN
F 3 "~" H 8900 3050 50  0001 C CNN
	1    8900 3050
	0    -1   -1   0   
$EndComp
$Comp
L Regulator_Switching:TPS63000 U?
U 1 1 60A601F8
P 8900 3750
F 0 "U?" H 8650 4350 50  0000 C CNN
F 1 "TPS63000" H 9000 4350 50  0000 C CNN
F 2 "Package_SON:Texas_DRC0010J_ThermalVias" H 9750 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps63000.pdf" H 8600 4300 50  0001 C CNN
	1    8900 3750
	1    0    0    -1  
$EndComp
Text Notes 7100 7050 0    50   ~ 0
To-Do:\n- Test points/ plugs for power meter module\n- check new symbol pins\n- mosfet gate conenctions order\n- breakout for other stm32 pins
$Comp
L power:GNDD #PWR?
U 1 1 60B0A953
P 6550 4350
F 0 "#PWR?" H 6550 4100 50  0001 C CNN
F 1 "GNDD" H 6554 4195 50  0000 C CNN
F 2 "" H 6550 4350 50  0001 C CNN
F 3 "" H 6550 4350 50  0001 C CNN
	1    6550 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 60B13784
P 6550 2250
F 0 "#PWR?" H 6550 2000 50  0001 C CNN
F 1 "GNDD" H 6554 2095 50  0000 C CNN
F 2 "" H 6550 2250 50  0001 C CNN
F 3 "" H 6550 2250 50  0001 C CNN
	1    6550 2250
	1    0    0    -1  
$EndComp
Wire Notes Line
	6200 6300 6200 4900
Wire Notes Line
	11000 6300 6200 6300
Wire Notes Line
	11000 4900 11000 6300
Wire Notes Line
	6200 4900 11000 4900
Text Notes 6350 5100 0    50   ~ 0
STLINK
Wire Wire Line
	9250 5850 9350 5850
Wire Wire Line
	7900 5450 8000 5450
Wire Wire Line
	7700 5550 8000 5550
Wire Wire Line
	7700 5650 7700 5550
$Comp
L power:GNDD #PWR?
U 1 1 60A430D7
P 7700 5650
F 0 "#PWR?" H 7700 5400 50  0001 C CNN
F 1 "GNDD" H 7704 5495 50  0000 C CNN
F 2 "" H 7700 5650 50  0001 C CNN
F 3 "" H 7700 5650 50  0001 C CNN
	1    7700 5650
	1    0    0    -1  
$EndComp
Text GLabel 7900 5450 0    50   Input ~ 0
MCU_PWR
Wire Wire Line
	9250 5950 9350 5950
Wire Wire Line
	7900 5950 8000 5950
Wire Wire Line
	9350 5450 9250 5450
Wire Wire Line
	9350 5550 9250 5550
Text GLabel 9350 5550 2    50   Input ~ 0
SWCLK
Text GLabel 9350 5450 2    50   Input ~ 0
SWDIO
Text GLabel 9350 5950 2    50   Input ~ 0
USART1_TX
Text GLabel 7900 5950 0    50   Input ~ 0
USART1_RX
Wire Wire Line
	7900 5850 8000 5850
Wire Wire Line
	7900 5750 8000 5750
Wire Wire Line
	8000 5650 7900 5650
Wire Wire Line
	9250 5650 9350 5650
Wire Wire Line
	9350 5750 9250 5750
Text GLabel 9350 5850 2    50   Input ~ 0
NRST
NoConn ~ 7900 5850
NoConn ~ 9350 5650
NoConn ~ 9350 5750
NoConn ~ 7900 5750
NoConn ~ 7900 5650
$Comp
L CUSTOM_PARTS:STLINK-V3MINI U?
U 1 1 60A55415
P 8100 5350
F 0 "U?" H 8625 5615 50  0000 C CNN
F 1 "STLINK-V3MINI" H 8625 5524 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x07_P1.27mm_Vertical_SMD" H 8950 5800 50  0001 C CNN
F 3 "" H 8950 5500 50  0001 C CNN
	1    8100 5350
	1    0    0    -1  
$EndComp
Wire Notes Line
	2500 700  6000 700 
Wire Notes Line
	6000 2600 6000 700 
Wire Notes Line
	2500 4700 6000 4700
Wire Notes Line
	700  2800 700  4700
Wire Notes Line
	2300 4700 700  4700
Wire Notes Line
	6000 2800 6000 4700
Wire Notes Line
	2500 2800 6000 2800
Wire Notes Line
	2500 2800 2500 4700
Wire Notes Line
	2500 2600 6000 2600
Wire Notes Line
	2500 2600 2500 700 
Wire Notes Line
	2300 2800 2300 4700
Wire Notes Line
	700  2800 2300 2800
Wire Wire Line
	3350 4000 4100 4000
Connection ~ 3350 4000
Wire Wire Line
	3350 3800 3350 4000
Wire Wire Line
	3400 3800 3350 3800
Wire Wire Line
	3250 4000 3250 4050
Connection ~ 3250 4000
Wire Wire Line
	3250 4000 3350 4000
Wire Wire Line
	3250 3950 3250 4000
Connection ~ 4100 4000
Wire Wire Line
	4100 4000 4150 4000
Wire Wire Line
	4100 3900 4100 4000
Wire Wire Line
	4150 3900 4100 3900
Wire Wire Line
	4950 3700 4050 3700
Wire Wire Line
	4950 3750 4950 3700
Wire Wire Line
	4950 4000 4950 3950
Connection ~ 4950 4000
Connection ~ 4850 4000
Wire Wire Line
	4850 4000 4950 4000
Wire Wire Line
	4850 3900 4800 3900
Wire Wire Line
	4850 4000 4850 3900
Wire Wire Line
	4800 4000 4850 4000
Wire Wire Line
	4950 4050 4950 4000
$Comp
L CUSTOM_PARTS:FS8205A U?
U 1 1 609DAB4B
P 4700 4100
F 0 "U?" H 4800 4350 50  0000 C CNN
F 1 "FS8205A" H 5050 4350 50  0000 C CNN
F 2 "Package_SO:TSSOP-8_4.4x3mm_P0.65mm" H 4700 4100 50  0001 C CNN
F 3 "" H 4700 4100 50  0001 C CNN
	1    4700 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 3800 4800 3800
Wire Wire Line
	4850 3600 4850 3800
Wire Wire Line
	4050 3600 4850 3600
Wire Wire Line
	4150 3800 4050 3800
$Comp
L power:GNDD #PWR?
U 1 1 609DCC3E
P 4950 4050
F 0 "#PWR?" H 4950 3800 50  0001 C CNN
F 1 "GNDD" H 4954 3895 50  0000 C CNN
F 2 "" H 4950 4050 50  0001 C CNN
F 3 "" H 4950 4050 50  0001 C CNN
	1    4950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3450 3250 3400
$Comp
L power:+BATT #PWR?
U 1 1 609C6119
P 3250 3400
F 0 "#PWR?" H 3250 3250 50  0001 C CNN
F 1 "+BATT" H 3265 3573 50  0000 C CNN
F 2 "" H 3250 3400 50  0001 C CNN
F 3 "" H 3250 3400 50  0001 C CNN
	1    3250 3400
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR?
U 1 1 609C5BCB
P 3250 4050
F 0 "#PWR?" H 3250 3900 50  0001 C CNN
F 1 "-BATT" H 3265 4223 50  0000 C CNN
F 2 "" H 3250 4050 50  0001 C CNN
F 3 "" H 3250 4050 50  0001 C CNN
	1    3250 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 3700 3250 3650
Connection ~ 3250 3700
Wire Wire Line
	3400 3700 3250 3700
Wire Wire Line
	3250 3750 3250 3700
$Comp
L Device:R_Small R?
U 1 1 60929A72
P 4950 3850
F 0 "R?" H 4891 3804 50  0000 R CNN
F 1 "1 kOhm" H 4891 3895 50  0000 R CNN
F 2 "" H 4950 3850 50  0001 C CNN
F 3 "~" H 4950 3850 50  0001 C CNN
	1    4950 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60928CD1
P 3250 3550
F 0 "R?" H 3192 3504 50  0000 R CNN
F 1 "330 Ohm" H 3192 3595 50  0000 R CNN
F 2 "" H 3250 3550 50  0001 C CNN
F 3 "~" H 3250 3550 50  0001 C CNN
	1    3250 3550
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60927D8D
P 3250 3850
F 0 "C?" H 3159 3804 50  0000 R CNN
F 1 "0.01 uF" H 3159 3895 50  0000 R CNN
F 2 "" H 3250 3850 50  0001 C CNN
F 3 "~" H 3250 3850 50  0001 C CNN
	1    3250 3850
	1    0    0    1   
$EndComp
$Comp
L CUSTOM_PARTS:R5478 U?
U 1 1 60927135
P 3950 3800
F 0 "U?" H 4175 3335 50  0000 C CNN
F 1 "R5478" H 4175 3426 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 4050 4100 50  0001 C CNN
F 3 "" H 3950 3800 50  0001 C CNN
	1    3950 3800
	-1   0    0    1   
$EndComp
Text Notes 2650 3050 0    50   ~ 0
Battery Protection Circuit
Wire Wire Line
	4600 1600 4600 1700
Wire Wire Line
	4600 2000 4600 1900
Wire Wire Line
	4200 2000 4200 1950
Connection ~ 4200 2000
Wire Wire Line
	4200 2000 4600 2000
Wire Wire Line
	4550 1600 4600 1600
$Comp
L Device:R_Small R?
U 1 1 60B8BBFF
P 4600 1800
F 0 "R?" H 4700 1850 50  0000 L CNN
F 1 "1 kOhm" H 4659 1755 50  0000 L CNN
F 2 "" H 4600 1800 50  0001 C CNN
F 3 "~" H 4600 1800 50  0001 C CNN
	1    4600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2050 4200 2000
$Comp
L power:GND #PWR?
U 1 1 60B76790
P 4200 2050
F 0 "#PWR?" H 4200 1800 50  0001 C CNN
F 1 "GND" H 4205 1877 50  0000 C CNN
F 2 "" H 4200 2050 50  0001 C CNN
F 3 "" H 4200 2050 50  0001 C CNN
	1    4200 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1450 4650 1350
Wire Wire Line
	4550 1450 4650 1450
$Comp
L power:+BATT #PWR?
U 1 1 60B6BC72
P 4650 1350
F 0 "#PWR?" H 4650 1200 50  0001 C CNN
F 1 "+BATT" H 4665 1523 50  0000 C CNN
F 2 "" H 4650 1350 50  0001 C CNN
F 3 "" H 4650 1350 50  0001 C CNN
	1    4650 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1600 3800 1600
Wire Wire Line
	3400 1600 3500 1600
Connection ~ 3150 1450
Wire Wire Line
	3150 1600 3150 1450
Wire Wire Line
	3200 1600 3150 1600
Wire Wire Line
	3150 1450 3500 1450
Wire Wire Line
	3150 1450 3150 1400
$Comp
L Device:R_Small R?
U 1 1 60B3341E
P 3300 1600
F 0 "R?" V 3200 1600 50  0000 C CNN
F 1 "1 kOhm" V 3100 1600 50  0000 C CNN
F 2 "" H 3300 1600 50  0001 C CNN
F 3 "~" H 3300 1600 50  0001 C CNN
	1    3300 1600
	0    1    -1   0   
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 60B323C4
P 3600 1600
F 0 "D?" V 3550 1800 50  0000 R CNN
F 1 "LED_Small" V 3650 2050 50  0000 R CNN
F 2 "" V 3600 1600 50  0001 C CNN
F 3 "~" V 3600 1600 50  0001 C CNN
	1    3600 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 1450 3800 1450
$Comp
L Device:C_Small C?
U 1 1 60B1F2CB
P 3600 1450
F 0 "C?" V 3400 1400 50  0000 L CNN
F 1 "1 uF" V 3500 1400 50  0000 L CNN
F 2 "" H 3600 1450 50  0001 C CNN
F 3 "~" H 3600 1450 50  0001 C CNN
	1    3600 1450
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60B1EE2D
P 3150 1400
F 0 "#PWR?" H 3150 1250 50  0001 C CNN
F 1 "VCC" H 3167 1573 50  0000 C CNN
F 2 "" H 3150 1400 50  0001 C CNN
F 3 "" H 3150 1400 50  0001 C CNN
	1    3150 1400
	1    0    0    -1  
$EndComp
$Comp
L CUSTOM_PARTS:STC4054 U?
U 1 1 60B1E7E3
P 3900 1450
F 0 "U?" H 4175 1715 50  0000 C CNN
F 1 "STC4054" H 4175 1624 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5_HandSoldering" H 3850 2150 50  0001 C CNN
F 3 "" H 4100 1600 50  0001 C CNN
	1    3900 1450
	1    0    0    -1  
$EndComp
Text Notes 2650 900  0    50   ~ 0
CC/CV Charger
Wire Wire Line
	1600 3950 1600 4000
Connection ~ 1600 3950
Wire Wire Line
	1800 3950 1600 3950
Wire Wire Line
	1800 4000 1800 3950
$Comp
L power:GND #PWR?
U 1 1 60B813FE
P 1800 4000
F 0 "#PWR?" H 1800 3750 50  0001 C CNN
F 1 "GND" H 1805 3827 50  0000 C CNN
F 2 "" H 1800 4000 50  0001 C CNN
F 3 "" H 1800 4000 50  0001 C CNN
	1    1800 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3500 1600 3600
Wire Wire Line
	1600 3900 1600 3950
$Comp
L power:-BATT #PWR?
U 1 1 60BAE4FF
P 1600 4000
F 0 "#PWR?" H 1600 3850 50  0001 C CNN
F 1 "-BATT" H 1615 4173 50  0000 C CNN
F 2 "" H 1600 4000 50  0001 C CNN
F 3 "" H 1600 4000 50  0001 C CNN
	1    1600 4000
	-1   0    0    1   
$EndComp
Text Notes 800  3000 0    50   ~ 0
Li-Ion Battery
$Comp
L power:+BATT #PWR?
U 1 1 608F11D5
P 1600 3500
F 0 "#PWR?" H 1600 3350 50  0001 C CNN
F 1 "+BATT" H 1615 3673 50  0000 C CNN
F 2 "" H 1600 3500 50  0001 C CNN
F 3 "" H 1600 3500 50  0001 C CNN
	1    1600 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 608EDDBF
P 1600 3800
F 0 "BT?" H 1200 3900 50  0000 L CNN
F 1 "INR18650-35E" H 900 3800 50  0000 L CNN
F 2 "CUSTOM_FOOTPRINTS:Keystone_1042" V 1600 3860 50  0001 C CNN
F 3 "~" V 1600 3860 50  0001 C CNN
	1    1600 3800
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
L power:VCC #PWR?
U 1 1 60915445
P 1850 1350
F 0 "#PWR?" H 1850 1200 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 608F93B3
P 1400 2250
F 0 "#PWR?" H 1400 2000 50  0001 C CNN
F 1 "GND" H 1405 2077 50  0000 C CNN
F 2 "" H 1400 2250 50  0001 C CNN
F 3 "" H 1400 2250 50  0001 C CNN
	1    1400 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J?
U 1 1 608DB6B4
P 1400 1700
F 0 "J?" H 1457 2167 50  0000 C CNN
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
	6000 7600 6000 4900
Wire Notes Line
	700  4900 6000 4900
Wire Wire Line
	4500 5100 4500 5700
Wire Wire Line
	4600 5100 4600 5700
Wire Wire Line
	3900 5100 4500 5100
Wire Wire Line
	5000 6200 5100 6200
Wire Wire Line
	5100 6100 5000 6100
Text GLabel 5100 6100 2    50   Input ~ 0
USART1_TX
Text GLabel 5100 6200 2    50   Input ~ 0
USART1_RX
Connection ~ 3250 6450
Wire Wire Line
	3600 6450 3250 6450
Wire Wire Line
	3600 6100 3600 6450
Wire Wire Line
	4000 6100 3600 6100
Connection ~ 2850 6450
Wire Wire Line
	2850 6500 2850 6450
$Comp
L power:GNDD #PWR?
U 1 1 60A55405
P 2850 6500
F 0 "#PWR?" H 2850 6250 50  0001 C CNN
F 1 "GNDD" H 2854 6345 50  0000 C CNN
F 2 "" H 2850 6500 50  0001 C CNN
F 3 "" H 2850 6500 50  0001 C CNN
	1    2850 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6450 2850 6400
Wire Wire Line
	3250 6450 2850 6450
Wire Wire Line
	3250 6300 3250 6450
Connection ~ 3250 5900
Wire Wire Line
	3250 5900 4000 5900
Connection ~ 2850 5900
Wire Wire Line
	3250 5900 3250 6100
Wire Wire Line
	2850 5900 3250 5900
Wire Wire Line
	2850 5900 2850 6000
Wire Wire Line
	2750 5900 2850 5900
$Comp
L Device:C_Small C?
U 1 1 60A553F3
P 3250 6200
F 0 "C?" H 3342 6246 50  0000 L CNN
F 1 "0.1 uF" H 3342 6155 50  0000 L CNN
F 2 "" H 3250 6200 50  0001 C CNN
F 3 "~" H 3250 6200 50  0001 C CNN
	1    3250 6200
	-1   0    0    1   
$EndComp
Text GLabel 2750 5900 0    50   Input ~ 0
NRST
$Comp
L Switch:SW_Push SW?
U 1 1 60A553EC
P 2850 6200
F 0 "SW?" H 2950 6350 50  0000 C CNN
F 1 "SW_Push" H 2650 6350 50  0000 C CNN
F 2 "" H 2850 6400 50  0001 C CNN
F 3 "~" H 2850 6400 50  0001 C CNN
	1    2850 6200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 6900 5000 6900
Wire Wire Line
	5100 7000 5000 7000
Text GLabel 5100 7000 2    50   Input ~ 0
SWCLK
Text GLabel 5100 6900 2    50   Input ~ 0
SWDIO
Wire Wire Line
	4500 7300 4500 7200
Connection ~ 5350 5100
Wire Wire Line
	5450 5100 5350 5100
Connection ~ 3900 5100
Connection ~ 4900 5100
Wire Wire Line
	4900 5100 4600 5100
Wire Wire Line
	4900 5100 4900 5200
Wire Wire Line
	5350 5100 4900 5100
Wire Wire Line
	5350 5200 5350 5100
Connection ~ 3450 5100
Wire Wire Line
	3450 5100 3900 5100
Wire Wire Line
	3000 5100 3450 5100
Wire Wire Line
	3900 5100 3900 5200
Connection ~ 3000 5100
Wire Wire Line
	3000 5100 2900 5100
Wire Wire Line
	3450 5100 3450 5200
Wire Wire Line
	3000 5200 3000 5100
Connection ~ 5350 5450
Wire Wire Line
	5350 5550 5350 5450
Wire Wire Line
	5350 5450 5350 5400
Wire Wire Line
	4900 5450 5350 5450
Wire Wire Line
	4900 5400 4900 5450
$Comp
L power:GNDD #PWR?
U 1 1 60A553CB
P 5350 5550
F 0 "#PWR?" H 5350 5300 50  0001 C CNN
F 1 "GNDD" H 5354 5395 50  0000 C CNN
F 2 "" H 5350 5550 50  0001 C CNN
F 3 "" H 5350 5550 50  0001 C CNN
	1    5350 5550
	1    0    0    -1  
$EndComp
Text GLabel 5450 5100 2    50   Input ~ 0
MCU_PWR
$Comp
L Device:C_Small C?
U 1 1 60A553C4
P 4900 5300
F 0 "C?" H 4992 5346 50  0000 L CNN
F 1 "10 nF" H 4992 5255 50  0000 L CNN
F 2 "" H 4900 5300 50  0001 C CNN
F 3 "~" H 4900 5300 50  0001 C CNN
	1    4900 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60A553BE
P 3000 5300
F 0 "C?" H 2909 5254 50  0000 R CNN
F 1 "200 nF" H 2909 5345 50  0000 R CNN
F 2 "" H 3000 5300 50  0001 C CNN
F 3 "~" H 3000 5300 50  0001 C CNN
	1    3000 5300
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60A553B8
P 3900 5300
F 0 "C?" H 3809 5254 50  0000 R CNN
F 1 "4.7 uF" H 3809 5345 50  0000 R CNN
F 2 "" H 3900 5300 50  0001 C CNN
F 3 "~" H 3900 5300 50  0001 C CNN
	1    3900 5300
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60A553B2
P 3450 5300
F 0 "C?" H 3358 5254 50  0000 R CNN
F 1 "200 nF" H 3358 5345 50  0000 R CNN
F 2 "" H 3450 5300 50  0001 C CNN
F 3 "~" H 3450 5300 50  0001 C CNN
	1    3450 5300
	1    0    0    1   
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 60A553AC
P 3000 5500
F 0 "#PWR?" H 3000 5250 50  0001 C CNN
F 1 "GNDD" H 3004 5345 50  0000 C CNN
F 2 "" H 3000 5500 50  0001 C CNN
F 3 "" H 3000 5500 50  0001 C CNN
	1    3000 5500
	1    0    0    -1  
$EndComp
Text GLabel 2900 5100 0    50   Input ~ 0
MCU_PWR
Wire Wire Line
	3000 5500 3000 5450
Wire Wire Line
	3000 5450 3450 5450
Wire Wire Line
	3450 5450 3450 5400
Connection ~ 3000 5450
Wire Wire Line
	3000 5450 3000 5400
Wire Wire Line
	3450 5450 3900 5450
Wire Wire Line
	3900 5450 3900 5400
Connection ~ 3450 5450
$Comp
L Device:C_Small C?
U 1 1 60A5539D
P 5350 5300
F 0 "C?" H 5442 5346 50  0000 L CNN
F 1 "1 uF" H 5442 5255 50  0000 L CNN
F 2 "" H 5350 5300 50  0001 C CNN
F 3 "~" H 5350 5300 50  0001 C CNN
	1    5350 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 60A55397
P 4500 7300
F 0 "#PWR?" H 4500 7050 50  0001 C CNN
F 1 "GNDD" H 4504 7145 50  0000 C CNN
F 2 "" H 4500 7300 50  0001 C CNN
F 3 "" H 4500 7300 50  0001 C CNN
	1    4500 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6800 3900 6800
Wire Wire Line
	3900 6700 4000 6700
Text GLabel 3900 6700 0    50   Input ~ 0
I2C1_SDA
Text GLabel 3900 6800 0    50   Input ~ 0
I2C1_SCL
$Comp
L MCU_ST_STM32F0:STM32F030F4Px U?
U 1 1 60A55385
P 4500 6400
F 0 "U?" H 4800 7050 50  0000 C CNN
F 1 "STM32F030F4Px" H 4050 7050 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 4100 5700 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00088500.pdf" H 4500 6400 50  0001 C CNN
	1    4500 6400
	1    0    0    -1  
$EndComp
Text Notes 950  5150 0    50   ~ 0
MCU & Display
Wire Wire Line
	1500 5600 1600 5600
Text GLabel 1500 5600 0    50   Input ~ 0
MCU_PWR
Wire Wire Line
	1500 5800 1600 5800
Wire Wire Line
	1500 5700 1600 5700
Text GLabel 1500 5700 0    50   Input ~ 0
I2C1_SCL
Text GLabel 1500 5800 0    50   Input ~ 0
I2C1_SDA
Wire Wire Line
	2000 6100 2000 6000
$Comp
L power:GNDD #PWR?
U 1 1 60A5536C
P 2000 6100
F 0 "#PWR?" H 2000 5850 50  0001 C CNN
F 1 "GNDD" H 2004 5945 50  0000 C CNN
F 2 "" H 2000 6100 50  0001 C CNN
F 3 "" H 2000 6100 50  0001 C CNN
	1    2000 6100
	1    0    0    -1  
$EndComp
$Comp
L CUSTOM_PARTS:SSD1306_128_32 U?
U 1 1 60A55360
P 1700 5600
F 0 "U?" H 1750 5250 50  0000 L CNN
F 1 "SSD1306_128_32" H 1600 5800 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 2000 6100 50  0001 C CNN
F 3 "" H 1700 5600 50  0001 C CNN
	1    1700 5600
	1    0    0    -1  
$EndComp
Text GLabel 2200 6950 2    50   Input ~ 0
MCU_PWR
Wire Wire Line
	2200 6950 2100 6950
$Comp
L Switch:SW_DPDT_x2 SW?
U 1 1 60A55373
P 1900 6950
F 0 "SW?" H 1900 7300 50  0000 C CNN
F 1 "PWR MODE" H 1900 7150 50  0000 C CNN
F 2 "" H 1900 6950 50  0001 C CNN
F 3 "~" H 1900 6950 50  0001 C CNN
	1    1900 6950
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60A55366
P 1150 6800
F 0 "#PWR?" H 1150 6650 50  0001 C CNN
F 1 "+3.3V" H 1165 6973 50  0000 C CNN
F 2 "" H 1150 6800 50  0001 C CNN
F 3 "" H 1150 6800 50  0001 C CNN
	1    1150 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 7050 1600 7050
Wire Wire Line
	1150 7050 1200 7050
Wire Wire Line
	1150 6850 1150 7050
Wire Wire Line
	1150 6850 1150 6800
Connection ~ 1150 6850
Wire Wire Line
	1700 6850 1150 6850
$Comp
L Switch:SW_Push SW?
U 1 1 60A55379
P 1400 7050
F 0 "SW?" H 1400 6950 50  0000 C CNN
F 1 "SW_Push" H 1400 6850 50  0000 C CNN
F 2 "" H 1400 7250 50  0001 C CNN
F 3 "~" H 1400 7250 50  0001 C CNN
	1    1400 7050
	1    0    0    -1  
$EndComp
Wire Notes Line
	700  4900 700  7600
Wire Notes Line
	700  7600 6000 7600
$EndSCHEMATC
