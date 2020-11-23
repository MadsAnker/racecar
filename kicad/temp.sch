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
$EndSCHEMATC
