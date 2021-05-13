EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Switching:TPS63000 U?
U 1 1 6096E9BD
P 7050 1600
AR Path="/6096E9BD" Ref="U?"  Part="1" 
AR Path="/60952D5B/6096E9BD" Ref="U5"  Part="1" 
F 0 "U5" H 6800 2200 50  0000 C CNN
F 1 "TPS63000" H 7150 2200 50  0000 C CNN
F 2 "Package_SON:Texas_DRC0010J_ThermalVias" H 7900 1050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps63000.pdf" H 6750 2150 50  0001 C CNN
	1    7050 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L?
U 1 1 6096E9C3
P 7050 900
AR Path="/6096E9C3" Ref="L?"  Part="1" 
AR Path="/60952D5B/6096E9C3" Ref="L1"  Part="1" 
F 0 "L1" V 7235 900 50  0000 C CNN
F 1 "2.2uH" V 7144 900 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric" H 7050 900 50  0001 C CNN
F 3 "~" H 7050 900 50  0001 C CNN
	1    7050 900 
	0    -1   -1   0   
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 6096E9C9
P 4700 1350
AR Path="/6096E9C9" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/6096E9C9" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 4700 1200 50  0001 C CNN
F 1 "+BATT" H 4715 1523 50  0000 C CNN
F 2 "" H 4700 1350 50  0001 C CNN
F 3 "" H 4700 1350 50  0001 C CNN
	1    4700 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1400 4700 1350
$Comp
L power:+3V3 #PWR?
U 1 1 6096E9D0
P 9300 1350
AR Path="/6096E9D0" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/6096E9D0" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 9300 1200 50  0001 C CNN
F 1 "+3V3" H 9315 1523 50  0000 C CNN
F 2 "" H 9300 1350 50  0001 C CNN
F 3 "" H 9300 1350 50  0001 C CNN
	1    9300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1400 9300 1350
$Comp
L Device:C_Small C?
U 1 1 6096E9D8
P 4700 1900
AR Path="/6096E9D8" Ref="C?"  Part="1" 
AR Path="/60952D5B/6096E9D8" Ref="C4"  Part="1" 
F 0 "C4" H 4609 1854 50  0000 R CNN
F 1 "10uF" H 4609 1945 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4700 1900 50  0001 C CNN
F 3 "~" H 4700 1900 50  0001 C CNN
	1    4700 1900
	1    0    0    1   
$EndComp
Connection ~ 4700 1400
$Comp
L Device:R_Small R?
U 1 1 6096E9DF
P 4950 1500
AR Path="/6096E9DF" Ref="R?"  Part="1" 
AR Path="/60952D5B/6096E9DF" Ref="R6"  Part="1" 
F 0 "R6" V 5050 1550 50  0000 R CNN
F 1 "100 Ohm" V 5150 1600 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4950 1500 50  0001 C CNN
F 3 "~" H 4950 1500 50  0001 C CNN
	1    4950 1500
	0    -1   1    0   
$EndComp
Wire Wire Line
	4700 1400 4700 1500
Wire Wire Line
	4850 1500 4700 1500
Connection ~ 4700 1500
$Comp
L Device:C_Small C?
U 1 1 6096E9E8
P 5250 1900
AR Path="/6096E9E8" Ref="C?"  Part="1" 
AR Path="/60952D5B/6096E9E8" Ref="C6"  Part="1" 
F 0 "C6" H 5500 1850 50  0000 R CNN
F 1 "0.1uF" H 5600 1950 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5250 1900 50  0001 C CNN
F 3 "~" H 5250 1900 50  0001 C CNN
	1    5250 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 1500 4700 1800
Wire Wire Line
	5050 1500 5250 1500
Wire Wire Line
	5250 1500 5250 1800
Wire Wire Line
	4700 2000 4700 2100
Wire Wire Line
	5250 2000 5250 2100
Wire Wire Line
	5250 2100 4700 2100
Connection ~ 4700 2100
Wire Wire Line
	4700 2100 4700 2200
Connection ~ 5250 1500
Wire Wire Line
	4700 1400 6650 1400
Wire Wire Line
	6950 2300 6950 2250
Wire Wire Line
	6950 2250 7050 2250
Wire Wire Line
	7050 2250 7050 2200
Connection ~ 6950 2250
Wire Wire Line
	6950 2250 6950 2200
$Comp
L Device:C_Small C?
U 1 1 6096EA20
P 8850 1550
AR Path="/6096EA20" Ref="C?"  Part="1" 
AR Path="/60952D5B/6096EA20" Ref="C8"  Part="1" 
F 0 "C8" H 8759 1504 50  0000 R CNN
F 1 "10 uF" H 8759 1595 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8850 1550 50  0001 C CNN
F 3 "~" H 8850 1550 50  0001 C CNN
	1    8850 1550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6096EA26
P 9300 1550
AR Path="/6096EA26" Ref="C?"  Part="1" 
AR Path="/60952D5B/6096EA26" Ref="C10"  Part="1" 
F 0 "C10" H 9209 1504 50  0000 R CNN
F 1 "10 uF" H 9209 1595 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9300 1550 50  0001 C CNN
F 3 "~" H 9300 1550 50  0001 C CNN
	1    9300 1550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6096EA2C
P 8350 1600
AR Path="/6096EA2C" Ref="R?"  Part="1" 
AR Path="/60952D5B/6096EA2C" Ref="R10"  Part="1" 
F 0 "R10" V 8250 1550 50  0000 L CNN
F 1 "1.1 MOhm" V 8450 1350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8350 1600 50  0001 C CNN
F 3 "~" H 8350 1600 50  0001 C CNN
	1    8350 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6096EA32
P 7750 1750
AR Path="/6096EA32" Ref="R?"  Part="1" 
AR Path="/60952D5B/6096EA32" Ref="R8"  Part="1" 
F 0 "R8" H 7809 1796 50  0000 L CNN
F 1 "200 kOhm" H 7750 1900 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7750 1750 50  0001 C CNN
F 3 "~" H 7750 1750 50  0001 C CNN
	1    7750 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 1450 9300 1400
Connection ~ 9300 1400
Wire Wire Line
	9300 1750 9300 1700
Wire Wire Line
	8850 1450 8850 1400
Connection ~ 8850 1400
Wire Wire Line
	8850 1400 9300 1400
Wire Wire Line
	8850 1650 8850 1700
Wire Wire Line
	8850 1700 9300 1700
Connection ~ 9300 1700
Wire Wire Line
	9300 1700 9300 1650
Wire Wire Line
	7450 1600 7750 1600
Wire Wire Line
	7750 1600 7750 1650
Connection ~ 7750 1600
Wire Wire Line
	8450 1600 8500 1600
Wire Wire Line
	8500 1600 8500 1400
Wire Wire Line
	7750 1950 7750 1850
Wire Notes Line
	4350 2550 4350 650 
Wire Wire Line
	6550 1200 6550 900 
Wire Wire Line
	6550 900  6950 900 
Wire Wire Line
	6550 1200 6650 1200
Wire Wire Line
	7150 900  7550 900 
Wire Wire Line
	7550 900  7550 1200
Wire Wire Line
	7450 1200 7550 1200
Text Notes 4500 850  0    50   ~ 0
3V3 Buck/Boost
$Comp
L power:+5V #PWR?
U 1 1 6096EA62
P 9300 3450
AR Path="/6096EA62" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/6096EA62" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 9300 3300 50  0001 C CNN
F 1 "+5V" H 9315 3623 50  0000 C CNN
F 2 "" H 9300 3450 50  0001 C CNN
F 3 "" H 9300 3450 50  0001 C CNN
	1    9300 3450
	1    0    0    -1  
$EndComp
Text Notes 4500 2950 0    50   ~ 0
5V Buck/Boost
Wire Wire Line
	7450 3300 7550 3300
Wire Wire Line
	7550 3000 7550 3300
Wire Wire Line
	7150 3000 7550 3000
Wire Wire Line
	6550 3300 6650 3300
Wire Wire Line
	6550 3000 6950 3000
Wire Wire Line
	6550 3300 6550 3000
Wire Notes Line
	4350 4650 4350 2750
Wire Wire Line
	6950 4350 6950 4300
Wire Wire Line
	7050 4350 7050 4300
Connection ~ 6950 4350
Wire Wire Line
	6950 4350 7050 4350
Wire Wire Line
	6950 4400 6950 4350
Wire Wire Line
	4700 3500 6650 3500
Wire Wire Line
	4700 4200 4700 4300
Wire Wire Line
	5250 4200 4700 4200
Wire Wire Line
	5250 4100 5250 4200
Connection ~ 4700 4200
Wire Wire Line
	4700 4100 4700 4200
Wire Wire Line
	5250 3600 5250 3900
Connection ~ 5250 3600
Wire Wire Line
	5050 3600 5250 3600
Wire Wire Line
	4700 3600 4700 3900
$Comp
L Device:C_Small C?
U 1 1 6096EADA
P 5250 4000
AR Path="/6096EADA" Ref="C?"  Part="1" 
AR Path="/60952D5B/6096EADA" Ref="C7"  Part="1" 
F 0 "C7" H 5500 3950 50  0000 R CNN
F 1 "0.1uF" H 5600 4050 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5250 4000 50  0001 C CNN
F 3 "~" H 5250 4000 50  0001 C CNN
	1    5250 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 3600 4700 3600
Connection ~ 4700 3600
Wire Wire Line
	4700 3500 4700 3600
$Comp
L Device:R_Small R?
U 1 1 6096EAE3
P 4950 3600
AR Path="/6096EAE3" Ref="R?"  Part="1" 
AR Path="/60952D5B/6096EAE3" Ref="R7"  Part="1" 
F 0 "R7" V 5050 3650 50  0000 R CNN
F 1 "100 Ohm" V 5150 3700 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4950 3600 50  0001 C CNN
F 3 "~" H 4950 3600 50  0001 C CNN
	1    4950 3600
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6096EAE9
P 4700 4000
AR Path="/6096EAE9" Ref="C?"  Part="1" 
AR Path="/60952D5B/6096EAE9" Ref="C5"  Part="1" 
F 0 "C5" H 4609 3954 50  0000 R CNN
F 1 "10uF" H 4609 4045 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4700 4000 50  0001 C CNN
F 3 "~" H 4700 4000 50  0001 C CNN
	1    4700 4000
	1    0    0    1   
$EndComp
Connection ~ 4700 3500
Wire Wire Line
	4700 3500 4700 3450
$Comp
L power:+BATT #PWR?
U 1 1 6096EAF5
P 4700 3450
AR Path="/6096EAF5" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/6096EAF5" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 4700 3300 50  0001 C CNN
F 1 "+BATT" H 4715 3623 50  0000 C CNN
F 2 "" H 4700 3450 50  0001 C CNN
F 3 "" H 4700 3450 50  0001 C CNN
	1    4700 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L?
U 1 1 6096EAFB
P 7050 3000
AR Path="/6096EAFB" Ref="L?"  Part="1" 
AR Path="/60952D5B/6096EAFB" Ref="L2"  Part="1" 
F 0 "L2" V 7235 3000 50  0000 C CNN
F 1 "2.2uH" V 7144 3000 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric" H 7050 3000 50  0001 C CNN
F 3 "~" H 7050 3000 50  0001 C CNN
	1    7050 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 6096EB07
P 4700 4300
AR Path="/6096EB07" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/6096EB07" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 4700 4050 50  0001 C CNN
F 1 "GNDD" H 4704 4145 50  0000 C CNN
F 2 "" H 4700 4300 50  0001 C CNN
F 3 "" H 4700 4300 50  0001 C CNN
	1    4700 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 6096EB0D
P 4700 2200
AR Path="/6096EB0D" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/6096EB0D" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 4700 1950 50  0001 C CNN
F 1 "GNDD" H 4704 2045 50  0000 C CNN
F 2 "" H 4700 2200 50  0001 C CNN
F 3 "" H 4700 2200 50  0001 C CNN
	1    4700 2200
	1    0    0    -1  
$EndComp
Wire Notes Line
	650  650  4150 650 
Wire Notes Line
	4150 2550 4150 650 
Wire Notes Line
	650  4650 4150 4650
Wire Notes Line
	4150 2750 4150 4650
Wire Notes Line
	650  2750 4150 2750
Wire Notes Line
	650  2750 650  4650
Wire Notes Line
	650  2550 4150 2550
Wire Notes Line
	650  2550 650  650 
Wire Wire Line
	1500 3750 1500 3950
Wire Wire Line
	1550 3750 1500 3750
Wire Wire Line
	1400 3950 1400 4000
Connection ~ 1400 3950
Wire Wire Line
	1400 3950 1500 3950
Wire Wire Line
	1400 3900 1400 3950
Connection ~ 2350 3950
Wire Wire Line
	2350 3950 2400 3950
Wire Wire Line
	2350 3850 2350 3950
Wire Wire Line
	2400 3850 2350 3850
Wire Wire Line
	3200 3700 3200 3650
Wire Wire Line
	3200 3950 3200 3900
Connection ~ 3200 3950
Connection ~ 3100 3950
Wire Wire Line
	3100 3950 3200 3950
Wire Wire Line
	3100 3850 3050 3850
Wire Wire Line
	3100 3950 3100 3850
Wire Wire Line
	3050 3950 3100 3950
Wire Wire Line
	3200 4000 3200 3950
$Comp
L CUSTOM_PARTS:FS8205A U?
U 1 1 6096EB31
P 2950 4050
AR Path="/6096EB31" Ref="U?"  Part="1" 
AR Path="/60952D5B/6096EB31" Ref="U4"  Part="1" 
F 0 "U4" H 3050 4300 50  0000 C CNN
F 1 "FS8205A" H 3300 4300 50  0000 C CNN
F 2 "Package_SO:TSSOP-8_4.4x3mm_P0.65mm" H 2950 4050 50  0001 C CNN
F 3 "" H 2950 4050 50  0001 C CNN
	1    2950 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 3750 3050 3750
$Comp
L power:GNDD #PWR?
U 1 1 6096EB3B
P 3200 4000
AR Path="/6096EB3B" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/6096EB3B" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 3200 3750 50  0001 C CNN
F 1 "GNDD" H 3204 3845 50  0000 C CNN
F 2 "" H 3200 4000 50  0001 C CNN
F 3 "" H 3200 4000 50  0001 C CNN
	1    3200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3400 1400 3350
$Comp
L power:+BATT #PWR?
U 1 1 6096EB42
P 1400 3350
AR Path="/6096EB42" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/6096EB42" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 1400 3200 50  0001 C CNN
F 1 "+BATT" H 1415 3523 50  0000 C CNN
F 2 "" H 1400 3350 50  0001 C CNN
F 3 "" H 1400 3350 50  0001 C CNN
	1    1400 3350
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR?
U 1 1 6096EB48
P 1400 4000
AR Path="/6096EB48" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/6096EB48" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 1400 3850 50  0001 C CNN
F 1 "-BATT" H 1415 4173 50  0000 C CNN
F 2 "" H 1400 4000 50  0001 C CNN
F 3 "" H 1400 4000 50  0001 C CNN
	1    1400 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 3650 1400 3600
Connection ~ 1400 3650
Wire Wire Line
	1550 3650 1400 3650
Wire Wire Line
	1400 3700 1400 3650
$Comp
L Device:R_Small R?
U 1 1 6096EB52
P 3200 3800
AR Path="/6096EB52" Ref="R?"  Part="1" 
AR Path="/60952D5B/6096EB52" Ref="R4"  Part="1" 
F 0 "R4" H 3141 3754 50  0000 R CNN
F 1 "1 kOhm" H 3141 3845 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3200 3800 50  0001 C CNN
F 3 "~" H 3200 3800 50  0001 C CNN
	1    3200 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6096EB58
P 1400 3500
AR Path="/6096EB58" Ref="R?"  Part="1" 
AR Path="/60952D5B/6096EB58" Ref="R1"  Part="1" 
F 0 "R1" H 1342 3454 50  0000 R CNN
F 1 "330 Ohm" H 1342 3545 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1400 3500 50  0001 C CNN
F 3 "~" H 1400 3500 50  0001 C CNN
	1    1400 3500
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6096EB5E
P 1400 3800
AR Path="/6096EB5E" Ref="C?"  Part="1" 
AR Path="/60952D5B/6096EB5E" Ref="C2"  Part="1" 
F 0 "C2" H 1309 3754 50  0000 R CNN
F 1 "0.01 uF" H 1309 3845 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1400 3800 50  0001 C CNN
F 3 "~" H 1400 3800 50  0001 C CNN
	1    1400 3800
	1    0    0    1   
$EndComp
$Comp
L CUSTOM_PARTS:R5478 U?
U 1 1 6096EB64
P 2100 3750
AR Path="/6096EB64" Ref="U?"  Part="1" 
AR Path="/60952D5B/6096EB64" Ref="U2"  Part="1" 
F 0 "U2" H 2325 3285 50  0000 C CNN
F 1 "R5478" H 2325 3376 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2200 4050 50  0001 C CNN
F 3 "" H 2100 3750 50  0001 C CNN
	1    2100 3750
	-1   0    0    1   
$EndComp
Text Notes 800  3000 0    50   ~ 0
Battery Protection Circuit
Wire Wire Line
	3350 1550 3350 1650
Wire Wire Line
	3350 1950 3350 1850
Wire Wire Line
	2950 1950 2950 1900
Connection ~ 2950 1950
Wire Wire Line
	2950 1950 3350 1950
Wire Wire Line
	3300 1550 3350 1550
$Comp
L Device:R_Small R?
U 1 1 6096EB71
P 3350 1750
AR Path="/6096EB71" Ref="R?"  Part="1" 
AR Path="/60952D5B/6096EB71" Ref="R5"  Part="1" 
F 0 "R5" H 3450 1800 50  0000 L CNN
F 1 "1.25 kOhm" H 3409 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3350 1750 50  0001 C CNN
F 3 "~" H 3350 1750 50  0001 C CNN
	1    3350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2000 2950 1950
$Comp
L power:GND #PWR?
U 1 1 6096EB78
P 2950 2000
AR Path="/6096EB78" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/6096EB78" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 2950 1750 50  0001 C CNN
F 1 "GND" H 2955 1827 50  0000 C CNN
F 2 "" H 2950 2000 50  0001 C CNN
F 3 "" H 2950 2000 50  0001 C CNN
	1    2950 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1400 3400 1300
Wire Wire Line
	3300 1400 3400 1400
$Comp
L power:+BATT #PWR?
U 1 1 6096EB80
P 3400 1300
AR Path="/6096EB80" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/6096EB80" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 3400 1150 50  0001 C CNN
F 1 "+BATT" H 3415 1473 50  0000 C CNN
F 2 "" H 3400 1300 50  0001 C CNN
F 3 "" H 3400 1300 50  0001 C CNN
	1    3400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1550 2550 1550
Wire Wire Line
	2150 1550 2250 1550
$Comp
L Device:R_Small R?
U 1 1 6096EB8D
P 2050 1550
AR Path="/6096EB8D" Ref="R?"  Part="1" 
AR Path="/60952D5B/6096EB8D" Ref="R3"  Part="1" 
F 0 "R3" V 1950 1550 50  0000 C CNN
F 1 "1 kOhm" V 1850 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2050 1550 50  0001 C CNN
F 3 "~" H 2050 1550 50  0001 C CNN
	1    2050 1550
	0    1    -1   0   
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 6096EB93
P 2350 1550
AR Path="/6096EB93" Ref="D?"  Part="1" 
AR Path="/60952D5B/6096EB93" Ref="D1"  Part="1" 
F 0 "D1" H 2350 1750 50  0000 R CNN
F 1 "LED_CHRG" H 2500 1650 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 2350 1550 50  0001 C CNN
F 3 "~" V 2350 1550 50  0001 C CNN
	1    2350 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6096EB9A
P 1450 1550
AR Path="/6096EB9A" Ref="C?"  Part="1" 
AR Path="/60952D5B/6096EB9A" Ref="C3"  Part="1" 
F 0 "C3" H 1250 1500 50  0000 L CNN
F 1 "1 uF" H 1150 1600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1450 1550 50  0001 C CNN
F 3 "~" H 1450 1550 50  0001 C CNN
	1    1450 1550
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 6096EBA0
P 1000 1350
AR Path="/6096EBA0" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/6096EBA0" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 1000 1200 50  0001 C CNN
F 1 "VCC" H 1017 1523 50  0000 C CNN
F 2 "" H 1000 1350 50  0001 C CNN
F 3 "" H 1000 1350 50  0001 C CNN
	1    1000 1350
	1    0    0    -1  
$EndComp
$Comp
L CUSTOM_PARTS:STC4054 U?
U 1 1 6096EBA6
P 2650 1400
AR Path="/6096EBA6" Ref="U?"  Part="1" 
AR Path="/60952D5B/6096EBA6" Ref="U3"  Part="1" 
F 0 "U3" H 2925 1665 50  0000 C CNN
F 1 "STC4054" H 2925 1574 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5_HandSoldering" H 2600 2100 50  0001 C CNN
F 3 "" H 2850 1550 50  0001 C CNN
	1    2650 1400
	1    0    0    -1  
$EndComp
Text Notes 800  850  0    50   ~ 0
CC/CV Charger
Wire Wire Line
	1500 7000 1500 7050
Connection ~ 1500 7000
Wire Wire Line
	1700 7000 1500 7000
Wire Wire Line
	1700 7050 1700 7000
$Comp
L power:GND #PWR?
U 1 1 6097A865
P 1700 7050
AR Path="/6097A865" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/6097A865" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 1700 6800 50  0001 C CNN
F 1 "GND" H 1705 6877 50  0000 C CNN
F 2 "" H 1700 7050 50  0001 C CNN
F 3 "" H 1700 7050 50  0001 C CNN
	1    1700 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6950 1500 7000
$Comp
L power:-BATT #PWR?
U 1 1 6097A86D
P 1500 7050
AR Path="/6097A86D" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/6097A86D" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 1500 6900 50  0001 C CNN
F 1 "-BATT" H 1515 7223 50  0000 C CNN
F 2 "" H 1500 7050 50  0001 C CNN
F 3 "" H 1500 7050 50  0001 C CNN
	1    1500 7050
	-1   0    0    1   
$EndComp
Text Notes 750  5050 0    50   ~ 0
Li-Ion Battery
$Comp
L power:+BATT #PWR?
U 1 1 6097A874
P 1500 5400
AR Path="/6097A874" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/6097A874" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 1500 5250 50  0001 C CNN
F 1 "+BATT" H 1515 5573 50  0000 C CNN
F 2 "" H 1500 5400 50  0001 C CNN
F 3 "" H 1500 5400 50  0001 C CNN
	1    1500 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 6097A87A
P 1500 6850
AR Path="/6097A87A" Ref="BT?"  Part="1" 
AR Path="/60952D5B/6097A87A" Ref="BT1"  Part="1" 
F 0 "BT1" H 1100 6950 50  0000 L CNN
F 1 "INR18650-35E" H 800 6850 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_1042_1x18650" V 1500 6910 50  0001 C CNN
F 3 "~" V 1500 6910 50  0001 C CNN
	1    1500 6850
	1    0    0    -1  
$EndComp
Text GLabel 1600 5500 2    50   Input ~ 0
Shunt-
Text GLabel 1600 5900 2    50   Input ~ 0
Shunt+
$Comp
L Device:C_Small C?
U 1 1 6097CD51
P 1000 1550
AR Path="/6097CD51" Ref="C?"  Part="1" 
AR Path="/60952D5B/6097CD51" Ref="C1"  Part="1" 
F 0 "C1" H 800 1500 50  0000 L CNN
F 1 "100 nF" H 650 1600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 1550 50  0001 C CNN
F 3 "~" H 1000 1550 50  0001 C CNN
	1    1000 1550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 609846D3
P 1000 1750
AR Path="/609846D3" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/609846D3" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 1000 1500 50  0001 C CNN
F 1 "GND" H 1005 1577 50  0000 C CNN
F 2 "" H 1000 1750 50  0001 C CNN
F 3 "" H 1000 1750 50  0001 C CNN
	1    1000 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1400 1900 1400
Wire Wire Line
	1000 1400 1000 1350
Wire Wire Line
	1000 1450 1000 1400
Connection ~ 1000 1400
Wire Wire Line
	1450 1450 1450 1400
Connection ~ 1450 1400
Wire Wire Line
	1450 1400 1000 1400
Wire Wire Line
	1450 1650 1450 1700
Wire Wire Line
	1450 1700 1000 1700
Wire Wire Line
	1000 1700 1000 1750
Wire Wire Line
	1000 1700 1000 1650
Connection ~ 1000 1700
Wire Wire Line
	1950 1550 1900 1550
Wire Wire Line
	1900 1550 1900 1400
Connection ~ 1900 1400
Wire Wire Line
	1900 1400 1450 1400
Wire Wire Line
	1500 3950 2350 3950
Connection ~ 1500 3950
Wire Wire Line
	2200 3650 3200 3650
Wire Wire Line
	2200 3750 2250 3750
Wire Wire Line
	2250 3750 2250 3600
Wire Wire Line
	2250 3600 3100 3600
Wire Wire Line
	3100 3600 3100 3750
Wire Wire Line
	2200 3550 2300 3550
Wire Wire Line
	2300 3550 2300 3750
Wire Wire Line
	2300 3750 2400 3750
$Comp
L power:GNDD #PWR?
U 1 1 60A25B88
P 6950 2300
AR Path="/60A25B88" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/60A25B88" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 6950 2050 50  0001 C CNN
F 1 "GNDD" H 6954 2145 50  0000 C CNN
F 2 "" H 6950 2300 50  0001 C CNN
F 3 "" H 6950 2300 50  0001 C CNN
	1    6950 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 60A2E5C9
P 6950 4400
AR Path="/60A2E5C9" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/60A2E5C9" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 6950 4150 50  0001 C CNN
F 1 "GNDD" H 6954 4245 50  0000 C CNN
F 2 "" H 6950 4400 50  0001 C CNN
F 3 "" H 6950 4400 50  0001 C CNN
	1    6950 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60A52356
P 8350 1850
AR Path="/60A52356" Ref="C?"  Part="1" 
AR Path="/60952D5B/60A52356" Ref="C9"  Part="1" 
F 0 "C9" V 8300 1800 50  0000 R CNN
F 1 "2.2 pF" V 8200 1950 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8350 1850 50  0001 C CNN
F 3 "~" H 8350 1850 50  0001 C CNN
	1    8350 1850
	0    1    -1   0   
$EndComp
Wire Wire Line
	7450 1400 8500 1400
Wire Wire Line
	8450 1850 8500 1850
Wire Wire Line
	8500 1850 8500 1600
Connection ~ 8500 1600
Wire Wire Line
	8250 1850 8100 1850
Wire Wire Line
	8100 1850 8100 1600
Wire Wire Line
	7750 1600 8100 1600
Wire Wire Line
	8100 1600 8250 1600
Connection ~ 8100 1600
Wire Wire Line
	8500 1400 8850 1400
Connection ~ 8500 1400
Wire Wire Line
	9300 3500 9300 3450
$Comp
L Device:C_Small C?
U 1 1 60A99004
P 8850 3650
AR Path="/60A99004" Ref="C?"  Part="1" 
AR Path="/60952D5B/60A99004" Ref="C20"  Part="1" 
F 0 "C20" H 8759 3604 50  0000 R CNN
F 1 "10 uF" H 8759 3695 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8850 3650 50  0001 C CNN
F 3 "~" H 8850 3650 50  0001 C CNN
	1    8850 3650
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60A9900A
P 9300 3650
AR Path="/60A9900A" Ref="C?"  Part="1" 
AR Path="/60952D5B/60A9900A" Ref="C21"  Part="1" 
F 0 "C21" H 9209 3604 50  0000 R CNN
F 1 "10 uF" H 9209 3695 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9300 3650 50  0001 C CNN
F 3 "~" H 9300 3650 50  0001 C CNN
	1    9300 3650
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60A99010
P 8350 3700
AR Path="/60A99010" Ref="R?"  Part="1" 
AR Path="/60952D5B/60A99010" Ref="R11"  Part="1" 
F 0 "R11" V 8250 3650 50  0000 L CNN
F 1 "1.8 MOhm" V 8450 3450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8350 3700 50  0001 C CNN
F 3 "~" H 8350 3700 50  0001 C CNN
	1    8350 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60A99016
P 7750 3850
AR Path="/60A99016" Ref="R?"  Part="1" 
AR Path="/60952D5B/60A99016" Ref="R9"  Part="1" 
F 0 "R9" H 7809 3896 50  0000 L CNN
F 1 "200 kOhm" H 7750 4000 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7750 3850 50  0001 C CNN
F 3 "~" H 7750 3850 50  0001 C CNN
	1    7750 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 3550 9300 3500
Connection ~ 9300 3500
Wire Wire Line
	9300 3850 9300 3800
Wire Wire Line
	8850 3550 8850 3500
Connection ~ 8850 3500
Wire Wire Line
	8850 3500 9300 3500
Wire Wire Line
	8850 3750 8850 3800
Wire Wire Line
	8850 3800 9300 3800
Connection ~ 9300 3800
Wire Wire Line
	9300 3800 9300 3750
Wire Wire Line
	7450 3700 7750 3700
Wire Wire Line
	7750 3700 7750 3750
Connection ~ 7750 3700
Wire Wire Line
	8450 3700 8500 3700
Wire Wire Line
	8500 3700 8500 3500
Wire Wire Line
	7750 4050 7750 3950
$Comp
L Device:C_Small C?
U 1 1 60A99038
P 8350 3950
AR Path="/60A99038" Ref="C?"  Part="1" 
AR Path="/60952D5B/60A99038" Ref="C11"  Part="1" 
F 0 "C11" V 8300 3900 50  0000 R CNN
F 1 "1.2 pF" V 8200 4050 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8350 3950 50  0001 C CNN
F 3 "~" H 8350 3950 50  0001 C CNN
	1    8350 3950
	0    1    -1   0   
$EndComp
Wire Wire Line
	7450 3500 8500 3500
Wire Wire Line
	8450 3950 8500 3950
Wire Wire Line
	8500 3950 8500 3700
Connection ~ 8500 3700
Wire Wire Line
	8250 3950 8100 3950
Wire Wire Line
	8100 3950 8100 3700
Wire Wire Line
	7750 3700 8100 3700
Wire Wire Line
	8100 3700 8250 3700
Connection ~ 8100 3700
Wire Wire Line
	8500 3500 8850 3500
Connection ~ 8500 3500
$Comp
L power:GNDD #PWR?
U 1 1 60AAAF0F
P 9300 3850
AR Path="/60AAAF0F" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/60AAAF0F" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 9300 3600 50  0001 C CNN
F 1 "GNDD" H 9304 3695 50  0000 C CNN
F 2 "" H 9300 3850 50  0001 C CNN
F 3 "" H 9300 3850 50  0001 C CNN
	1    9300 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 60AB3BD8
P 9300 1750
AR Path="/60AB3BD8" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/60AB3BD8" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 9300 1500 50  0001 C CNN
F 1 "GNDD" H 9304 1595 50  0000 C CNN
F 2 "" H 9300 1750 50  0001 C CNN
F 3 "" H 9300 1750 50  0001 C CNN
	1    9300 1750
	1    0    0    -1  
$EndComp
Wire Notes Line
	9950 2750 9950 4650
Wire Notes Line
	4350 4650 9950 4650
Wire Notes Line
	4350 2750 9950 2750
Wire Notes Line
	9950 2550 9950 650 
Wire Notes Line
	4350 650  9950 650 
Wire Notes Line
	4350 2550 9950 2550
$Comp
L Device:R R2
U 1 1 60A3672E
P 1500 5700
F 0 "R2" H 1413 5746 50  0000 R CNN
F 1 "0.1 Ohm" H 1413 5655 50  0000 R CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 1430 5700 50  0001 C CNN
F 3 "~" H 1500 5700 50  0001 C CNN
	1    1500 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5400 1500 5500
Wire Wire Line
	1500 5850 1500 5900
Wire Wire Line
	1600 5900 1500 5900
Wire Wire Line
	1500 6550 1500 6650
Wire Wire Line
	1600 5500 1500 5500
Connection ~ 1500 5500
Wire Wire Line
	1500 5500 1500 5550
$Comp
L power:GNDD #PWR?
U 1 1 60A80F88
P 7750 4050
AR Path="/60A80F88" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/60A80F88" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 7750 3800 50  0001 C CNN
F 1 "GNDD" H 7754 3895 50  0000 C CNN
F 2 "" H 7750 4050 50  0001 C CNN
F 3 "" H 7750 4050 50  0001 C CNN
	1    7750 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 60A929A9
P 7750 1950
AR Path="/60A929A9" Ref="#PWR?"  Part="1" 
AR Path="/60952D5B/60A929A9" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 7750 1700 50  0001 C CNN
F 1 "GNDD" H 7754 1795 50  0000 C CNN
F 2 "" H 7750 1950 50  0001 C CNN
F 3 "" H 7750 1950 50  0001 C CNN
	1    7750 1950
	1    0    0    -1  
$EndComp
Text GLabel 6550 3900 0    50   Input ~ 0
PA5
Wire Wire Line
	5250 3600 6400 3600
$Comp
L Regulator_Switching:TPS63000 U?
U 1 1 6096EB01
P 7050 3700
AR Path="/6096EB01" Ref="U?"  Part="1" 
AR Path="/60952D5B/6096EB01" Ref="U6"  Part="1" 
F 0 "U6" H 6800 4300 50  0000 C CNN
F 1 "TPS63000" H 7150 4300 50  0000 C CNN
F 2 "Package_SON:Texas_DRC0010J_ThermalVias" H 7900 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps63000.pdf" H 6750 4250 50  0001 C CNN
	1    7050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3900 6550 3900
Wire Wire Line
	5250 1500 6400 1500
Text GLabel 6500 1800 0    50   Input ~ 0
PA4
Wire Wire Line
	6500 1800 6650 1800
Wire Wire Line
	6400 1600 6400 1500
Wire Wire Line
	6400 1600 6650 1600
Connection ~ 6400 1500
Wire Wire Line
	6400 1500 6650 1500
Wire Notes Line
	650  4850 650  7600
Wire Notes Line
	650  7600 2300 7600
Wire Notes Line
	2300 4850 2300 7600
Wire Notes Line
	650  4850 2300 4850
Wire Wire Line
	6400 3700 6400 3600
Wire Wire Line
	6400 3700 6650 3700
Connection ~ 6400 3600
Wire Wire Line
	6400 3600 6650 3600
$Comp
L Switch:SW_SPDT SW1
U 1 1 60BDD630
P 1500 6350
F 0 "SW1" V 1546 6162 50  0000 R CNN
F 1 "SW_SPDT" V 1455 6162 50  0000 R CNN
F 2 "CUSTOM_FOOTPRINTS:ALPS_SPEF210101" H 1500 6350 50  0001 C CNN
F 3 "~" H 1500 6350 50  0001 C CNN
	1    1500 6350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 6150 1600 6000
Wire Wire Line
	1600 6000 1500 6000
Wire Wire Line
	1500 6000 1500 5900
Connection ~ 1500 5900
NoConn ~ 1400 6150
$EndSCHEMATC
