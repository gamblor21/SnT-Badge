EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector_Generic:Conn_02x12_Odd_Even J1
U 1 1 604501BD
P 3800 3650
F 0 "J1" H 3850 4367 50  0000 C CNN
F 1 "Conn_02x12_Row_Letter_Last" H 3850 4276 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x12_P2.54mm_Vertical_SMD" H 3800 3650 50  0001 C CNN
F 3 "~" H 3800 3650 50  0001 C CNN
	1    3800 3650
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D2
U 1 1 604683E7
P 2200 1100
F 0 "D2" H 2544 1146 50  0000 L CNN
F 1 "WS2812B" H 2544 1055 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 2250 800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 2300 725 50  0001 L TNN
	1    2200 1100
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Motion:ICM-20602 U1
U 1 1 60470492
P 6450 3350
F 0 "U1" H 6050 2750 50  0000 C CNN
F 1 "ICM-20602" H 6050 2850 50  0000 C CNN
F 2 "Package_LGA:LGA-16_3x3mm_P0.5mm_LayoutBorder3x5y" H 6450 3600 50  0001 C CNN
F 3 "http://www.invensense.com/wp-content/uploads/2016/10/DS-000176-ICM-20602-v1.0.pdf" H 6500 4300 50  0001 C CNN
	1    6450 3350
	1    0    0    -1  
$EndComp
$Comp
L LED:SK6812 D1
U 1 1 60473110
P 1150 1100
F 0 "D1" H 1494 1146 50  0000 L CNN
F 1 "SK6812" H 1494 1055 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812_PLCC4_5.0x5.0mm_P3.2mm" H 1200 800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/1138/SK6812+LED+datasheet+.pdf" H 1250 725 50  0001 L TNN
	1    1150 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 60481465
P 6450 4000
F 0 "#PWR0101" H 6450 3750 50  0001 C CNN
F 1 "GND" H 6455 3827 50  0000 C CNN
F 2 "" H 6450 4000 50  0001 C CNN
F 3 "" H 6450 4000 50  0001 C CNN
	1    6450 4000
	1    0    0    -1  
$EndComp
Text GLabel 5750 3450 0    50   Input ~ 0
SCL
Wire Wire Line
	5750 3450 5950 3450
Wire Wire Line
	6450 4000 6450 3850
Text GLabel 5750 3350 0    50   Input ~ 0
SDA
Wire Wire Line
	5750 3350 5950 3350
Wire Wire Line
	6550 2850 6550 2600
Text GLabel 6450 2600 1    50   Input ~ 0
VDD
Wire Wire Line
	6450 2600 6450 2850
Text GLabel 7100 3250 2    50   Input ~ 0
INT
Wire Wire Line
	7100 3250 6950 3250
Wire Wire Line
	7100 3350 6950 3350
$Comp
L power:GND #PWR0102
U 1 1 60485FD2
P 7100 3950
F 0 "#PWR0102" H 7100 3700 50  0001 C CNN
F 1 "GND" H 7105 3777 50  0000 C CNN
F 2 "" H 7100 3950 50  0001 C CNN
F 3 "" H 7100 3950 50  0001 C CNN
	1    7100 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 60486A52
P 7100 3700
F 0 "C1" H 7192 3746 50  0000 L CNN
F 1 "0.1uF" H 7192 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7100 3700 50  0001 C CNN
F 3 "~" H 7100 3700 50  0001 C CNN
	1    7100 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3450 7100 3450
Wire Wire Line
	7100 3450 7100 3600
Wire Wire Line
	7100 3800 7100 3950
$Comp
L Device:C_Small C4
U 1 1 60488C17
P 7050 2700
F 0 "C4" H 7142 2746 50  0000 L CNN
F 1 "10nF" H 7142 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7050 2700 50  0001 C CNN
F 3 "~" H 7050 2700 50  0001 C CNN
	1    7050 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 604898B1
P 5950 2700
F 0 "C3" H 6042 2746 50  0000 L CNN
F 1 "2.2uF" H 6042 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5950 2700 50  0001 C CNN
F 3 "~" H 5950 2700 50  0001 C CNN
	1    5950 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6048A308
P 5550 2850
F 0 "#PWR01" H 5550 2600 50  0001 C CNN
F 1 "GND" H 5555 2677 50  0000 C CNN
F 2 "" H 5550 2850 50  0001 C CNN
F 3 "" H 5550 2850 50  0001 C CNN
	1    5550 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6048AB2C
P 5950 2850
F 0 "#PWR02" H 5950 2600 50  0001 C CNN
F 1 "GND" H 5955 2677 50  0000 C CNN
F 2 "" H 5950 2850 50  0001 C CNN
F 3 "" H 5950 2850 50  0001 C CNN
	1    5950 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2850 5950 2800
Wire Wire Line
	5550 2800 5550 2850
Wire Wire Line
	5550 2600 5950 2600
$Comp
L Device:C_Small C2
U 1 1 60489544
P 5550 2700
F 0 "C2" H 5642 2746 50  0000 L CNN
F 1 "0.1uF" H 5642 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5550 2700 50  0001 C CNN
F 3 "~" H 5550 2700 50  0001 C CNN
	1    5550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2600 5950 2600
Connection ~ 5950 2600
Wire Wire Line
	7050 2850 7050 2800
Wire Wire Line
	7050 2600 6550 2600
Text GLabel 5750 3550 0    50   Input ~ 0
VDD
Wire Wire Line
	5750 3550 5950 3550
Text GLabel 5100 3500 1    50   Input ~ 0
SDA
Text GLabel 4950 3500 1    50   Input ~ 0
SCL
$Comp
L Device:R_Small_US R2
U 1 1 604931AB
P 5100 3700
F 0 "R2" H 5168 3746 50  0000 L CNN
F 1 "10k" H 5168 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5100 3700 50  0001 C CNN
F 3 "~" H 5100 3700 50  0001 C CNN
	1    5100 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 604943A8
P 4950 3700
F 0 "R1" H 4800 3750 50  0000 L CNN
F 1 "10k" H 4750 3650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4950 3700 50  0001 C CNN
F 3 "~" H 4950 3700 50  0001 C CNN
	1    4950 3700
	1    0    0    -1  
$EndComp
Text GLabel 4950 3950 3    50   Input ~ 0
3VDC
Text GLabel 5100 3950 3    50   Input ~ 0
3VDC
Wire Wire Line
	5100 3950 5100 3800
Wire Wire Line
	5100 3600 5100 3500
Wire Wire Line
	4950 3500 4950 3600
Wire Wire Line
	4950 3800 4950 3950
Text GLabel 7200 3450 2    50   Input ~ 0
REGOUT
Wire Wire Line
	7200 3450 7100 3450
Connection ~ 7100 3450
$Comp
L Device:D_Photo D7
U 1 1 6052C51F
P 4050 2050
F 0 "D7" H 4000 2345 50  0000 C CNN
F 1 "D_Photo" H 4000 2254 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4000 2050 50  0001 C CNN
F 3 "~" H 4000 2050 50  0001 C CNN
	1    4050 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4250 4100 4250
Wire Wire Line
	4100 4150 3600 4150
Text GLabel 4100 4150 2    50   Input ~ 0
SCL
Text GLabel 4100 4250 2    50   Input ~ 0
SDA
Wire Wire Line
	3600 4050 4100 4050
Wire Wire Line
	4100 3950 3600 3950
Wire Wire Line
	3600 3850 4100 3850
Wire Wire Line
	4100 3750 3600 3750
Wire Wire Line
	4100 3650 3600 3650
Wire Wire Line
	3600 3550 4100 3550
Wire Wire Line
	4100 3450 3600 3450
Wire Wire Line
	3600 3350 4100 3350
Wire Wire Line
	4100 3250 3600 3250
Wire Wire Line
	3600 3150 4100 3150
$Comp
L LED:WS2812B D6
U 1 1 6061DC03
P 6600 1100
F 0 "D6" H 6944 1146 50  0000 L CNN
F 1 "WS2812B" H 6944 1055 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 6650 800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 6700 725 50  0001 L TNN
	1    6600 1100
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D5
U 1 1 6061E93C
P 5500 1100
F 0 "D5" H 5844 1146 50  0000 L CNN
F 1 "WS2812B" H 5844 1055 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 5550 800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5600 725 50  0001 L TNN
	1    5500 1100
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D4
U 1 1 6061F78A
P 4400 1100
F 0 "D4" H 4744 1146 50  0000 L CNN
F 1 "WS2812B" H 4744 1055 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 4450 800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 4500 725 50  0001 L TNN
	1    4400 1100
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D3
U 1 1 6061FD0E
P 3300 1100
F 0 "D3" H 3644 1146 50  0000 L CNN
F 1 "WS2812B" H 3644 1055 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 3350 800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 3400 725 50  0001 L TNN
	1    3300 1100
	1    0    0    -1  
$EndComp
Text GLabel 1150 1400 3    50   Input ~ 0
GND
Text GLabel 2200 1400 3    50   Input ~ 0
GND
Text GLabel 3300 1400 3    50   Input ~ 0
GND
Text GLabel 4400 1400 3    50   Input ~ 0
GND
Text GLabel 5500 1400 3    50   Input ~ 0
GND
Text GLabel 6600 1400 3    50   Input ~ 0
GND
Text GLabel 1150 800  1    50   Input ~ 0
VDD
Text GLabel 2200 800  1    50   Input ~ 0
VDD
Text GLabel 3300 800  1    50   Input ~ 0
VDD
Text GLabel 4400 800  1    50   Input ~ 0
VDD
Text GLabel 5500 800  1    50   Input ~ 0
VDD
Text GLabel 6600 800  1    50   Input ~ 0
VDD
Wire Wire Line
	1450 1100 1900 1100
Wire Wire Line
	2500 1100 3000 1100
Wire Wire Line
	3600 1100 4100 1100
Wire Wire Line
	4700 1100 5200 1100
Wire Wire Line
	5800 1100 6300 1100
Text GLabel 850  1100 0    50   Input ~ 0
LEDs
Text GLabel 7100 3350 2    50   Input ~ 0
GND
$Comp
L Device:R_Small_US R3
U 1 1 60655025
P 4450 2050
F 0 "R3" H 4300 2100 50  0000 L CNN
F 1 "10k" H 4250 2000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4450 2050 50  0001 C CNN
F 3 "~" H 4450 2050 50  0001 C CNN
	1    4450 2050
	0    1    1    0   
$EndComp
Text GLabel 4250 2150 3    50   Input ~ 0
LIGHT
Wire Wire Line
	4250 2150 4250 2050
Wire Wire Line
	4250 2050 4350 2050
Wire Wire Line
	4250 2050 4150 2050
Connection ~ 4250 2050
Text GLabel 4600 2050 2    50   Input ~ 0
GND
Wire Wire Line
	4600 2050 4550 2050
Text GLabel 3800 2050 0    50   Input ~ 0
VDD
Wire Wire Line
	3800 2050 3850 2050
Text GLabel 2400 3150 0    50   Input ~ 0
LIGHT
Text GLabel 3150 2850 2    50   Input ~ 0
VDD
Wire Wire Line
	3150 2950 2650 2950
Wire Wire Line
	2650 3150 3150 3150
Wire Wire Line
	3150 3250 2650 3250
Wire Wire Line
	2650 3350 3150 3350
Wire Wire Line
	3150 3450 2650 3450
Wire Wire Line
	2650 3550 3150 3550
Wire Wire Line
	3150 3650 2650 3650
Wire Wire Line
	2650 3750 3150 3750
Wire Wire Line
	3150 3850 2650 3850
Wire Wire Line
	2650 3950 3150 3950
Wire Wire Line
	2650 4050 3150 4050
Wire Wire Line
	2650 4150 3150 4150
Wire Wire Line
	2650 4250 3150 4250
Connection ~ 2650 3050
Wire Wire Line
	2650 3050 3150 3050
Wire Wire Line
	2400 3050 2650 3050
Text GLabel 2400 3050 0    50   Input ~ 0
GND
Connection ~ 2650 2850
Wire Wire Line
	2650 2850 3150 2850
Wire Wire Line
	2400 2850 2650 2850
Text GLabel 2400 2850 0    50   Input ~ 0
3VDC
Wire Wire Line
	3150 2750 2650 2750
$Comp
L Connector_Generic:Conn_02x16_Odd_Even J2
U 1 1 604544CB
P 2950 3450
F 0 "J2" H 3000 4367 50  0000 C CNN
F 1 "Conn_02x16_Row_Letter_Last" H 3000 4276 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x16_P2.54mm_Vertical_SMD" H 2950 3450 50  0001 C CNN
F 3 "~" H 2950 3450 50  0001 C CNN
	1    2950 3450
	-1   0    0    -1  
$EndComp
Text GLabel 6550 2600 1    50   Input ~ 0
VDD
Text GLabel 5750 3250 0    50   Input ~ 0
GND
Wire Wire Line
	5750 3250 5950 3250
Text GLabel 7050 2850 3    50   Input ~ 0
GND
Text GLabel 4100 3950 2    50   Input ~ 0
INT
Text GLabel 4100 4050 2    50   Input ~ 0
LEDs
Wire Wire Line
	2400 3150 2650 3150
Connection ~ 2650 3150
$EndSCHEMATC
