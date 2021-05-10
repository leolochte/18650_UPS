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
$Comp
L power:+5V #PWR?
U 1 1 609DA477
P 4550 2750
F 0 "#PWR?" H 4550 2600 50  0001 C CNN
F 1 "+5V" H 4565 2923 50  0000 C CNN
F 2 "" H 4550 2750 50  0001 C CNN
F 3 "" H 4550 2750 50  0001 C CNN
	1    4550 2750
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 609DA47D
P 4800 3050
F 0 "#PWR?" H 4800 2800 50  0001 C CNN
F 1 "GNDD" H 4804 2895 50  0000 C CNN
F 2 "" H 4800 3050 50  0001 C CNN
F 3 "" H 4800 3050 50  0001 C CNN
	1    4800 3050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4100 2850 4550 2850
Wire Wire Line
	4550 2850 4550 2750
NoConn ~ 4100 2750
Wire Wire Line
	4800 3050 4800 2950
Wire Wire Line
	4800 2950 4100 2950
Wire Wire Line
	4200 3050 4100 3050
Wire Wire Line
	4100 3150 4200 3150
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 609DA48A
P 3800 4700
F 0 "J?" H 3850 4917 50  0000 C CNN
F 1 "Conn_02x01" H 3850 4826 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical_SMD" H 3800 4700 50  0001 C CNN
F 3 "~" H 3800 4700 50  0001 C CNN
	1    3800 4700
	1    0    0    -1  
$EndComp
Text GLabel 4200 3800 2    50   Input ~ 0
SWCLK
Text GLabel 4200 3600 2    50   Input ~ 0
SWDIO
Text GLabel 4200 3250 2    50   Input ~ 0
NRST
Wire Wire Line
	4200 3250 4100 3250
Wire Wire Line
	4200 3800 4100 3800
Wire Wire Line
	4100 3600 4200 3600
NoConn ~ 4100 3700
NoConn ~ 3600 2750
Text GLabel 3500 2950 0    50   Input ~ 0
I2C1_SCL
Text GLabel 3500 2850 0    50   Input ~ 0
I2C1_SDA
NoConn ~ 3600 3050
NoConn ~ 3600 3150
NoConn ~ 3600 3250
Text GLabel 3500 3700 0    50   Input ~ 0
RSPI0_MOSI
Text GLabel 3500 3800 0    50   Input ~ 0
RSPI0_MISO
Text GLabel 3500 3900 0    50   Input ~ 0
RSPI0_SCLK
Text GLabel 4200 3900 2    50   Input ~ 0
RSPI0_CE0
Wire Wire Line
	4200 3900 4100 3900
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J?
U 1 1 609DA4A2
P 3800 3700
F 0 "J?" H 3850 4017 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 3850 3926 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical_SMD" H 3800 3700 50  0001 C CNN
F 3 "~" H 3800 3700 50  0001 C CNN
	1    3800 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3700 3600 3700
Wire Wire Line
	3600 3800 3500 3800
Wire Wire Line
	3500 3900 3600 3900
NoConn ~ 3600 3600
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J?
U 1 1 609DA4AC
P 3800 2950
F 0 "J?" H 3850 3367 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 3850 3276 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x06_P2.54mm_Vertical_SMD" H 3800 2950 50  0001 C CNN
F 3 "~" H 3800 2950 50  0001 C CNN
	1    3800 2950
	1    0    0    -1  
$EndComp
Text GLabel 4200 4700 2    50   Input ~ 0
RSPI1_MOSI
Text GLabel 3500 4600 0    50   Input ~ 0
RSPI1_MISO
Text GLabel 4200 4800 2    50   Input ~ 0
RSPI1_SCLK
Text GLabel 4200 4600 2    50   Input ~ 0
RSPI1_CE2
NoConn ~ 3600 4800
NoConn ~ 3600 4700
Wire Wire Line
	3600 4600 3500 4600
Wire Wire Line
	4100 4600 4200 4600
Wire Wire Line
	4200 4700 4100 4700
Wire Wire Line
	4100 4800 4200 4800
Text GLabel 4200 3150 2    50   Input ~ 0
USART1_TX
Text GLabel 4200 3050 2    50   Input ~ 0
USART1_RX
Wire Wire Line
	3500 2850 3600 2850
Wire Wire Line
	3600 2950 3500 2950
$EndSCHEMATC
