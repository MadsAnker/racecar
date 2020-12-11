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
L MCU_Microchip_PIC16:PIC16F684-IP U2
U 1 1 5FBC08EA
P 6200 3700
F 0 "U2" H 6200 4481 50  0000 C CNN
F 1 "PIC16F684-IP" H 6200 4390 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 6200 3700 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/41202F-print.pdf" H 6200 3700 50  0001 C CNN
	1    6200 3700
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM7805_TO220 U1
U 1 1 5FBC300B
P 3600 2700
F 0 "U1" H 3600 2942 50  0000 C CNN
F 1 "LM7805_TO220" H 3600 2851 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3600 2925 50  0001 C CIN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MC7800-D.PDF" H 3600 2650 50  0001 C CNN
	1    3600 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3000 3600 3200
$Comp
L pspice:C C3
U 1 1 5FBC87E7
P 4050 2950
F 0 "C3" H 4228 2996 50  0000 L CNN
F 1 "C" H 4228 2905 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W3.5mm_P2.50mm_P5.00mm" H 4050 2950 50  0001 C CNN
F 3 "~" H 4050 2950 50  0001 C CNN
	1    4050 2950
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C1
U 1 1 5FBC9654
P 3100 2950
F 0 "C1" H 3278 2996 50  0000 L CNN
F 1 "C" H 3278 2905 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W3.5mm_P2.50mm_P5.00mm" H 3100 2950 50  0001 C CNN
F 3 "~" H 3100 2950 50  0001 C CNN
	1    3100 2950
	1    0    0    -1  
$EndComp
Connection ~ 3600 3200
Wire Wire Line
	3100 2700 3300 2700
Wire Wire Line
	3100 2700 3000 2700
Connection ~ 3100 2700
$Comp
L power:Earth #PWR02
U 1 1 5FBCB072
P 3600 3400
F 0 "#PWR02" H 3600 3150 50  0001 C CNN
F 1 "Earth" H 3600 3250 50  0001 C CNN
F 2 "" H 3600 3400 50  0001 C CNN
F 3 "~" H 3600 3400 50  0001 C CNN
	1    3600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2700 4050 2700
Text GLabel 4500 2700 2    50   Output ~ 0
5V
Wire Wire Line
	4050 2700 4500 2700
Connection ~ 4050 2700
Wire Wire Line
	6200 2850 6200 3100
Text GLabel 6200 2850 1    50   Input ~ 0
5V
$Comp
L power:Earth #PWR06
U 1 1 5FBD01AB
P 6200 4450
F 0 "#PWR06" H 6200 4200 50  0001 C CNN
F 1 "Earth" H 6200 4300 50  0001 C CNN
F 2 "" H 6200 4450 50  0001 C CNN
F 3 "~" H 6200 4450 50  0001 C CNN
	1    6200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4300 6200 4450
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5FBD2C9F
P 3850 4650
F 0 "J1" H 3958 5031 50  0000 C CNN
F 1 "Conn_01x06_Male" H 3958 4940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 3850 4650 50  0001 C CNN
F 3 "~" H 3850 4650 50  0001 C CNN
	1    3850 4650
	1    0    0    -1  
$EndComp
Text GLabel 4200 4450 2    50   Input ~ 0
Vpp
Text GLabel 4200 4750 2    50   Input ~ 0
PGD
Text GLabel 4200 4550 2    50   Input ~ 0
5V
$Comp
L power:Earth #PWR03
U 1 1 5FBD3B1F
P 4200 4650
F 0 "#PWR03" H 4200 4400 50  0001 C CNN
F 1 "Earth" H 4200 4500 50  0001 C CNN
F 2 "" H 4200 4650 50  0001 C CNN
F 3 "~" H 4200 4650 50  0001 C CNN
	1    4200 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 4450 4200 4450
Wire Wire Line
	4050 4550 4200 4550
Wire Wire Line
	4200 4650 4050 4650
Wire Wire Line
	4050 4750 4200 4750
Text GLabel 4500 3700 0    50   Input ~ 0
Vpp
Text GLabel 4200 4850 2    50   Input ~ 0
PGC
Text GLabel 4500 3400 0    50   Input ~ 0
PGD
Text GLabel 4500 3500 0    50   Input ~ 0
PGC
Wire Wire Line
	4500 3400 4600 3400
Wire Wire Line
	4500 3500 4600 3500
Wire Wire Line
	4500 3700 4600 3700
$Comp
L Device:R R1
U 1 1 5FBD6BC4
P 7950 4200
F 0 "R1" H 8020 4246 50  0000 L CNN
F 1 "R" H 8020 4155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7880 4200 50  0001 C CNN
F 3 "~" H 7950 4200 50  0001 C CNN
	1    7950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3900 7950 3900
Wire Wire Line
	7950 3900 7950 4050
Wire Wire Line
	7950 3900 8250 3900
Connection ~ 7950 3900
$Comp
L Transistor_FET:IRF540N Q1
U 1 1 5FBD8892
P 8450 3900
F 0 "Q1" H 8654 3946 50  0000 L CNN
F 1 "IRF540N" H 8654 3855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8700 3825 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 8450 3900 50  0001 L CNN
	1    8450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4350 7950 4500
$Comp
L power:Earth #PWR07
U 1 1 5FBDA456
P 7950 4500
F 0 "#PWR07" H 7950 4250 50  0001 C CNN
F 1 "Earth" H 7950 4350 50  0001 C CNN
F 2 "" H 7950 4500 50  0001 C CNN
F 3 "~" H 7950 4500 50  0001 C CNN
	1    7950 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 4100 8550 4500
$Comp
L power:Earth #PWR09
U 1 1 5FBDAC81
P 8550 4500
F 0 "#PWR09" H 8550 4250 50  0001 C CNN
F 1 "Earth" H 8550 4350 50  0001 C CNN
F 2 "" H 8550 4500 50  0001 C CNN
F 3 "~" H 8550 4500 50  0001 C CNN
	1    8550 4500
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M1
U 1 1 5FBDB543
P 8550 3250
F 0 "M1" H 8708 3246 50  0000 L CNN
F 1 "Motor_DC" H 8708 3155 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8550 3160 50  0001 C CNN
F 3 "~" H 8550 3160 50  0001 C CNN
	1    8550 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3700 8550 3650
Wire Wire Line
	8550 3050 8550 2900
$Comp
L power:VCC #PWR08
U 1 1 5FBDCDCC
P 8550 2850
F 0 "#PWR08" H 8550 2700 50  0001 C CNN
F 1 "VCC" H 8565 3023 50  0000 C CNN
F 2 "" H 8550 2850 50  0001 C CNN
F 3 "" H 8550 2850 50  0001 C CNN
	1    8550 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5FBDDCFA
P 8200 3300
F 0 "D1" V 8154 3380 50  0000 L CNN
F 1 "D" V 8245 3380 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8200 3300 50  0001 C CNN
F 3 "~" H 8200 3300 50  0001 C CNN
	1    8200 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 2900 8200 2900
Wire Wire Line
	8200 2900 8200 3150
Connection ~ 8550 2900
Wire Wire Line
	8550 2900 8550 2850
Wire Wire Line
	8200 3450 8200 3650
Wire Wire Line
	8200 3650 8550 3650
Connection ~ 8550 3650
Wire Wire Line
	8550 3650 8550 3550
$Comp
L Connector:Conn_01x02_Female J2
U 1 1 5FBF0A3C
P 4400 2050
F 0 "J2" H 4292 1725 50  0000 C CNN
F 1 "Conn_01x02_Female" H 4292 1816 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4400 2050 50  0001 C CNN
F 3 "~" H 4400 2050 50  0001 C CNN
	1    4400 2050
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5FBF2B1B
P 3000 2700
F 0 "#PWR01" H 3000 2550 50  0001 C CNN
F 1 "VCC" V 3015 2827 50  0000 L CNN
F 2 "" H 3000 2700 50  0001 C CNN
F 3 "" H 3000 2700 50  0001 C CNN
	1    3000 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 5FBF3C34
P 4600 1950
F 0 "#PWR04" H 4600 1800 50  0001 C CNN
F 1 "VCC" V 4615 2078 50  0000 L CNN
F 2 "" H 4600 1950 50  0001 C CNN
F 3 "" H 4600 1950 50  0001 C CNN
	1    4600 1950
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR05
U 1 1 5FBF4E84
P 4600 2050
F 0 "#PWR05" H 4600 1800 50  0001 C CNN
F 1 "Earth" H 4600 1900 50  0001 C CNN
F 2 "" H 4600 2050 50  0001 C CNN
F 3 "~" H 4600 2050 50  0001 C CNN
	1    4600 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 3200 4050 3200
Wire Wire Line
	3600 3200 3600 3400
Wire Wire Line
	3100 3200 3600 3200
Wire Wire Line
	4050 4850 4200 4850
Text GLabel 4500 3600 0    50   Input ~ 0
Ben11
Text GLabel 7950 3800 2    50   Input ~ 0
Ben6
Text GLabel 7950 3700 2    50   Input ~ 0
Ben7
Text GLabel 7950 3600 2    50   Input ~ 0
Ben8
Text GLabel 7950 3500 2    50   Input ~ 0
Ben9
Text GLabel 7850 3400 2    50   Input ~ 0
Ben10
Text GLabel 4500 3900 0    50   Input ~ 0
Ben2
Text GLabel 4500 3800 0    50   Input ~ 0
Ben3
Wire Wire Line
	4500 3600 4600 3600
Wire Wire Line
	4500 3800 4600 3800
Wire Wire Line
	4500 3900 4600 3900
Wire Wire Line
	7800 3400 7850 3400
Wire Wire Line
	7800 3500 7950 3500
Wire Wire Line
	7800 3600 7950 3600
Wire Wire Line
	7800 3700 7950 3700
Wire Wire Line
	7800 3800 7950 3800
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 5FC215CE
P 5350 2450
F 0 "J3" V 5196 2498 50  0000 L CNN
F 1 "Conn_01x01_Female" V 5287 2498 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5350 2450 50  0001 C CNN
F 3 "~" H 5350 2450 50  0001 C CNN
	1    5350 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J4
U 1 1 5FC21E93
P 5500 2450
F 0 "J4" V 5346 2498 50  0000 L CNN
F 1 "Conn_01x01_Female" V 5437 2498 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5500 2450 50  0001 C CNN
F 3 "~" H 5500 2450 50  0001 C CNN
	1    5500 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J5
U 1 1 5FC221FE
P 5650 2450
F 0 "J5" V 5496 2498 50  0000 L CNN
F 1 "Conn_01x01_Female" V 5587 2498 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5650 2450 50  0001 C CNN
F 3 "~" H 5650 2450 50  0001 C CNN
	1    5650 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J6
U 1 1 5FC22528
P 5800 2450
F 0 "J6" V 5646 2498 50  0000 L CNN
F 1 "Conn_01x01_Female" V 5737 2498 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5800 2450 50  0001 C CNN
F 3 "~" H 5800 2450 50  0001 C CNN
	1    5800 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J7
U 1 1 5FC22939
P 5950 2450
F 0 "J7" V 5796 2498 50  0000 L CNN
F 1 "Conn_01x01_Female" V 5887 2498 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5950 2450 50  0001 C CNN
F 3 "~" H 5950 2450 50  0001 C CNN
	1    5950 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J8
U 1 1 5FC2A7F6
P 6100 2450
F 0 "J8" V 5946 2498 50  0000 L CNN
F 1 "Conn_01x01_Female" V 6037 2498 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6100 2450 50  0001 C CNN
F 3 "~" H 6100 2450 50  0001 C CNN
	1    6100 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J9
U 1 1 5FC2A7FC
P 6250 2450
F 0 "J9" V 6096 2498 50  0000 L CNN
F 1 "Conn_01x01_Female" V 6187 2498 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6250 2450 50  0001 C CNN
F 3 "~" H 6250 2450 50  0001 C CNN
	1    6250 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J10
U 1 1 5FC2A802
P 6400 2450
F 0 "J10" V 6246 2498 50  0000 L CNN
F 1 "Conn_01x01_Female" V 6337 2498 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6400 2450 50  0001 C CNN
F 3 "~" H 6400 2450 50  0001 C CNN
	1    6400 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J11
U 1 1 5FC2A808
P 6550 2450
F 0 "J11" V 6396 2498 50  0000 L CNN
F 1 "Conn_01x01_Female" V 6487 2498 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6550 2450 50  0001 C CNN
F 3 "~" H 6550 2450 50  0001 C CNN
	1    6550 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J12
U 1 1 5FC2A80E
P 6700 2450
F 0 "J12" V 6546 2498 50  0000 L CNN
F 1 "Conn_01x01_Female" V 6637 2498 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6700 2450 50  0001 C CNN
F 3 "~" H 6700 2450 50  0001 C CNN
	1    6700 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J13
U 1 1 5FC2C6D9
P 6850 2450
F 0 "J13" V 6696 2498 50  0000 L CNN
F 1 "Conn_01x01_Female" V 6787 2498 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6850 2450 50  0001 C CNN
F 3 "~" H 6850 2450 50  0001 C CNN
	1    6850 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J14
U 1 1 5FC2C6DF
P 7000 2450
F 0 "J14" V 6846 2498 50  0000 L CNN
F 1 "Conn_01x01_Female" V 6937 2498 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7000 2450 50  0001 C CNN
F 3 "~" H 7000 2450 50  0001 C CNN
	1    7000 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J15
U 1 1 5FC2C6E5
P 7150 2450
F 0 "J15" V 6996 2498 50  0000 L CNN
F 1 "Conn_01x01_Female" V 7087 2498 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7150 2450 50  0001 C CNN
F 3 "~" H 7150 2450 50  0001 C CNN
	1    7150 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J16
U 1 1 5FC2C6EB
P 7300 2450
F 0 "J16" V 7146 2498 50  0000 L CNN
F 1 "Conn_01x01_Female" V 7237 2498 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7300 2450 50  0001 C CNN
F 3 "~" H 7300 2450 50  0001 C CNN
	1    7300 2450
	0    1    1    0   
$EndComp
Text GLabel 5350 2250 1    50   Input ~ 0
PGD
Text GLabel 5500 2250 1    50   Input ~ 0
PGC
Text GLabel 5650 2250 1    50   Input ~ 0
Ben11
Text GLabel 5800 2250 1    50   Input ~ 0
Vpp
Text GLabel 5950 2250 1    50   Input ~ 0
Ben3
Text GLabel 6100 2250 1    50   Input ~ 0
Ben2
Text GLabel 8200 3900 3    50   Input ~ 0
Ben5
Text GLabel 6250 2250 1    50   Input ~ 0
Ben5
Text GLabel 6400 2250 1    50   Input ~ 0
Ben6
Text GLabel 6550 2250 1    50   Input ~ 0
Ben7
Text GLabel 6700 2250 1    50   Input ~ 0
Ben8
Text GLabel 6850 2250 1    50   Input ~ 0
Ben9
Text GLabel 7000 2250 1    50   Input ~ 0
Ben10
Text GLabel 7150 2250 1    50   Input ~ 0
5V
$Comp
L power:Earth #PWR010
U 1 1 5FC4537F
P 7300 2250
F 0 "#PWR010" H 7300 2000 50  0001 C CNN
F 1 "Earth" H 7300 2100 50  0001 C CNN
F 2 "" H 7300 2250 50  0001 C CNN
F 3 "~" H 7300 2250 50  0001 C CNN
	1    7300 2250
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x05_Male J18
U 1 1 5FCA654C
P 2450 6500
F 0 "J18" H 2558 6881 50  0000 C CNN
F 1 "Conn_01x05_Male" H 2558 6790 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 2450 6500 50  0001 C CNN
F 3 "~" H 2450 6500 50  0001 C CNN
	1    2450 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FCAB6B2
P 3700 6100
F 0 "R2" V 3493 6100 50  0000 C CNN
F 1 "R" V 3584 6100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3630 6100 50  0001 C CNN
F 3 "~" H 3700 6100 50  0001 C CNN
	1    3700 6100
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5FCABBAA
P 3700 6550
F 0 "R3" V 3493 6550 50  0000 C CNN
F 1 "R" V 3584 6550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3630 6550 50  0001 C CNN
F 3 "~" H 3700 6550 50  0001 C CNN
	1    3700 6550
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5FCABEDD
P 3850 6900
F 0 "C2" H 3735 6854 50  0000 R CNN
F 1 "C" H 3735 6945 50  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W3.5mm_P2.50mm_P5.00mm" H 3888 6750 50  0001 C CNN
F 3 "~" H 3850 6900 50  0001 C CNN
	1    3850 6900
	-1   0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 5FCAC448
P 4200 6300
F 0 "C4" H 4085 6254 50  0000 R CNN
F 1 "C" H 4085 6345 50  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W3.5mm_P2.50mm_P5.00mm" H 4238 6150 50  0001 C CNN
F 3 "~" H 4200 6300 50  0001 C CNN
	1    4200 6300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 6100 4200 6100
Wire Wire Line
	4200 6100 4200 6150
Wire Wire Line
	3850 6550 3850 6750
Wire Wire Line
	2650 6400 3550 6400
Wire Wire Line
	3550 6400 3550 6100
Wire Wire Line
	2650 6500 3550 6500
Wire Wire Line
	3550 6500 3550 6550
$Comp
L power:Earth #PWR015
U 1 1 5FCB1E34
P 4200 6450
F 0 "#PWR015" H 4200 6200 50  0001 C CNN
F 1 "Earth" H 4200 6300 50  0001 C CNN
F 2 "" H 4200 6450 50  0001 C CNN
F 3 "~" H 4200 6450 50  0001 C CNN
	1    4200 6450
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR014
U 1 1 5FCB24DE
P 3850 7050
F 0 "#PWR014" H 3850 6800 50  0001 C CNN
F 1 "Earth" H 3850 6900 50  0001 C CNN
F 2 "" H 3850 7050 50  0001 C CNN
F 3 "~" H 3850 7050 50  0001 C CNN
	1    3850 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 6550 4000 6550
Connection ~ 3850 6550
Wire Wire Line
	4200 6100 4450 6100
Connection ~ 4200 6100
$Comp
L Connector:Conn_01x01_Male J20
U 1 1 5FCB7440
P 4000 6750
F 0 "J20" V 4154 6662 50  0000 R CNN
F 1 "Conn_01x01_Male" V 4063 6662 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4000 6750 50  0001 C CNN
F 3 "~" H 4000 6750 50  0001 C CNN
	1    4000 6750
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J21
U 1 1 5FCB9965
P 4450 6300
F 0 "J21" V 4604 6212 50  0000 R CNN
F 1 "Conn_01x01_Male" V 4513 6212 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4450 6300 50  0001 C CNN
F 3 "~" H 4450 6300 50  0001 C CNN
	1    4450 6300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 6600 2650 6600
$Comp
L power:Earth #PWR012
U 1 1 5FCAAA79
P 2750 6600
F 0 "#PWR012" H 2750 6350 50  0001 C CNN
F 1 "Earth" H 2750 6450 50  0001 C CNN
F 2 "" H 2750 6600 50  0001 C CNN
F 3 "~" H 2750 6600 50  0001 C CNN
	1    2750 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 6700 2750 6700
$Comp
L power:Earth #PWR013
U 1 1 5FCA8B12
P 2750 6700
F 0 "#PWR013" H 2750 6450 50  0001 C CNN
F 1 "Earth" H 2750 6550 50  0001 C CNN
F 2 "" H 2750 6700 50  0001 C CNN
F 3 "~" H 2750 6700 50  0001 C CNN
	1    2750 6700
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J19
U 1 1 5FCBC509
P 2500 7100
F 0 "J19" H 2608 7281 50  0000 C CNN
F 1 "Conn_01x01_Male" H 2608 7190 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2500 7100 50  0001 C CNN
F 3 "~" H 2500 7100 50  0001 C CNN
	1    2500 7100
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR011
U 1 1 5FCBCC5A
P 2700 7100
F 0 "#PWR011" H 2700 6850 50  0001 C CNN
F 1 "Earth" H 2700 6950 50  0001 C CNN
F 2 "" H 2700 7100 50  0001 C CNN
F 3 "~" H 2700 7100 50  0001 C CNN
	1    2700 7100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J17
U 1 1 5FCBD02D
P 2450 5950
F 0 "J17" H 2558 6131 50  0000 C CNN
F 1 "Conn_01x01_Male" H 2558 6040 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2450 5950 50  0001 C CNN
F 3 "~" H 2450 5950 50  0001 C CNN
	1    2450 5950
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:TIP120 Q2
U 1 1 5FCA66AB
P 1300 4400
F 0 "Q2" H 1507 4354 50  0000 L CNN
F 1 "TIP120" H 1507 4445 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1500 4325 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP120.pdf" H 1300 4400 50  0001 L CNN
	1    1300 4400
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male J22
U 1 1 5FCA81CF
P 1900 4400
F 0 "J22" H 1872 4332 50  0000 R CNN
F 1 "Conn_01x03_Male" H 1872 4423 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1900 4400 50  0001 C CNN
F 3 "~" H 1900 4400 50  0001 C CNN
	1    1900 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 4400 1500 4500
Wire Wire Line
	1500 4500 1700 4500
Text GLabel 1200 4600 3    50   Input ~ 0
Coll
Text GLabel 1700 4400 0    50   Input ~ 0
Coll
Wire Wire Line
	1200 4200 1700 4200
Wire Wire Line
	1700 4200 1700 4300
$Comp
L Regulator_Linear:LM7805_TO220 U3
U 1 1 5FD652D0
P 1500 5250
F 0 "U3" H 1500 5492 50  0000 C CNN
F 1 "LM7805_TO220" H 1500 5401 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1500 5475 50  0001 C CIN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MC7800-D.PDF" H 1500 5200 50  0001 C CNN
	1    1500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5550 1500 5750
$Comp
L pspice:C C6
U 1 1 5FD652D7
P 1950 5500
F 0 "C6" H 2128 5546 50  0000 L CNN
F 1 "C" H 2128 5455 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W3.5mm_P2.50mm_P5.00mm" H 1950 5500 50  0001 C CNN
F 3 "~" H 1950 5500 50  0001 C CNN
	1    1950 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5250 1950 5250
Wire Wire Line
	1000 5250 1200 5250
$Comp
L pspice:C C5
U 1 1 5FD652DD
P 1000 5500
F 0 "C5" H 1178 5546 50  0000 L CNN
F 1 "C" H 1178 5455 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W3.5mm_P2.50mm_P5.00mm" H 1000 5500 50  0001 C CNN
F 3 "~" H 1000 5500 50  0001 C CNN
	1    1000 5500
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR016
U 1 1 5FD738B4
P 1500 5750
F 0 "#PWR016" H 1500 5500 50  0001 C CNN
F 1 "Earth" H 1500 5600 50  0001 C CNN
F 2 "" H 1500 5750 50  0001 C CNN
F 3 "~" H 1500 5750 50  0001 C CNN
	1    1500 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5250 2250 5250
Connection ~ 1950 5250
Text GLabel 2250 5250 2    50   Input ~ 0
3.3V
Text GLabel 2650 6300 2    50   Input ~ 0
3.3V
Wire Wire Line
	1000 5250 850  5250
Connection ~ 1000 5250
Text GLabel 850  5250 0    50   Input ~ 0
Power
Text GLabel 2650 5950 2    50   Input ~ 0
Power
Wire Wire Line
	1000 5750 1500 5750
Connection ~ 1500 5750
Wire Wire Line
	1950 5750 1500 5750
$EndSCHEMATC
