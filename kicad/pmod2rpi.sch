EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PMOD Raspberry Pi HAT"
Date "2021-08-15"
Rev "1.0"
Comp ""
Comment1 "2021 (C) FM4DD"
Comment2 ""
Comment3 "License: CC-BY-SA 4.0"
Comment4 ""
$EndDescr
$Comp
L Mechanical:MountingHole H1
U 1 1 5834BC4A
P 9050 3850
F 0 "H1" H 8900 3850 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 8950 3700 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 8950 3850 60  0001 C CNN
F 3 "" H 8950 3850 60  0001 C CNN
	1    9050 3850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5834BCDF
P 9850 3850
F 0 "H2" H 10000 3850 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 9950 3700 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 9750 3850 60  0001 C CNN
F 3 "" H 9750 3850 60  0001 C CNN
	1    9850 3850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5834BD62
P 9050 4200
F 0 "H3" H 8900 4200 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 8950 4050 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 8950 4200 60  0001 C CNN
F 3 "" H 8950 4200 60  0001 C CNN
	1    9050 4200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5834BDED
P 9850 4200
F 0 "H4" H 10000 4200 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 9950 4050 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 9750 4200 60  0001 C CNN
F 3 "" H 9750 4200 60  0001 C CNN
	1    9850 4200
	1    0    0    -1  
$EndComp
$Comp
L raspberrypi_hat:OX40HAT J1
U 1 1 58DFC771
P 2550 2000
F 0 "J1" H 2900 2100 50  0000 C CNN
F 1 "40HAT" H 2250 2100 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 2550 2200 50  0001 C CNN
F 3 "" H 1850 2000 50  0000 C CNN
	1    2550 2000
	1    0    0    -1  
$EndComp
Text Label 8950 5200 0    60   ~ 0
P3V3
$Comp
L raspberrypi_hat:CAT24C32 U1
U 1 1 58E1713F
P 2600 5500
F 0 "U1" H 2250 5850 50  0000 C CNN
F 1 "CAT24C32" H 2850 5850 50  0000 C CNN
F 2 "Package_SOIC:SOIC-8_3.9x4.9mm_P1.27mm" H 2600 5500 50  0001 C CNN
F 3 "" H 2600 5500 50  0000 C CNN
	1    2600 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 58E17715
P 9750 5450
F 0 "R2" V 9830 5450 50  0000 C CNN
F 1 "3.9K" V 9750 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9680 5450 50  0001 C CNN
F 3 "" H 9750 5450 50  0001 C CNN
	1    9750 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 58E17720
P 9750 5200
F 0 "R3" V 9830 5200 50  0000 C CNN
F 1 "3.9K" V 9750 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9680 5200 50  0001 C CNN
F 3 "" H 9750 5200 50  0001 C CNN
	1    9750 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10850 5450 9950 5450
Wire Wire Line
	10850 5200 9950 5200
Wire Wire Line
	9950 5350 10850 5350
Wire Wire Line
	9950 5100 10850 5100
Wire Wire Line
	9950 5100 9950 5200
Connection ~ 9950 5200
Wire Wire Line
	9950 5350 9950 5450
Connection ~ 9950 5450
Wire Wire Line
	9600 5450 9400 5450
Wire Wire Line
	9400 5200 9600 5200
Text Label 10850 5450 2    60   ~ 0
ID_SD_EEPROM_pu
Text Label 10850 5350 2    60   ~ 0
ID_SD_EEPROM
Text Label 10850 5200 2    60   ~ 0
ID_SC_EEPROM_pu
Text Label 10850 5100 2    60   ~ 0
ID_SC_EEPROM
Wire Wire Line
	3950 5700 3100 5700
Wire Wire Line
	3100 5600 3950 5600
Text Label 3950 5700 2    60   ~ 0
ID_SD_EEPROM_pu
Text Label 3950 5600 2    60   ~ 0
ID_SC_EEPROM_pu
$Comp
L Device:R R1
U 1 1 58E19E51
P 1650 5300
F 0 "R1" V 1550 5300 50  0000 C CNN
F 1 "10K" V 1650 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1580 5300 50  0001 C CNN
F 3 "" H 1650 5300 50  0001 C CNN
	1    1650 5300
	1    0    0    -1  
$EndComp
Text Label 2300 5050 2    60   ~ 0
P3V3
Text Notes 2750 6000 0    60   ~ 0
EEPROM WRITE ENABLE
Text Notes 8250 4900 0    118  ~ 24
I2C Pull-Up
Text Notes 1600 4400 0    118  ~ 24
HAT EEPROM
Text Notes 8450 3550 0    118  ~ 24
Mounting Holes
Text Notes 1500 1750 0    118  ~ 24
40-Pin RPi HAT Connector
Text Label 750  3900 0    60   ~ 0
GND
Wire Wire Line
	1950 3900 750  3900
Text Label 750  3300 0    60   ~ 0
ID_SD_EEPROM
Wire Wire Line
	1950 3300 750  3300
Text Label 750  3200 0    60   ~ 0
GND
Wire Wire Line
	1950 3200 750  3200
Text Label 750  2400 0    60   ~ 0
GND
Wire Wire Line
	1950 2400 750  2400
Text Label 750  2000 0    60   ~ 0
P3V3
Wire Wire Line
	1950 2000 750  2000
Wire Wire Line
	3150 2600 4350 2600
Wire Wire Line
	3150 2900 4350 2900
Wire Wire Line
	3150 3300 4350 3300
Wire Wire Line
	3150 3400 4350 3400
Wire Wire Line
	3150 3600 4350 3600
Text Label 4350 2600 2    60   ~ 0
GND
Text Label 4350 2900 2    60   ~ 0
GND
Text Label 4350 3400 2    60   ~ 0
GND
Text Label 4350 3300 2    60   ~ 0
ID_SC_EEPROM
Text Label 4350 3600 2    60   ~ 0
GND
Text Label 4350 2200 2    60   ~ 0
GND
Wire Wire Line
	3150 2200 4350 2200
Text Label 4350 2100 2    60   ~ 0
P5V
Wire Wire Line
	3150 2100 4350 2100
Wire Wire Line
	3150 2000 4350 2000
Wire Wire Line
	9400 5200 9400 5450
Text Notes 650  4700 0    60   ~ 0
RPi hats require an EEPROM containing the hat information, and the EEPROM should\nbe read-only (WP pin high). Switch SW1 enables writing, connecting WP pin to GND.
Text Notes 650  1100 0    60   ~ 0
This is a unpowered PMOD adapter, designed for the Raspberry Pi SBC. The hat is based on the Raspberry Pi template, which in turn\nused the Raspberry Pi foundation specs at https://github.com/raspberrypi/hats/blob/master/designguide.md
$Comp
L power:GND #PWR05
U 1 1 58E3CC10
P 2600 6000
F 0 "#PWR05" H 2600 5750 50  0001 C CNN
F 1 "GND" H 2600 5850 50  0000 C CNN
F 2 "" H 2600 6000 50  0000 C CNN
F 3 "" H 2600 6000 50  0000 C CNN
	1    2600 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5900 2600 5950
Wire Wire Line
	9950 5200 9900 5200
Wire Wire Line
	9950 5450 9900 5450
Wire Wire Line
	9400 5200 8950 5200
Text Label 4350 2000 2    60   ~ 0
P5V
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom PMOD1
U 1 1 6117B8F8
P 5450 2400
F 0 "PMOD1" H 5500 2817 50  0000 C CNN
F 1 "Conn_02x06_Top_Bottom" H 5500 2726 50  0000 C CNN
F 2 "FM4DD:PMODPinSocket_2x06_P2.54mm_Horizontal" H 5450 2400 50  0001 C CNN
F 3 "~" H 5450 2400 50  0001 C CNN
	1    5450 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom PMOD2
U 1 1 6117D5C2
P 5500 3450
F 0 "PMOD2" H 5550 3867 50  0000 C CNN
F 1 "Conn_02x06_Top_Bottom" H 5550 3776 50  0000 C CNN
F 2 "FM4DD:PMODPinSocket_2x06_P2.54mm_Horizontal" H 5500 3450 50  0001 C CNN
F 3 "~" H 5500 3450 50  0001 C CNN
	1    5500 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom PMOD3
U 1 1 6117E925
P 6950 2400
F 0 "PMOD3" H 7000 2817 50  0000 C CNN
F 1 "Conn_02x06_Top_Bottom" H 7000 2726 50  0000 C CNN
F 2 "FM4DD:PMODPinSocket_2x06_P2.54mm_Horizontal" H 6950 2400 50  0001 C CNN
F 3 "~" H 6950 2400 50  0001 C CNN
	1    6950 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 PMOD4
U 1 1 6117F5C8
P 6950 3450
F 0 "PMOD4" H 6800 3850 50  0000 L CNN
F 1 "Conn_01x06" H 6700 3750 50  0000 L CNN
F 2 "FM4DD:PMODPinSocket_1x06_P2.54mm_Horizontal" H 6950 3450 50  0001 C CNN
F 3 "~" H 6950 3450 50  0001 C CNN
	1    6950 3450
	1    0    0    -1  
$EndComp
Text Label 3150 3100 0    50   ~ 0
SPI0_CE0
Text Label 4900 2200 0    50   ~ 0
SPI0_CE0
Wire Wire Line
	4900 2200 5250 2200
Wire Wire Line
	3150 3100 3500 3100
Wire Wire Line
	4900 2300 5250 2300
Wire Wire Line
	4900 2400 5250 2400
Wire Wire Line
	4900 2500 5250 2500
Wire Wire Line
	4900 2600 5250 2600
Wire Wire Line
	4900 2700 5250 2700
Wire Wire Line
	5750 2200 6100 2200
Wire Wire Line
	5750 2300 6100 2300
Wire Wire Line
	5750 2400 6100 2400
Wire Wire Line
	5750 2500 6100 2500
Wire Wire Line
	5750 2600 6100 2600
Wire Wire Line
	5750 2700 6100 2700
Text Label 4900 2300 0    50   ~ 0
SPI0_MOSI
Text Label 1600 2900 0    50   ~ 0
SPI0_MOSI
Wire Wire Line
	1600 2900 1950 2900
Wire Wire Line
	1950 3000 1600 3000
Wire Wire Line
	1950 3100 1600 3100
Text Label 1600 3000 0    50   ~ 0
SPI0_MISO
Text Label 4900 2400 0    50   ~ 0
SPI0_MISO
Text Label 1600 3100 0    50   ~ 0
SPI0_CLK
Text Label 4900 2500 0    50   ~ 0
SPI0_CLK
Text Label 4900 2600 0    50   ~ 0
GND
Text Label 4900 2700 0    50   ~ 0
P3V3
Text Label 5750 2600 0    50   ~ 0
GND
Text Label 5750 2700 0    50   ~ 0
P3V3
Text Label 5750 2200 0    50   ~ 0
GPIO19
Text Label 5750 2300 0    50   ~ 0
GPIO21
Text Label 5750 2400 0    50   ~ 0
GPIO26
Text Label 5750 2500 0    50   ~ 0
GPIO18
Wire Wire Line
	1950 3700 1650 3700
Wire Wire Line
	3150 3900 3500 3900
Wire Wire Line
	3150 3800 3500 3800
Wire Wire Line
	3150 2500 3450 2500
Text Label 1650 3700 0    50   ~ 0
GPIO19
Text Label 3150 3900 0    50   ~ 0
GPIO21
Text Label 3150 3800 0    50   ~ 0
GPIO20
Text Label 3150 2500 0    50   ~ 0
GPIO18
Wire Wire Line
	5300 3250 4900 3250
Wire Wire Line
	5300 3350 4900 3350
Wire Wire Line
	5300 3450 4900 3450
Wire Wire Line
	5300 3550 4900 3550
Wire Wire Line
	5300 3650 4900 3650
Wire Wire Line
	5300 3750 4900 3750
Wire Wire Line
	5800 3250 6100 3250
Wire Wire Line
	5800 3350 6100 3350
Wire Wire Line
	5800 3450 6100 3450
Wire Wire Line
	5800 3550 6100 3550
Wire Wire Line
	5800 3650 6100 3650
Wire Wire Line
	5800 3750 6100 3750
Text Label 4900 3250 0    50   ~ 0
SPI0_CE1
Text Label 4900 3350 0    50   ~ 0
SPI0_MOSI
Text Label 4900 3450 0    50   ~ 0
SPI0_MISO
Text Label 4900 3550 0    50   ~ 0
SPI0_CLK
Text Label 4900 3650 0    50   ~ 0
GND
Text Label 4900 3750 0    50   ~ 0
P3V3
Text Label 5800 3650 0    50   ~ 0
GND
Text Label 5800 3750 0    50   ~ 0
P3V3
Wire Wire Line
	3150 3200 3500 3200
Text Label 3150 3200 0    50   ~ 0
SPI0_CE1
Wire Wire Line
	6750 3250 6400 3250
Wire Wire Line
	6750 3350 6400 3350
Wire Wire Line
	6750 3450 6400 3450
Wire Wire Line
	6750 3550 6400 3550
Wire Wire Line
	6750 3650 6400 3650
Wire Wire Line
	6750 3750 6400 3750
Text Label 6400 3750 0    50   ~ 0
P3V3
Text Label 6400 3650 0    50   ~ 0
GND
Text Label 6400 3550 0    50   ~ 0
SDA1
Text Label 6400 3450 0    50   ~ 0
SCL1
Wire Wire Line
	1950 2200 1650 2200
Wire Wire Line
	1950 2100 1650 2100
Text Label 1650 2200 0    50   ~ 0
SCL1
Text Label 1650 2100 0    50   ~ 0
SDA1
Wire Wire Line
	6750 2200 6400 2200
Wire Wire Line
	6750 2300 6400 2300
Wire Wire Line
	6750 2400 6400 2400
Wire Wire Line
	6750 2500 6400 2500
Wire Wire Line
	6750 2600 6400 2600
Wire Wire Line
	6750 2700 6400 2700
Text Label 6400 2200 0    50   ~ 0
CTS0
Text Label 6400 2300 0    50   ~ 0
TXD0
Text Label 6400 2400 0    50   ~ 0
RXD0
Text Label 6400 2500 0    50   ~ 0
RTS0
Wire Wire Line
	3150 3700 3500 3700
Text Label 3200 3700 0    50   ~ 0
CTS0
Wire Wire Line
	3150 2300 3450 2300
Wire Wire Line
	3150 2400 3450 2400
Text Label 3150 2300 0    50   ~ 0
TXD0
Text Label 3150 2400 0    50   ~ 0
RXD0
Text Label 1650 2500 0    50   ~ 0
RTS0
Text Label 6400 2600 0    50   ~ 0
GND
Text Label 6400 2700 0    50   ~ 0
P3V3
Text Label 5800 3250 0    50   ~ 0
GPIO20
Text Label 5800 3350 0    50   ~ 0
GPIO13
Text Label 5800 3450 0    50   ~ 0
GPIO23
Text Label 5800 3550 0    50   ~ 0
GPIO24
Wire Wire Line
	1950 3800 1650 3800
Text Label 1650 3800 0    50   ~ 0
GPIO26
Wire Wire Line
	1950 3600 1650 3600
Text Label 1650 3600 0    50   ~ 0
GPIO13
Text Label 1650 2600 0    50   ~ 0
GPIO27
Text Label 1650 2700 0    50   ~ 0
GPIO22
Wire Wire Line
	1650 2500 1950 2500
Wire Wire Line
	1650 2600 1950 2600
Wire Wire Line
	1650 2700 1950 2700
Wire Wire Line
	1950 2800 800  2800
Text Label 800  2800 0    50   ~ 0
P3V3
$Comp
L Device:C_Small C1
U 1 1 61252C46
P 1850 5300
F 0 "C1" V 1750 5250 50  0000 L CNN
F 1 "0.1uF" H 1900 5400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1850 5300 50  0001 C CNN
F 3 "~" H 1850 5300 50  0001 C CNN
	1    1850 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5450 1650 5700
Wire Wire Line
	2600 5950 2600 6000
Wire Wire Line
	2000 5500 2000 5950
Connection ~ 2000 5500
Wire Wire Line
	2000 5500 2100 5500
Wire Wire Line
	2000 5950 2600 5950
Wire Wire Line
	2100 5400 2000 5400
Wire Wire Line
	2000 5400 2000 5500
Wire Wire Line
	2100 5300 2000 5300
Wire Wire Line
	2000 5300 2000 5400
Connection ~ 2000 5400
Wire Wire Line
	1850 5500 2000 5500
Connection ~ 1850 5050
Wire Wire Line
	1850 5050 2600 5050
Text Label 2150 5950 0    50   ~ 0
GND
Wire Wire Line
	7250 2200 7600 2200
Wire Wire Line
	7250 2300 7600 2300
Wire Wire Line
	7250 2400 7600 2400
Wire Wire Line
	7250 2500 7600 2500
Wire Wire Line
	7250 2600 7600 2600
Wire Wire Line
	7250 2700 7600 2700
Text Label 7250 2700 0    50   ~ 0
P3V3
Text Label 7250 2600 0    50   ~ 0
GND
Text Label 7250 2500 0    50   ~ 0
GPIO06
Text Label 7250 2400 0    50   ~ 0
GPIO05
Text Label 7250 2300 0    50   ~ 0
GPIO12
Text Label 7250 2200 0    50   ~ 0
GPIO04
Wire Wire Line
	1950 2300 1650 2300
Text Label 1650 2300 0    50   ~ 0
GPIO04
Wire Wire Line
	3150 3500 3500 3500
Text Label 3150 3500 0    50   ~ 0
GPIO12
Wire Wire Line
	1950 3400 1650 3400
Text Label 1650 3400 0    50   ~ 0
GPIO05
Wire Wire Line
	1950 3500 1650 3500
Text Label 1650 3500 0    50   ~ 0
GPIO06
Text Label 6400 3250 0    50   ~ 0
GPIO22
Text Label 6400 3350 0    50   ~ 0
GPIO27
Wire Wire Line
	3150 2700 3450 2700
Wire Wire Line
	3150 2800 3450 2800
Text Label 3150 2700 0    50   ~ 0
GPIO23
Text Label 3150 2800 0    50   ~ 0
GPIO24
Text Notes 5000 1750 0    118  ~ 24
PMOD Connectors
Wire Wire Line
	8750 2300 8400 2300
Wire Wire Line
	9550 2300 9200 2300
Text Label 8400 2300 0    50   ~ 0
SCL1
Text Label 9550 2300 2    50   ~ 0
SDA1
Wire Wire Line
	8750 2600 8400 2600
Wire Wire Line
	8750 2900 8400 2900
Wire Wire Line
	9550 2600 9200 2600
Wire Wire Line
	9550 2900 9200 2900
Text Label 8400 2600 0    50   ~ 0
SPI0_MOSI
Text Label 9550 2600 2    50   ~ 0
SPI0_MISO
Text Label 8400 2900 0    50   ~ 0
SPI0_CLK
Text Label 9550 2900 2    50   ~ 0
SPI0_CE0
$Comp
L Connector:TestPoint TP8
U 1 1 61495D2A
P 10350 2600
F 0 "TP8" V 10450 2250 50  0000 L CNN
F 1 "TestPoint" V 10450 2450 50  0000 L CNN
F 2 "FM4DD:TestPoint_Keystone_5000-5004_Miniature" H 10550 2600 50  0001 C CNN
F 3 "~" H 10550 2600 50  0001 C CNN
	1    10350 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	10350 2600 10000 2600
$Comp
L Connector:TestPoint TP7
U 1 1 6149D883
P 10350 2300
F 0 "TP7" V 10450 2000 50  0000 C CNN
F 1 "TestPoint" V 10450 2300 50  0000 C CNN
F 2 "FM4DD:TestPoint_Keystone_5000-5004_Miniature" H 10550 2300 50  0001 C CNN
F 3 "~" H 10550 2300 50  0001 C CNN
	1    10350 2300
	0    1    1    0   
$EndComp
Text Label 10350 2300 2    50   ~ 0
SPI0_CE1
Text Label 10000 2600 0    50   ~ 0
GND
Text Notes 9300 5450 2    60   ~ 0
EEPROM I2C Pull-Up
Wire Wire Line
	10000 2300 10350 2300
Text Notes 8300 2050 0    60   ~ 0
Optionally populated with test pins for connecting\na multimeter, logic analyzer or oscilloscope.
Text Notes 8450 1750 0    118  ~ 24
Test Pins
$Comp
L FM4DD:Logo_KiCad_5mm L1
U 1 1 614BF716
P 5100 6900
F 0 "L1" H 5100 6900 50  0001 C CNN
F 1 "Logo_KiCad_5mm" H 5100 6900 50  0001 C CNN
F 2 "FM4DD:KiCad-Logo2_5mm_SilkScreen" H 5125 6900 50  0000 L CNN
F 3 "" H 5100 6900 50  0001 C CNN
	1    5100 6900
	1    0    0    -1  
$EndComp
$Comp
L FM4DD:Logo_RPI L2
U 1 1 612162BC
P 5100 7000
F 0 "L2" H 5100 7000 50  0001 C CNN
F 1 "Logo_RPI" H 5100 7000 50  0001 C CNN
F 2 "FM4DD:RPI_Logo" H 5125 7000 50  0000 L CNN
F 3 "" H 5100 7000 50  0001 C CNN
	1    5100 7000
	1    0    0    -1  
$EndComp
$Comp
L FM4DD:Pinout_RPI_GPIO L3
U 1 1 6122CC6F
P 5100 7100
F 0 "L3" H 5100 7100 50  0001 C CNN
F 1 "Pinout_RPI_GPIO" H 5100 7100 50  0001 C CNN
F 2 "FM4DD:RasPi_GPIO_Legend" H 5125 7100 50  0000 L CNN
F 3 "" H 5100 7100 50  0001 C CNN
	1    5100 7100
	1    0    0    -1  
$EndComp
Text Notes 5000 6600 0    118  ~ 24
Board Labels
Wire Notes Line
	550  4100 8150 4100
Wire Notes Line
	8150 4600 11100 4600
Text Notes 650  850  0    118  ~ 24
Raspberry Pi / Seeeduino XIAO PMOD Interface Board
Wire Wire Line
	3150 3000 3500 3000
NoConn ~ 3500 3000
Text Label 3150 3000 0    50   ~ 0
GPIO25
$Comp
L power:+3.3V #PWR0101
U 1 1 613B0D7D
P 2600 5000
F 0 "#PWR0101" H 2600 4850 50  0001 C CNN
F 1 "+3.3V" H 2615 5173 50  0000 C CNN
F 2 "" H 2600 5000 50  0001 C CNN
F 3 "" H 2600 5000 50  0001 C CNN
	1    2600 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5050 2600 5100
Wire Wire Line
	1850 5050 1850 5200
Wire Wire Line
	1850 5400 1850 5500
Wire Wire Line
	1650 5050 1650 5150
Wire Wire Line
	1650 5050 1850 5050
Wire Wire Line
	2600 5050 2600 5000
Connection ~ 2600 5050
Connection ~ 2600 5950
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 614392DF
P 1700 5950
F 0 "SW1" H 1700 6100 50  0000 C CNN
F 1 "SW_DIP_x01" H 1700 5800 50  0000 C CNN
F 2 "FM4DD:SW_DIP_SPSTx01_XKB_DSIC01LS" H 1700 5950 50  0001 C CNN
F 3 "~" H 1700 5950 50  0001 C CNN
	1    1700 5950
	1    0    0    1   
$EndComp
Wire Wire Line
	1650 5700 2100 5700
Connection ~ 2000 5950
Wire Wire Line
	1650 5700 1400 5700
Wire Wire Line
	1400 5700 1400 5950
Connection ~ 1650 5700
Text Label 8900 5800 0    60   ~ 0
P3V3
$Comp
L Device:R R4
U 1 1 611B0806
P 9550 6100
F 0 "R4" V 9630 6100 50  0000 C CNN
F 1 "4.7K" V 9550 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9480 6100 50  0001 C CNN
F 3 "" H 9550 6100 50  0001 C CNN
	1    9550 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 611B080C
P 9550 5800
F 0 "R5" V 9630 5800 50  0000 C CNN
F 1 "4.7K" V 9550 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9480 5800 50  0001 C CNN
F 3 "" H 9550 5800 50  0001 C CNN
	1    9550 5800
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_DIP_x02 SW2
U 1 1 611B823D
P 10300 6000
F 0 "SW2" H 10300 6250 50  0000 C CNN
F 1 "SW_DIP_x02" H 10300 5850 50  0000 C CNN
F 2 "FM4DD:SW_DIP_SPSTx02_XKB_DSIC02LS" H 10300 6000 50  0001 C CNN
F 3 "~" H 10300 6000 50  0001 C CNN
	1    10300 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 6100 9300 6100
Wire Wire Line
	9300 6100 9300 5800
Wire Wire Line
	9700 6100 9850 6100
Wire Wire Line
	9850 6100 9850 6000
Wire Wire Line
	9850 6000 10000 6000
Wire Wire Line
	9700 5800 9850 5800
Wire Wire Line
	9850 5800 9850 5900
Wire Wire Line
	9850 5900 10000 5900
Wire Wire Line
	10600 6000 10850 6000
Wire Wire Line
	10600 5900 10850 5900
Text Label 10850 6000 2    50   ~ 0
SCL1
Text Label 10850 5900 2    50   ~ 0
SDA1
$Comp
L Connector:TestPoint TP1
U 1 1 612E0BC5
P 8750 2300
F 0 "TP1" V 8850 2000 50  0000 C CNN
F 1 "TestPoint" V 8850 2300 50  0000 C CNN
F 2 "FM4DD:TestPoint_Keystone_5000-5004_Miniature" H 8950 2300 50  0001 C CNN
F 3 "~" H 8950 2300 50  0001 C CNN
	1    8750 2300
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 612E8CE0
P 9550 2300
F 0 "TP2" V 9650 2000 50  0000 C CNN
F 1 "TestPoint" V 9650 2300 50  0000 C CNN
F 2 "FM4DD:TestPoint_Keystone_5000-5004_Miniature" H 9750 2300 50  0001 C CNN
F 3 "~" H 9750 2300 50  0001 C CNN
	1    9550 2300
	0    1    1    0   
$EndComp
$Comp
L FM4DD:GND_Label L4
U 1 1 611D3C36
P 5100 7200
F 0 "L4" H 5100 7200 50  0001 C CNN
F 1 "GND_Label" H 5100 7200 50  0001 C CNN
F 2 "FM4DD:GND_Label" H 5125 7200 50  0000 L CNN
F 3 "" H 5100 7200 50  0001 C CNN
	1    5100 7200
	1    0    0    -1  
$EndComp
$Comp
L FM4DD:3V3_Label L5
U 1 1 611D42AE
P 5100 7300
F 0 "L5" H 5100 7300 50  0001 C CNN
F 1 "3V3_Label" H 5100 7300 50  0001 C CNN
F 2 "FM4DD:3V3_Label" H 5125 7300 50  0000 L CNN
F 3 "" H 5100 7300 50  0001 C CNN
	1    5100 7300
	1    0    0    -1  
$EndComp
$Comp
L FM4DD:SeeeduinoXIAO U2
U 1 1 611BA35C
P 2500 7100
F 0 "U2" H 1900 7500 50  0000 C CNN
F 1 "SeeeduinoXIAO" H 2800 7500 50  0000 C CNN
F 2 "FM4DD:SeeeduinoXIAO-14P-2.54-21X17.8MM" H 2150 7200 50  0001 C CNN
F 3 "https://files.seeedstudio.com/wiki/Seeeduino-XIAO/res/Seeeduino-XIAO-v1.0-SCH-191112.pdf" H 2150 7300 50  0001 C CNN
	1    2500 7100
	1    0    0    -1  
$EndComp
Text Label 3300 6950 0    50   ~ 0
GND
Text Label 3300 7150 0    50   ~ 0
SPI0_MOSI
Text Label 3300 7250 0    50   ~ 0
MISO_SW
Text Label 3300 7350 0    50   ~ 0
CLK_SW
Wire Wire Line
	3300 7150 3700 7150
Wire Wire Line
	3300 7450 3700 7450
Text Label 3300 7450 0    50   ~ 0
SPI0_CE0
Text Label 1300 7450 0    50   ~ 0
SPI0_CE1
Text Label 3300 7050 0    50   ~ 0
PWR_SWI
Text Label 1350 7050 0    50   ~ 0
GPIO21
Wire Wire Line
	1650 7150 1300 7150
Wire Wire Line
	1650 7050 1300 7050
Wire Wire Line
	1300 7450 1650 7450
Text Label 1350 7150 0    50   ~ 0
GPIO19
Text Label 1350 7350 0    50   ~ 0
SCL2
NoConn ~ 1650 6850
NoConn ~ 1650 6950
NoConn ~ 3300 6850
Wire Wire Line
	3300 6950 3700 6950
$Comp
L Connector:TestPoint TP5
U 1 1 614E016B
P 8750 2900
F 0 "TP5" V 8850 2600 50  0000 C CNN
F 1 "TestPoint" V 8850 2900 50  0000 C CNN
F 2 "FM4DD:TestPoint_Keystone_5000-5004_Miniature" H 8950 2900 50  0001 C CNN
F 3 "~" H 8950 2900 50  0001 C CNN
	1    8750 2900
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 614EB062
P 9550 2900
F 0 "TP6" V 9650 2500 50  0000 L CNN
F 1 "TestPoint" V 9650 2700 50  0000 L CNN
F 2 "FM4DD:TestPoint_Keystone_5000-5004_Miniature" H 9750 2900 50  0001 C CNN
F 3 "~" H 9750 2900 50  0001 C CNN
	1    9550 2900
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 6151496E
P 8750 2600
F 0 "TP3" V 8850 2300 50  0000 C CNN
F 1 "TestPoint" V 8850 2600 50  0000 C CNN
F 2 "FM4DD:TestPoint_Keystone_5000-5004_Miniature" H 8950 2600 50  0001 C CNN
F 3 "~" H 8950 2600 50  0001 C CNN
	1    8750 2600
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 61514974
P 9550 2600
F 0 "TP4" V 9650 2200 50  0000 L CNN
F 1 "TestPoint" V 9650 2400 50  0000 L CNN
F 2 "FM4DD:TestPoint_Keystone_5000-5004_Miniature" H 9750 2600 50  0001 C CNN
F 3 "~" H 9750 2600 50  0001 C CNN
	1    9550 2600
	0    1    1    0   
$EndComp
$Comp
L FM4DD:PI5A100 U3
U 1 1 61219D30
P 6950 5650
F 0 "U3" H 6700 6150 50  0000 C CNN
F 1 "PI5A100" H 6950 5150 50  0000 C CNN
F 2 "Package_SO:QSOP-16_3.9x4.9mm_P0.635mm" H 6850 4600 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/PI5A100.pdf" H 6950 5600 60  0001 C CNN
F 4 "Diodes Incorporated" H 7050 4800 60  0001 C CNN "Vendor"
F 5 "AE-LLCNV8" H 7150 4900 60  0001 C CNN "Vendor Part Number"
	1    6950 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 7050 3700 7050
Wire Wire Line
	1650 7250 1300 7250
Wire Wire Line
	3300 7250 3700 7250
Wire Wire Line
	3300 7350 3700 7350
Wire Wire Line
	6450 6000 6250 6000
Wire Wire Line
	6250 6000 6250 6100
Wire Wire Line
	7450 5300 7600 5300
$Comp
L power:+3.3V #PWR0102
U 1 1 613D9518
P 7600 5000
F 0 "#PWR0102" H 7600 4850 50  0001 C CNN
F 1 "+3.3V" H 7615 5173 50  0000 C CNN
F 2 "" H 7600 5000 50  0001 C CNN
F 3 "" H 7600 5000 50  0001 C CNN
	1    7600 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5900 6100 5900
Text Label 6100 5900 0    50   ~ 0
SPI0_CLK
Wire Wire Line
	6450 5600 6100 5600
Text Label 6100 5600 0    50   ~ 0
SPI0_MISO
Wire Wire Line
	6450 5800 6100 5800
Wire Wire Line
	6450 5700 6100 5700
Wire Wire Line
	6450 5400 6100 5400
Wire Wire Line
	6450 5500 6100 5500
Text Label 7450 5400 0    50   ~ 0
GND
Wire Notes Line
	8150 3200 11100 3200
Text Notes 5000 4400 0    118  ~ 24
SPI/I2C and XIAO Power Switch
Text Label 6100 5700 0    50   ~ 0
CLK_SW
Text Label 6100 5400 0    50   ~ 0
MISO_SW
Wire Wire Line
	1650 7350 1300 7350
Text Label 6100 5800 0    50   ~ 0
SDA2
Text Label 1350 7250 0    50   ~ 0
SDA2
Text Label 6100 5500 0    50   ~ 0
SCL2
$Comp
L power:GND #PWR0103
U 1 1 613AF7FA
P 6250 6100
F 0 "#PWR0103" H 6250 5850 50  0001 C CNN
F 1 "GND" H 6250 5950 50  0000 C CNN
F 2 "" H 6250 6100 50  0000 C CNN
F 3 "" H 6250 6100 50  0000 C CNN
	1    6250 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 5500 7750 5500
Text Label 7450 5500 0    50   ~ 0
SCL2
Wire Wire Line
	7450 5600 7750 5600
Wire Wire Line
	7450 5700 7750 5700
Text Label 7450 5700 0    50   ~ 0
GPIO26
Wire Wire Line
	7450 5800 7750 5800
Text Label 7450 5800 0    50   ~ 0
SDA2
Wire Wire Line
	7450 5900 7750 5900
Wire Wire Line
	7450 6000 7750 6000
Text Label 7450 6000 0    50   ~ 0
GPIO18
Text Label 7450 5900 0    50   ~ 0
CLK_SW
Text Label 7450 5600 0    50   ~ 0
MISO_SW
$Comp
L power:GND #PWR0106
U 1 1 61A5DD70
P 7950 6100
F 0 "#PWR0106" H 7950 5850 50  0001 C CNN
F 1 "GND" H 7950 5950 50  0000 C CNN
F 2 "" H 7950 6100 50  0000 C CNN
F 3 "" H 7950 6100 50  0000 C CNN
	1    7950 6100
	1    0    0    -1  
$EndComp
Text Notes 5000 4700 0    60   ~ 0
This switch connects the Seeeduino I2C lines on PMOD1\neither to pin 3/4 (PMOD v1.3 Type 6A), or to pin 9/10.
$Comp
L power:+3.3V #PWR0105
U 1 1 6126443B
P 5850 5000
F 0 "#PWR0105" H 5850 4850 50  0001 C CNN
F 1 "+3.3V" H 5865 5173 50  0000 C CNN
F 2 "" H 5850 5000 50  0001 C CNN
F 3 "" H 5850 5000 50  0001 C CNN
	1    5850 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5200 5850 5200
$Comp
L Device:C_Small C2
U 1 1 61229E42
P 7800 5150
F 0 "C2" V 7900 5100 50  0000 L CNN
F 1 "0.1uF" V 7650 5050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7800 5150 50  0001 C CNN
F 3 "~" H 7800 5150 50  0001 C CNN
	1    7800 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5850 5750 5850 5850
Wire Wire Line
	7700 5150 7600 5150
Wire Wire Line
	7600 5150 7600 5300
Wire Wire Line
	7900 5150 7950 5150
Wire Wire Line
	7950 5150 7950 5400
Wire Wire Line
	7450 5400 7950 5400
Connection ~ 7950 5400
Wire Wire Line
	7950 5400 7950 6100
Wire Wire Line
	7600 5000 7600 5150
Connection ~ 7600 5150
$Comp
L Connector:TestPoint TP9
U 1 1 61478D72
P 10350 2900
F 0 "TP9" V 10450 2550 50  0000 L CNN
F 1 "TestPoint" V 10450 2750 50  0000 L CNN
F 2 "FM4DD:TestPoint_Keystone_5000-5004_Miniature" H 10550 2900 50  0001 C CNN
F 3 "~" H 10550 2900 50  0001 C CNN
	1    10350 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	10350 2900 10000 2900
Text Label 10000 2900 0    50   ~ 0
P3V3
Wire Notes Line
	11100 6350 550  6350
Wire Notes Line
	4700 1450 4700 7700
Wire Notes Line
	6850 7700 550  7700
Wire Notes Line
	550  1450 550  7700
Text Notes 1200 6600 0    118  ~ 24
Seeeduino XIAO
Wire Notes Line
	11100 6350 11100 1450
Wire Notes Line
	550  1450 11100 1450
Wire Notes Line
	8150 1450 8150 6350
Wire Notes Line
	6850 6350 6850 7700
Wire Wire Line
	5850 5000 5850 5200
Connection ~ 6000 5300
Wire Wire Line
	6000 5300 6450 5300
Wire Wire Line
	5800 5300 6000 5300
Wire Wire Line
	5850 5200 5850 5450
Connection ~ 5850 5200
Wire Wire Line
	5850 5850 6000 5850
Wire Wire Line
	6000 5850 6000 5600
$Comp
L Jumper:SolderJumper_2_Bridged JP1
U 1 1 6121E399
P 6000 5450
F 0 "JP1" V 5750 5400 50  0000 L CNN
F 1 "SolderJumper_2_Bridged" V 6300 5150 50  0001 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6000 5450 50  0001 C CNN
F 3 "~" H 6000 5450 50  0001 C CNN
	1    6000 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 613561D3
P 5850 5600
F 0 "R6" H 5950 5600 50  0000 C CNN
F 1 "10K" V 5850 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5780 5600 50  0001 C CNN
F 3 "" H 5850 5600 50  0001 C CNN
	1    5850 5600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 6184DDB7
P 5000 5550
F 0 "#PWR0104" H 5000 5300 50  0001 C CNN
F 1 "GND" H 5000 5400 50  0000 C CNN
F 2 "" H 5000 5550 50  0000 C CNN
F 3 "" H 5000 5550 50  0000 C CNN
	1    5000 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5300 5000 5300
Wire Wire Line
	5000 5300 5000 5550
Text Label 4900 5200 0    50   ~ 0
PWR_SWI
Wire Wire Line
	4900 5200 5200 5200
$Comp
L Switch:SW_DIP_x02 SW3
U 1 1 612021B8
P 5500 5300
F 0 "SW3" H 5500 5550 50  0000 C CNN
F 1 "SW_DIP_x02" H 5500 5150 50  0000 C CNN
F 2 "FM4DD:SW_DIP_SPSTx02_XKB_DSIC02LS" H 5500 5300 50  0001 C CNN
F 3 "~" H 5500 5300 50  0001 C CNN
	1    5500 5300
	-1   0    0    -1  
$EndComp
Connection ~ 9400 5200
Connection ~ 9300 5800
Wire Wire Line
	9300 5800 9400 5800
Wire Wire Line
	8900 5800 9300 5800
Text Notes 9200 6150 2    60   ~ 0
PMOD I2C Pull-Up
Text Label 6100 5300 0    50   ~ 0
IN
$EndSCHEMATC
