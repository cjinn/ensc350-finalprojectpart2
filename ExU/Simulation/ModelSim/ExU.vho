-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/17/2020 06:37:19"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ShiftUnit IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	C : IN std_logic_vector(63 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	ExtWord : IN std_logic;
	Y : OUT std_logic_vector(63 DOWNTO 0)
	);
END ShiftUnit;

-- Design Ports Information
-- B[6]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[32]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[33]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[34]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[35]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[36]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[37]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[38]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[39]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[8]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[40]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[9]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[41]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[10]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[42]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[11]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[43]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[12]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[44]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[13]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[45]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[14]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[46]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[15]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[47]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[16]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[48]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[17]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[49]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[18]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[50]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[19]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[51]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[20]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[52]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[21]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[53]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[22]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[54]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[23]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[55]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[24]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[56]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[25]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[57]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[26]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[58]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[27]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[59]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[28]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[60]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[29]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[61]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[30]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[62]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[31]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[63]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \Y[9]~output_o\ : std_logic;
SIGNAL \Y[10]~output_o\ : std_logic;
SIGNAL \Y[11]~output_o\ : std_logic;
SIGNAL \Y[12]~output_o\ : std_logic;
SIGNAL \Y[13]~output_o\ : std_logic;
SIGNAL \Y[14]~output_o\ : std_logic;
SIGNAL \Y[15]~output_o\ : std_logic;
SIGNAL \Y[16]~output_o\ : std_logic;
SIGNAL \Y[17]~output_o\ : std_logic;
SIGNAL \Y[18]~output_o\ : std_logic;
SIGNAL \Y[19]~output_o\ : std_logic;
SIGNAL \Y[20]~output_o\ : std_logic;
SIGNAL \Y[21]~output_o\ : std_logic;
SIGNAL \Y[22]~output_o\ : std_logic;
SIGNAL \Y[23]~output_o\ : std_logic;
SIGNAL \Y[24]~output_o\ : std_logic;
SIGNAL \Y[25]~output_o\ : std_logic;
SIGNAL \Y[26]~output_o\ : std_logic;
SIGNAL \Y[27]~output_o\ : std_logic;
SIGNAL \Y[28]~output_o\ : std_logic;
SIGNAL \Y[29]~output_o\ : std_logic;
SIGNAL \Y[30]~output_o\ : std_logic;
SIGNAL \Y[31]~output_o\ : std_logic;
SIGNAL \Y[32]~output_o\ : std_logic;
SIGNAL \Y[33]~output_o\ : std_logic;
SIGNAL \Y[34]~output_o\ : std_logic;
SIGNAL \Y[35]~output_o\ : std_logic;
SIGNAL \Y[36]~output_o\ : std_logic;
SIGNAL \Y[37]~output_o\ : std_logic;
SIGNAL \Y[38]~output_o\ : std_logic;
SIGNAL \Y[39]~output_o\ : std_logic;
SIGNAL \Y[40]~output_o\ : std_logic;
SIGNAL \Y[41]~output_o\ : std_logic;
SIGNAL \Y[42]~output_o\ : std_logic;
SIGNAL \Y[43]~output_o\ : std_logic;
SIGNAL \Y[44]~output_o\ : std_logic;
SIGNAL \Y[45]~output_o\ : std_logic;
SIGNAL \Y[46]~output_o\ : std_logic;
SIGNAL \Y[47]~output_o\ : std_logic;
SIGNAL \Y[48]~output_o\ : std_logic;
SIGNAL \Y[49]~output_o\ : std_logic;
SIGNAL \Y[50]~output_o\ : std_logic;
SIGNAL \Y[51]~output_o\ : std_logic;
SIGNAL \Y[52]~output_o\ : std_logic;
SIGNAL \Y[53]~output_o\ : std_logic;
SIGNAL \Y[54]~output_o\ : std_logic;
SIGNAL \Y[55]~output_o\ : std_logic;
SIGNAL \Y[56]~output_o\ : std_logic;
SIGNAL \Y[57]~output_o\ : std_logic;
SIGNAL \Y[58]~output_o\ : std_logic;
SIGNAL \Y[59]~output_o\ : std_logic;
SIGNAL \Y[60]~output_o\ : std_logic;
SIGNAL \Y[61]~output_o\ : std_logic;
SIGNAL \Y[62]~output_o\ : std_logic;
SIGNAL \Y[63]~output_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \bitShift~0_combout\ : std_logic;
SIGNAL \C[32]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux31~4_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~5_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~36_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux31~2_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~3_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux31~3_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~4_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux31~10_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux31~5_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~16_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~15_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~14_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux35~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux33~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux27~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux55~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux33~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux33~2_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux32~1_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~13_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~12_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~11_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux32~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux32~2_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~9_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~10_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux34~1_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~7_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~8_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux34~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux34~2_combout\ : std_logic;
SIGNAL \Selector159~0_combout\ : std_logic;
SIGNAL \Selector159~1_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \Selector159~2_combout\ : std_logic;
SIGNAL \Selector159~3_combout\ : std_logic;
SIGNAL \Selector191~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux63~0_combout\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \Selector191~0_combout\ : std_logic;
SIGNAL \Selector191~2_combout\ : std_logic;
SIGNAL \Selector383~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~20_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~19_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux28~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~17_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~18_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux28~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux28~2_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux30~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~23_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~22_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux30~1_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~21_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux30~2_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~53_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~57_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~58_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~59_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux28~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~60_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~30_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~29_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux31~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~28_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~31_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux31~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~56_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~24_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux29~1_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~27_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~26_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux29~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux29~2_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~246_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~54_combout\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \Selector95~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux58~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux58~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~42_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~43_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~44_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux50~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux50~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux54~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux54~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~45_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux61~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux56~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux56~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~14_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux60~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux60~2_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux48~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux48~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux52~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux52~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux60~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux60~3_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~46_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux55~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux55~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~48_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~49_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~50_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux59~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux59~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux51~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux51~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~47_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux49~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux49~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~25_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux53~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux53~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux61~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux57~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux57~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux61~2_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux61~3_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux61~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~51_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~52_combout\ : std_logic;
SIGNAL \Selector255~0_combout\ : std_logic;
SIGNAL \Selector511~0_combout\ : std_logic;
SIGNAL \Selector511~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~63_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux47~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux47~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux59~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux59~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux59~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~66_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~75_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~15_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~64_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~65_combout\ : std_logic;
SIGNAL \Selector126~0_combout\ : std_logic;
SIGNAL \Selector510~6_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux27~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux27~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux27~2_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~61_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~62_combout\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \Selector94~1_combout\ : std_logic;
SIGNAL \Selector190~0_combout\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \Selector190~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux30~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux30~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux30~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~16_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux30~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux30~3_combout\ : std_logic;
SIGNAL \Selector158~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~55_combout\ : std_logic;
SIGNAL \Selector158~0_combout\ : std_logic;
SIGNAL \C[33]~input_o\ : std_logic;
SIGNAL \Selector158~2_combout\ : std_logic;
SIGNAL \Selector510~7_combout\ : std_logic;
SIGNAL \Selector510~4_combout\ : std_logic;
SIGNAL \Selector510~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux26~2_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux26~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux26~3_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~69_combout\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~70_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~71_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~72_combout\ : std_logic;
SIGNAL \Selector93~1_combout\ : std_logic;
SIGNAL \Selector481~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux58~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux46~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux46~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux46~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux58~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~247_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~76_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~17_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~67_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~68_combout\ : std_logic;
SIGNAL \Selector509~0_combout\ : std_logic;
SIGNAL \Selector509~1_combout\ : std_logic;
SIGNAL \Selector509~2_combout\ : std_logic;
SIGNAL \Selector481~1_combout\ : std_logic;
SIGNAL \Selector481~2_combout\ : std_logic;
SIGNAL \C[2]~input_o\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~9_combout\ : std_logic;
SIGNAL \Selector157~0_combout\ : std_logic;
SIGNAL \C[34]~input_o\ : std_logic;
SIGNAL \Selector157~1_combout\ : std_logic;
SIGNAL \Selector157~4_combout\ : std_logic;
SIGNAL \Selector157~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux29~4_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux29~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux29~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux29~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux29~3_combout\ : std_logic;
SIGNAL \Selector157~3_combout\ : std_logic;
SIGNAL \Selector157~5_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~8_combout\ : std_logic;
SIGNAL \Selector509~3_combout\ : std_logic;
SIGNAL \Selector509~4_combout\ : std_logic;
SIGNAL \Selector509~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux25~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux25~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux25~2_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~76_combout\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~75_combout\ : std_logic;
SIGNAL \Selector92~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~6_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux45~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~18_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~19_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux57~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~264_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~265_combout\ : std_logic;
SIGNAL \Selector508~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux45~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux45~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux57~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~74_combout\ : std_logic;
SIGNAL \Selector508~1_combout\ : std_logic;
SIGNAL \Selector508~2_combout\ : std_logic;
SIGNAL \Selector126~1_combout\ : std_logic;
SIGNAL \Selector156~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux28~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux28~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux28~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux28~4_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux28~3_combout\ : std_logic;
SIGNAL \C[35]~input_o\ : std_logic;
SIGNAL \Selector156~1_combout\ : std_logic;
SIGNAL \Selector156~2_combout\ : std_logic;
SIGNAL \C[3]~input_o\ : std_logic;
SIGNAL \Selector508~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~10_combout\ : std_logic;
SIGNAL \Selector508~4_combout\ : std_logic;
SIGNAL \Selector508~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~21_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux16~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux24~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~11_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~78_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~79_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~80_combout\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux24~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux24~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~77_combout\ : std_logic;
SIGNAL \Selector91~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux56~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux44~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux44~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux44~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux56~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux58~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~248_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~77_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~20_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~262_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~263_combout\ : std_logic;
SIGNAL \Selector507~0_combout\ : std_logic;
SIGNAL \Selector507~1_combout\ : std_logic;
SIGNAL \Selector507~2_combout\ : std_logic;
SIGNAL \C[4]~input_o\ : std_logic;
SIGNAL \Selector155~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux27~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux27~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux27~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux27~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux27~3_combout\ : std_logic;
SIGNAL \C[36]~input_o\ : std_logic;
SIGNAL \Selector155~0_combout\ : std_logic;
SIGNAL \Selector155~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~12_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~32_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~13_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~14_combout\ : std_logic;
SIGNAL \Selector507~3_combout\ : std_logic;
SIGNAL \Selector507~4_combout\ : std_logic;
SIGNAL \Selector507~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux23~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~24_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux23~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~85_combout\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~84_combout\ : std_logic;
SIGNAL \Selector90~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux55~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux43~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~22_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~23_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~81_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~249_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~82_combout\ : std_logic;
SIGNAL \Selector506~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux47~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux43~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux43~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux55~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux55~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~83_combout\ : std_logic;
SIGNAL \Selector506~1_combout\ : std_logic;
SIGNAL \Selector506~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~15_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~16_combout\ : std_logic;
SIGNAL \C[37]~input_o\ : std_logic;
SIGNAL \Selector154~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux26~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux26~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux26~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux26~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux26~2_combout\ : std_logic;
SIGNAL \Selector154~1_combout\ : std_logic;
SIGNAL \Selector154~2_combout\ : std_logic;
SIGNAL \C[5]~input_o\ : std_logic;
SIGNAL \Selector506~3_combout\ : std_logic;
SIGNAL \Selector506~4_combout\ : std_logic;
SIGNAL \Selector506~5_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~17_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~18_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~19_combout\ : std_logic;
SIGNAL \C[38]~input_o\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux25~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux25~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux25~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux25~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux25~2_combout\ : std_logic;
SIGNAL \Selector153~1_combout\ : std_logic;
SIGNAL \Selector153~0_combout\ : std_logic;
SIGNAL \Selector153~2_combout\ : std_logic;
SIGNAL \Selector505~3_combout\ : std_logic;
SIGNAL \C[6]~input_o\ : std_logic;
SIGNAL \Selector505~4_combout\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~27_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux22~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux22~5_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux24~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~89_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~90_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~88_combout\ : std_logic;
SIGNAL \Selector89~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux54~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux42~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux42~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux42~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux54~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux56~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~251_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~25_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~26_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~86_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~250_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~87_combout\ : std_logic;
SIGNAL \Selector505~0_combout\ : std_logic;
SIGNAL \Selector505~1_combout\ : std_logic;
SIGNAL \Selector505~2_combout\ : std_logic;
SIGNAL \Selector505~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~93_combout\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~30_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux21~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux21~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~94_combout\ : std_logic;
SIGNAL \Selector88~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux53~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~28_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux41~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~29_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~91_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~92_combout\ : std_logic;
SIGNAL \Selector504~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux41~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux41~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux53~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~252_combout\ : std_logic;
SIGNAL \Selector504~1_combout\ : std_logic;
SIGNAL \Selector504~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~20_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~21_combout\ : std_logic;
SIGNAL \Selector152~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux24~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux24~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux24~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux24~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux24~2_combout\ : std_logic;
SIGNAL \C[39]~input_o\ : std_logic;
SIGNAL \Selector152~1_combout\ : std_logic;
SIGNAL \Selector152~2_combout\ : std_logic;
SIGNAL \C[7]~input_o\ : std_logic;
SIGNAL \Selector504~3_combout\ : std_logic;
SIGNAL \Selector504~4_combout\ : std_logic;
SIGNAL \Selector504~5_combout\ : std_logic;
SIGNAL \C[8]~input_o\ : std_logic;
SIGNAL \C[40]~input_o\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux23~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux23~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux23~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux23~4_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux23~3_combout\ : std_logic;
SIGNAL \Selector151~1_combout\ : std_logic;
SIGNAL \Selector151~0_combout\ : std_logic;
SIGNAL \Selector151~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~67_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux51~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux55~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~22_combout\ : std_logic;
SIGNAL \Selector503~3_combout\ : std_logic;
SIGNAL \Selector503~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~31_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux40~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~32_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux52~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~95_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~96_combout\ : std_logic;
SIGNAL \Selector503~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux40~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux44~5_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux52~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~253_combout\ : std_logic;
SIGNAL \Selector503~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~98_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~99_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~100_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux20~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux20~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux20~2_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~101_combout\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~33_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux20~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux20~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~97_combout\ : std_logic;
SIGNAL \Selector87~1_combout\ : std_logic;
SIGNAL \Selector503~2_combout\ : std_logic;
SIGNAL \Selector503~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux11~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux19~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux19~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~105_combout\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~104_combout\ : std_logic;
SIGNAL \Selector86~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~34_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux39~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~35_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~102_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~103_combout\ : std_logic;
SIGNAL \Selector502~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux39~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux47~6_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux51~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux51~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~254_combout\ : std_logic;
SIGNAL \Selector502~1_combout\ : std_logic;
SIGNAL \Selector502~2_combout\ : std_logic;
SIGNAL \Selector150~0_combout\ : std_logic;
SIGNAL \C[41]~input_o\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux22~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux22~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux22~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux22~4_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux22~3_combout\ : std_logic;
SIGNAL \Selector150~1_combout\ : std_logic;
SIGNAL \Selector150~2_combout\ : std_logic;
SIGNAL \C[9]~input_o\ : std_logic;
SIGNAL \Selector502~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux50~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux54~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~23_combout\ : std_logic;
SIGNAL \Selector502~4_combout\ : std_logic;
SIGNAL \Selector502~5_combout\ : std_logic;
SIGNAL \C[10]~input_o\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux21~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux21~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux21~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux21~4_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux21~3_combout\ : std_logic;
SIGNAL \C[42]~input_o\ : std_logic;
SIGNAL \Selector149~1_combout\ : std_logic;
SIGNAL \Selector149~0_combout\ : std_logic;
SIGNAL \Selector149~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~24_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux49~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux53~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~25_combout\ : std_logic;
SIGNAL \Selector501~3_combout\ : std_logic;
SIGNAL \Selector501~4_combout\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~110_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux18~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux18~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux18~2_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~111_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~112_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~109_combout\ : std_logic;
SIGNAL \Selector85~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux38~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~36_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~37_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~106_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~107_combout\ : std_logic;
SIGNAL \Selector501~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux50~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux38~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux46~6_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux50~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~108_combout\ : std_logic;
SIGNAL \Selector501~1_combout\ : std_logic;
SIGNAL \Selector501~2_combout\ : std_logic;
SIGNAL \Selector501~5_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux48~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux52~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~26_combout\ : std_logic;
SIGNAL \C[11]~input_o\ : std_logic;
SIGNAL \C[43]~input_o\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux20~4_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux20~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux20~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux20~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux20~3_combout\ : std_logic;
SIGNAL \Selector148~1_combout\ : std_logic;
SIGNAL \Selector148~0_combout\ : std_logic;
SIGNAL \Selector148~2_combout\ : std_logic;
SIGNAL \Selector500~3_combout\ : std_logic;
SIGNAL \Selector500~4_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux37~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux37~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux45~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux49~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux49~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~115_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~38_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~39_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~113_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~114_combout\ : std_logic;
SIGNAL \Selector500~0_combout\ : std_logic;
SIGNAL \Selector500~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~116_combout\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux17~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux9~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux17~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~117_combout\ : std_logic;
SIGNAL \Selector84~1_combout\ : std_logic;
SIGNAL \Selector500~2_combout\ : std_logic;
SIGNAL \Selector500~5_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux51~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux51~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~27_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~68_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~28_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux19~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux19~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux19~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux19~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux19~2_combout\ : std_logic;
SIGNAL \C[44]~input_o\ : std_logic;
SIGNAL \Selector147~1_combout\ : std_logic;
SIGNAL \Selector147~0_combout\ : std_logic;
SIGNAL \Selector147~2_combout\ : std_logic;
SIGNAL \Selector499~3_combout\ : std_logic;
SIGNAL \C[12]~input_o\ : std_logic;
SIGNAL \Selector499~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~42_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux16~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux16~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~121_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux16~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~122_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~123_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~124_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~125_combout\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \Selector83~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux40~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux36~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux36~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux36~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux48~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux48~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~120_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~40_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~41_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~118_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~119_combout\ : std_logic;
SIGNAL \Selector499~0_combout\ : std_logic;
SIGNAL \Selector499~1_combout\ : std_logic;
SIGNAL \Selector499~2_combout\ : std_logic;
SIGNAL \Selector499~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~129_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~45_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux15~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~130_combout\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \Selector82~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux35~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~43_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~44_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~126_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~127_combout\ : std_logic;
SIGNAL \Selector498~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux35~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux35~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux47~4_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux47~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~128_combout\ : std_logic;
SIGNAL \Selector498~1_combout\ : std_logic;
SIGNAL \Selector498~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux50~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux50~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~29_combout\ : std_logic;
SIGNAL \C[13]~input_o\ : std_logic;
SIGNAL \C[45]~input_o\ : std_logic;
SIGNAL \Selector146~1_combout\ : std_logic;
SIGNAL \Selector146~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux18~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux18~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux18~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux18~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux18~2_combout\ : std_logic;
SIGNAL \Selector146~2_combout\ : std_logic;
SIGNAL \Selector498~3_combout\ : std_logic;
SIGNAL \Selector498~4_combout\ : std_logic;
SIGNAL \Selector498~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~48_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux14~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~135_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~136_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~137_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~134_combout\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \Selector81~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux34~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux34~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux34~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux46~4_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux46~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~133_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~46_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~47_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~131_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~132_combout\ : std_logic;
SIGNAL \Selector497~0_combout\ : std_logic;
SIGNAL \Selector497~1_combout\ : std_logic;
SIGNAL \Selector497~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux49~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux49~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~30_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux17~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux17~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux17~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux17~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux17~2_combout\ : std_logic;
SIGNAL \Selector145~1_combout\ : std_logic;
SIGNAL \Selector145~0_combout\ : std_logic;
SIGNAL \C[46]~input_o\ : std_logic;
SIGNAL \Selector145~2_combout\ : std_logic;
SIGNAL \Selector497~3_combout\ : std_logic;
SIGNAL \C[14]~input_o\ : std_logic;
SIGNAL \Selector497~4_combout\ : std_logic;
SIGNAL \Selector497~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux33~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux33~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux33~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux45~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux45~2_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~142_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~49_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~50_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~140_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~138_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~73_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~139_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~141_combout\ : std_logic;
SIGNAL \Selector496~0_combout\ : std_logic;
SIGNAL \Selector496~1_combout\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~51_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~143_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~144_combout\ : std_logic;
SIGNAL \Selector80~1_combout\ : std_logic;
SIGNAL \Selector496~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux48~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux48~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~31_combout\ : std_logic;
SIGNAL \C[15]~input_o\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux16~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux16~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux16~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux16~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux16~2_combout\ : std_logic;
SIGNAL \Selector144~1_combout\ : std_logic;
SIGNAL \Selector144~0_combout\ : std_logic;
SIGNAL \C[47]~input_o\ : std_logic;
SIGNAL \Selector144~2_combout\ : std_logic;
SIGNAL \Selector496~3_combout\ : std_logic;
SIGNAL \Selector496~4_combout\ : std_logic;
SIGNAL \Selector496~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~145_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux32~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~52_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~53_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~146_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~147_combout\ : std_logic;
SIGNAL \Selector495~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~54_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux44~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~148_combout\ : std_logic;
SIGNAL \Selector495~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~55_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~149_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~150_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~151_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux12~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux12~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~152_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~153_combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Selector79~1_combout\ : std_logic;
SIGNAL \Selector495~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux15~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~33_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux15~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux15~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux15~2_combout\ : std_logic;
SIGNAL \C[48]~input_o\ : std_logic;
SIGNAL \Selector143~1_combout\ : std_logic;
SIGNAL \Selector143~0_combout\ : std_logic;
SIGNAL \Selector143~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~32_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux47~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux47~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~33_combout\ : std_logic;
SIGNAL \Selector495~3_combout\ : std_logic;
SIGNAL \C[16]~input_o\ : std_logic;
SIGNAL \Selector495~4_combout\ : std_logic;
SIGNAL \Selector495~5_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux14~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux14~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux14~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux14~2_combout\ : std_logic;
SIGNAL \C[49]~input_o\ : std_logic;
SIGNAL \Selector142~1_combout\ : std_logic;
SIGNAL \Selector157~6_combout\ : std_logic;
SIGNAL \Selector142~0_combout\ : std_logic;
SIGNAL \Selector142~2_combout\ : std_logic;
SIGNAL \C[17]~input_o\ : std_logic;
SIGNAL \Selector494~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux46~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux46~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~34_combout\ : std_logic;
SIGNAL \Selector494~4_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux11~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux11~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~162_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~159_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~163_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~160_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~158_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~161_combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \Selector78~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~154_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~57_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~56_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~58_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~155_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~156_combout\ : std_logic;
SIGNAL \Selector494~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux39~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux43~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~59_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux43~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~157_combout\ : std_logic;
SIGNAL \Selector494~1_combout\ : std_logic;
SIGNAL \Selector494~2_combout\ : std_logic;
SIGNAL \Selector494~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux10~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~168_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~169_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~255_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux10~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~170_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~171_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~172_combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \Selector77~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~78_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~60_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~61_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~165_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~164_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~166_combout\ : std_logic;
SIGNAL \Selector493~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux32|Mux38~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux42~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~62_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux42~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~167_combout\ : std_logic;
SIGNAL \Selector493~1_combout\ : std_logic;
SIGNAL \Selector493~2_combout\ : std_logic;
SIGNAL \C[18]~input_o\ : std_logic;
SIGNAL \C[50]~input_o\ : std_logic;
SIGNAL \Selector141~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~34_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux13~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux13~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux13~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux13~2_combout\ : std_logic;
SIGNAL \Selector141~1_combout\ : std_logic;
SIGNAL \Selector141~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux45~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux45~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~35_combout\ : std_logic;
SIGNAL \Selector493~3_combout\ : std_logic;
SIGNAL \Selector493~4_combout\ : std_logic;
SIGNAL \Selector493~5_combout\ : std_logic;
SIGNAL \C[19]~input_o\ : std_logic;
SIGNAL \C[51]~input_o\ : std_logic;
SIGNAL \Selector140~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux12~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux31~35_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux12~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux12~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux12~2_combout\ : std_logic;
SIGNAL \Selector140~0_combout\ : std_logic;
SIGNAL \Selector140~2_combout\ : std_logic;
SIGNAL \Selector492~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux44~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux44~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~36_combout\ : std_logic;
SIGNAL \Selector492~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~64_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~63_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~65_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~174_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~173_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~175_combout\ : std_logic;
SIGNAL \Selector492~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux41~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~66_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux41~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~176_combout\ : std_logic;
SIGNAL \Selector492~1_combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~177_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~178_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux9~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux9~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~179_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~180_combout\ : std_logic;
SIGNAL \Selector76~1_combout\ : std_logic;
SIGNAL \Selector492~2_combout\ : std_logic;
SIGNAL \Selector492~5_combout\ : std_logic;
SIGNAL \C[20]~input_o\ : std_logic;
SIGNAL \C[52]~input_o\ : std_logic;
SIGNAL \Selector139~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux11~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux11~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux15~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux11~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux11~2_combout\ : std_logic;
SIGNAL \Selector139~0_combout\ : std_logic;
SIGNAL \Selector139~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux43~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux43~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~37_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~38_combout\ : std_logic;
SIGNAL \Selector491~3_combout\ : std_logic;
SIGNAL \Selector491~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~68_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux40~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux40~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux40~2_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~184_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~181_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~67_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~79_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~182_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~183_combout\ : std_logic;
SIGNAL \Selector491~0_combout\ : std_logic;
SIGNAL \Selector491~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~185_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~186_combout\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~189_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~187_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~188_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~190_combout\ : std_logic;
SIGNAL \Selector75~1_combout\ : std_logic;
SIGNAL \Selector491~2_combout\ : std_logic;
SIGNAL \Selector491~5_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux42~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux42~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~39_combout\ : std_logic;
SIGNAL \C[53]~input_o\ : std_logic;
SIGNAL \Selector138~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux10~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux10~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux10~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux14~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux10~2_combout\ : std_logic;
SIGNAL \Selector138~0_combout\ : std_logic;
SIGNAL \Selector138~2_combout\ : std_logic;
SIGNAL \C[21]~input_o\ : std_logic;
SIGNAL \Selector490~3_combout\ : std_logic;
SIGNAL \Selector490~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~191_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~80_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~192_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~193_combout\ : std_logic;
SIGNAL \Selector490~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux39~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux39~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~194_combout\ : std_logic;
SIGNAL \Selector490~1_combout\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~256_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~195_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~196_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~197_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~198_combout\ : std_logic;
SIGNAL \Selector74~1_combout\ : std_logic;
SIGNAL \Selector490~2_combout\ : std_logic;
SIGNAL \Selector490~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~203_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~204_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~205_combout\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \Selector73~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~81_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux38~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux38~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~202_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~199_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~200_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~201_combout\ : std_logic;
SIGNAL \Selector489~0_combout\ : std_logic;
SIGNAL \Selector489~1_combout\ : std_logic;
SIGNAL \Selector489~2_combout\ : std_logic;
SIGNAL \C[22]~input_o\ : std_logic;
SIGNAL \C[54]~input_o\ : std_logic;
SIGNAL \Selector137~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux9~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux9~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux13~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux9~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux9~2_combout\ : std_logic;
SIGNAL \Selector137~0_combout\ : std_logic;
SIGNAL \Selector137~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux41~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux41~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~40_combout\ : std_logic;
SIGNAL \Selector489~3_combout\ : std_logic;
SIGNAL \Selector489~4_combout\ : std_logic;
SIGNAL \Selector489~5_combout\ : std_logic;
SIGNAL \C[23]~input_o\ : std_logic;
SIGNAL \C[55]~input_o\ : std_logic;
SIGNAL \Selector136~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux8~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux8~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux12~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux8~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux8~2_combout\ : std_logic;
SIGNAL \Selector136~0_combout\ : std_logic;
SIGNAL \Selector136~2_combout\ : std_logic;
SIGNAL \Selector488~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux40~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux40~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~41_combout\ : std_logic;
SIGNAL \Selector488~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~257_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~209_combout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \Selector72~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~69_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux37~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux37~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~208_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~206_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~207_combout\ : std_logic;
SIGNAL \Selector488~0_combout\ : std_logic;
SIGNAL \Selector488~1_combout\ : std_logic;
SIGNAL \Selector488~2_combout\ : std_logic;
SIGNAL \Selector488~5_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux31~6_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux31~7_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux31~8_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux31~9_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux11~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux7~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux7~1_combout\ : std_logic;
SIGNAL \Selector135~1_combout\ : std_logic;
SIGNAL \C[56]~input_o\ : std_logic;
SIGNAL \Selector135~0_combout\ : std_logic;
SIGNAL \Selector135~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux39~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux39~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~42_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~43_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~44_combout\ : std_logic;
SIGNAL \Selector487~3_combout\ : std_logic;
SIGNAL \C[24]~input_o\ : std_logic;
SIGNAL \Selector487~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~214_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~215_combout\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~213_combout\ : std_logic;
SIGNAL \Selector71~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~70_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux36~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~212_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~210_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~211_combout\ : std_logic;
SIGNAL \Selector487~0_combout\ : std_logic;
SIGNAL \Selector487~1_combout\ : std_logic;
SIGNAL \Selector487~2_combout\ : std_logic;
SIGNAL \Selector487~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~220_combout\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~219_combout\ : std_logic;
SIGNAL \Selector70~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~71_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux35~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~218_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~216_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~217_combout\ : std_logic;
SIGNAL \Selector486~0_combout\ : std_logic;
SIGNAL \Selector486~1_combout\ : std_logic;
SIGNAL \Selector486~2_combout\ : std_logic;
SIGNAL \C[25]~input_o\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux34~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux34~4_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux10~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux6~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux6~1_combout\ : std_logic;
SIGNAL \Selector134~0_combout\ : std_logic;
SIGNAL \C[57]~input_o\ : std_logic;
SIGNAL \Selector134~1_combout\ : std_logic;
SIGNAL \Selector134~2_combout\ : std_logic;
SIGNAL \Selector486~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux38~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux38~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~45_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~46_combout\ : std_logic;
SIGNAL \Selector486~4_combout\ : std_logic;
SIGNAL \Selector486~5_combout\ : std_logic;
SIGNAL \C[26]~input_o\ : std_logic;
SIGNAL \Selector133~1_combout\ : std_logic;
SIGNAL \C[58]~input_o\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux9~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux5~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux33~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux33~4_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux5~1_combout\ : std_logic;
SIGNAL \Selector133~0_combout\ : std_logic;
SIGNAL \Selector133~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~48_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux37~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux37~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~47_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~49_combout\ : std_logic;
SIGNAL \Selector485~3_combout\ : std_logic;
SIGNAL \Selector485~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~225_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~226_combout\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~224_combout\ : std_logic;
SIGNAL \Selector69~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~72_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux34~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~223_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~221_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~222_combout\ : std_logic;
SIGNAL \Selector485~0_combout\ : std_logic;
SIGNAL \Selector485~1_combout\ : std_logic;
SIGNAL \Selector485~2_combout\ : std_logic;
SIGNAL \Selector485~5_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~51_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux36~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux36~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~50_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~52_combout\ : std_logic;
SIGNAL \C[27]~input_o\ : std_logic;
SIGNAL \C[59]~input_o\ : std_logic;
SIGNAL \Selector132~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux32~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux32~4_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux8~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux4~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux4~1_combout\ : std_logic;
SIGNAL \Selector132~1_combout\ : std_logic;
SIGNAL \Selector132~2_combout\ : std_logic;
SIGNAL \Selector484~3_combout\ : std_logic;
SIGNAL \Selector484~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~230_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~231_combout\ : std_logic;
SIGNAL \Selector68~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~73_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux33~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~229_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~227_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~228_combout\ : std_logic;
SIGNAL \Selector484~0_combout\ : std_logic;
SIGNAL \Selector484~1_combout\ : std_logic;
SIGNAL \Selector484~2_combout\ : std_logic;
SIGNAL \Selector484~5_combout\ : std_logic;
SIGNAL \Selector131~1_combout\ : std_logic;
SIGNAL \Selector191~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux3~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux3~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~55_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~56_combout\ : std_logic;
SIGNAL \C[60]~input_o\ : std_logic;
SIGNAL \Selector131~0_combout\ : std_logic;
SIGNAL \Selector131~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux35~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux35~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux35~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~53_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~238_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~54_combout\ : std_logic;
SIGNAL \Selector483~3_combout\ : std_logic;
SIGNAL \C[28]~input_o\ : std_logic;
SIGNAL \Selector483~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~74_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~234_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~235_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~232_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~258_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~233_combout\ : std_logic;
SIGNAL \Selector483~0_combout\ : std_logic;
SIGNAL \Selector483~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~236_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~237_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \Selector67~1_combout\ : std_logic;
SIGNAL \Selector483~2_combout\ : std_logic;
SIGNAL \Selector483~5_combout\ : std_logic;
SIGNAL \C[61]~input_o\ : std_logic;
SIGNAL \Selector130~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux2~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux2~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~59_combout\ : std_logic;
SIGNAL \Selector130~1_combout\ : std_logic;
SIGNAL \Selector130~2_combout\ : std_logic;
SIGNAL \C[29]~input_o\ : std_logic;
SIGNAL \Selector482~3_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~57_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~58_combout\ : std_logic;
SIGNAL \Selector482~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~240_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux8|Mux1~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~241_combout\ : std_logic;
SIGNAL \Selector66~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~239_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~259_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~260_combout\ : std_logic;
SIGNAL \Selector482~0_combout\ : std_logic;
SIGNAL \Selector482~1_combout\ : std_logic;
SIGNAL \Selector482~2_combout\ : std_logic;
SIGNAL \Selector482~5_combout\ : std_logic;
SIGNAL \C[62]~input_o\ : std_logic;
SIGNAL \Selector129~1_combout\ : std_logic;
SIGNAL \Selector129~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~61_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~62_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~63_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~64_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~65_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~66_combout\ : std_logic;
SIGNAL \Selector129~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux31~60_combout\ : std_logic;
SIGNAL \Selector481~6_combout\ : std_logic;
SIGNAL \C[30]~input_o\ : std_logic;
SIGNAL \Selector481~7_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~244_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~245_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~261_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~242_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~243_combout\ : std_logic;
SIGNAL \Selector481~3_combout\ : std_logic;
SIGNAL \Selector481~4_combout\ : std_logic;
SIGNAL \Selector65~1_combout\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \Selector65~2_combout\ : std_logic;
SIGNAL \Selector481~5_combout\ : std_logic;
SIGNAL \Selector481~8_combout\ : std_logic;
SIGNAL \C[63]~input_o\ : std_logic;
SIGNAL \Selector128~0_combout\ : std_logic;
SIGNAL \Selector128~1_combout\ : std_logic;
SIGNAL \Selector128~2_combout\ : std_logic;
SIGNAL \Selector128~3_combout\ : std_logic;
SIGNAL \Selector128~4_combout\ : std_logic;
SIGNAL \Selector128~5_combout\ : std_logic;
SIGNAL \Selector128~6_combout\ : std_logic;
SIGNAL \Selector64~1_combout\ : std_logic;
SIGNAL \Selector160~0_combout\ : std_logic;
SIGNAL \Selector160~1_combout\ : std_logic;
SIGNAL \C[31]~input_o\ : std_logic;
SIGNAL \Selector160~2_combout\ : std_logic;
SIGNAL \Selector480~1_combout\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \Selector96~1_combout\ : std_logic;
SIGNAL \Selector480~2_combout\ : std_logic;
SIGNAL \Selector480~0_combout\ : std_logic;
SIGNAL \Selector480~3_combout\ : std_logic;
SIGNAL \Selector479~0_combout\ : std_logic;
SIGNAL \Selector479~1_combout\ : std_logic;
SIGNAL \Selector478~0_combout\ : std_logic;
SIGNAL \Selector478~1_combout\ : std_logic;
SIGNAL \Selector477~0_combout\ : std_logic;
SIGNAL \Selector477~1_combout\ : std_logic;
SIGNAL \Selector476~0_combout\ : std_logic;
SIGNAL \Selector476~1_combout\ : std_logic;
SIGNAL \Selector475~0_combout\ : std_logic;
SIGNAL \Selector475~1_combout\ : std_logic;
SIGNAL \Selector474~0_combout\ : std_logic;
SIGNAL \Selector474~1_combout\ : std_logic;
SIGNAL \Selector473~0_combout\ : std_logic;
SIGNAL \Selector473~1_combout\ : std_logic;
SIGNAL \Selector472~0_combout\ : std_logic;
SIGNAL \Selector472~1_combout\ : std_logic;
SIGNAL \Selector471~0_combout\ : std_logic;
SIGNAL \Selector471~1_combout\ : std_logic;
SIGNAL \Selector470~0_combout\ : std_logic;
SIGNAL \Selector470~1_combout\ : std_logic;
SIGNAL \Selector469~0_combout\ : std_logic;
SIGNAL \Selector469~1_combout\ : std_logic;
SIGNAL \Selector468~0_combout\ : std_logic;
SIGNAL \Selector468~1_combout\ : std_logic;
SIGNAL \Selector467~0_combout\ : std_logic;
SIGNAL \Selector467~1_combout\ : std_logic;
SIGNAL \Selector466~0_combout\ : std_logic;
SIGNAL \Selector466~1_combout\ : std_logic;
SIGNAL \Selector465~0_combout\ : std_logic;
SIGNAL \Selector465~1_combout\ : std_logic;
SIGNAL \Selector464~0_combout\ : std_logic;
SIGNAL \Selector464~1_combout\ : std_logic;
SIGNAL \Selector463~0_combout\ : std_logic;
SIGNAL \Selector463~1_combout\ : std_logic;
SIGNAL \Selector462~0_combout\ : std_logic;
SIGNAL \Selector462~1_combout\ : std_logic;
SIGNAL \Selector461~0_combout\ : std_logic;
SIGNAL \Selector461~1_combout\ : std_logic;
SIGNAL \Selector460~0_combout\ : std_logic;
SIGNAL \Selector460~1_combout\ : std_logic;
SIGNAL \Selector459~0_combout\ : std_logic;
SIGNAL \Selector459~1_combout\ : std_logic;
SIGNAL \Selector458~0_combout\ : std_logic;
SIGNAL \Selector458~1_combout\ : std_logic;
SIGNAL \Selector457~0_combout\ : std_logic;
SIGNAL \Selector457~1_combout\ : std_logic;
SIGNAL \Selector456~0_combout\ : std_logic;
SIGNAL \Selector456~1_combout\ : std_logic;
SIGNAL \Selector455~0_combout\ : std_logic;
SIGNAL \Selector455~1_combout\ : std_logic;
SIGNAL \Selector454~0_combout\ : std_logic;
SIGNAL \Selector454~1_combout\ : std_logic;
SIGNAL \Selector453~0_combout\ : std_logic;
SIGNAL \Selector453~1_combout\ : std_logic;
SIGNAL \Selector452~0_combout\ : std_logic;
SIGNAL \Selector452~1_combout\ : std_logic;
SIGNAL \Selector451~0_combout\ : std_logic;
SIGNAL \Selector451~1_combout\ : std_logic;
SIGNAL \Selector450~0_combout\ : std_logic;
SIGNAL \Selector450~1_combout\ : std_logic;
SIGNAL \Selector449~0_combout\ : std_logic;
SIGNAL \Selector449~1_combout\ : std_logic;
SIGNAL \Selector448~0_combout\ : std_logic;
SIGNAL \Selector448~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_ShiftFN <= ShiftFN;
ww_ExtWord <= ExtWord;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X29_Y73_N2
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector511~1_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector510~5_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector509~5_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector508~5_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector507~5_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector506~5_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector505~5_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector504~5_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector503~5_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector502~5_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector501~5_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector500~5_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector499~5_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector498~5_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector497~5_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector496~5_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector495~5_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector494~5_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector493~5_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector492~5_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector491~5_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector490~5_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector489~5_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector488~5_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector487~5_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector486~5_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector485~5_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector484~5_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector483~5_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector482~5_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector481~8_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector480~3_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector479~1_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector478~1_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector477~1_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector476~1_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector475~1_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector474~1_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector473~1_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector472~1_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector471~1_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector470~1_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector469~1_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector468~1_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector467~1_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector466~1_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector465~1_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector464~1_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector463~1_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector462~1_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector461~1_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector460~1_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector459~1_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector458~1_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector457~1_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector456~1_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector455~1_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector454~1_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector453~1_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector452~1_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector451~1_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector450~1_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector449~1_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector448~1_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOIBUF_X52_Y73_N22
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X55_Y40_N10
\bitShift~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bitShift~0_combout\ = (\B[5]~input_o\ & ((\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \bitShift~0_combout\);

-- Location: IOIBUF_X0_Y42_N1
\C[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(32),
	o => \C[32]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X58_Y40_N8
\SLL64_A|Mux8|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux31~4_combout\ = (!\B[3]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLL64_A|Mux8|Mux31~4_combout\);

-- Location: IOIBUF_X58_Y0_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X115_Y28_N1
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X115_Y36_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X59_Y36_N14
\Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[32]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[0]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[32]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Selector63~0_combout\);

-- Location: IOIBUF_X67_Y0_N8
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X115_Y36_N15
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X59_Y36_N24
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[48]~input_o\)) # (!\ExtWord~input_o\ & ((\A[16]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[16]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X59_Y36_N10
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[0]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[32]~input_o\)))) # (!\ExtWord~input_o\ & (((\A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[32]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X59_Y36_N12
\SLL64_A|Mux32|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~5_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector47~0_combout\)) # (!\B[4]~input_o\ & ((\Selector31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Selector47~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector31~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~5_combout\);

-- Location: LCCOMB_X57_Y38_N2
\SLL64_A|Mux32|Mux31~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~36_combout\ = (\SLL64_A|Mux32|Mux31~5_combout\) # ((!\B[4]~input_o\ & (\B[5]~input_o\ & \Selector63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Selector63~0_combout\,
	datad => \SLL64_A|Mux32|Mux31~5_combout\,
	combout => \SLL64_A|Mux32|Mux31~36_combout\);

-- Location: LCCOMB_X56_Y39_N8
\SLL64_A|Mux8|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux31~2_combout\ = (!\B[5]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \B[3]~input_o\,
	combout => \SLL64_A|Mux8|Mux31~2_combout\);

-- Location: IOIBUF_X115_Y30_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X55_Y38_N16
\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[40]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[8]~input_o\)))) # (!\ExtWord~input_o\ & (((\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[40]~input_o\,
	combout => \Selector55~0_combout\);

-- Location: IOIBUF_X72_Y0_N8
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X74_Y0_N22
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X58_Y38_N24
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[56]~input_o\)) # (!\ExtWord~input_o\ & ((\A[24]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[56]~input_o\,
	datad => \A[24]~input_o\,
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X58_Y38_N26
\SLL64_A|Mux32|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~3_combout\ = (\B[4]~input_o\ & (\Selector55~0_combout\)) # (!\B[4]~input_o\ & ((\Selector39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Selector55~0_combout\,
	datad => \Selector39~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~3_combout\);

-- Location: IOIBUF_X60_Y0_N22
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X58_Y35_N0
\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[36]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[4]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[36]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Selector59~0_combout\);

-- Location: IOIBUF_X62_Y0_N15
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X115_Y35_N15
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X58_Y35_N10
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[52]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[20]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[52]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X58_Y35_N12
\SLL64_A|Mux32|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~2_combout\ = (\B[4]~input_o\ & (\Selector59~0_combout\)) # (!\B[4]~input_o\ & ((\Selector43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector59~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector43~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~2_combout\);

-- Location: LCCOMB_X57_Y38_N8
\SLL64_A|Mux8|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux31~3_combout\ = (\SLL64_A|Mux8|Mux31~2_combout\ & ((\B[2]~input_o\ & ((\SLL64_A|Mux32|Mux31~2_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux8|Mux31~2_combout\,
	datac => \SLL64_A|Mux32|Mux31~3_combout\,
	datad => \SLL64_A|Mux32|Mux31~2_combout\,
	combout => \SLL64_A|Mux8|Mux31~3_combout\);

-- Location: IOIBUF_X0_Y34_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X55_Y38_N18
\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[44]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[12]~input_o\)))) # (!\ExtWord~input_o\ & (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[44]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector51~0_combout\);

-- Location: IOIBUF_X74_Y73_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X55_Y38_N28
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[60]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[28]~input_o\)))) # (!\ExtWord~input_o\ & (((\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[28]~input_o\,
	datad => \A[60]~input_o\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X56_Y38_N8
\SLL64_A|Mux32|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~4_combout\ = (\B[4]~input_o\ & (\Selector51~0_combout\)) # (!\B[4]~input_o\ & ((\Selector35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector51~0_combout\,
	datad => \Selector35~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~4_combout\);

-- Location: LCCOMB_X57_Y38_N0
\SLL64_A|Mux8|Mux31~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux31~10_combout\ = (\B[2]~input_o\ & (!\B[5]~input_o\ & (!\B[3]~input_o\ & \SLL64_A|Mux32|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~4_combout\,
	combout => \SLL64_A|Mux8|Mux31~10_combout\);

-- Location: LCCOMB_X57_Y38_N18
\SLL64_A|Mux8|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux31~5_combout\ = (\SLL64_A|Mux8|Mux31~3_combout\) # ((\SLL64_A|Mux8|Mux31~10_combout\) # ((\SLL64_A|Mux8|Mux31~4_combout\ & \SLL64_A|Mux32|Mux31~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux31~4_combout\,
	datab => \SLL64_A|Mux32|Mux31~36_combout\,
	datac => \SLL64_A|Mux8|Mux31~3_combout\,
	datad => \SLL64_A|Mux8|Mux31~10_combout\,
	combout => \SLL64_A|Mux8|Mux31~5_combout\);

-- Location: IOIBUF_X58_Y73_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X54_Y41_N8
\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[42]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[10]~input_o\)))) # (!\ExtWord~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[10]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[42]~input_o\,
	combout => \Selector53~0_combout\);

-- Location: IOIBUF_X54_Y73_N8
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X54_Y41_N10
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[58]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[26]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[58]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[26]~input_o\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X54_Y41_N28
\SLL64_A|Mux32|Mux31~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~16_combout\ = (\B[4]~input_o\ & (\Selector53~0_combout\)) # (!\B[4]~input_o\ & ((\Selector37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Selector53~0_combout\,
	datad => \Selector37~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~16_combout\);

-- Location: IOIBUF_X0_Y32_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X52_Y41_N0
\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[46]~input_o\))) # (!\ExtWord~input_o\ & (\A[14]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[46]~input_o\,
	combout => \Selector49~0_combout\);

-- Location: IOIBUF_X27_Y73_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X52_Y41_N10
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[62]~input_o\))) # (!\ExtWord~input_o\ & (\A[30]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[30]~input_o\,
	datad => \A[62]~input_o\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X52_Y41_N4
\SLL64_A|Mux32|Mux31~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~15_combout\ = (\B[4]~input_o\ & (\Selector49~0_combout\)) # (!\B[4]~input_o\ & ((\Selector33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector49~0_combout\,
	datad => \Selector33~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~15_combout\);

-- Location: IOIBUF_X0_Y47_N22
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LCCOMB_X52_Y42_N10
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[54]~input_o\))) # (!\ExtWord~input_o\ & (\A[22]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[22]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[54]~input_o\,
	combout => \Selector41~0_combout\);

-- Location: IOIBUF_X45_Y73_N8
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X52_Y42_N24
\Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[38]~input_o\)) # (!\ExtWord~input_o\ & ((\A[6]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[38]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[6]~input_o\,
	combout => \Selector57~0_combout\);

-- Location: LCCOMB_X52_Y42_N28
\SLL64_A|Mux32|Mux31~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~14_combout\ = (\B[4]~input_o\ & ((\Selector57~0_combout\))) # (!\B[4]~input_o\ & (\Selector41~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector57~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~14_combout\);

-- Location: LCCOMB_X58_Y40_N18
\SLL64_A|Mux8|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux35~0_combout\ = (\B[3]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLL64_A|Mux8|Mux35~0_combout\);

-- Location: LCCOMB_X53_Y42_N24
\SLL64_A|Mux8|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux33~0_combout\ = (\SLL64_A|Mux32|Mux31~15_combout\ & ((\SLL64_A|Mux8|Mux31~4_combout\) # ((\SLL64_A|Mux32|Mux31~14_combout\ & \SLL64_A|Mux8|Mux35~0_combout\)))) # (!\SLL64_A|Mux32|Mux31~15_combout\ & (\SLL64_A|Mux32|Mux31~14_combout\ & 
-- ((\SLL64_A|Mux8|Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~15_combout\,
	datab => \SLL64_A|Mux32|Mux31~14_combout\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \SLL64_A|Mux8|Mux35~0_combout\,
	combout => \SLL64_A|Mux8|Mux33~0_combout\);

-- Location: LCCOMB_X56_Y39_N26
\SLL64_A|Mux8|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux27~0_combout\ = (!\B[3]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLL64_A|Mux8|Mux27~0_combout\);

-- Location: IOIBUF_X23_Y73_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LCCOMB_X52_Y42_N22
\Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[34]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[2]~input_o\)))) # (!\ExtWord~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[34]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector61~0_combout\);

-- Location: IOIBUF_X72_Y73_N22
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X52_Y42_N8
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[50]~input_o\)) # (!\ExtWord~input_o\ & ((\A[18]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[50]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[18]~input_o\,
	combout => \Selector45~0_combout\);

-- Location: LCCOMB_X53_Y39_N24
\SLL64_A|Mux8|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux55~0_combout\ = (\B[3]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLL64_A|Mux8|Mux55~0_combout\);

-- Location: LCCOMB_X50_Y42_N24
\SLL64_A|Mux8|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux33~1_combout\ = (\SLL64_A|Mux8|Mux55~0_combout\ & ((\B[4]~input_o\ & (\Selector61~0_combout\)) # (!\B[4]~input_o\ & ((\Selector45~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector61~0_combout\,
	datab => \Selector45~0_combout\,
	datac => \B[4]~input_o\,
	datad => \SLL64_A|Mux8|Mux55~0_combout\,
	combout => \SLL64_A|Mux8|Mux33~1_combout\);

-- Location: LCCOMB_X50_Y42_N26
\SLL64_A|Mux8|Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux33~2_combout\ = (\SLL64_A|Mux8|Mux33~0_combout\) # ((\SLL64_A|Mux8|Mux33~1_combout\) # ((\SLL64_A|Mux32|Mux31~16_combout\ & \SLL64_A|Mux8|Mux27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~16_combout\,
	datab => \SLL64_A|Mux8|Mux33~0_combout\,
	datac => \SLL64_A|Mux8|Mux27~0_combout\,
	datad => \SLL64_A|Mux8|Mux33~1_combout\,
	combout => \SLL64_A|Mux8|Mux33~2_combout\);

-- Location: IOIBUF_X25_Y73_N15
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X0_Y20_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X52_Y37_N2
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[51]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[19]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[51]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Selector44~0_combout\);

-- Location: IOIBUF_X0_Y30_N8
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X52_Y37_N24
\Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[35]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[3]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[35]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Selector60~0_combout\);

-- Location: LCCOMB_X53_Y38_N10
\SLL64_A|Mux8|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux32~1_combout\ = (\SLL64_A|Mux8|Mux55~0_combout\ & ((\B[4]~input_o\ & ((\Selector60~0_combout\))) # (!\B[4]~input_o\ & (\Selector44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux55~0_combout\,
	datab => \Selector44~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector60~0_combout\,
	combout => \SLL64_A|Mux8|Mux32~1_combout\);

-- Location: IOIBUF_X49_Y0_N8
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LCCOMB_X53_Y34_N2
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[59]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[27]~input_o\)))) # (!\ExtWord~input_o\ & (\A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \A[59]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector36~0_combout\);

-- Location: IOIBUF_X49_Y0_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X53_Y34_N16
\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[43]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[11]~input_o\)))) # (!\ExtWord~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[43]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector52~0_combout\);

-- Location: LCCOMB_X53_Y34_N28
\SLL64_A|Mux32|Mux31~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~13_combout\ = (\B[4]~input_o\ & ((\Selector52~0_combout\))) # (!\B[4]~input_o\ & (\Selector36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector36~0_combout\,
	datad => \Selector52~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~13_combout\);

-- Location: IOIBUF_X45_Y0_N22
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X52_Y35_N20
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[63]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[31]~input_o\)))) # (!\ExtWord~input_o\ & (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[31]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Selector32~0_combout\);

-- Location: IOIBUF_X79_Y73_N1
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X115_Y33_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X57_Y40_N14
\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[47]~input_o\)) # (!\ExtWord~input_o\ & ((\A[15]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[47]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[15]~input_o\,
	combout => \Selector48~0_combout\);

-- Location: LCCOMB_X53_Y36_N24
\SLL64_A|Mux32|Mux31~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~12_combout\ = (\B[4]~input_o\ & ((\Selector48~0_combout\))) # (!\B[4]~input_o\ & (\Selector32~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Selector48~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux31~12_combout\);

-- Location: IOIBUF_X0_Y30_N1
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X50_Y38_N8
\Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[39]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[7]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[39]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Selector56~0_combout\);

-- Location: IOIBUF_X0_Y31_N15
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X50_Y38_N10
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[55]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[23]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[55]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X50_Y38_N28
\SLL64_A|Mux32|Mux31~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~11_combout\ = (\B[4]~input_o\ & (\Selector56~0_combout\)) # (!\B[4]~input_o\ & ((\Selector40~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \Selector56~0_combout\,
	datad => \Selector40~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~11_combout\);

-- Location: LCCOMB_X53_Y38_N16
\SLL64_A|Mux8|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux32~0_combout\ = (\SLL64_A|Mux32|Mux31~12_combout\ & ((\SLL64_A|Mux8|Mux31~4_combout\) # ((\SLL64_A|Mux32|Mux31~11_combout\ & \SLL64_A|Mux8|Mux35~0_combout\)))) # (!\SLL64_A|Mux32|Mux31~12_combout\ & (((\SLL64_A|Mux32|Mux31~11_combout\ & 
-- \SLL64_A|Mux8|Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~12_combout\,
	datab => \SLL64_A|Mux8|Mux31~4_combout\,
	datac => \SLL64_A|Mux32|Mux31~11_combout\,
	datad => \SLL64_A|Mux8|Mux35~0_combout\,
	combout => \SLL64_A|Mux8|Mux32~0_combout\);

-- Location: LCCOMB_X53_Y38_N4
\SLL64_A|Mux8|Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux32~2_combout\ = (\SLL64_A|Mux8|Mux32~1_combout\) # ((\SLL64_A|Mux8|Mux32~0_combout\) # ((\SLL64_A|Mux8|Mux27~0_combout\ & \SLL64_A|Mux32|Mux31~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux32~1_combout\,
	datab => \SLL64_A|Mux8|Mux27~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~13_combout\,
	datad => \SLL64_A|Mux8|Mux32~0_combout\,
	combout => \SLL64_A|Mux8|Mux32~2_combout\);

-- Location: IOIBUF_X85_Y73_N1
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X57_Y40_N4
\Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[33]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[1]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[33]~input_o\,
	datac => \A[1]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector62~0_combout\);

-- Location: IOIBUF_X56_Y0_N22
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X52_Y35_N2
\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[49]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[17]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[49]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Selector46~0_combout\);

-- Location: LCCOMB_X56_Y36_N0
\SLL64_A|Mux32|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~9_combout\ = (\B[4]~input_o\ & (\Selector62~0_combout\)) # (!\B[4]~input_o\ & ((\Selector46~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector62~0_combout\,
	datac => \Selector46~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux31~9_combout\);

-- Location: IOIBUF_X52_Y0_N1
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X54_Y35_N26
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[57]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[25]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \A[25]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector38~0_combout\);

-- Location: IOIBUF_X54_Y0_N8
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X115_Y31_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X54_Y35_N8
\Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[41]~input_o\)) # (!\ExtWord~input_o\ & ((\A[9]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[41]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Selector54~0_combout\);

-- Location: LCCOMB_X53_Y35_N24
\SLL64_A|Mux32|Mux31~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~10_combout\ = (\B[4]~input_o\ & ((\Selector54~0_combout\))) # (!\B[4]~input_o\ & (\Selector38~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~0_combout\,
	datab => \Selector54~0_combout\,
	datac => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux31~10_combout\);

-- Location: LCCOMB_X56_Y39_N22
\SLL64_A|Mux8|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux34~1_combout\ = (\SLL64_A|Mux32|Mux31~9_combout\ & ((\SLL64_A|Mux8|Mux55~0_combout\) # ((\SLL64_A|Mux32|Mux31~10_combout\ & \SLL64_A|Mux8|Mux27~0_combout\)))) # (!\SLL64_A|Mux32|Mux31~9_combout\ & (\SLL64_A|Mux32|Mux31~10_combout\ & 
-- ((\SLL64_A|Mux8|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~9_combout\,
	datab => \SLL64_A|Mux32|Mux31~10_combout\,
	datac => \SLL64_A|Mux8|Mux55~0_combout\,
	datad => \SLL64_A|Mux8|Mux27~0_combout\,
	combout => \SLL64_A|Mux8|Mux34~1_combout\);

-- Location: IOIBUF_X72_Y73_N15
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X57_Y40_N24
\Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[37]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[5]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[37]~input_o\,
	datac => \A[5]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector58~0_combout\);

-- Location: IOIBUF_X52_Y0_N8
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X52_Y35_N0
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[53]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[21]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[53]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Selector42~0_combout\);

-- Location: LCCOMB_X55_Y36_N16
\SLL64_A|Mux32|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~7_combout\ = (\B[4]~input_o\ & (\Selector58~0_combout\)) # (!\B[4]~input_o\ & ((\Selector42~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector58~0_combout\,
	datac => \Selector42~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux31~7_combout\);

-- Location: IOIBUF_X69_Y0_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X57_Y40_N26
\Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[45]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[13]~input_o\)))) # (!\ExtWord~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[13]~input_o\,
	datac => \A[45]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector50~0_combout\);

-- Location: IOIBUF_X0_Y28_N15
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X55_Y35_N10
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[61]~input_o\)) # (!\ExtWord~input_o\ & ((\A[29]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[61]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[29]~input_o\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X55_Y35_N4
\SLL64_A|Mux32|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~8_combout\ = (\B[4]~input_o\ & (\Selector50~0_combout\)) # (!\B[4]~input_o\ & ((\Selector34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector50~0_combout\,
	datad => \Selector34~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~8_combout\);

-- Location: LCCOMB_X56_Y39_N12
\SLL64_A|Mux8|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux34~0_combout\ = (\SLL64_A|Mux8|Mux35~0_combout\ & ((\SLL64_A|Mux32|Mux31~7_combout\) # ((\SLL64_A|Mux8|Mux31~4_combout\ & \SLL64_A|Mux32|Mux31~8_combout\)))) # (!\SLL64_A|Mux8|Mux35~0_combout\ & (\SLL64_A|Mux8|Mux31~4_combout\ & 
-- ((\SLL64_A|Mux32|Mux31~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux35~0_combout\,
	datab => \SLL64_A|Mux8|Mux31~4_combout\,
	datac => \SLL64_A|Mux32|Mux31~7_combout\,
	datad => \SLL64_A|Mux32|Mux31~8_combout\,
	combout => \SLL64_A|Mux8|Mux34~0_combout\);

-- Location: LCCOMB_X56_Y39_N0
\SLL64_A|Mux8|Mux34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux34~2_combout\ = (\SLL64_A|Mux8|Mux34~1_combout\) # (\SLL64_A|Mux8|Mux34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SLL64_A|Mux8|Mux34~1_combout\,
	datad => \SLL64_A|Mux8|Mux34~0_combout\,
	combout => \SLL64_A|Mux8|Mux34~2_combout\);

-- Location: LCCOMB_X53_Y40_N10
\Selector159~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector159~0_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux34~2_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux32~2_combout\,
	datab => \SLL64_A|Mux8|Mux34~2_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Selector159~0_combout\);

-- Location: LCCOMB_X53_Y40_N20
\Selector159~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector159~1_combout\ = (\Selector159~0_combout\) # ((\B[1]~input_o\ & (!\B[0]~input_o\ & \SLL64_A|Mux8|Mux33~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SLL64_A|Mux8|Mux33~2_combout\,
	datad => \Selector159~0_combout\,
	combout => \Selector159~1_combout\);

-- Location: LCCOMB_X53_Y40_N0
\Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (!\B[0]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Selector64~0_combout\);

-- Location: LCCOMB_X53_Y40_N6
\Selector159~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector159~2_combout\ = (\SLL64_A|Mux8|Mux31~5_combout\ & ((\Selector64~0_combout\) # ((\Selector159~1_combout\ & !\B[5]~input_o\)))) # (!\SLL64_A|Mux8|Mux31~5_combout\ & (\Selector159~1_combout\ & ((!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux31~5_combout\,
	datab => \Selector159~1_combout\,
	datac => \Selector64~0_combout\,
	datad => \B[5]~input_o\,
	combout => \Selector159~2_combout\);

-- Location: LCCOMB_X55_Y40_N24
\Selector159~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector159~3_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector159~2_combout\))) # (!\ShiftFN[0]~input_o\ & (\C[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[32]~input_o\,
	datab => \Selector159~2_combout\,
	datac => \ShiftFN[0]~input_o\,
	combout => \Selector159~3_combout\);

-- Location: LCCOMB_X57_Y42_N16
\Selector191~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector191~1_combout\ = (\ShiftFN[0]~input_o\ & (!\B[0]~input_o\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Selector191~1_combout\);

-- Location: LCCOMB_X47_Y42_N8
\SLL64_A|Mux8|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux63~0_combout\ = (\B[5]~input_o\) # ((\B[2]~input_o\) # ((\B[4]~input_o\) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SLL64_A|Mux8|Mux63~0_combout\);

-- Location: IOIBUF_X67_Y0_N15
\C[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

-- Location: LCCOMB_X58_Y39_N16
\Selector191~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector191~0_combout\ = (!\ShiftFN[0]~input_o\ & \C[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datad => \C[0]~input_o\,
	combout => \Selector191~0_combout\);

-- Location: LCCOMB_X59_Y42_N0
\Selector191~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector191~2_combout\ = (\Selector191~0_combout\) # ((\Selector63~0_combout\ & (\Selector191~1_combout\ & !\SLL64_A|Mux8|Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \Selector191~1_combout\,
	datac => \SLL64_A|Mux8|Mux63~0_combout\,
	datad => \Selector191~0_combout\,
	combout => \Selector191~2_combout\);

-- Location: LCCOMB_X55_Y40_N12
\Selector383~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector383~0_combout\ = (\bitShift~0_combout\ & (\Selector159~3_combout\)) # (!\bitShift~0_combout\ & ((\Selector191~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitShift~0_combout\,
	datab => \Selector159~3_combout\,
	datad => \Selector191~2_combout\,
	combout => \Selector383~0_combout\);

-- Location: LCCOMB_X50_Y38_N0
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[23]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[55]~input_o\)))) # (!\ExtWord~input_o\ & (\A[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[55]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X50_Y38_N2
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[7]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[39]~input_o\)))) # (!\ExtWord~input_o\ & (\A[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[39]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X50_Y38_N4
\SLL64_A|Mux32|Mux31~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~20_combout\ = (\B[4]~input_o\ & (\Selector8~0_combout\)) # (!\B[4]~input_o\ & ((\Selector24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector8~0_combout\,
	datad => \Selector24~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~20_combout\);

-- Location: LCCOMB_X52_Y37_N20
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[19]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[51]~input_o\)))) # (!\ExtWord~input_o\ & (\A[51]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[51]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X52_Y37_N6
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[3]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[35]~input_o\)))) # (!\ExtWord~input_o\ & (\A[35]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[35]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X52_Y37_N16
\SLL64_A|Mux32|Mux31~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~19_combout\ = (\B[4]~input_o\ & (\Selector12~0_combout\)) # (!\B[4]~input_o\ & ((\Selector28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector12~0_combout\,
	datad => \Selector28~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~19_combout\);

-- Location: LCCOMB_X53_Y37_N0
\SRL64_A|Mux8|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux28~1_combout\ = (\B[3]~input_o\) # ((\B[2]~input_o\ & (!\SLL64_A|Mux32|Mux31~20_combout\)) # (!\B[2]~input_o\ & ((!\SLL64_A|Mux32|Mux31~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~20_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~19_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux28~1_combout\);

-- Location: LCCOMB_X52_Y35_N30
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[31]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[63]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[31]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X57_Y40_N0
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[15]~input_o\))) # (!\ExtWord~input_o\ & (\A[47]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[47]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[15]~input_o\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X53_Y36_N4
\SLL64_A|Mux32|Mux31~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~17_combout\ = (\B[4]~input_o\ & (\Selector0~0_combout\)) # (!\B[4]~input_o\ & ((\Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \B[4]~input_o\,
	datad => \Selector16~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~17_combout\);

-- Location: LCCOMB_X53_Y34_N18
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[11]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[43]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[43]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X53_Y34_N0
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[27]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[59]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \A[59]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X53_Y34_N12
\SLL64_A|Mux32|Mux31~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~18_combout\ = (\B[4]~input_o\ & ((\Selector4~0_combout\))) # (!\B[4]~input_o\ & (\Selector20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector20~0_combout\,
	datad => \Selector4~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~18_combout\);

-- Location: LCCOMB_X53_Y37_N14
\SRL64_A|Mux8|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux28~0_combout\ = (\SLL64_A|Mux32|Mux31~18_combout\ & (\B[3]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~18_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux28~0_combout\);

-- Location: LCCOMB_X53_Y39_N2
\SRL64_A|Mux8|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux28~2_combout\ = ((\SRL64_A|Mux8|Mux28~0_combout\) # ((\SLL64_A|Mux8|Mux55~0_combout\ & \SLL64_A|Mux32|Mux31~17_combout\))) # (!\SRL64_A|Mux8|Mux28~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux28~1_combout\,
	datab => \SLL64_A|Mux8|Mux55~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~17_combout\,
	datad => \SRL64_A|Mux8|Mux28~0_combout\,
	combout => \SRL64_A|Mux8|Mux28~2_combout\);

-- Location: LCCOMB_X52_Y35_N26
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[17]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[49]~input_o\)))) # (!\ExtWord~input_o\ & (\A[49]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[49]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X57_Y40_N20
\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[1]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[33]~input_o\)))) # (!\ExtWord~input_o\ & (\A[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[33]~input_o\,
	datac => \A[1]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X56_Y36_N22
\SRL64_A|Mux8|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux30~0_combout\ = (\SLL64_A|Mux8|Mux31~4_combout\ & ((\B[4]~input_o\ & (\Selector14~0_combout\)) # (!\B[4]~input_o\ & ((\Selector30~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~0_combout\,
	datab => \B[4]~input_o\,
	datac => \Selector30~0_combout\,
	datad => \SLL64_A|Mux8|Mux31~4_combout\,
	combout => \SRL64_A|Mux8|Mux30~0_combout\);

-- Location: LCCOMB_X54_Y35_N28
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[25]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[57]~input_o\)))) # (!\ExtWord~input_o\ & (\A[57]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \A[25]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X54_Y35_N6
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[9]~input_o\))) # (!\ExtWord~input_o\ & (\A[41]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[41]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X54_Y35_N16
\SLL64_A|Mux32|Mux31~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~23_combout\ = (\B[4]~input_o\ & (\Selector6~0_combout\)) # (!\B[4]~input_o\ & ((\Selector22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector6~0_combout\,
	datad => \Selector22~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~23_combout\);

-- Location: LCCOMB_X55_Y35_N24
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[29]~input_o\))) # (!\ExtWord~input_o\ & (\A[61]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[61]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[29]~input_o\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X57_Y40_N30
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[13]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[45]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[13]~input_o\,
	datac => \A[45]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X55_Y35_N2
\SLL64_A|Mux32|Mux31~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~22_combout\ = (\B[4]~input_o\ & (\Selector2~0_combout\)) # (!\B[4]~input_o\ & ((\Selector18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector2~0_combout\,
	datad => \Selector18~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~22_combout\);

-- Location: LCCOMB_X52_Y35_N4
\SRL64_A|Mux8|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux30~1_combout\ = (\SLL64_A|Mux32|Mux31~23_combout\ & ((\SLL64_A|Mux8|Mux35~0_combout\) # ((\SLL64_A|Mux32|Mux31~22_combout\ & \SLL64_A|Mux8|Mux55~0_combout\)))) # (!\SLL64_A|Mux32|Mux31~23_combout\ & (((\SLL64_A|Mux32|Mux31~22_combout\ & 
-- \SLL64_A|Mux8|Mux55~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~23_combout\,
	datab => \SLL64_A|Mux8|Mux35~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~22_combout\,
	datad => \SLL64_A|Mux8|Mux55~0_combout\,
	combout => \SRL64_A|Mux8|Mux30~1_combout\);

-- Location: LCCOMB_X57_Y40_N18
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[5]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[37]~input_o\)))) # (!\ExtWord~input_o\ & (\A[37]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[37]~input_o\,
	datac => \A[5]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X52_Y35_N16
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[21]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[53]~input_o\)))) # (!\ExtWord~input_o\ & (\A[53]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[53]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X55_Y36_N28
\SLL64_A|Mux32|Mux31~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~21_combout\ = (\B[4]~input_o\ & ((\Selector10~0_combout\))) # (!\B[4]~input_o\ & (\Selector26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector26~0_combout\,
	datac => \Selector10~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux31~21_combout\);

-- Location: LCCOMB_X55_Y36_N24
\SRL64_A|Mux8|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux30~2_combout\ = (\SRL64_A|Mux8|Mux30~0_combout\) # ((\SRL64_A|Mux8|Mux30~1_combout\) # ((\SLL64_A|Mux8|Mux27~0_combout\ & \SLL64_A|Mux32|Mux31~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux30~0_combout\,
	datab => \SLL64_A|Mux8|Mux27~0_combout\,
	datac => \SRL64_A|Mux8|Mux30~1_combout\,
	datad => \SLL64_A|Mux32|Mux31~21_combout\,
	combout => \SRL64_A|Mux8|Mux30~2_combout\);

-- Location: LCCOMB_X54_Y39_N16
\SRL64_A|Mux4|Mux63~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~53_combout\ = (!\B[5]~input_o\ & ((\B[1]~input_o\ & (\SRL64_A|Mux8|Mux28~2_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux30~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux28~2_combout\,
	datab => \SRL64_A|Mux8|Mux30~2_combout\,
	datac => \B[5]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~53_combout\);

-- Location: LCCOMB_X53_Y41_N26
\SRL64_A|Mux4|Mux63~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~57_combout\ = (\B[4]~input_o\ & (\B[2]~input_o\ $ (\B[1]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~57_combout\);

-- Location: LCCOMB_X54_Y39_N26
\SRL64_A|Mux4|Mux63~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~58_combout\ = (\B[5]~input_o\) # ((\SRL64_A|Mux4|Mux63~57_combout\ & (\B[3]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~57_combout\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~58_combout\);

-- Location: LCCOMB_X54_Y39_N4
\SRL64_A|Mux4|Mux63~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~59_combout\ = (\SRL64_A|Mux4|Mux63~58_combout\ & (((\Selector0~0_combout\)))) # (!\SRL64_A|Mux4|Mux63~58_combout\ & (\SRL64_A|Mux8|Mux30~2_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~58_combout\,
	datab => \SRL64_A|Mux8|Mux30~2_combout\,
	datac => \Selector0~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~59_combout\);

-- Location: LCCOMB_X53_Y39_N12
\SRA64_A|Mux8|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux28~0_combout\ = (\SRL64_A|Mux8|Mux28~0_combout\) # (((\SLL64_A|Mux8|Mux55~0_combout\ & \Selector16~0_combout\)) # (!\SRL64_A|Mux8|Mux28~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux28~0_combout\,
	datab => \SLL64_A|Mux8|Mux55~0_combout\,
	datac => \Selector16~0_combout\,
	datad => \SRL64_A|Mux8|Mux28~1_combout\,
	combout => \SRA64_A|Mux8|Mux28~0_combout\);

-- Location: LCCOMB_X54_Y39_N6
\SRL64_A|Mux4|Mux63~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~60_combout\ = (\SRL64_A|Mux4|Mux63~59_combout\) # ((!\SRL64_A|Mux4|Mux63~58_combout\ & (\B[1]~input_o\ & \SRA64_A|Mux8|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~58_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~59_combout\,
	datad => \SRA64_A|Mux8|Mux28~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~60_combout\);

-- Location: LCCOMB_X59_Y36_N18
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[16]~input_o\))) # (!\ExtWord~input_o\ & (\A[48]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[48]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[16]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X59_Y36_N4
\SLL64_A|Mux32|Mux31~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~30_combout\ = (\B[4]~input_o\ & (\Selector15~0_combout\)) # (!\B[4]~input_o\ & ((\Selector31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector15~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector31~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~30_combout\);

-- Location: LCCOMB_X58_Y35_N18
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[4]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[36]~input_o\)))) # (!\ExtWord~input_o\ & (((\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[36]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X58_Y35_N24
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[20]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[52]~input_o\)))) # (!\ExtWord~input_o\ & (((\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[52]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X58_Y35_N20
\SLL64_A|Mux32|Mux31~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~29_combout\ = (\B[4]~input_o\ & ((\Selector11~0_combout\))) # (!\B[4]~input_o\ & (\Selector27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector27~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector11~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~29_combout\);

-- Location: LCCOMB_X54_Y36_N26
\SRL64_A|Mux8|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux31~0_combout\ = (\SLL64_A|Mux32|Mux31~30_combout\ & ((\SLL64_A|Mux8|Mux31~4_combout\) # ((\SLL64_A|Mux8|Mux27~0_combout\ & \SLL64_A|Mux32|Mux31~29_combout\)))) # (!\SLL64_A|Mux32|Mux31~30_combout\ & (\SLL64_A|Mux8|Mux27~0_combout\ & 
-- (\SLL64_A|Mux32|Mux31~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~30_combout\,
	datab => \SLL64_A|Mux8|Mux27~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~29_combout\,
	datad => \SLL64_A|Mux8|Mux31~4_combout\,
	combout => \SRL64_A|Mux8|Mux31~0_combout\);

-- Location: LCCOMB_X55_Y38_N0
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[28]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[60]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[28]~input_o\,
	datad => \A[60]~input_o\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X55_Y38_N26
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[12]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[44]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[44]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X56_Y38_N20
\SLL64_A|Mux32|Mux31~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~28_combout\ = (\B[4]~input_o\ & (\Selector3~0_combout\)) # (!\B[4]~input_o\ & ((\Selector19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datac => \Selector19~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux31~28_combout\);

-- Location: LCCOMB_X58_Y38_N22
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[24]~input_o\))) # (!\ExtWord~input_o\ & (\A[56]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[56]~input_o\,
	datad => \A[24]~input_o\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X55_Y38_N20
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[8]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[40]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[40]~input_o\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X58_Y38_N16
\SLL64_A|Mux32|Mux31~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~31_combout\ = (\B[4]~input_o\ & (\Selector7~0_combout\)) # (!\B[4]~input_o\ & ((\Selector23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \B[4]~input_o\,
	datac => \Selector23~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~31_combout\);

-- Location: LCCOMB_X54_Y36_N12
\SRL64_A|Mux8|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux31~1_combout\ = (\SLL64_A|Mux8|Mux35~0_combout\ & ((\SLL64_A|Mux32|Mux31~31_combout\) # ((\SLL64_A|Mux8|Mux55~0_combout\ & \SLL64_A|Mux32|Mux31~28_combout\)))) # (!\SLL64_A|Mux8|Mux35~0_combout\ & (\SLL64_A|Mux8|Mux55~0_combout\ & 
-- (\SLL64_A|Mux32|Mux31~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux35~0_combout\,
	datab => \SLL64_A|Mux8|Mux55~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~28_combout\,
	datad => \SLL64_A|Mux32|Mux31~31_combout\,
	combout => \SRL64_A|Mux8|Mux31~1_combout\);

-- Location: LCCOMB_X54_Y36_N14
\SRL64_A|Mux4|Mux63~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~56_combout\ = (!\B[5]~input_o\ & ((\SRL64_A|Mux8|Mux31~0_combout\) # (\SRL64_A|Mux8|Mux31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux31~0_combout\,
	datac => \B[5]~input_o\,
	datad => \SRL64_A|Mux8|Mux31~1_combout\,
	combout => \SRL64_A|Mux4|Mux63~56_combout\);

-- Location: LCCOMB_X50_Y38_N22
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[30]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[62]~input_o\)))) # (!\ExtWord~input_o\ & (\A[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[62]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[30]~input_o\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X52_Y41_N8
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[14]~input_o\)) # (!\ExtWord~input_o\ & ((\A[46]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[46]~input_o\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X53_Y41_N0
\SLL64_A|Mux32|Mux31~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~24_combout\ = (\B[4]~input_o\ & (\Selector1~0_combout\)) # (!\B[4]~input_o\ & ((\Selector17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector17~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~24_combout\);

-- Location: LCCOMB_X54_Y41_N26
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[10]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[42]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[10]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[42]~input_o\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X54_Y41_N16
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[26]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[58]~input_o\)))) # (!\ExtWord~input_o\ & (\A[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[58]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[26]~input_o\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X54_Y41_N14
\SRL64_A|Mux8|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux29~1_combout\ = (\SLL64_A|Mux8|Mux35~0_combout\ & ((\B[4]~input_o\ & ((\Selector5~0_combout\))) # (!\B[4]~input_o\ & (\Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~0_combout\,
	datab => \Selector5~0_combout\,
	datac => \B[4]~input_o\,
	datad => \SLL64_A|Mux8|Mux35~0_combout\,
	combout => \SRL64_A|Mux8|Mux29~1_combout\);

-- Location: LCCOMB_X52_Y42_N26
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[6]~input_o\))) # (!\ExtWord~input_o\ & (\A[38]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[38]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[6]~input_o\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X52_Y42_N0
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[22]~input_o\)) # (!\ExtWord~input_o\ & ((\A[54]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[22]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[54]~input_o\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X52_Y42_N20
\SLL64_A|Mux32|Mux31~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~27_combout\ = (\B[4]~input_o\ & ((\Selector9~0_combout\))) # (!\B[4]~input_o\ & (\Selector25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datab => \Selector9~0_combout\,
	datac => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux31~27_combout\);

-- Location: LCCOMB_X52_Y42_N2
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[18]~input_o\))) # (!\ExtWord~input_o\ & (\A[50]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[50]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[18]~input_o\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X52_Y42_N4
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[2]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[34]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[34]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X55_Y42_N24
\SLL64_A|Mux32|Mux31~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~26_combout\ = (\B[4]~input_o\ & (\Selector13~0_combout\)) # (!\B[4]~input_o\ & ((\Selector29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datac => \Selector29~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux31~26_combout\);

-- Location: LCCOMB_X55_Y42_N22
\SRL64_A|Mux8|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux29~0_combout\ = (\SLL64_A|Mux8|Mux31~4_combout\ & ((\SLL64_A|Mux32|Mux31~26_combout\) # ((\SLL64_A|Mux8|Mux27~0_combout\ & \SLL64_A|Mux32|Mux31~27_combout\)))) # (!\SLL64_A|Mux8|Mux31~4_combout\ & (\SLL64_A|Mux8|Mux27~0_combout\ & 
-- (\SLL64_A|Mux32|Mux31~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux31~4_combout\,
	datab => \SLL64_A|Mux8|Mux27~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~27_combout\,
	datad => \SLL64_A|Mux32|Mux31~26_combout\,
	combout => \SRL64_A|Mux8|Mux29~0_combout\);

-- Location: LCCOMB_X54_Y42_N22
\SRL64_A|Mux8|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux29~2_combout\ = (\SRL64_A|Mux8|Mux29~1_combout\) # ((\SRL64_A|Mux8|Mux29~0_combout\) # ((\SLL64_A|Mux32|Mux31~24_combout\ & \SLL64_A|Mux8|Mux55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~24_combout\,
	datab => \SRL64_A|Mux8|Mux29~1_combout\,
	datac => \SLL64_A|Mux8|Mux55~0_combout\,
	datad => \SRL64_A|Mux8|Mux29~0_combout\,
	combout => \SRL64_A|Mux8|Mux29~2_combout\);

-- Location: LCCOMB_X54_Y39_N2
\SRL64_A|Mux4|Mux63~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~246_combout\ = (\B[1]~input_o\ & (!\B[5]~input_o\ & ((\SRL64_A|Mux8|Mux29~2_combout\)))) # (!\B[1]~input_o\ & (((\SRL64_A|Mux4|Mux63~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~56_combout\,
	datad => \SRL64_A|Mux8|Mux29~2_combout\,
	combout => \SRL64_A|Mux4|Mux63~246_combout\);

-- Location: LCCOMB_X52_Y37_N26
\SRL64_A|Mux4|Mux63~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~54_combout\ = (\B[5]~input_o\ & \Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \Selector0~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~54_combout\);

-- Location: LCCOMB_X58_Y39_N18
\Selector95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~246_combout\) # ((\SRL64_A|Mux4|Mux63~54_combout\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~246_combout\,
	datab => \SRL64_A|Mux4|Mux63~54_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector95~0_combout\);

-- Location: LCCOMB_X58_Y39_N12
\Selector95~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector95~1_combout\ = (\B[0]~input_o\ & ((\Selector95~0_combout\ & ((\SRL64_A|Mux4|Mux63~60_combout\))) # (!\Selector95~0_combout\ & (\SRL64_A|Mux4|Mux63~53_combout\)))) # (!\B[0]~input_o\ & (((\Selector95~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~53_combout\,
	datab => \SRL64_A|Mux4|Mux63~60_combout\,
	datac => \B[0]~input_o\,
	datad => \Selector95~0_combout\,
	combout => \Selector95~1_combout\);

-- Location: LCCOMB_X55_Y36_N2
\SRL64_A|Mux32|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux58~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector42~0_combout\)) # (!\B[4]~input_o\ & ((\Selector58~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector42~0_combout\,
	datab => \B[4]~input_o\,
	datac => \Selector58~0_combout\,
	datad => \B[5]~input_o\,
	combout => \SRL64_A|Mux32|Mux58~0_combout\);

-- Location: LCCOMB_X55_Y36_N22
\SRL64_A|Mux32|Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux58~1_combout\ = (\SRL64_A|Mux32|Mux58~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SLL64_A|Mux32|Mux31~21_combout\,
	datad => \SRL64_A|Mux32|Mux58~0_combout\,
	combout => \SRL64_A|Mux32|Mux58~1_combout\);

-- Location: LCCOMB_X56_Y36_N10
\SRL64_A|Mux4|Mux63~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~42_combout\ = (\B[5]~input_o\ & (((\Selector30~0_combout\) # (\B[4]~input_o\)))) # (!\B[5]~input_o\ & (\Selector62~0_combout\ & ((!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector62~0_combout\,
	datab => \B[5]~input_o\,
	datac => \Selector30~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~42_combout\);

-- Location: LCCOMB_X56_Y36_N4
\SRL64_A|Mux4|Mux63~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~43_combout\ = (\B[4]~input_o\ & ((\SRL64_A|Mux4|Mux63~42_combout\ & (\Selector14~0_combout\)) # (!\SRL64_A|Mux4|Mux63~42_combout\ & ((\Selector46~0_combout\))))) # (!\B[4]~input_o\ & (((\SRL64_A|Mux4|Mux63~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~0_combout\,
	datab => \B[4]~input_o\,
	datac => \Selector46~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~42_combout\,
	combout => \SRL64_A|Mux4|Mux63~43_combout\);

-- Location: LCCOMB_X57_Y36_N10
\SRL64_A|Mux4|Mux63~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~44_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRL64_A|Mux32|Mux58~1_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux4|Mux63~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux58~1_combout\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~43_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~44_combout\);

-- Location: LCCOMB_X55_Y35_N6
\SRL64_A|Mux32|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux50~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector34~0_combout\))) # (!\B[4]~input_o\ & (\Selector50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector50~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector34~0_combout\,
	combout => \SRL64_A|Mux32|Mux50~0_combout\);

-- Location: LCCOMB_X55_Y35_N12
\SRL64_A|Mux32|Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux50~1_combout\ = (\SRL64_A|Mux32|Mux50~0_combout\) # ((\SLL64_A|Mux32|Mux31~22_combout\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64_A|Mux32|Mux31~22_combout\,
	datac => \B[5]~input_o\,
	datad => \SRL64_A|Mux32|Mux50~0_combout\,
	combout => \SRL64_A|Mux32|Mux50~1_combout\);

-- Location: LCCOMB_X53_Y35_N10
\SRL64_A|Mux32|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux54~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector38~0_combout\)) # (!\B[4]~input_o\ & ((\Selector54~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~0_combout\,
	datab => \Selector54~0_combout\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SRL64_A|Mux32|Mux54~0_combout\);

-- Location: LCCOMB_X53_Y35_N20
\SRL64_A|Mux32|Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux54~1_combout\ = (\SRL64_A|Mux32|Mux54~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux54~0_combout\,
	datab => \B[5]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~23_combout\,
	combout => \SRL64_A|Mux32|Mux54~1_combout\);

-- Location: LCCOMB_X57_Y36_N28
\SRL64_A|Mux4|Mux63~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~45_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRL64_A|Mux32|Mux50~1_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux54~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux50~1_combout\,
	datab => \SRL64_A|Mux32|Mux54~1_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~45_combout\);

-- Location: LCCOMB_X55_Y38_N22
\SRL64_A|Mux8|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux61~0_combout\ = (\B[2]~input_o\) # ((!\B[5]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux8|Mux61~0_combout\);

-- Location: LCCOMB_X50_Y38_N30
\SRL64_A|Mux32|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux56~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector40~0_combout\))) # (!\B[4]~input_o\ & (\Selector56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector56~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector40~0_combout\,
	combout => \SRL64_A|Mux32|Mux56~0_combout\);

-- Location: LCCOMB_X53_Y37_N18
\SRL64_A|Mux32|Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux56~1_combout\ = (\SRL64_A|Mux32|Mux56~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SRL64_A|Mux32|Mux56~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~20_combout\,
	combout => \SRL64_A|Mux32|Mux56~1_combout\);

-- Location: LCCOMB_X47_Y42_N2
\SRL64_A|Mux8|Mux63~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~14_combout\ = (!\B[2]~input_o\ & !\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~14_combout\);

-- Location: LCCOMB_X53_Y37_N16
\SRL64_A|Mux8|Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux60~1_combout\ = (\SRL64_A|Mux8|Mux63~14_combout\ & (\Selector60~0_combout\ & ((!\SRL64_A|Mux8|Mux61~0_combout\)))) # (!\SRL64_A|Mux8|Mux63~14_combout\ & (((\SLL64_A|Mux32|Mux31~19_combout\) # (\SRL64_A|Mux8|Mux61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~14_combout\,
	datab => \Selector60~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~19_combout\,
	datad => \SRL64_A|Mux8|Mux61~0_combout\,
	combout => \SRL64_A|Mux8|Mux60~1_combout\);

-- Location: LCCOMB_X53_Y37_N4
\SRL64_A|Mux8|Mux60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux60~2_combout\ = (\SRL64_A|Mux8|Mux61~0_combout\ & ((\SRL64_A|Mux8|Mux60~1_combout\ & (\SRL64_A|Mux32|Mux56~1_combout\)) # (!\SRL64_A|Mux8|Mux60~1_combout\ & ((\Selector44~0_combout\))))) # (!\SRL64_A|Mux8|Mux61~0_combout\ & 
-- (((\SRL64_A|Mux8|Mux60~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux61~0_combout\,
	datab => \SRL64_A|Mux32|Mux56~1_combout\,
	datac => \Selector44~0_combout\,
	datad => \SRL64_A|Mux8|Mux60~1_combout\,
	combout => \SRL64_A|Mux8|Mux60~2_combout\);

-- Location: LCCOMB_X53_Y36_N18
\SRL64_A|Mux32|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux48~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector32~0_combout\)) # (!\B[4]~input_o\ & ((\Selector48~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \B[5]~input_o\,
	datac => \Selector48~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux48~0_combout\);

-- Location: LCCOMB_X53_Y36_N14
\SRL64_A|Mux32|Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux48~1_combout\ = (\SRL64_A|Mux32|Mux48~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~17_combout\,
	datad => \SRL64_A|Mux32|Mux48~0_combout\,
	combout => \SRL64_A|Mux32|Mux48~1_combout\);

-- Location: LCCOMB_X53_Y34_N22
\SRL64_A|Mux32|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux52~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector36~0_combout\))) # (!\B[4]~input_o\ & (\Selector52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector52~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector36~0_combout\,
	combout => \SRL64_A|Mux32|Mux52~0_combout\);

-- Location: LCCOMB_X53_Y34_N6
\SRL64_A|Mux32|Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux52~1_combout\ = (\SRL64_A|Mux32|Mux52~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux52~0_combout\,
	datac => \B[5]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~18_combout\,
	combout => \SRL64_A|Mux32|Mux52~1_combout\);

-- Location: LCCOMB_X54_Y36_N24
\SRL64_A|Mux8|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux60~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRL64_A|Mux32|Mux48~1_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux52~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux48~1_combout\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux32|Mux52~1_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux60~0_combout\);

-- Location: LCCOMB_X57_Y36_N24
\SRL64_A|Mux8|Mux60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux60~3_combout\ = (\SRL64_A|Mux8|Mux60~0_combout\) # ((\SRL64_A|Mux8|Mux60~2_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux60~2_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux60~0_combout\,
	combout => \SRL64_A|Mux8|Mux60~3_combout\);

-- Location: LCCOMB_X57_Y36_N6
\SRL64_A|Mux4|Mux63~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~46_combout\ = (\B[1]~input_o\ & (((\SRL64_A|Mux8|Mux60~3_combout\)))) # (!\B[1]~input_o\ & ((\SRL64_A|Mux4|Mux63~44_combout\) # ((\SRL64_A|Mux4|Mux63~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~44_combout\,
	datab => \SRL64_A|Mux4|Mux63~45_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux8|Mux60~3_combout\,
	combout => \SRL64_A|Mux4|Mux63~46_combout\);

-- Location: LCCOMB_X58_Y38_N28
\SRL64_A|Mux32|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux55~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector39~0_combout\))) # (!\B[4]~input_o\ & (\Selector55~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector55~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Selector39~0_combout\,
	combout => \SRL64_A|Mux32|Mux55~0_combout\);

-- Location: LCCOMB_X58_Y38_N2
\SRL64_A|Mux32|Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux55~1_combout\ = (\SRL64_A|Mux32|Mux55~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~31_combout\,
	datad => \SRL64_A|Mux32|Mux55~0_combout\,
	combout => \SRL64_A|Mux32|Mux55~1_combout\);

-- Location: LCCOMB_X59_Y36_N8
\SRL64_A|Mux4|Mux63~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~48_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector47~0_combout\))) # (!\B[4]~input_o\ & (\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Selector63~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector47~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~48_combout\);

-- Location: LCCOMB_X59_Y36_N6
\SRL64_A|Mux4|Mux63~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~49_combout\ = (!\B[3]~input_o\ & ((\SRL64_A|Mux4|Mux63~48_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~48_combout\,
	datac => \SLL64_A|Mux32|Mux31~30_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~49_combout\);

-- Location: LCCOMB_X58_Y40_N26
\SRL64_A|Mux4|Mux63~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~50_combout\ = (!\B[2]~input_o\ & ((\SRL64_A|Mux4|Mux63~49_combout\) # ((\SRL64_A|Mux32|Mux55~1_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64_A|Mux32|Mux55~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~49_combout\,
	combout => \SRL64_A|Mux4|Mux63~50_combout\);

-- Location: LCCOMB_X58_Y35_N14
\SRL64_A|Mux32|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux59~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector43~0_combout\))) # (!\B[4]~input_o\ & (\Selector59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector59~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector43~0_combout\,
	combout => \SRL64_A|Mux32|Mux59~0_combout\);

-- Location: LCCOMB_X58_Y40_N30
\SRL64_A|Mux32|Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux59~1_combout\ = (\SRL64_A|Mux32|Mux59~0_combout\) # ((\SLL64_A|Mux32|Mux31~29_combout\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~29_combout\,
	datac => \B[5]~input_o\,
	datad => \SRL64_A|Mux32|Mux59~0_combout\,
	combout => \SRL64_A|Mux32|Mux59~1_combout\);

-- Location: LCCOMB_X56_Y38_N10
\SRL64_A|Mux32|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux51~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector35~0_combout\))) # (!\B[4]~input_o\ & (\Selector51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector51~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector35~0_combout\,
	combout => \SRL64_A|Mux32|Mux51~0_combout\);

-- Location: LCCOMB_X56_Y38_N30
\SRL64_A|Mux32|Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux51~1_combout\ = (\SRL64_A|Mux32|Mux51~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux51~0_combout\,
	datab => \B[5]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~28_combout\,
	combout => \SRL64_A|Mux32|Mux51~1_combout\);

-- Location: LCCOMB_X58_Y40_N0
\SRL64_A|Mux4|Mux63~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~47_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SRL64_A|Mux32|Mux51~1_combout\))) # (!\B[3]~input_o\ & (\SRL64_A|Mux32|Mux59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux32|Mux59~1_combout\,
	datad => \SRL64_A|Mux32|Mux51~1_combout\,
	combout => \SRL64_A|Mux4|Mux63~47_combout\);

-- Location: LCCOMB_X52_Y41_N30
\SRL64_A|Mux32|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux49~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector33~0_combout\))) # (!\B[4]~input_o\ & (\Selector49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector49~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector33~0_combout\,
	combout => \SRL64_A|Mux32|Mux49~0_combout\);

-- Location: LCCOMB_X54_Y42_N8
\SRL64_A|Mux32|Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux49~1_combout\ = (\SRL64_A|Mux32|Mux49~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux49~0_combout\,
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~24_combout\,
	combout => \SRL64_A|Mux32|Mux49~1_combout\);

-- Location: LCCOMB_X54_Y41_N4
\SLL64_A|Mux32|Mux31~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~25_combout\ = (\B[4]~input_o\ & ((\Selector5~0_combout\))) # (!\B[4]~input_o\ & (\Selector21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~0_combout\,
	datab => \Selector5~0_combout\,
	datac => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux31~25_combout\);

-- Location: LCCOMB_X54_Y41_N30
\SRL64_A|Mux32|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux53~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector37~0_combout\)) # (!\B[4]~input_o\ & ((\Selector53~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~0_combout\,
	datab => \Selector53~0_combout\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SRL64_A|Mux32|Mux53~0_combout\);

-- Location: LCCOMB_X54_Y42_N2
\SRL64_A|Mux32|Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux53~1_combout\ = (\SRL64_A|Mux32|Mux53~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~25_combout\,
	datad => \SRL64_A|Mux32|Mux53~0_combout\,
	combout => \SRL64_A|Mux32|Mux53~1_combout\);

-- Location: LCCOMB_X54_Y42_N28
\SRL64_A|Mux8|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux61~1_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRL64_A|Mux32|Mux49~1_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux53~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRL64_A|Mux32|Mux49~1_combout\,
	datad => \SRL64_A|Mux32|Mux53~1_combout\,
	combout => \SRL64_A|Mux8|Mux61~1_combout\);

-- Location: LCCOMB_X52_Y42_N6
\SRL64_A|Mux32|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux57~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector41~0_combout\)) # (!\B[4]~input_o\ & ((\Selector57~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Selector57~0_combout\,
	combout => \SRL64_A|Mux32|Mux57~0_combout\);

-- Location: LCCOMB_X52_Y42_N30
\SRL64_A|Mux32|Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux57~1_combout\ = (\SRL64_A|Mux32|Mux57~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux57~0_combout\,
	datab => \B[5]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~27_combout\,
	combout => \SRL64_A|Mux32|Mux57~1_combout\);

-- Location: LCCOMB_X55_Y42_N18
\SRL64_A|Mux8|Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux61~2_combout\ = (\SRL64_A|Mux8|Mux63~14_combout\ & ((\SRL64_A|Mux8|Mux61~0_combout\ & (\Selector45~0_combout\)) # (!\SRL64_A|Mux8|Mux61~0_combout\ & ((\Selector61~0_combout\))))) # (!\SRL64_A|Mux8|Mux63~14_combout\ & 
-- (((\SRL64_A|Mux8|Mux61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~0_combout\,
	datab => \Selector61~0_combout\,
	datac => \SRL64_A|Mux8|Mux63~14_combout\,
	datad => \SRL64_A|Mux8|Mux61~0_combout\,
	combout => \SRL64_A|Mux8|Mux61~2_combout\);

-- Location: LCCOMB_X55_Y42_N28
\SRL64_A|Mux8|Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux61~3_combout\ = (\SRL64_A|Mux8|Mux61~2_combout\ & ((\SRL64_A|Mux32|Mux57~1_combout\) # ((\SRL64_A|Mux8|Mux63~14_combout\)))) # (!\SRL64_A|Mux8|Mux61~2_combout\ & (((!\SRL64_A|Mux8|Mux63~14_combout\ & \SLL64_A|Mux32|Mux31~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux57~1_combout\,
	datab => \SRL64_A|Mux8|Mux61~2_combout\,
	datac => \SRL64_A|Mux8|Mux63~14_combout\,
	datad => \SLL64_A|Mux32|Mux31~26_combout\,
	combout => \SRL64_A|Mux8|Mux61~3_combout\);

-- Location: LCCOMB_X58_Y40_N20
\SRL64_A|Mux8|Mux61~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux61~4_combout\ = (\SRL64_A|Mux8|Mux61~1_combout\) # ((!\B[3]~input_o\ & \SRL64_A|Mux8|Mux61~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64_A|Mux8|Mux61~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux61~3_combout\,
	combout => \SRL64_A|Mux8|Mux61~4_combout\);

-- Location: LCCOMB_X58_Y40_N12
\SRL64_A|Mux4|Mux63~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~51_combout\ = (\B[1]~input_o\ & (((\SRL64_A|Mux8|Mux61~4_combout\)))) # (!\B[1]~input_o\ & ((\SRL64_A|Mux4|Mux63~50_combout\) # ((\SRL64_A|Mux4|Mux63~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~50_combout\,
	datab => \SRL64_A|Mux4|Mux63~47_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux8|Mux61~4_combout\,
	combout => \SRL64_A|Mux4|Mux63~51_combout\);

-- Location: LCCOMB_X55_Y40_N6
\SRL64_A|Mux4|Mux63~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~52_combout\ = (\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~46_combout\)) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~46_combout\,
	datab => \SRL64_A|Mux4|Mux63~51_combout\,
	datac => \B[0]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~52_combout\);

-- Location: LCCOMB_X55_Y40_N2
\Selector255~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector255~0_combout\ = (\bitShift~0_combout\ & ((\SRL64_A|Mux4|Mux63~52_combout\))) # (!\bitShift~0_combout\ & (\Selector95~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitShift~0_combout\,
	datac => \Selector95~1_combout\,
	datad => \SRL64_A|Mux4|Mux63~52_combout\,
	combout => \Selector255~0_combout\);

-- Location: LCCOMB_X55_Y40_N0
\Selector511~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector511~0_combout\ = (\ExtWord~input_o\ & (((\ShiftFN[1]~input_o\)))) # (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\SRL64_A|Mux4|Mux63~52_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector191~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Selector191~2_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~52_combout\,
	combout => \Selector511~0_combout\);

-- Location: LCCOMB_X55_Y40_N4
\Selector511~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector511~1_combout\ = (\ExtWord~input_o\ & ((\Selector511~0_combout\ & ((\Selector255~0_combout\))) # (!\Selector511~0_combout\ & (\Selector383~0_combout\)))) # (!\ExtWord~input_o\ & (((\Selector511~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector383~0_combout\,
	datab => \Selector255~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector511~0_combout\,
	combout => \Selector511~1_combout\);

-- Location: LCCOMB_X58_Y40_N22
\SRL64_A|Mux4|Mux63~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~63_combout\ = (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux61~1_combout\) # ((!\B[3]~input_o\ & \SRL64_A|Mux8|Mux61~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64_A|Mux8|Mux61~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux61~3_combout\,
	combout => \SRL64_A|Mux4|Mux63~63_combout\);

-- Location: LCCOMB_X59_Y36_N28
\SRA64_A|Mux32|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux47~0_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector0~0_combout\)) # (!\B[4]~input_o\ & ((\Selector15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Selector0~0_combout\,
	datad => \Selector15~0_combout\,
	combout => \SRA64_A|Mux32|Mux47~0_combout\);

-- Location: LCCOMB_X59_Y36_N0
\SRL64_A|Mux32|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux47~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector31~0_combout\))) # (!\B[4]~input_o\ & (\Selector47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Selector47~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector31~0_combout\,
	combout => \SRL64_A|Mux32|Mux47~0_combout\);

-- Location: LCCOMB_X59_Y37_N0
\SRA64_A|Mux8|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux59~0_combout\ = (\B[3]~input_o\ & (\B[2]~input_o\ & ((\SRA64_A|Mux32|Mux47~0_combout\) # (\SRL64_A|Mux32|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64_A|Mux32|Mux47~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64_A|Mux32|Mux47~0_combout\,
	combout => \SRA64_A|Mux8|Mux59~0_combout\);

-- Location: LCCOMB_X58_Y40_N24
\SRL64_A|Mux8|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux59~0_combout\ = (\SRL64_A|Mux32|Mux59~1_combout\ & ((\SLL64_A|Mux8|Mux31~4_combout\) # ((\SLL64_A|Mux8|Mux27~0_combout\ & \SRL64_A|Mux32|Mux55~1_combout\)))) # (!\SRL64_A|Mux32|Mux59~1_combout\ & (((\SLL64_A|Mux8|Mux27~0_combout\ & 
-- \SRL64_A|Mux32|Mux55~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux59~1_combout\,
	datab => \SLL64_A|Mux8|Mux31~4_combout\,
	datac => \SLL64_A|Mux8|Mux27~0_combout\,
	datad => \SRL64_A|Mux32|Mux55~1_combout\,
	combout => \SRL64_A|Mux8|Mux59~0_combout\);

-- Location: LCCOMB_X58_Y40_N14
\SRA64_A|Mux8|Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux59~1_combout\ = (\SRA64_A|Mux8|Mux59~0_combout\) # ((\SRL64_A|Mux8|Mux59~0_combout\) # ((\SRL64_A|Mux32|Mux51~1_combout\ & \SLL64_A|Mux8|Mux35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux59~0_combout\,
	datab => \SRL64_A|Mux32|Mux51~1_combout\,
	datac => \SLL64_A|Mux8|Mux35~0_combout\,
	datad => \SRL64_A|Mux8|Mux59~0_combout\,
	combout => \SRA64_A|Mux8|Mux59~1_combout\);

-- Location: LCCOMB_X58_Y40_N16
\SRL64_A|Mux4|Mux63~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~66_combout\ = (\SRL64_A|Mux4|Mux63~63_combout\) # ((\SRA64_A|Mux8|Mux59~1_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~63_combout\,
	datab => \SRA64_A|Mux8|Mux59~1_combout\,
	datac => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~66_combout\);

-- Location: LCCOMB_X59_Y36_N30
\SRL64_A|Mux8|Mux63~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~75_combout\ = (\B[5]~input_o\ & (!\B[4]~input_o\ & \Selector15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Selector15~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~75_combout\);

-- Location: LCCOMB_X59_Y36_N26
\SRL64_A|Mux8|Mux63~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~15_combout\ = (\B[2]~input_o\ & ((\SRL64_A|Mux8|Mux63~75_combout\) # ((\SRL64_A|Mux32|Mux47~0_combout\)))) # (!\B[2]~input_o\ & (((\SRL64_A|Mux32|Mux51~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~75_combout\,
	datab => \SRL64_A|Mux32|Mux51~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64_A|Mux32|Mux47~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~15_combout\);

-- Location: LCCOMB_X58_Y40_N2
\SRL64_A|Mux4|Mux63~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~64_combout\ = (\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux59~0_combout\) # ((\B[3]~input_o\ & \SRL64_A|Mux8|Mux63~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64_A|Mux8|Mux59~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~15_combout\,
	combout => \SRL64_A|Mux4|Mux63~64_combout\);

-- Location: LCCOMB_X58_Y40_N28
\SRL64_A|Mux4|Mux63~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~65_combout\ = (\SRL64_A|Mux4|Mux63~63_combout\) # (\SRL64_A|Mux4|Mux63~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64_A|Mux4|Mux63~63_combout\,
	datad => \SRL64_A|Mux4|Mux63~64_combout\,
	combout => \SRL64_A|Mux4|Mux63~65_combout\);

-- Location: LCCOMB_X58_Y37_N8
\Selector126~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector126~0_combout\ = (\B[0]~input_o\ & (!\ShiftFN[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~65_combout\)))) # (!\B[0]~input_o\ & (((\SRL64_A|Mux4|Mux63~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~46_combout\,
	datad => \SRL64_A|Mux4|Mux63~65_combout\,
	combout => \Selector126~0_combout\);

-- Location: LCCOMB_X58_Y37_N30
\Selector510~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector510~6_combout\ = (\Selector126~0_combout\) # ((\SRL64_A|Mux4|Mux63~66_combout\ & (\ShiftFN[0]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~66_combout\,
	datab => \Selector126~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Selector510~6_combout\);

-- Location: LCCOMB_X58_Y38_N20
\SRL64_A|Mux8|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux27~0_combout\ = (\SLL64_A|Mux8|Mux27~0_combout\ & ((\B[4]~input_o\ & ((\Selector7~0_combout\))) # (!\B[4]~input_o\ & (\Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \B[4]~input_o\,
	datac => \Selector7~0_combout\,
	datad => \SLL64_A|Mux8|Mux27~0_combout\,
	combout => \SRL64_A|Mux8|Mux27~0_combout\);

-- Location: LCCOMB_X54_Y36_N0
\SRL64_A|Mux8|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux27~1_combout\ = (\SLL64_A|Mux8|Mux35~0_combout\ & ((\SLL64_A|Mux32|Mux31~28_combout\) # ((\SLL64_A|Mux8|Mux55~0_combout\ & \Selector15~0_combout\)))) # (!\SLL64_A|Mux8|Mux35~0_combout\ & (\SLL64_A|Mux8|Mux55~0_combout\ & 
-- ((\Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux35~0_combout\,
	datab => \SLL64_A|Mux8|Mux55~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~28_combout\,
	datad => \Selector15~0_combout\,
	combout => \SRL64_A|Mux8|Mux27~1_combout\);

-- Location: LCCOMB_X54_Y36_N18
\SRL64_A|Mux8|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux27~2_combout\ = (\SRL64_A|Mux8|Mux27~0_combout\) # ((\SRL64_A|Mux8|Mux27~1_combout\) # ((\SLL64_A|Mux8|Mux31~4_combout\ & \SLL64_A|Mux32|Mux31~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux27~0_combout\,
	datab => \SLL64_A|Mux8|Mux31~4_combout\,
	datac => \SLL64_A|Mux32|Mux31~29_combout\,
	datad => \SRL64_A|Mux8|Mux27~1_combout\,
	combout => \SRL64_A|Mux8|Mux27~2_combout\);

-- Location: LCCOMB_X54_Y39_N24
\SRL64_A|Mux4|Mux63~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~61_combout\ = (!\SRL64_A|Mux4|Mux63~58_combout\ & ((\B[1]~input_o\ & (\SRL64_A|Mux8|Mux27~2_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux29~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux27~2_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~58_combout\,
	datad => \SRL64_A|Mux8|Mux29~2_combout\,
	combout => \SRL64_A|Mux4|Mux63~61_combout\);

-- Location: LCCOMB_X54_Y39_N10
\SRL64_A|Mux4|Mux63~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~62_combout\ = (\SRL64_A|Mux4|Mux63~58_combout\ & \Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~58_combout\,
	datac => \Selector0~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~62_combout\);

-- Location: LCCOMB_X54_Y39_N12
\Selector94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~61_combout\) # ((\ShiftFN[0]~input_o\ & \SRL64_A|Mux4|Mux63~62_combout\)))) # (!\B[0]~input_o\ & (\ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~61_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~62_combout\,
	combout => \Selector94~0_combout\);

-- Location: LCCOMB_X58_Y39_N22
\Selector94~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector94~1_combout\ = (\Selector94~0_combout\ & ((\SRL64_A|Mux4|Mux63~60_combout\) # ((\B[0]~input_o\)))) # (!\Selector94~0_combout\ & (((!\B[0]~input_o\ & \SRL64_A|Mux4|Mux63~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector94~0_combout\,
	datab => \SRL64_A|Mux4|Mux63~60_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~53_combout\,
	combout => \Selector94~1_combout\);

-- Location: LCCOMB_X53_Y40_N14
\Selector190~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector190~0_combout\ = (!\SLL64_A|Mux8|Mux63~0_combout\ & ((\B[0]~input_o\ & ((\Selector63~0_combout\))) # (!\B[0]~input_o\ & (\Selector62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector62~0_combout\,
	datab => \B[0]~input_o\,
	datac => \Selector63~0_combout\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \Selector190~0_combout\);

-- Location: IOIBUF_X115_Y44_N1
\C[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

-- Location: LCCOMB_X53_Y40_N24
\Selector190~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector190~1_combout\ = (\ShiftFN[0]~input_o\ & (\Selector190~0_combout\ & ((!\B[1]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\C[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Selector190~0_combout\,
	datac => \C[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Selector190~1_combout\);

-- Location: LCCOMB_X56_Y36_N8
\SLL64_A|Mux32|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux30~2_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector46~0_combout\))) # (!\B[4]~input_o\ & (\Selector30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector30~0_combout\,
	datab => \B[5]~input_o\,
	datac => \Selector46~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux30~2_combout\);

-- Location: LCCOMB_X56_Y36_N6
\SLL64_A|Mux32|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux30~3_combout\ = (\SLL64_A|Mux32|Mux30~2_combout\) # ((\Selector62~0_combout\ & (\B[5]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector62~0_combout\,
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux32|Mux30~2_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux30~3_combout\);

-- Location: LCCOMB_X56_Y39_N4
\SLL64_A|Mux8|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux30~4_combout\ = (!\B[5]~input_o\ & (\SLL64_A|Mux32|Mux31~10_combout\ & (\B[3]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SLL64_A|Mux32|Mux31~10_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLL64_A|Mux8|Mux30~4_combout\);

-- Location: LCCOMB_X59_Y36_N22
\SRL64_A|Mux8|Mux63~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~16_combout\ = (!\B[5]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~16_combout\);

-- Location: LCCOMB_X56_Y39_N10
\SLL64_A|Mux8|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux30~2_combout\ = (\SRL64_A|Mux8|Mux63~16_combout\ & ((\B[3]~input_o\ & (\SLL64_A|Mux32|Mux31~7_combout\)) # (!\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux31~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~7_combout\,
	datab => \SRL64_A|Mux8|Mux63~16_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~8_combout\,
	combout => \SLL64_A|Mux8|Mux30~2_combout\);

-- Location: LCCOMB_X56_Y39_N28
\SLL64_A|Mux8|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux30~3_combout\ = (\SLL64_A|Mux8|Mux30~4_combout\) # ((\SLL64_A|Mux8|Mux30~2_combout\) # ((\SLL64_A|Mux32|Mux30~3_combout\ & \SLL64_A|Mux8|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux30~3_combout\,
	datab => \SLL64_A|Mux8|Mux31~4_combout\,
	datac => \SLL64_A|Mux8|Mux30~4_combout\,
	datad => \SLL64_A|Mux8|Mux30~2_combout\,
	combout => \SLL64_A|Mux8|Mux30~3_combout\);

-- Location: LCCOMB_X53_Y40_N2
\Selector158~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector158~1_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\SLL64_A|Mux8|Mux31~5_combout\)) # (!\B[0]~input_o\ & ((\SLL64_A|Mux8|Mux30~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux31~5_combout\,
	datab => \SLL64_A|Mux8|Mux30~3_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Selector158~1_combout\);

-- Location: LCCOMB_X50_Y39_N16
\SRL64_A|Mux4|Mux63~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~55_combout\ = (!\B[5]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~55_combout\);

-- Location: LCCOMB_X53_Y40_N8
\Selector158~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector158~0_combout\ = (\SRL64_A|Mux4|Mux63~55_combout\ & ((\B[0]~input_o\ & (\SLL64_A|Mux8|Mux33~2_combout\)) # (!\B[0]~input_o\ & ((\SLL64_A|Mux8|Mux32~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux33~2_combout\,
	datab => \SRL64_A|Mux4|Mux63~55_combout\,
	datac => \B[0]~input_o\,
	datad => \SLL64_A|Mux8|Mux32~2_combout\,
	combout => \Selector158~0_combout\);

-- Location: IOIBUF_X29_Y0_N15
\C[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(33),
	o => \C[33]~input_o\);

-- Location: LCCOMB_X53_Y40_N4
\Selector158~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector158~2_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector158~1_combout\) # ((\Selector158~0_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\C[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Selector158~1_combout\,
	datac => \Selector158~0_combout\,
	datad => \C[33]~input_o\,
	combout => \Selector158~2_combout\);

-- Location: LCCOMB_X58_Y39_N2
\Selector510~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector510~7_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (!\B[5]~input_o\)) # (!\ShiftFN[1]~input_o\ & (\B[5]~input_o\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector510~7_combout\);

-- Location: LCCOMB_X58_Y39_N24
\Selector510~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector510~4_combout\ = (\ShiftFN[1]~input_o\ & (((\Selector510~7_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\Selector510~7_combout\ & ((\Selector158~2_combout\))) # (!\Selector510~7_combout\ & (\Selector190~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector190~1_combout\,
	datab => \Selector158~2_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector510~7_combout\,
	combout => \Selector510~4_combout\);

-- Location: LCCOMB_X58_Y39_N26
\Selector510~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector510~5_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector510~4_combout\ & ((\Selector94~1_combout\))) # (!\Selector510~4_combout\ & (\Selector510~6_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Selector510~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector510~6_combout\,
	datac => \Selector94~1_combout\,
	datad => \Selector510~4_combout\,
	combout => \Selector510~5_combout\);

-- Location: LCCOMB_X53_Y37_N10
\SRL64_A|Mux8|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux26~2_combout\ = (\SLL64_A|Mux8|Mux27~0_combout\ & ((\SLL64_A|Mux32|Mux31~23_combout\) # ((\SLL64_A|Mux32|Mux31~21_combout\ & \SLL64_A|Mux8|Mux31~4_combout\)))) # (!\SLL64_A|Mux8|Mux27~0_combout\ & (((\SLL64_A|Mux32|Mux31~21_combout\ & 
-- \SLL64_A|Mux8|Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux27~0_combout\,
	datab => \SLL64_A|Mux32|Mux31~23_combout\,
	datac => \SLL64_A|Mux32|Mux31~21_combout\,
	datad => \SLL64_A|Mux8|Mux31~4_combout\,
	combout => \SRL64_A|Mux8|Mux26~2_combout\);

-- Location: LCCOMB_X52_Y35_N24
\SRL64_A|Mux8|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux26~4_combout\ = (\B[3]~input_o\ & (\B[2]~input_o\ & \Selector14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Selector14~0_combout\,
	combout => \SRL64_A|Mux8|Mux26~4_combout\);

-- Location: LCCOMB_X52_Y35_N14
\SRL64_A|Mux8|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux26~3_combout\ = (\SRL64_A|Mux8|Mux26~2_combout\) # ((\SRL64_A|Mux8|Mux26~4_combout\) # ((\SLL64_A|Mux32|Mux31~22_combout\ & \SLL64_A|Mux8|Mux35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~22_combout\,
	datab => \SRL64_A|Mux8|Mux26~2_combout\,
	datac => \SLL64_A|Mux8|Mux35~0_combout\,
	datad => \SRL64_A|Mux8|Mux26~4_combout\,
	combout => \SRL64_A|Mux8|Mux26~3_combout\);

-- Location: LCCOMB_X54_Y39_N30
\SRL64_A|Mux4|Mux63~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~69_combout\ = (!\SRL64_A|Mux4|Mux63~58_combout\ & ((\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux26~3_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux8|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux28~2_combout\,
	datab => \SRL64_A|Mux8|Mux26~3_combout\,
	datac => \SRL64_A|Mux4|Mux63~58_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~69_combout\);

-- Location: LCCOMB_X54_Y39_N0
\Selector93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\B[0]~input_o\ & (\ShiftFN[0]~input_o\)) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~61_combout\) # ((\ShiftFN[0]~input_o\ & \SRL64_A|Mux4|Mux63~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~61_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~62_combout\,
	combout => \Selector93~0_combout\);

-- Location: LCCOMB_X55_Y38_N14
\SRL64_A|Mux4|Mux63~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~70_combout\ = (\B[5]~input_o\) # ((\B[2]~input_o\ & (\B[3]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~70_combout\);

-- Location: LCCOMB_X54_Y39_N18
\SRL64_A|Mux4|Mux63~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~71_combout\ = (\SRL64_A|Mux4|Mux63~70_combout\ & (((\Selector0~0_combout\)))) # (!\SRL64_A|Mux4|Mux63~70_combout\ & (!\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~70_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector0~0_combout\,
	datad => \SRA64_A|Mux8|Mux28~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~71_combout\);

-- Location: LCCOMB_X54_Y39_N20
\SRL64_A|Mux4|Mux63~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~72_combout\ = (\SRL64_A|Mux4|Mux63~71_combout\) # ((!\SRL64_A|Mux4|Mux63~70_combout\ & (\SRL64_A|Mux8|Mux26~3_combout\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~70_combout\,
	datab => \SRL64_A|Mux4|Mux63~71_combout\,
	datac => \SRL64_A|Mux8|Mux26~3_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~72_combout\);

-- Location: LCCOMB_X54_Y39_N14
\Selector93~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector93~1_combout\ = (\Selector93~0_combout\ & (((\SRL64_A|Mux4|Mux63~72_combout\) # (!\B[0]~input_o\)))) # (!\Selector93~0_combout\ & (\SRL64_A|Mux4|Mux63~69_combout\ & (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~69_combout\,
	datab => \Selector93~0_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~72_combout\,
	combout => \Selector93~1_combout\);

-- Location: LCCOMB_X47_Y40_N16
\Selector481~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector481~0_combout\ = ((\B[5]~input_o\ & ((\ShiftFN[1]~input_o\) # (\ShiftFN[0]~input_o\)))) # (!\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector481~0_combout\);

-- Location: LCCOMB_X57_Y36_N0
\SRL64_A|Mux8|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux58~0_combout\ = (\SRL64_A|Mux32|Mux58~1_combout\ & ((\SLL64_A|Mux8|Mux31~4_combout\) # ((\SLL64_A|Mux8|Mux27~0_combout\ & \SRL64_A|Mux32|Mux54~1_combout\)))) # (!\SRL64_A|Mux32|Mux58~1_combout\ & (\SLL64_A|Mux8|Mux27~0_combout\ & 
-- ((\SRL64_A|Mux32|Mux54~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux58~1_combout\,
	datab => \SLL64_A|Mux8|Mux27~0_combout\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \SRL64_A|Mux32|Mux54~1_combout\,
	combout => \SRL64_A|Mux8|Mux58~0_combout\);

-- Location: LCCOMB_X56_Y36_N12
\SRA64_A|Mux32|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux46~0_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector0~0_combout\))) # (!\B[4]~input_o\ & (\Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~0_combout\,
	datab => \B[5]~input_o\,
	datac => \Selector0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64_A|Mux32|Mux46~0_combout\);

-- Location: LCCOMB_X56_Y36_N2
\SRL64_A|Mux32|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux46~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector30~0_combout\)) # (!\B[4]~input_o\ & ((\Selector46~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector30~0_combout\,
	datab => \B[5]~input_o\,
	datac => \Selector46~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux46~0_combout\);

-- Location: LCCOMB_X56_Y36_N14
\SRA64_A|Mux32|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux46~1_combout\ = (\SRA64_A|Mux32|Mux46~0_combout\) # (\SRL64_A|Mux32|Mux46~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux32|Mux46~0_combout\,
	datad => \SRL64_A|Mux32|Mux46~0_combout\,
	combout => \SRA64_A|Mux32|Mux46~1_combout\);

-- Location: LCCOMB_X57_Y36_N16
\SRA64_A|Mux8|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux58~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64_A|Mux32|Mux46~1_combout\))) # (!\B[2]~input_o\ & (\SRL64_A|Mux32|Mux50~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux50~1_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64_A|Mux32|Mux46~1_combout\,
	combout => \SRA64_A|Mux8|Mux58~0_combout\);

-- Location: LCCOMB_X57_Y36_N4
\SRL64_A|Mux4|Mux63~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~247_combout\ = (\B[1]~input_o\ & (((\SRL64_A|Mux8|Mux58~0_combout\) # (\SRA64_A|Mux8|Mux58~0_combout\)))) # (!\B[1]~input_o\ & (\SRL64_A|Mux8|Mux60~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux60~3_combout\,
	datab => \SRL64_A|Mux8|Mux58~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64_A|Mux8|Mux58~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~247_combout\);

-- Location: LCCOMB_X57_Y36_N26
\SRL64_A|Mux8|Mux63~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~76_combout\ = (\Selector14~0_combout\ & (\B[5]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~0_combout\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~76_combout\);

-- Location: LCCOMB_X57_Y36_N2
\SRL64_A|Mux8|Mux63~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~17_combout\ = (\B[2]~input_o\ & (((\SRL64_A|Mux8|Mux63~76_combout\) # (\SRL64_A|Mux32|Mux46~0_combout\)))) # (!\B[2]~input_o\ & (\SRL64_A|Mux32|Mux50~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux50~1_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~76_combout\,
	datad => \SRL64_A|Mux32|Mux46~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~17_combout\);

-- Location: LCCOMB_X57_Y36_N20
\SRL64_A|Mux4|Mux63~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~67_combout\ = (\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux58~0_combout\) # ((\SRL64_A|Mux8|Mux63~17_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~17_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux58~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~67_combout\);

-- Location: LCCOMB_X57_Y36_N14
\SRL64_A|Mux4|Mux63~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~68_combout\ = (\SRL64_A|Mux4|Mux63~67_combout\) # ((!\B[1]~input_o\ & \SRL64_A|Mux8|Mux60~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64_A|Mux4|Mux63~67_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux8|Mux60~3_combout\,
	combout => \SRL64_A|Mux4|Mux63~68_combout\);

-- Location: LCCOMB_X58_Y37_N10
\Selector509~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector509~0_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~68_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRL64_A|Mux4|Mux63~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~68_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~65_combout\,
	combout => \Selector509~0_combout\);

-- Location: LCCOMB_X58_Y37_N12
\Selector509~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector509~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector509~0_combout\ & (\SRL64_A|Mux4|Mux63~247_combout\)) # (!\Selector509~0_combout\ & ((\SRL64_A|Mux4|Mux63~66_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Selector509~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~247_combout\,
	datac => \SRL64_A|Mux4|Mux63~66_combout\,
	datad => \Selector509~0_combout\,
	combout => \Selector509~1_combout\);

-- Location: LCCOMB_X58_Y39_N28
\Selector509~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector509~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector509~1_combout\))) # (!\Selector481~0_combout\ & (\Selector93~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector93~1_combout\,
	datab => \Selector481~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector509~1_combout\,
	combout => \Selector509~2_combout\);

-- Location: LCCOMB_X48_Y38_N8
\Selector481~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector481~1_combout\ = (\ShiftFN[0]~input_o\ & ((!\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[0]~input_o\,
	combout => \Selector481~1_combout\);

-- Location: LCCOMB_X55_Y40_N14
\Selector481~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector481~2_combout\ = (\Selector481~1_combout\ & (((\B[0]~input_o\)))) # (!\Selector481~1_combout\ & (((!\bitShift~0_combout\)) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Selector481~1_combout\,
	datac => \B[0]~input_o\,
	datad => \bitShift~0_combout\,
	combout => \Selector481~2_combout\);

-- Location: IOIBUF_X83_Y73_N22
\C[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(2),
	o => \C[2]~input_o\);

-- Location: LCCOMB_X59_Y42_N30
\SLL64_A|Mux4|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~9_combout\ = (!\SLL64_A|Mux8|Mux63~0_combout\ & (\Selector62~0_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~0_combout\,
	datab => \Selector62~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~9_combout\);

-- Location: LCCOMB_X57_Y42_N18
\Selector157~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector157~0_combout\ = (\ShiftFN[0]~input_o\ & (\B[0]~input_o\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Selector157~0_combout\);

-- Location: IOIBUF_X69_Y0_N8
\C[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(34),
	o => \C[34]~input_o\);

-- Location: LCCOMB_X57_Y42_N12
\Selector157~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector157~1_combout\ = (\SLL64_A|Mux8|Mux30~3_combout\ & ((\Selector157~0_combout\) # ((!\ShiftFN[0]~input_o\ & \C[34]~input_o\)))) # (!\SLL64_A|Mux8|Mux30~3_combout\ & (((!\ShiftFN[0]~input_o\ & \C[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux30~3_combout\,
	datab => \Selector157~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \C[34]~input_o\,
	combout => \Selector157~1_combout\);

-- Location: LCCOMB_X57_Y42_N2
\Selector157~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector157~4_combout\ = (\ShiftFN[0]~input_o\ & (!\B[0]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Selector157~4_combout\);

-- Location: LCCOMB_X57_Y42_N30
\Selector157~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector157~2_combout\ = (\ShiftFN[0]~input_o\ & (\B[0]~input_o\ & (\B[1]~input_o\ & !\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Selector157~2_combout\);

-- Location: LCCOMB_X50_Y42_N18
\SLL64_A|Mux8|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux29~4_combout\ = (\SLL64_A|Mux32|Mux31~16_combout\ & (\B[3]~input_o\ & (!\B[2]~input_o\ & !\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~16_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux8|Mux29~4_combout\);

-- Location: LCCOMB_X55_Y42_N0
\SLL64_A|Mux32|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux29~2_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector45~0_combout\)) # (!\B[4]~input_o\ & ((\Selector29~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~0_combout\,
	datab => \B[5]~input_o\,
	datac => \Selector29~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux29~2_combout\);

-- Location: LCCOMB_X55_Y42_N14
\SLL64_A|Mux32|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux29~3_combout\ = (\SLL64_A|Mux32|Mux29~2_combout\) # ((\Selector61~0_combout\ & (\B[5]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux29~2_combout\,
	datab => \Selector61~0_combout\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux29~3_combout\);

-- Location: LCCOMB_X53_Y42_N10
\SLL64_A|Mux8|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux29~2_combout\ = (\SRL64_A|Mux8|Mux63~16_combout\ & ((\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux31~14_combout\))) # (!\B[3]~input_o\ & (\SLL64_A|Mux32|Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~15_combout\,
	datab => \SRL64_A|Mux8|Mux63~16_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~14_combout\,
	combout => \SLL64_A|Mux8|Mux29~2_combout\);

-- Location: LCCOMB_X53_Y42_N28
\SLL64_A|Mux8|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux29~3_combout\ = (\SLL64_A|Mux8|Mux29~4_combout\) # ((\SLL64_A|Mux8|Mux29~2_combout\) # ((\SLL64_A|Mux32|Mux29~3_combout\ & \SLL64_A|Mux8|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux29~4_combout\,
	datab => \SLL64_A|Mux32|Mux29~3_combout\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \SLL64_A|Mux8|Mux29~2_combout\,
	combout => \SLL64_A|Mux8|Mux29~3_combout\);

-- Location: LCCOMB_X57_Y42_N8
\Selector157~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector157~3_combout\ = (\Selector157~2_combout\ & ((\SLL64_A|Mux8|Mux32~2_combout\) # ((\SLL64_A|Mux8|Mux29~3_combout\ & \Selector191~1_combout\)))) # (!\Selector157~2_combout\ & (\SLL64_A|Mux8|Mux29~3_combout\ & ((\Selector191~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector157~2_combout\,
	datab => \SLL64_A|Mux8|Mux29~3_combout\,
	datac => \SLL64_A|Mux8|Mux32~2_combout\,
	datad => \Selector191~1_combout\,
	combout => \Selector157~3_combout\);

-- Location: LCCOMB_X57_Y42_N20
\Selector157~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector157~5_combout\ = (\Selector157~1_combout\) # ((\Selector157~3_combout\) # ((\Selector157~4_combout\ & \SLL64_A|Mux8|Mux31~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector157~1_combout\,
	datab => \Selector157~4_combout\,
	datac => \Selector157~3_combout\,
	datad => \SLL64_A|Mux8|Mux31~5_combout\,
	combout => \Selector157~5_combout\);

-- Location: LCCOMB_X59_Y42_N10
\SLL64_A|Mux4|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~8_combout\ = (!\SLL64_A|Mux8|Mux63~0_combout\ & ((\B[1]~input_o\ & ((\Selector63~0_combout\))) # (!\B[1]~input_o\ & (\Selector61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector61~0_combout\,
	datad => \Selector63~0_combout\,
	combout => \SLL64_A|Mux4|Mux31~8_combout\);

-- Location: LCCOMB_X59_Y42_N12
\Selector509~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector509~3_combout\ = (\Selector481~2_combout\ & (\Selector481~1_combout\)) # (!\Selector481~2_combout\ & ((\Selector481~1_combout\ & ((\SLL64_A|Mux4|Mux31~8_combout\))) # (!\Selector481~1_combout\ & (\Selector157~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \Selector481~1_combout\,
	datac => \Selector157~5_combout\,
	datad => \SLL64_A|Mux4|Mux31~8_combout\,
	combout => \Selector509~3_combout\);

-- Location: LCCOMB_X59_Y42_N16
\Selector509~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector509~4_combout\ = (\Selector481~2_combout\ & ((\Selector509~3_combout\ & ((\SLL64_A|Mux4|Mux31~9_combout\))) # (!\Selector509~3_combout\ & (\C[2]~input_o\)))) # (!\Selector481~2_combout\ & (((\Selector509~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \C[2]~input_o\,
	datac => \SLL64_A|Mux4|Mux31~9_combout\,
	datad => \Selector509~3_combout\,
	combout => \Selector509~4_combout\);

-- Location: LCCOMB_X58_Y39_N6
\Selector509~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector509~5_combout\ = (\Selector509~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector509~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector509~2_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector509~4_combout\,
	combout => \Selector509~5_combout\);

-- Location: LCCOMB_X54_Y41_N0
\SRL64_A|Mux8|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux25~0_combout\ = (\SLL64_A|Mux8|Mux27~0_combout\ & ((\B[4]~input_o\ & ((\Selector5~0_combout\))) # (!\B[4]~input_o\ & (\Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~0_combout\,
	datab => \SLL64_A|Mux8|Mux27~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector5~0_combout\,
	combout => \SRL64_A|Mux8|Mux25~0_combout\);

-- Location: LCCOMB_X54_Y42_N10
\SRL64_A|Mux8|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux25~1_combout\ = (\SLL64_A|Mux32|Mux31~24_combout\ & ((\SLL64_A|Mux8|Mux35~0_combout\) # ((\Selector13~0_combout\ & \SLL64_A|Mux8|Mux55~0_combout\)))) # (!\SLL64_A|Mux32|Mux31~24_combout\ & (\Selector13~0_combout\ & 
-- (\SLL64_A|Mux8|Mux55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~24_combout\,
	datab => \Selector13~0_combout\,
	datac => \SLL64_A|Mux8|Mux55~0_combout\,
	datad => \SLL64_A|Mux8|Mux35~0_combout\,
	combout => \SRL64_A|Mux8|Mux25~1_combout\);

-- Location: LCCOMB_X55_Y42_N30
\SRL64_A|Mux8|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux25~2_combout\ = (\SRL64_A|Mux8|Mux25~0_combout\) # ((\SRL64_A|Mux8|Mux25~1_combout\) # ((\SLL64_A|Mux32|Mux31~27_combout\ & \SLL64_A|Mux8|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux25~0_combout\,
	datab => \SLL64_A|Mux32|Mux31~27_combout\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \SRL64_A|Mux8|Mux25~1_combout\,
	combout => \SRL64_A|Mux8|Mux25~2_combout\);

-- Location: LCCOMB_X52_Y39_N2
\SRL64_A|Mux4|Mux63~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~76_combout\ = (!\SRL64_A|Mux4|Mux63~70_combout\ & ((\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux25~2_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux8|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux27~2_combout\,
	datab => \SRL64_A|Mux8|Mux25~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~70_combout\,
	combout => \SRL64_A|Mux4|Mux63~76_combout\);

-- Location: LCCOMB_X54_Y39_N8
\Selector92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (\ShiftFN[0]~input_o\ & ((\B[0]~input_o\) # ((\SRL64_A|Mux4|Mux63~72_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~69_combout\,
	datad => \SRL64_A|Mux4|Mux63~72_combout\,
	combout => \Selector92~0_combout\);

-- Location: LCCOMB_X52_Y39_N24
\SRL64_A|Mux4|Mux63~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~75_combout\ = (\Selector0~0_combout\ & \SRL64_A|Mux4|Mux63~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~70_combout\,
	combout => \SRL64_A|Mux4|Mux63~75_combout\);

-- Location: LCCOMB_X52_Y39_N28
\Selector92~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector92~1_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~76_combout\) # ((\Selector92~0_combout\ & \SRL64_A|Mux4|Mux63~75_combout\)))) # (!\B[0]~input_o\ & (((\Selector92~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~76_combout\,
	datab => \Selector92~0_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~75_combout\,
	combout => \Selector92~1_combout\);

-- Location: LCCOMB_X55_Y35_N16
\SLL64_A|Mux32|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~6_combout\ = (\B[5]~input_o\ & !\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux31~6_combout\);

-- Location: LCCOMB_X55_Y42_N4
\SRL64_A|Mux32|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux45~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector29~0_combout\))) # (!\B[4]~input_o\ & (\Selector45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~0_combout\,
	datab => \B[5]~input_o\,
	datac => \Selector29~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux45~0_combout\);

-- Location: LCCOMB_X54_Y42_N24
\SRL64_A|Mux8|Mux63~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~18_combout\ = (\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux45~0_combout\) # ((\SLL64_A|Mux32|Mux31~6_combout\ & \Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~6_combout\,
	datab => \B[2]~input_o\,
	datac => \Selector13~0_combout\,
	datad => \SRL64_A|Mux32|Mux45~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~18_combout\);

-- Location: LCCOMB_X54_Y42_N18
\SRL64_A|Mux8|Mux63~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~19_combout\ = (\SRL64_A|Mux8|Mux63~18_combout\) # ((!\B[2]~input_o\ & \SRL64_A|Mux32|Mux49~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SRL64_A|Mux32|Mux49~1_combout\,
	datad => \SRL64_A|Mux8|Mux63~18_combout\,
	combout => \SRL64_A|Mux8|Mux63~19_combout\);

-- Location: LCCOMB_X55_Y42_N26
\SRL64_A|Mux8|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux57~0_combout\ = (\SLL64_A|Mux8|Mux31~4_combout\ & ((\SRL64_A|Mux32|Mux57~1_combout\) # ((\SLL64_A|Mux8|Mux27~0_combout\ & \SRL64_A|Mux32|Mux53~1_combout\)))) # (!\SLL64_A|Mux8|Mux31~4_combout\ & (\SLL64_A|Mux8|Mux27~0_combout\ & 
-- ((\SRL64_A|Mux32|Mux53~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux31~4_combout\,
	datab => \SLL64_A|Mux8|Mux27~0_combout\,
	datac => \SRL64_A|Mux32|Mux57~1_combout\,
	datad => \SRL64_A|Mux32|Mux53~1_combout\,
	combout => \SRL64_A|Mux8|Mux57~0_combout\);

-- Location: LCCOMB_X58_Y40_N4
\SRL64_A|Mux4|Mux63~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~264_combout\ = (\B[1]~input_o\ & (((\B[3]~input_o\)))) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux59~0_combout\) # ((\B[3]~input_o\ & \SRL64_A|Mux8|Mux63~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64_A|Mux8|Mux59~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~15_combout\,
	combout => \SRL64_A|Mux4|Mux63~264_combout\);

-- Location: LCCOMB_X59_Y40_N20
\SRL64_A|Mux4|Mux63~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~265_combout\ = (\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux57~0_combout\) # ((\SRL64_A|Mux8|Mux63~19_combout\ & \SRL64_A|Mux4|Mux63~264_combout\)))) # (!\B[1]~input_o\ & (((\SRL64_A|Mux4|Mux63~264_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~19_combout\,
	datab => \SRL64_A|Mux8|Mux57~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~264_combout\,
	combout => \SRL64_A|Mux4|Mux63~265_combout\);

-- Location: LCCOMB_X58_Y37_N22
\Selector508~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector508~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRL64_A|Mux4|Mux63~265_combout\)))) # (!\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~68_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~68_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~265_combout\,
	combout => \Selector508~0_combout\);

-- Location: LCCOMB_X54_Y42_N4
\SRA64_A|Mux32|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux45~0_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector0~0_combout\)) # (!\B[4]~input_o\ & ((\Selector13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Selector0~0_combout\,
	datac => \Selector13~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64_A|Mux32|Mux45~0_combout\);

-- Location: LCCOMB_X54_Y42_N30
\SRA64_A|Mux32|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux45~1_combout\ = (\SRA64_A|Mux32|Mux45~0_combout\) # (\SRL64_A|Mux32|Mux45~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRA64_A|Mux32|Mux45~0_combout\,
	datad => \SRL64_A|Mux32|Mux45~0_combout\,
	combout => \SRA64_A|Mux32|Mux45~1_combout\);

-- Location: LCCOMB_X54_Y42_N0
\SRA64_A|Mux8|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux57~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64_A|Mux32|Mux45~1_combout\))) # (!\B[2]~input_o\ & (\SRL64_A|Mux32|Mux49~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRL64_A|Mux32|Mux49~1_combout\,
	datad => \SRA64_A|Mux32|Mux45~1_combout\,
	combout => \SRA64_A|Mux8|Mux57~0_combout\);

-- Location: LCCOMB_X59_Y40_N16
\SRL64_A|Mux4|Mux63~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~74_combout\ = (\B[1]~input_o\ & (((\SRA64_A|Mux8|Mux57~0_combout\) # (\SRL64_A|Mux8|Mux57~0_combout\)))) # (!\B[1]~input_o\ & (\SRA64_A|Mux8|Mux59~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux59~1_combout\,
	datab => \SRA64_A|Mux8|Mux57~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux8|Mux57~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~74_combout\);

-- Location: LCCOMB_X58_Y37_N0
\Selector508~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector508~1_combout\ = (\Selector508~0_combout\ & (((\SRL64_A|Mux4|Mux63~74_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\Selector508~0_combout\ & (\SRL64_A|Mux4|Mux63~247_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector508~0_combout\,
	datab => \SRL64_A|Mux4|Mux63~247_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~74_combout\,
	combout => \Selector508~1_combout\);

-- Location: LCCOMB_X58_Y42_N24
\Selector508~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector508~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector508~1_combout\))) # (!\Selector481~0_combout\ & (\Selector92~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~0_combout\,
	datab => \Selector92~1_combout\,
	datac => \Selector508~1_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector508~2_combout\);

-- Location: LCCOMB_X54_Y38_N8
\Selector126~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector126~1_combout\ = (\ShiftFN[0]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Selector126~1_combout\);

-- Location: LCCOMB_X57_Y42_N6
\Selector156~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector156~0_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux31~5_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64_A|Mux8|Mux29~3_combout\,
	datac => \Selector126~1_combout\,
	datad => \SLL64_A|Mux8|Mux31~5_combout\,
	combout => \Selector156~0_combout\);

-- Location: LCCOMB_X53_Y38_N6
\SLL64_A|Mux8|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux28~2_combout\ = (\SRL64_A|Mux8|Mux63~16_combout\ & ((\B[3]~input_o\ & (\SLL64_A|Mux32|Mux31~11_combout\)) # (!\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux31~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~11_combout\,
	datab => \SRL64_A|Mux8|Mux63~16_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~12_combout\,
	combout => \SLL64_A|Mux8|Mux28~2_combout\);

-- Location: LCCOMB_X52_Y37_N12
\SLL64_A|Mux32|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux28~2_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector44~0_combout\)) # (!\B[4]~input_o\ & ((\Selector28~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector44~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector28~0_combout\,
	combout => \SLL64_A|Mux32|Mux28~2_combout\);

-- Location: LCCOMB_X53_Y38_N20
\SLL64_A|Mux32|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux28~3_combout\ = (\SLL64_A|Mux32|Mux28~2_combout\) # ((!\B[4]~input_o\ & (\B[5]~input_o\ & \Selector60~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux32|Mux28~2_combout\,
	datad => \Selector60~0_combout\,
	combout => \SLL64_A|Mux32|Mux28~3_combout\);

-- Location: LCCOMB_X53_Y38_N26
\SLL64_A|Mux8|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux28~4_combout\ = (\SLL64_A|Mux32|Mux31~13_combout\ & (\B[3]~input_o\ & (!\B[2]~input_o\ & !\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~13_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux8|Mux28~4_combout\);

-- Location: LCCOMB_X53_Y38_N0
\SLL64_A|Mux8|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux28~3_combout\ = (\SLL64_A|Mux8|Mux28~2_combout\) # ((\SLL64_A|Mux8|Mux28~4_combout\) # ((\SLL64_A|Mux32|Mux28~3_combout\ & \SLL64_A|Mux8|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux28~2_combout\,
	datab => \SLL64_A|Mux32|Mux28~3_combout\,
	datac => \SLL64_A|Mux8|Mux28~4_combout\,
	datad => \SLL64_A|Mux8|Mux31~4_combout\,
	combout => \SLL64_A|Mux8|Mux28~3_combout\);

-- Location: IOIBUF_X0_Y50_N22
\C[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(35),
	o => \C[35]~input_o\);

-- Location: LCCOMB_X57_Y42_N0
\Selector156~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector156~1_combout\ = (\ShiftFN[0]~input_o\ & (((\SLL64_A|Mux8|Mux30~3_combout\ & \Selector157~4_combout\)))) # (!\ShiftFN[0]~input_o\ & ((\C[35]~input_o\) # ((\SLL64_A|Mux8|Mux30~3_combout\ & \Selector157~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \C[35]~input_o\,
	datac => \SLL64_A|Mux8|Mux30~3_combout\,
	datad => \Selector157~4_combout\,
	combout => \Selector156~1_combout\);

-- Location: LCCOMB_X57_Y42_N26
\Selector156~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector156~2_combout\ = (\Selector156~0_combout\) # ((\Selector156~1_combout\) # ((\Selector191~1_combout\ & \SLL64_A|Mux8|Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector156~0_combout\,
	datab => \Selector191~1_combout\,
	datac => \SLL64_A|Mux8|Mux28~3_combout\,
	datad => \Selector156~1_combout\,
	combout => \Selector156~2_combout\);

-- Location: IOIBUF_X60_Y73_N8
\C[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(3),
	o => \C[3]~input_o\);

-- Location: LCCOMB_X59_Y42_N20
\Selector508~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector508~3_combout\ = (\Selector481~2_combout\ & ((\Selector481~1_combout\) # ((\C[3]~input_o\)))) # (!\Selector481~2_combout\ & (!\Selector481~1_combout\ & (\Selector156~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \Selector481~1_combout\,
	datac => \Selector156~2_combout\,
	datad => \C[3]~input_o\,
	combout => \Selector508~3_combout\);

-- Location: LCCOMB_X59_Y42_N26
\SLL64_A|Mux4|Mux31~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~10_combout\ = (!\SLL64_A|Mux8|Mux63~0_combout\ & ((\B[1]~input_o\ & (\Selector62~0_combout\)) # (!\B[1]~input_o\ & ((\Selector60~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~0_combout\,
	datab => \Selector62~0_combout\,
	datac => \Selector60~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~10_combout\);

-- Location: LCCOMB_X59_Y42_N22
\Selector508~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector508~4_combout\ = (\Selector508~3_combout\ & ((\SLL64_A|Mux4|Mux31~8_combout\) # ((!\Selector481~1_combout\)))) # (!\Selector508~3_combout\ & (((\SLL64_A|Mux4|Mux31~10_combout\ & \Selector481~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~8_combout\,
	datab => \Selector508~3_combout\,
	datac => \SLL64_A|Mux4|Mux31~10_combout\,
	datad => \Selector481~1_combout\,
	combout => \Selector508~4_combout\);

-- Location: LCCOMB_X58_Y42_N2
\Selector508~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector508~5_combout\ = (\Selector508~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector508~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector508~2_combout\,
	datad => \Selector508~4_combout\,
	combout => \Selector508~5_combout\);

-- Location: LCCOMB_X53_Y37_N6
\SRL64_A|Mux8|Mux63~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~21_combout\ = (\B[2]~input_o\ & (\SLL64_A|Mux32|Mux31~18_combout\)) # (!\B[2]~input_o\ & ((\SLL64_A|Mux32|Mux31~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~18_combout\,
	datac => \SLL64_A|Mux32|Mux31~20_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~21_combout\);

-- Location: LCCOMB_X53_Y39_N28
\SRA64_A|Mux8|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux16~0_combout\ = (\B[2]~input_o\ & ((\Selector12~0_combout\))) # (!\B[2]~input_o\ & (\Selector16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datac => \Selector12~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64_A|Mux8|Mux16~0_combout\);

-- Location: LCCOMB_X53_Y39_N22
\SRA64_A|Mux8|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux24~0_combout\ = (\B[3]~input_o\ & ((\SRA64_A|Mux8|Mux16~0_combout\))) # (!\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~21_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64_A|Mux8|Mux16~0_combout\,
	combout => \SRA64_A|Mux8|Mux24~0_combout\);

-- Location: LCCOMB_X50_Y39_N18
\SLL64_A|Mux4|Mux31~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~11_combout\ = (!\B[2]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~11_combout\);

-- Location: LCCOMB_X52_Y39_N18
\SRL64_A|Mux4|Mux63~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~78_combout\ = (\B[5]~input_o\) # ((!\SLL64_A|Mux4|Mux31~11_combout\ & (\B[3]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~11_combout\,
	datab => \B[3]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~78_combout\);

-- Location: LCCOMB_X52_Y39_N4
\SRL64_A|Mux4|Mux63~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~79_combout\ = (!\SRL64_A|Mux4|Mux63~78_combout\ & ((\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux24~0_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux8|Mux26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux26~3_combout\,
	datab => \SRA64_A|Mux8|Mux24~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~78_combout\,
	combout => \SRL64_A|Mux4|Mux63~79_combout\);

-- Location: LCCOMB_X52_Y39_N30
\SRL64_A|Mux4|Mux63~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~80_combout\ = (\SRL64_A|Mux4|Mux63~79_combout\) # ((\Selector0~0_combout\ & \SRL64_A|Mux4|Mux63~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~0_combout\,
	datac => \SRL64_A|Mux4|Mux63~79_combout\,
	datad => \SRL64_A|Mux4|Mux63~78_combout\,
	combout => \SRL64_A|Mux4|Mux63~80_combout\);

-- Location: LCCOMB_X52_Y39_N8
\Selector91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~76_combout\) # ((\ShiftFN[0]~input_o\ & \SRL64_A|Mux4|Mux63~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~76_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~75_combout\,
	combout => \Selector91~0_combout\);

-- Location: LCCOMB_X53_Y39_N0
\SRL64_A|Mux8|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux24~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Selector12~0_combout\)) # (!\B[2]~input_o\ & ((\SLL64_A|Mux32|Mux31~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Selector12~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~17_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux24~0_combout\);

-- Location: LCCOMB_X53_Y39_N18
\SRL64_A|Mux8|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux24~1_combout\ = (\SRL64_A|Mux8|Mux24~0_combout\) # ((\SRL64_A|Mux8|Mux63~21_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~21_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux24~0_combout\,
	combout => \SRL64_A|Mux8|Mux24~1_combout\);

-- Location: LCCOMB_X52_Y39_N22
\SRL64_A|Mux4|Mux63~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~77_combout\ = (!\SRL64_A|Mux4|Mux63~70_combout\ & ((\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux24~1_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux8|Mux26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux26~3_combout\,
	datab => \SRL64_A|Mux8|Mux24~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~70_combout\,
	combout => \SRL64_A|Mux4|Mux63~77_combout\);

-- Location: LCCOMB_X52_Y39_N16
\Selector91~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~1_combout\ = (\Selector91~0_combout\ & ((\SRL64_A|Mux4|Mux63~80_combout\) # ((!\B[0]~input_o\)))) # (!\Selector91~0_combout\ & (((\SRL64_A|Mux4|Mux63~77_combout\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~80_combout\,
	datab => \Selector91~0_combout\,
	datac => \SRL64_A|Mux4|Mux63~77_combout\,
	datad => \B[0]~input_o\,
	combout => \Selector91~1_combout\);

-- Location: LCCOMB_X53_Y37_N20
\SRL64_A|Mux8|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux56~0_combout\ = (\SRL64_A|Mux32|Mux52~1_combout\ & ((\SLL64_A|Mux8|Mux27~0_combout\) # ((\SRL64_A|Mux32|Mux56~1_combout\ & \SLL64_A|Mux8|Mux31~4_combout\)))) # (!\SRL64_A|Mux32|Mux52~1_combout\ & (\SRL64_A|Mux32|Mux56~1_combout\ & 
-- ((\SLL64_A|Mux8|Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux52~1_combout\,
	datab => \SRL64_A|Mux32|Mux56~1_combout\,
	datac => \SLL64_A|Mux8|Mux27~0_combout\,
	datad => \SLL64_A|Mux8|Mux31~4_combout\,
	combout => \SRL64_A|Mux8|Mux56~0_combout\);

-- Location: LCCOMB_X52_Y36_N18
\SRA64_A|Mux32|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux44~0_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector0~0_combout\)) # (!\B[4]~input_o\ & ((\Selector12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector12~0_combout\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRA64_A|Mux32|Mux44~0_combout\);

-- Location: LCCOMB_X52_Y37_N14
\SRL64_A|Mux32|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux44~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector28~0_combout\))) # (!\B[4]~input_o\ & (\Selector44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector44~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector28~0_combout\,
	combout => \SRL64_A|Mux32|Mux44~0_combout\);

-- Location: LCCOMB_X52_Y36_N12
\SRA64_A|Mux32|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux44~1_combout\ = (\SRA64_A|Mux32|Mux44~0_combout\) # (\SRL64_A|Mux32|Mux44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64_A|Mux32|Mux44~0_combout\,
	datad => \SRL64_A|Mux32|Mux44~0_combout\,
	combout => \SRA64_A|Mux32|Mux44~1_combout\);

-- Location: LCCOMB_X54_Y36_N4
\SRA64_A|Mux8|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux56~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64_A|Mux32|Mux44~1_combout\))) # (!\B[2]~input_o\ & (\SRL64_A|Mux32|Mux48~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux48~1_combout\,
	datab => \SRA64_A|Mux32|Mux44~1_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRA64_A|Mux8|Mux56~0_combout\);

-- Location: LCCOMB_X57_Y36_N18
\SRA64_A|Mux8|Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux58~1_combout\ = (\SRA64_A|Mux8|Mux58~0_combout\) # (\SRL64_A|Mux8|Mux58~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64_A|Mux8|Mux58~0_combout\,
	datad => \SRL64_A|Mux8|Mux58~0_combout\,
	combout => \SRA64_A|Mux8|Mux58~1_combout\);

-- Location: LCCOMB_X58_Y36_N6
\SRL64_A|Mux4|Mux63~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~248_combout\ = (\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux56~0_combout\) # ((\SRA64_A|Mux8|Mux56~0_combout\)))) # (!\B[1]~input_o\ & (((\SRA64_A|Mux8|Mux58~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux56~0_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64_A|Mux8|Mux56~0_combout\,
	datad => \SRA64_A|Mux8|Mux58~1_combout\,
	combout => \SRL64_A|Mux4|Mux63~248_combout\);

-- Location: LCCOMB_X52_Y36_N24
\SRL64_A|Mux8|Mux63~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~77_combout\ = (\Selector12~0_combout\ & (\B[5]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector12~0_combout\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~77_combout\);

-- Location: LCCOMB_X52_Y36_N0
\SRL64_A|Mux8|Mux63~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~20_combout\ = (\B[2]~input_o\ & ((\SRL64_A|Mux8|Mux63~77_combout\) # ((\SRL64_A|Mux32|Mux44~0_combout\)))) # (!\B[2]~input_o\ & (((\SRL64_A|Mux32|Mux48~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~77_combout\,
	datac => \SRL64_A|Mux32|Mux48~1_combout\,
	datad => \SRL64_A|Mux32|Mux44~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~20_combout\);

-- Location: LCCOMB_X57_Y36_N30
\SRL64_A|Mux4|Mux63~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~262_combout\ = (\B[1]~input_o\ & (((\B[3]~input_o\)))) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux58~0_combout\) # ((\SRL64_A|Mux8|Mux63~17_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~17_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux58~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~262_combout\);

-- Location: LCCOMB_X58_Y36_N14
\SRL64_A|Mux4|Mux63~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~263_combout\ = (\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux56~0_combout\) # ((\SRL64_A|Mux8|Mux63~20_combout\ & \SRL64_A|Mux4|Mux63~262_combout\)))) # (!\B[1]~input_o\ & (((\SRL64_A|Mux4|Mux63~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux56~0_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~20_combout\,
	datad => \SRL64_A|Mux4|Mux63~262_combout\,
	combout => \SRL64_A|Mux4|Mux63~263_combout\);

-- Location: LCCOMB_X58_Y37_N18
\Selector507~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector507~0_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~263_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRL64_A|Mux4|Mux63~265_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~263_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~265_combout\,
	combout => \Selector507~0_combout\);

-- Location: LCCOMB_X58_Y37_N4
\Selector507~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector507~1_combout\ = (\Selector507~0_combout\ & ((\SRL64_A|Mux4|Mux63~248_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\Selector507~0_combout\ & (((\ShiftFN[0]~input_o\ & \SRL64_A|Mux4|Mux63~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~248_combout\,
	datab => \Selector507~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~74_combout\,
	combout => \Selector507~1_combout\);

-- Location: LCCOMB_X58_Y42_N12
\Selector507~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector507~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector507~1_combout\))) # (!\Selector481~0_combout\ & (\Selector91~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~0_combout\,
	datab => \Selector91~1_combout\,
	datac => \Selector507~1_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector507~2_combout\);

-- Location: IOIBUF_X69_Y73_N1
\C[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(4),
	o => \C[4]~input_o\);

-- Location: LCCOMB_X57_Y42_N14
\Selector155~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector155~1_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & (\SLL64_A|Mux8|Mux30~3_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux28~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux30~3_combout\,
	datab => \Selector126~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux28~3_combout\,
	combout => \Selector155~1_combout\);

-- Location: LCCOMB_X57_Y38_N30
\SLL64_A|Mux8|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux27~2_combout\ = (\SLL64_A|Mux8|Mux31~2_combout\ & ((\B[2]~input_o\ & (\SLL64_A|Mux32|Mux31~3_combout\)) # (!\B[2]~input_o\ & ((\SLL64_A|Mux32|Mux31~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux8|Mux31~2_combout\,
	datac => \SLL64_A|Mux32|Mux31~3_combout\,
	datad => \SLL64_A|Mux32|Mux31~4_combout\,
	combout => \SLL64_A|Mux8|Mux27~2_combout\);

-- Location: LCCOMB_X58_Y35_N6
\SLL64_A|Mux32|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux27~2_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector43~0_combout\))) # (!\B[4]~input_o\ & (\Selector27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector27~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector43~0_combout\,
	combout => \SLL64_A|Mux32|Mux27~2_combout\);

-- Location: LCCOMB_X57_Y38_N20
\SLL64_A|Mux32|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux27~3_combout\ = (\SLL64_A|Mux32|Mux27~2_combout\) # ((!\B[4]~input_o\ & (\B[5]~input_o\ & \Selector59~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Selector59~0_combout\,
	datad => \SLL64_A|Mux32|Mux27~2_combout\,
	combout => \SLL64_A|Mux32|Mux27~3_combout\);

-- Location: LCCOMB_X57_Y38_N28
\SLL64_A|Mux8|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux27~1_combout\ = (\SLL64_A|Mux8|Mux27~0_combout\ & ((\SLL64_A|Mux32|Mux31~5_combout\) # ((\SLL64_A|Mux32|Mux31~6_combout\ & \Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux27~0_combout\,
	datab => \SLL64_A|Mux32|Mux31~6_combout\,
	datac => \Selector63~0_combout\,
	datad => \SLL64_A|Mux32|Mux31~5_combout\,
	combout => \SLL64_A|Mux8|Mux27~1_combout\);

-- Location: LCCOMB_X57_Y38_N24
\SLL64_A|Mux8|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux27~3_combout\ = (\SLL64_A|Mux8|Mux27~2_combout\) # ((\SLL64_A|Mux8|Mux27~1_combout\) # ((\SLL64_A|Mux32|Mux27~3_combout\ & \SLL64_A|Mux8|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux27~2_combout\,
	datab => \SLL64_A|Mux32|Mux27~3_combout\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \SLL64_A|Mux8|Mux27~1_combout\,
	combout => \SLL64_A|Mux8|Mux27~3_combout\);

-- Location: IOIBUF_X65_Y73_N22
\C[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(36),
	o => \C[36]~input_o\);

-- Location: LCCOMB_X57_Y42_N4
\Selector155~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector155~0_combout\ = (\C[36]~input_o\ & (((\Selector157~4_combout\ & \SLL64_A|Mux8|Mux29~3_combout\)) # (!\ShiftFN[0]~input_o\))) # (!\C[36]~input_o\ & (\Selector157~4_combout\ & ((\SLL64_A|Mux8|Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[36]~input_o\,
	datab => \Selector157~4_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SLL64_A|Mux8|Mux29~3_combout\,
	combout => \Selector155~0_combout\);

-- Location: LCCOMB_X57_Y42_N24
\Selector155~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector155~2_combout\ = (\Selector155~1_combout\) # ((\Selector155~0_combout\) # ((\SLL64_A|Mux8|Mux27~3_combout\ & \Selector191~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector155~1_combout\,
	datab => \SLL64_A|Mux8|Mux27~3_combout\,
	datac => \Selector155~0_combout\,
	datad => \Selector191~1_combout\,
	combout => \Selector155~2_combout\);

-- Location: LCCOMB_X49_Y38_N16
\SLL64_A|Mux4|Mux31~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~12_combout\ = (\B[2]~input_o\ & ((\Selector63~0_combout\))) # (!\B[2]~input_o\ & (\Selector59~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector59~0_combout\,
	datab => \B[2]~input_o\,
	datac => \Selector63~0_combout\,
	combout => \SLL64_A|Mux4|Mux31~12_combout\);

-- Location: LCCOMB_X52_Y37_N8
\SLL64_A|Mux32|Mux31~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~32_combout\ = (!\B[5]~input_o\ & !\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux31~32_combout\);

-- Location: LCCOMB_X48_Y36_N8
\SLL64_A|Mux4|Mux31~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~13_combout\ = ((\B[3]~input_o\) # ((\B[2]~input_o\ & \B[1]~input_o\))) # (!\SLL64_A|Mux32|Mux31~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~32_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~13_combout\);

-- Location: LCCOMB_X59_Y42_N24
\SLL64_A|Mux4|Mux31~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~14_combout\ = (!\SLL64_A|Mux4|Mux31~13_combout\ & ((\B[1]~input_o\ & (\Selector61~0_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux4|Mux31~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector61~0_combout\,
	datab => \SLL64_A|Mux4|Mux31~12_combout\,
	datac => \SLL64_A|Mux4|Mux31~13_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~14_combout\);

-- Location: LCCOMB_X59_Y42_N2
\Selector507~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector507~3_combout\ = (\Selector481~2_combout\ & (\Selector481~1_combout\)) # (!\Selector481~2_combout\ & ((\Selector481~1_combout\ & ((\SLL64_A|Mux4|Mux31~14_combout\))) # (!\Selector481~1_combout\ & (\Selector155~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \Selector481~1_combout\,
	datac => \Selector155~2_combout\,
	datad => \SLL64_A|Mux4|Mux31~14_combout\,
	combout => \Selector507~3_combout\);

-- Location: LCCOMB_X59_Y42_N4
\Selector507~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector507~4_combout\ = (\Selector507~3_combout\ & (((\SLL64_A|Mux4|Mux31~10_combout\) # (!\Selector481~2_combout\)))) # (!\Selector507~3_combout\ & (\C[4]~input_o\ & ((\Selector481~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \Selector507~3_combout\,
	datac => \SLL64_A|Mux4|Mux31~10_combout\,
	datad => \Selector481~2_combout\,
	combout => \Selector507~4_combout\);

-- Location: LCCOMB_X58_Y42_N6
\Selector507~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector507~5_combout\ = (\Selector507~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector507~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \Selector507~2_combout\,
	datad => \Selector507~4_combout\,
	combout => \Selector507~5_combout\);

-- Location: LCCOMB_X54_Y36_N22
\SRL64_A|Mux8|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux23~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SLL64_A|Mux32|Mux31~28_combout\)) # (!\B[2]~input_o\ & ((\SLL64_A|Mux32|Mux31~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~28_combout\,
	datad => \SLL64_A|Mux32|Mux31~31_combout\,
	combout => \SRL64_A|Mux8|Mux23~0_combout\);

-- Location: LCCOMB_X58_Y35_N22
\SRL64_A|Mux8|Mux63~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~24_combout\ = (\B[2]~input_o\ & ((\Selector11~0_combout\))) # (!\B[2]~input_o\ & (\Selector15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector11~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~24_combout\);

-- Location: LCCOMB_X49_Y38_N2
\SRL64_A|Mux8|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux23~1_combout\ = (\SRL64_A|Mux8|Mux23~0_combout\) # ((\B[3]~input_o\ & \SRL64_A|Mux8|Mux63~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64_A|Mux8|Mux23~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~24_combout\,
	combout => \SRL64_A|Mux8|Mux23~1_combout\);

-- Location: LCCOMB_X52_Y39_N6
\SRL64_A|Mux4|Mux63~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~85_combout\ = (!\SRL64_A|Mux4|Mux63~78_combout\ & ((\B[1]~input_o\ & (\SRL64_A|Mux8|Mux23~1_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux25~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux23~1_combout\,
	datab => \SRL64_A|Mux8|Mux25~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~78_combout\,
	combout => \SRL64_A|Mux4|Mux63~85_combout\);

-- Location: LCCOMB_X52_Y39_N20
\Selector90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRL64_A|Mux4|Mux63~80_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~80_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~77_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector90~0_combout\);

-- Location: LCCOMB_X52_Y39_N10
\SRL64_A|Mux4|Mux63~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~84_combout\ = (\Selector0~0_combout\ & \SRL64_A|Mux4|Mux63~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~78_combout\,
	combout => \SRL64_A|Mux4|Mux63~84_combout\);

-- Location: LCCOMB_X52_Y39_N0
\Selector90~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector90~1_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~85_combout\) # ((\Selector90~0_combout\ & \SRL64_A|Mux4|Mux63~84_combout\)))) # (!\B[0]~input_o\ & (((\Selector90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~85_combout\,
	datab => \Selector90~0_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~84_combout\,
	combout => \Selector90~1_combout\);

-- Location: LCCOMB_X58_Y40_N10
\SRL64_A|Mux8|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux55~0_combout\ = (\SLL64_A|Mux8|Mux31~4_combout\ & ((\SRL64_A|Mux32|Mux55~1_combout\) # ((\SRL64_A|Mux32|Mux51~1_combout\ & \SLL64_A|Mux8|Mux27~0_combout\)))) # (!\SLL64_A|Mux8|Mux31~4_combout\ & (\SRL64_A|Mux32|Mux51~1_combout\ & 
-- (\SLL64_A|Mux8|Mux27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux31~4_combout\,
	datab => \SRL64_A|Mux32|Mux51~1_combout\,
	datac => \SLL64_A|Mux8|Mux27~0_combout\,
	datad => \SRL64_A|Mux32|Mux55~1_combout\,
	combout => \SRL64_A|Mux8|Mux55~0_combout\);

-- Location: LCCOMB_X58_Y35_N2
\SRL64_A|Mux32|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux43~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector27~0_combout\)) # (!\B[4]~input_o\ & ((\Selector43~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector27~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector43~0_combout\,
	combout => \SRL64_A|Mux32|Mux43~0_combout\);

-- Location: LCCOMB_X58_Y35_N16
\SRL64_A|Mux8|Mux63~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~22_combout\ = (\SLL64_A|Mux32|Mux31~6_combout\ & ((\B[2]~input_o\ & ((\Selector11~0_combout\))) # (!\B[2]~input_o\ & (\Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \SLL64_A|Mux32|Mux31~6_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector11~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~22_combout\);

-- Location: LCCOMB_X59_Y37_N18
\SRL64_A|Mux8|Mux63~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~23_combout\ = (\SRL64_A|Mux8|Mux63~22_combout\) # ((\B[2]~input_o\ & (\SRL64_A|Mux32|Mux43~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux43~0_combout\,
	datab => \SRL64_A|Mux8|Mux63~22_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64_A|Mux32|Mux47~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~23_combout\);

-- Location: LCCOMB_X59_Y40_N26
\SRL64_A|Mux4|Mux63~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~81_combout\ = (\SRL64_A|Mux8|Mux55~0_combout\) # ((\B[3]~input_o\ & \SRL64_A|Mux8|Mux63~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux55~0_combout\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~23_combout\,
	combout => \SRL64_A|Mux4|Mux63~81_combout\);

-- Location: LCCOMB_X59_Y40_N6
\SRL64_A|Mux4|Mux63~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~249_combout\ = (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux57~0_combout\) # ((\SRL64_A|Mux8|Mux63~19_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~19_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux57~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~249_combout\);

-- Location: LCCOMB_X59_Y40_N4
\SRL64_A|Mux4|Mux63~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~82_combout\ = (\SRL64_A|Mux4|Mux63~249_combout\) # ((\SRL64_A|Mux4|Mux63~81_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~81_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~249_combout\,
	combout => \SRL64_A|Mux4|Mux63~82_combout\);

-- Location: LCCOMB_X58_Y36_N26
\Selector506~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector506~0_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~82_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((\SRL64_A|Mux4|Mux63~263_combout\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~82_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~263_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector506~0_combout\);

-- Location: LCCOMB_X59_Y37_N14
\SRA64_A|Mux32|Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux47~1_combout\ = (\SRA64_A|Mux32|Mux47~0_combout\) # (\SRL64_A|Mux32|Mux47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64_A|Mux32|Mux47~0_combout\,
	datad => \SRL64_A|Mux32|Mux47~0_combout\,
	combout => \SRA64_A|Mux32|Mux47~1_combout\);

-- Location: LCCOMB_X58_Y35_N4
\SRA64_A|Mux32|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux43~0_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector0~0_combout\)) # (!\B[4]~input_o\ & ((\Selector11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector0~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector11~0_combout\,
	combout => \SRA64_A|Mux32|Mux43~0_combout\);

-- Location: LCCOMB_X59_Y37_N20
\SRA64_A|Mux32|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux43~1_combout\ = (\SRA64_A|Mux32|Mux43~0_combout\) # (\SRL64_A|Mux32|Mux43~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRA64_A|Mux32|Mux43~0_combout\,
	datad => \SRL64_A|Mux32|Mux43~0_combout\,
	combout => \SRA64_A|Mux32|Mux43~1_combout\);

-- Location: LCCOMB_X59_Y37_N16
\SRA64_A|Mux8|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux55~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64_A|Mux32|Mux43~1_combout\))) # (!\B[2]~input_o\ & (\SRA64_A|Mux32|Mux47~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64_A|Mux32|Mux47~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64_A|Mux32|Mux43~1_combout\,
	combout => \SRA64_A|Mux8|Mux55~0_combout\);

-- Location: LCCOMB_X59_Y40_N22
\SRA64_A|Mux8|Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux55~1_combout\ = (\SRL64_A|Mux8|Mux55~0_combout\) # (\SRA64_A|Mux8|Mux55~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux55~0_combout\,
	datac => \SRA64_A|Mux8|Mux55~0_combout\,
	combout => \SRA64_A|Mux8|Mux55~1_combout\);

-- Location: LCCOMB_X59_Y40_N8
\SRL64_A|Mux4|Mux63~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~83_combout\ = (\B[1]~input_o\ & (\SRA64_A|Mux8|Mux55~1_combout\)) # (!\B[1]~input_o\ & (((\SRA64_A|Mux8|Mux57~0_combout\) # (\SRL64_A|Mux8|Mux57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux55~1_combout\,
	datab => \SRA64_A|Mux8|Mux57~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux8|Mux57~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~83_combout\);

-- Location: LCCOMB_X58_Y36_N12
\Selector506~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector506~1_combout\ = (\Selector506~0_combout\ & (((\SRL64_A|Mux4|Mux63~83_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\Selector506~0_combout\ & (\SRL64_A|Mux4|Mux63~248_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector506~0_combout\,
	datab => \SRL64_A|Mux4|Mux63~248_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~83_combout\,
	combout => \Selector506~1_combout\);

-- Location: LCCOMB_X58_Y42_N8
\Selector506~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector506~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector506~1_combout\))) # (!\Selector481~0_combout\ & (\Selector90~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~0_combout\,
	datab => \Selector90~1_combout\,
	datac => \Selector506~1_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector506~2_combout\);

-- Location: LCCOMB_X50_Y37_N0
\SLL64_A|Mux4|Mux31~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~15_combout\ = (\B[2]~input_o\ & ((\Selector62~0_combout\))) # (!\B[2]~input_o\ & (\Selector58~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector58~0_combout\,
	datac => \Selector62~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~15_combout\);

-- Location: LCCOMB_X59_Y42_N6
\SLL64_A|Mux4|Mux31~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~16_combout\ = (!\SLL64_A|Mux4|Mux31~13_combout\ & ((\B[1]~input_o\ & (\Selector60~0_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux4|Mux31~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector60~0_combout\,
	datab => \SLL64_A|Mux4|Mux31~15_combout\,
	datac => \SLL64_A|Mux4|Mux31~13_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~16_combout\);

-- Location: IOIBUF_X58_Y73_N8
\C[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(37),
	o => \C[37]~input_o\);

-- Location: LCCOMB_X57_Y42_N10
\Selector154~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector154~0_combout\ = (\ShiftFN[0]~input_o\ & (\SLL64_A|Mux8|Mux28~3_combout\ & ((\Selector157~4_combout\)))) # (!\ShiftFN[0]~input_o\ & ((\C[37]~input_o\) # ((\SLL64_A|Mux8|Mux28~3_combout\ & \Selector157~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SLL64_A|Mux8|Mux28~3_combout\,
	datac => \C[37]~input_o\,
	datad => \Selector157~4_combout\,
	combout => \Selector154~0_combout\);

-- Location: LCCOMB_X55_Y36_N18
\SLL64_A|Mux32|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux26~2_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector42~0_combout\))) # (!\B[4]~input_o\ & (\Selector26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Selector26~0_combout\,
	datac => \Selector42~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux26~2_combout\);

-- Location: LCCOMB_X55_Y36_N14
\SLL64_A|Mux32|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux26~3_combout\ = (\SLL64_A|Mux32|Mux26~2_combout\) # ((\B[5]~input_o\ & (!\B[4]~input_o\ & \Selector58~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Selector58~0_combout\,
	datad => \SLL64_A|Mux32|Mux26~2_combout\,
	combout => \SLL64_A|Mux32|Mux26~3_combout\);

-- Location: LCCOMB_X56_Y39_N30
\SLL64_A|Mux8|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux26~1_combout\ = (\SLL64_A|Mux8|Mux31~2_combout\ & ((\B[2]~input_o\ & ((\SLL64_A|Mux32|Mux31~10_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux31~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~8_combout\,
	datab => \SLL64_A|Mux32|Mux31~10_combout\,
	datac => \SLL64_A|Mux8|Mux31~2_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64_A|Mux8|Mux26~1_combout\);

-- Location: LCCOMB_X56_Y36_N16
\SLL64_A|Mux8|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux26~0_combout\ = (\SLL64_A|Mux8|Mux27~0_combout\ & ((\SLL64_A|Mux32|Mux30~2_combout\) # ((\SLL64_A|Mux32|Mux31~6_combout\ & \Selector62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux27~0_combout\,
	datab => \SLL64_A|Mux32|Mux30~2_combout\,
	datac => \SLL64_A|Mux32|Mux31~6_combout\,
	datad => \Selector62~0_combout\,
	combout => \SLL64_A|Mux8|Mux26~0_combout\);

-- Location: LCCOMB_X56_Y39_N16
\SLL64_A|Mux8|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux26~2_combout\ = (\SLL64_A|Mux8|Mux26~1_combout\) # ((\SLL64_A|Mux8|Mux26~0_combout\) # ((\SLL64_A|Mux32|Mux26~3_combout\ & \SLL64_A|Mux8|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux26~3_combout\,
	datab => \SLL64_A|Mux8|Mux31~4_combout\,
	datac => \SLL64_A|Mux8|Mux26~1_combout\,
	datad => \SLL64_A|Mux8|Mux26~0_combout\,
	combout => \SLL64_A|Mux8|Mux26~2_combout\);

-- Location: LCCOMB_X57_Y42_N28
\Selector154~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector154~1_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & (\SLL64_A|Mux8|Mux29~3_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux27~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64_A|Mux8|Mux29~3_combout\,
	datac => \Selector126~1_combout\,
	datad => \SLL64_A|Mux8|Mux27~3_combout\,
	combout => \Selector154~1_combout\);

-- Location: LCCOMB_X57_Y42_N22
\Selector154~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector154~2_combout\ = (\Selector154~0_combout\) # ((\Selector154~1_combout\) # ((\Selector191~1_combout\ & \SLL64_A|Mux8|Mux26~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector154~0_combout\,
	datab => \Selector191~1_combout\,
	datac => \SLL64_A|Mux8|Mux26~2_combout\,
	datad => \Selector154~1_combout\,
	combout => \Selector154~2_combout\);

-- Location: IOIBUF_X60_Y73_N22
\C[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(5),
	o => \C[5]~input_o\);

-- Location: LCCOMB_X59_Y42_N8
\Selector506~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector506~3_combout\ = (\Selector481~2_combout\ & ((\Selector481~1_combout\) # ((\C[5]~input_o\)))) # (!\Selector481~2_combout\ & (!\Selector481~1_combout\ & (\Selector154~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \Selector481~1_combout\,
	datac => \Selector154~2_combout\,
	datad => \C[5]~input_o\,
	combout => \Selector506~3_combout\);

-- Location: LCCOMB_X59_Y42_N18
\Selector506~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector506~4_combout\ = (\Selector481~1_combout\ & ((\Selector506~3_combout\ & ((\SLL64_A|Mux4|Mux31~14_combout\))) # (!\Selector506~3_combout\ & (\SLL64_A|Mux4|Mux31~16_combout\)))) # (!\Selector481~1_combout\ & (((\Selector506~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~16_combout\,
	datab => \Selector481~1_combout\,
	datac => \Selector506~3_combout\,
	datad => \SLL64_A|Mux4|Mux31~14_combout\,
	combout => \Selector506~4_combout\);

-- Location: LCCOMB_X58_Y42_N26
\Selector506~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector506~5_combout\ = (\Selector506~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector506~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \Selector506~2_combout\,
	datad => \Selector506~4_combout\,
	combout => \Selector506~5_combout\);

-- Location: LCCOMB_X56_Y38_N0
\SLL64_A|Mux4|Mux31~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~17_combout\ = (!\B[4]~input_o\ & (!\B[3]~input_o\ & !\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~17_combout\);

-- Location: LCCOMB_X50_Y42_N20
\SLL64_A|Mux4|Mux31~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~18_combout\ = (\B[2]~input_o\ & (\Selector61~0_combout\)) # (!\B[2]~input_o\ & ((\Selector57~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector61~0_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector57~0_combout\,
	combout => \SLL64_A|Mux4|Mux31~18_combout\);

-- Location: LCCOMB_X50_Y40_N8
\SLL64_A|Mux4|Mux31~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~19_combout\ = (\SLL64_A|Mux4|Mux31~17_combout\ & ((\B[1]~input_o\ & (\SLL64_A|Mux4|Mux31~12_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux4|Mux31~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~12_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64_A|Mux4|Mux31~17_combout\,
	datad => \SLL64_A|Mux4|Mux31~18_combout\,
	combout => \SLL64_A|Mux4|Mux31~19_combout\);

-- Location: IOIBUF_X0_Y36_N15
\C[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(38),
	o => \C[38]~input_o\);

-- Location: LCCOMB_X52_Y42_N16
\SLL64_A|Mux32|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux25~2_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector41~0_combout\))) # (!\B[4]~input_o\ & (\Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Selector41~0_combout\,
	combout => \SLL64_A|Mux32|Mux25~2_combout\);

-- Location: LCCOMB_X52_Y42_N14
\SLL64_A|Mux32|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux25~3_combout\ = (\SLL64_A|Mux32|Mux25~2_combout\) # ((\Selector57~0_combout\ & (\B[5]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector57~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \SLL64_A|Mux32|Mux25~2_combout\,
	combout => \SLL64_A|Mux32|Mux25~3_combout\);

-- Location: LCCOMB_X55_Y42_N16
\SLL64_A|Mux8|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux25~0_combout\ = (\SLL64_A|Mux8|Mux27~0_combout\ & ((\SLL64_A|Mux32|Mux29~2_combout\) # ((\Selector61~0_combout\ & \SLL64_A|Mux32|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector61~0_combout\,
	datab => \SLL64_A|Mux8|Mux27~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~6_combout\,
	datad => \SLL64_A|Mux32|Mux29~2_combout\,
	combout => \SLL64_A|Mux8|Mux25~0_combout\);

-- Location: LCCOMB_X55_Y42_N10
\SLL64_A|Mux8|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux25~1_combout\ = (\SLL64_A|Mux8|Mux31~2_combout\ & ((\B[2]~input_o\ & (\SLL64_A|Mux32|Mux31~16_combout\)) # (!\B[2]~input_o\ & ((\SLL64_A|Mux32|Mux31~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~16_combout\,
	datab => \SLL64_A|Mux8|Mux31~2_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~15_combout\,
	combout => \SLL64_A|Mux8|Mux25~1_combout\);

-- Location: LCCOMB_X55_Y42_N12
\SLL64_A|Mux8|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux25~2_combout\ = (\SLL64_A|Mux8|Mux25~0_combout\) # ((\SLL64_A|Mux8|Mux25~1_combout\) # ((\SLL64_A|Mux32|Mux25~3_combout\ & \SLL64_A|Mux8|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux25~3_combout\,
	datab => \SLL64_A|Mux8|Mux25~0_combout\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \SLL64_A|Mux8|Mux25~1_combout\,
	combout => \SLL64_A|Mux8|Mux25~2_combout\);

-- Location: LCCOMB_X56_Y42_N26
\Selector153~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector153~1_combout\ = (\Selector191~1_combout\ & ((\SLL64_A|Mux8|Mux25~2_combout\) # ((!\ShiftFN[0]~input_o\ & \C[38]~input_o\)))) # (!\Selector191~1_combout\ & (!\ShiftFN[0]~input_o\ & (\C[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector191~1_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \C[38]~input_o\,
	datad => \SLL64_A|Mux8|Mux25~2_combout\,
	combout => \Selector153~1_combout\);

-- Location: LCCOMB_X56_Y42_N24
\Selector153~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector153~0_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & (\SLL64_A|Mux8|Mux28~3_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux26~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux28~3_combout\,
	datab => \Selector126~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux26~2_combout\,
	combout => \Selector153~0_combout\);

-- Location: LCCOMB_X56_Y42_N28
\Selector153~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector153~2_combout\ = (\Selector153~1_combout\) # ((\Selector153~0_combout\) # ((\Selector157~4_combout\ & \SLL64_A|Mux8|Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector153~1_combout\,
	datab => \Selector153~0_combout\,
	datac => \Selector157~4_combout\,
	datad => \SLL64_A|Mux8|Mux27~3_combout\,
	combout => \Selector153~2_combout\);

-- Location: LCCOMB_X59_Y42_N28
\Selector505~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector505~3_combout\ = (\Selector481~2_combout\ & (\Selector481~1_combout\)) # (!\Selector481~2_combout\ & ((\Selector481~1_combout\ & (\SLL64_A|Mux4|Mux31~19_combout\)) # (!\Selector481~1_combout\ & ((\Selector153~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \Selector481~1_combout\,
	datac => \SLL64_A|Mux4|Mux31~19_combout\,
	datad => \Selector153~2_combout\,
	combout => \Selector505~3_combout\);

-- Location: IOIBUF_X83_Y73_N8
\C[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(6),
	o => \C[6]~input_o\);

-- Location: LCCOMB_X59_Y42_N14
\Selector505~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector505~4_combout\ = (\Selector481~2_combout\ & ((\Selector505~3_combout\ & ((\SLL64_A|Mux4|Mux31~16_combout\))) # (!\Selector505~3_combout\ & (\C[6]~input_o\)))) # (!\Selector481~2_combout\ & (\Selector505~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \Selector505~3_combout\,
	datac => \C[6]~input_o\,
	datad => \SLL64_A|Mux4|Mux31~16_combout\,
	combout => \Selector505~4_combout\);

-- Location: LCCOMB_X52_Y39_N12
\Selector89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~85_combout\) # ((\ShiftFN[0]~input_o\ & \SRL64_A|Mux4|Mux63~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~85_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~84_combout\,
	combout => \Selector89~0_combout\);

-- Location: LCCOMB_X52_Y35_N8
\SRL64_A|Mux8|Mux63~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~27_combout\ = (\B[2]~input_o\ & ((\Selector10~0_combout\))) # (!\B[2]~input_o\ & (\Selector14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~0_combout\,
	datab => \Selector10~0_combout\,
	datac => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~27_combout\);

-- Location: LCCOMB_X52_Y35_N10
\SRL64_A|Mux8|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux22~4_combout\ = (\B[3]~input_o\ & (((\SRL64_A|Mux8|Mux63~27_combout\)))) # (!\B[3]~input_o\ & (\SLL64_A|Mux32|Mux31~23_combout\ & (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~23_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~27_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux8|Mux22~4_combout\);

-- Location: LCCOMB_X52_Y35_N12
\SRL64_A|Mux8|Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux22~5_combout\ = (\SRL64_A|Mux8|Mux22~4_combout\) # ((!\B[3]~input_o\ & (\B[2]~input_o\ & \SLL64_A|Mux32|Mux31~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~22_combout\,
	datad => \SRL64_A|Mux8|Mux22~4_combout\,
	combout => \SRL64_A|Mux8|Mux22~5_combout\);

-- Location: LCCOMB_X50_Y39_N12
\SRA64_A|Mux8|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux24~1_combout\ = (\B[5]~input_o\) # ((\B[4]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[5]~input_o\,
	combout => \SRA64_A|Mux8|Mux24~1_combout\);

-- Location: LCCOMB_X49_Y39_N24
\SRL64_A|Mux4|Mux63~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~89_combout\ = (\SRA64_A|Mux8|Mux24~1_combout\ & (((\Selector0~0_combout\)))) # (!\SRA64_A|Mux8|Mux24~1_combout\ & (\SRL64_A|Mux8|Mux22~5_combout\ & ((\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux22~5_combout\,
	datab => \Selector0~0_combout\,
	datac => \SRA64_A|Mux8|Mux24~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~89_combout\);

-- Location: LCCOMB_X49_Y39_N2
\SRL64_A|Mux4|Mux63~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~90_combout\ = (\SRL64_A|Mux4|Mux63~89_combout\) # ((\SRA64_A|Mux8|Mux24~0_combout\ & (!\SRA64_A|Mux8|Mux24~1_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~89_combout\,
	datab => \SRA64_A|Mux8|Mux24~0_combout\,
	datac => \SRA64_A|Mux8|Mux24~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~90_combout\);

-- Location: LCCOMB_X52_Y39_N26
\SRL64_A|Mux4|Mux63~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~88_combout\ = (!\SRL64_A|Mux4|Mux63~78_combout\ & ((\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux22~5_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux8|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64_A|Mux8|Mux24~1_combout\,
	datac => \SRL64_A|Mux8|Mux22~5_combout\,
	datad => \SRL64_A|Mux4|Mux63~78_combout\,
	combout => \SRL64_A|Mux4|Mux63~88_combout\);

-- Location: LCCOMB_X49_Y39_N28
\Selector89~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector89~1_combout\ = (\Selector89~0_combout\ & ((\SRL64_A|Mux4|Mux63~90_combout\) # ((!\B[0]~input_o\)))) # (!\Selector89~0_combout\ & (((\B[0]~input_o\ & \SRL64_A|Mux4|Mux63~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector89~0_combout\,
	datab => \SRL64_A|Mux4|Mux63~90_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~88_combout\,
	combout => \Selector89~1_combout\);

-- Location: LCCOMB_X57_Y36_N12
\SRL64_A|Mux8|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux54~0_combout\ = (\SRL64_A|Mux32|Mux50~1_combout\ & ((\SLL64_A|Mux8|Mux27~0_combout\) # ((\SLL64_A|Mux8|Mux31~4_combout\ & \SRL64_A|Mux32|Mux54~1_combout\)))) # (!\SRL64_A|Mux32|Mux50~1_combout\ & (((\SLL64_A|Mux8|Mux31~4_combout\ & 
-- \SRL64_A|Mux32|Mux54~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux50~1_combout\,
	datab => \SLL64_A|Mux8|Mux27~0_combout\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \SRL64_A|Mux32|Mux54~1_combout\,
	combout => \SRL64_A|Mux8|Mux54~0_combout\);

-- Location: LCCOMB_X55_Y36_N12
\SRL64_A|Mux32|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux42~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector26~0_combout\)) # (!\B[4]~input_o\ & ((\Selector42~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Selector26~0_combout\,
	datac => \Selector42~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux42~0_combout\);

-- Location: LCCOMB_X55_Y37_N16
\SRA64_A|Mux32|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux42~0_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector0~0_combout\))) # (!\B[4]~input_o\ & (\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SRA64_A|Mux32|Mux42~0_combout\);

-- Location: LCCOMB_X55_Y37_N2
\SRA64_A|Mux32|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux42~1_combout\ = (\SRL64_A|Mux32|Mux42~0_combout\) # (\SRA64_A|Mux32|Mux42~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux42~0_combout\,
	datad => \SRA64_A|Mux32|Mux42~0_combout\,
	combout => \SRA64_A|Mux32|Mux42~1_combout\);

-- Location: LCCOMB_X57_Y36_N22
\SRA64_A|Mux8|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux54~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64_A|Mux32|Mux42~1_combout\))) # (!\B[2]~input_o\ & (\SRA64_A|Mux32|Mux46~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux32|Mux46~1_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64_A|Mux32|Mux42~1_combout\,
	combout => \SRA64_A|Mux8|Mux54~0_combout\);

-- Location: LCCOMB_X58_Y36_N16
\SRA64_A|Mux8|Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux56~1_combout\ = (\SRL64_A|Mux8|Mux56~0_combout\) # (\SRA64_A|Mux8|Mux56~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux56~0_combout\,
	datac => \SRA64_A|Mux8|Mux56~0_combout\,
	combout => \SRA64_A|Mux8|Mux56~1_combout\);

-- Location: LCCOMB_X58_Y36_N10
\SRL64_A|Mux4|Mux63~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~251_combout\ = (\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux54~0_combout\) # ((\SRA64_A|Mux8|Mux54~0_combout\)))) # (!\B[1]~input_o\ & (((\SRA64_A|Mux8|Mux56~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux54~0_combout\,
	datab => \SRA64_A|Mux8|Mux54~0_combout\,
	datac => \SRA64_A|Mux8|Mux56~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~251_combout\);

-- Location: LCCOMB_X56_Y36_N26
\SRL64_A|Mux8|Mux63~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~25_combout\ = (\SLL64_A|Mux32|Mux31~6_combout\ & ((\B[2]~input_o\ & ((\Selector10~0_combout\))) # (!\B[2]~input_o\ & (\Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~0_combout\,
	datab => \SLL64_A|Mux32|Mux31~6_combout\,
	datac => \Selector10~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~25_combout\);

-- Location: LCCOMB_X56_Y36_N28
\SRL64_A|Mux8|Mux63~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~26_combout\ = (\SRL64_A|Mux8|Mux63~25_combout\) # ((\B[2]~input_o\ & (\SRL64_A|Mux32|Mux42~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux42~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~25_combout\,
	datad => \SRL64_A|Mux32|Mux46~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~26_combout\);

-- Location: LCCOMB_X58_Y36_N22
\SRL64_A|Mux4|Mux63~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~86_combout\ = (\SRL64_A|Mux8|Mux54~0_combout\) # ((\SRL64_A|Mux8|Mux63~26_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~26_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux54~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~86_combout\);

-- Location: LCCOMB_X58_Y36_N24
\SRL64_A|Mux4|Mux63~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~250_combout\ = (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux56~0_combout\) # ((\B[3]~input_o\ & \SRL64_A|Mux8|Mux63~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux56~0_combout\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~20_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~250_combout\);

-- Location: LCCOMB_X58_Y36_N0
\SRL64_A|Mux4|Mux63~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~87_combout\ = (\SRL64_A|Mux4|Mux63~250_combout\) # ((\B[1]~input_o\ & \SRL64_A|Mux4|Mux63~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~86_combout\,
	datad => \SRL64_A|Mux4|Mux63~250_combout\,
	combout => \SRL64_A|Mux4|Mux63~87_combout\);

-- Location: LCCOMB_X58_Y36_N2
\Selector505~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector505~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRL64_A|Mux4|Mux63~87_combout\)))) # (!\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~82_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~82_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~87_combout\,
	combout => \Selector505~0_combout\);

-- Location: LCCOMB_X58_Y36_N28
\Selector505~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector505~1_combout\ = (\Selector505~0_combout\ & ((\SRL64_A|Mux4|Mux63~251_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\Selector505~0_combout\ & (((\ShiftFN[0]~input_o\ & \SRL64_A|Mux4|Mux63~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~251_combout\,
	datab => \Selector505~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~83_combout\,
	combout => \Selector505~1_combout\);

-- Location: LCCOMB_X58_Y42_N4
\Selector505~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector505~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector505~1_combout\))) # (!\Selector481~0_combout\ & (\Selector89~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~0_combout\,
	datab => \Selector89~1_combout\,
	datac => \Selector505~1_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector505~2_combout\);

-- Location: LCCOMB_X58_Y42_N22
\Selector505~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector505~5_combout\ = (\Selector505~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector505~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector505~4_combout\,
	datac => \Selector505~2_combout\,
	combout => \Selector505~5_combout\);

-- Location: LCCOMB_X49_Y39_N30
\SRL64_A|Mux4|Mux63~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~93_combout\ = (\Selector0~0_combout\ & ((\B[5]~input_o\) # ((\B[3]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Selector0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~93_combout\);

-- Location: LCCOMB_X49_Y39_N8
\Selector88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (\ShiftFN[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~90_combout\) # ((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((!\B[0]~input_o\ & \SRL64_A|Mux4|Mux63~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~90_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~88_combout\,
	combout => \Selector88~0_combout\);

-- Location: LCCOMB_X54_Y42_N26
\SRL64_A|Mux8|Mux63~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~30_combout\ = (\B[2]~input_o\ & (\Selector9~0_combout\)) # (!\B[2]~input_o\ & ((\Selector13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector9~0_combout\,
	datac => \Selector13~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~30_combout\);

-- Location: LCCOMB_X54_Y42_N16
\SRL64_A|Mux8|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux21~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SLL64_A|Mux32|Mux31~24_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux31~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~25_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~24_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux21~0_combout\);

-- Location: LCCOMB_X54_Y42_N20
\SRL64_A|Mux8|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux21~1_combout\ = (\SRL64_A|Mux8|Mux21~0_combout\) # ((\B[3]~input_o\ & \SRL64_A|Mux8|Mux63~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~30_combout\,
	datad => \SRL64_A|Mux8|Mux21~0_combout\,
	combout => \SRL64_A|Mux8|Mux21~1_combout\);

-- Location: LCCOMB_X49_Y39_N10
\SRL64_A|Mux4|Mux63~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~94_combout\ = (!\SRA64_A|Mux8|Mux24~1_combout\ & ((\B[1]~input_o\ & (\SRL64_A|Mux8|Mux21~1_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux23~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux21~1_combout\,
	datab => \SRL64_A|Mux8|Mux23~1_combout\,
	datac => \SRA64_A|Mux8|Mux24~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~94_combout\);

-- Location: LCCOMB_X49_Y39_N4
\Selector88~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~1_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~94_combout\) # ((\SRL64_A|Mux4|Mux63~93_combout\ & \Selector88~0_combout\)))) # (!\B[0]~input_o\ & (((\Selector88~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~93_combout\,
	datab => \Selector88~0_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~94_combout\,
	combout => \Selector88~1_combout\);

-- Location: LCCOMB_X55_Y42_N6
\SRL64_A|Mux8|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux53~0_combout\ = (\SRL64_A|Mux32|Mux53~1_combout\ & ((\SLL64_A|Mux8|Mux31~4_combout\) # ((\SLL64_A|Mux8|Mux27~0_combout\ & \SRL64_A|Mux32|Mux49~1_combout\)))) # (!\SRL64_A|Mux32|Mux53~1_combout\ & (\SLL64_A|Mux8|Mux27~0_combout\ & 
-- ((\SRL64_A|Mux32|Mux49~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux53~1_combout\,
	datab => \SLL64_A|Mux8|Mux27~0_combout\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \SRL64_A|Mux32|Mux49~1_combout\,
	combout => \SRL64_A|Mux8|Mux53~0_combout\);

-- Location: LCCOMB_X54_Y42_N12
\SRL64_A|Mux8|Mux63~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~28_combout\ = (\SLL64_A|Mux32|Mux31~6_combout\ & ((\B[2]~input_o\ & (\Selector9~0_combout\)) # (!\B[2]~input_o\ & ((\Selector13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~6_combout\,
	datab => \Selector9~0_combout\,
	datac => \Selector13~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~28_combout\);

-- Location: LCCOMB_X52_Y42_N18
\SRL64_A|Mux32|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux41~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector25~0_combout\)) # (!\B[4]~input_o\ & ((\Selector41~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Selector41~0_combout\,
	combout => \SRL64_A|Mux32|Mux41~0_combout\);

-- Location: LCCOMB_X54_Y42_N14
\SRL64_A|Mux8|Mux63~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~29_combout\ = (\SRL64_A|Mux8|Mux63~28_combout\) # ((\B[2]~input_o\ & (\SRL64_A|Mux32|Mux41~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~28_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL64_A|Mux32|Mux41~0_combout\,
	datad => \SRL64_A|Mux32|Mux45~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~29_combout\);

-- Location: LCCOMB_X59_Y40_N10
\SRL64_A|Mux4|Mux63~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~91_combout\ = (\SRL64_A|Mux8|Mux53~0_combout\) # ((\SRL64_A|Mux8|Mux63~29_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux53~0_combout\,
	datab => \SRL64_A|Mux8|Mux63~29_combout\,
	datac => \B[3]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~91_combout\);

-- Location: LCCOMB_X59_Y40_N28
\SRL64_A|Mux4|Mux63~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~92_combout\ = (\B[1]~input_o\ & ((\SRL64_A|Mux4|Mux63~91_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux4|Mux63~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~81_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~91_combout\,
	combout => \SRL64_A|Mux4|Mux63~92_combout\);

-- Location: LCCOMB_X58_Y36_N30
\Selector504~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector504~0_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~92_combout\))) # (!\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~87_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~92_combout\,
	combout => \Selector504~0_combout\);

-- Location: LCCOMB_X52_Y41_N2
\SRA64_A|Mux32|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux41~0_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector0~0_combout\)) # (!\B[4]~input_o\ & ((\Selector9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \B[5]~input_o\,
	datac => \Selector9~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64_A|Mux32|Mux41~0_combout\);

-- Location: LCCOMB_X52_Y41_N20
\SRA64_A|Mux32|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux41~1_combout\ = (\SRL64_A|Mux32|Mux41~0_combout\) # (\SRA64_A|Mux32|Mux41~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64_A|Mux32|Mux41~0_combout\,
	datad => \SRA64_A|Mux32|Mux41~0_combout\,
	combout => \SRA64_A|Mux32|Mux41~1_combout\);

-- Location: LCCOMB_X55_Y41_N0
\SRA64_A|Mux8|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux53~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64_A|Mux32|Mux41~1_combout\))) # (!\B[2]~input_o\ & (\SRA64_A|Mux32|Mux45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux32|Mux45~1_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA64_A|Mux32|Mux41~1_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64_A|Mux8|Mux53~0_combout\);

-- Location: LCCOMB_X59_Y40_N24
\SRL64_A|Mux4|Mux63~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~252_combout\ = (\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux53~0_combout\) # ((\SRA64_A|Mux8|Mux53~0_combout\)))) # (!\B[1]~input_o\ & (((\SRA64_A|Mux8|Mux55~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux53~0_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64_A|Mux8|Mux55~1_combout\,
	datad => \SRA64_A|Mux8|Mux53~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~252_combout\);

-- Location: LCCOMB_X58_Y36_N8
\Selector504~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector504~1_combout\ = (\Selector504~0_combout\ & ((\SRL64_A|Mux4|Mux63~252_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\Selector504~0_combout\ & (((\ShiftFN[0]~input_o\ & \SRL64_A|Mux4|Mux63~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector504~0_combout\,
	datab => \SRL64_A|Mux4|Mux63~252_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~251_combout\,
	combout => \Selector504~1_combout\);

-- Location: LCCOMB_X50_Y43_N8
\Selector504~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector504~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector504~1_combout\))) # (!\Selector481~0_combout\ & (\Selector88~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector88~1_combout\,
	datab => \Selector504~1_combout\,
	datac => \Selector481~0_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector504~2_combout\);

-- Location: LCCOMB_X50_Y37_N2
\SLL64_A|Mux4|Mux31~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~20_combout\ = (\B[2]~input_o\ & (\Selector60~0_combout\)) # (!\B[2]~input_o\ & ((\Selector56~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Selector60~0_combout\,
	datac => \Selector56~0_combout\,
	combout => \SLL64_A|Mux4|Mux31~20_combout\);

-- Location: LCCOMB_X50_Y40_N26
\SLL64_A|Mux4|Mux31~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~21_combout\ = (\SLL64_A|Mux4|Mux31~17_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux4|Mux31~15_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux4|Mux31~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~17_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64_A|Mux4|Mux31~20_combout\,
	datad => \SLL64_A|Mux4|Mux31~15_combout\,
	combout => \SLL64_A|Mux4|Mux31~21_combout\);

-- Location: LCCOMB_X56_Y42_N6
\Selector152~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector152~0_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux27~3_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux25~2_combout\,
	datab => \Selector126~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux27~3_combout\,
	combout => \Selector152~0_combout\);

-- Location: LCCOMB_X50_Y38_N24
\SLL64_A|Mux32|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux24~2_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector40~0_combout\))) # (!\B[4]~input_o\ & (\Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector24~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector40~0_combout\,
	combout => \SLL64_A|Mux32|Mux24~2_combout\);

-- Location: LCCOMB_X50_Y38_N18
\SLL64_A|Mux32|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux24~3_combout\ = (\SLL64_A|Mux32|Mux24~2_combout\) # ((!\B[4]~input_o\ & (\B[5]~input_o\ & \Selector56~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SLL64_A|Mux32|Mux24~2_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector56~0_combout\,
	combout => \SLL64_A|Mux32|Mux24~3_combout\);

-- Location: LCCOMB_X53_Y38_N28
\SLL64_A|Mux8|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux24~1_combout\ = (\SLL64_A|Mux8|Mux31~2_combout\ & ((\B[2]~input_o\ & ((\SLL64_A|Mux32|Mux31~13_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~12_combout\,
	datab => \B[2]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~13_combout\,
	datad => \SLL64_A|Mux8|Mux31~2_combout\,
	combout => \SLL64_A|Mux8|Mux24~1_combout\);

-- Location: LCCOMB_X53_Y38_N2
\SLL64_A|Mux8|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux24~0_combout\ = (\SLL64_A|Mux8|Mux27~0_combout\ & ((\SLL64_A|Mux32|Mux28~2_combout\) # ((\Selector60~0_combout\ & \SLL64_A|Mux32|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector60~0_combout\,
	datab => \SLL64_A|Mux8|Mux27~0_combout\,
	datac => \SLL64_A|Mux32|Mux28~2_combout\,
	datad => \SLL64_A|Mux32|Mux31~6_combout\,
	combout => \SLL64_A|Mux8|Mux24~0_combout\);

-- Location: LCCOMB_X52_Y38_N24
\SLL64_A|Mux8|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux24~2_combout\ = (\SLL64_A|Mux8|Mux24~1_combout\) # ((\SLL64_A|Mux8|Mux24~0_combout\) # ((\SLL64_A|Mux32|Mux24~3_combout\ & \SLL64_A|Mux8|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux24~3_combout\,
	datab => \SLL64_A|Mux8|Mux24~1_combout\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \SLL64_A|Mux8|Mux24~0_combout\,
	combout => \SLL64_A|Mux8|Mux24~2_combout\);

-- Location: IOIBUF_X74_Y0_N15
\C[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(39),
	o => \C[39]~input_o\);

-- Location: LCCOMB_X56_Y42_N16
\Selector152~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector152~1_combout\ = (\SLL64_A|Mux8|Mux24~2_combout\ & ((\Selector191~1_combout\) # ((!\ShiftFN[0]~input_o\ & \C[39]~input_o\)))) # (!\SLL64_A|Mux8|Mux24~2_combout\ & (!\ShiftFN[0]~input_o\ & ((\C[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux24~2_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Selector191~1_combout\,
	datad => \C[39]~input_o\,
	combout => \Selector152~1_combout\);

-- Location: LCCOMB_X56_Y42_N2
\Selector152~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector152~2_combout\ = (\Selector152~0_combout\) # ((\Selector152~1_combout\) # ((\SLL64_A|Mux8|Mux26~2_combout\ & \Selector157~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector152~0_combout\,
	datab => \SLL64_A|Mux8|Mux26~2_combout\,
	datac => \Selector157~4_combout\,
	datad => \Selector152~1_combout\,
	combout => \Selector152~2_combout\);

-- Location: IOIBUF_X0_Y36_N22
\C[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(7),
	o => \C[7]~input_o\);

-- Location: LCCOMB_X50_Y40_N12
\Selector504~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector504~3_combout\ = (\Selector481~1_combout\ & (\Selector481~2_combout\)) # (!\Selector481~1_combout\ & ((\Selector481~2_combout\ & ((\C[7]~input_o\))) # (!\Selector481~2_combout\ & (\Selector152~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~1_combout\,
	datab => \Selector481~2_combout\,
	datac => \Selector152~2_combout\,
	datad => \C[7]~input_o\,
	combout => \Selector504~3_combout\);

-- Location: LCCOMB_X50_Y40_N22
\Selector504~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector504~4_combout\ = (\Selector481~1_combout\ & ((\Selector504~3_combout\ & (\SLL64_A|Mux4|Mux31~19_combout\)) # (!\Selector504~3_combout\ & ((\SLL64_A|Mux4|Mux31~21_combout\))))) # (!\Selector481~1_combout\ & (((\Selector504~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~1_combout\,
	datab => \SLL64_A|Mux4|Mux31~19_combout\,
	datac => \SLL64_A|Mux4|Mux31~21_combout\,
	datad => \Selector504~3_combout\,
	combout => \Selector504~4_combout\);

-- Location: LCCOMB_X50_Y43_N2
\Selector504~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector504~5_combout\ = (\Selector504~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector504~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector504~2_combout\,
	datad => \Selector504~4_combout\,
	combout => \Selector504~5_combout\);

-- Location: IOIBUF_X49_Y73_N22
\C[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(8),
	o => \C[8]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\C[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(40),
	o => \C[40]~input_o\);

-- Location: LCCOMB_X58_Y38_N6
\SLL64_A|Mux32|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux23~2_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector39~0_combout\))) # (!\B[4]~input_o\ & (\Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Selector39~0_combout\,
	combout => \SLL64_A|Mux32|Mux23~2_combout\);

-- Location: LCCOMB_X58_Y38_N30
\SLL64_A|Mux32|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux23~3_combout\ = (\SLL64_A|Mux32|Mux23~2_combout\) # ((\Selector55~0_combout\ & (\B[5]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector55~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \SLL64_A|Mux32|Mux23~2_combout\,
	combout => \SLL64_A|Mux32|Mux23~3_combout\);

-- Location: LCCOMB_X57_Y38_N26
\SLL64_A|Mux8|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux23~2_combout\ = (\SLL64_A|Mux8|Mux35~0_combout\ & ((\SLL64_A|Mux32|Mux31~36_combout\) # ((\SLL64_A|Mux8|Mux31~4_combout\ & \SLL64_A|Mux32|Mux23~3_combout\)))) # (!\SLL64_A|Mux8|Mux35~0_combout\ & (((\SLL64_A|Mux8|Mux31~4_combout\ & 
-- \SLL64_A|Mux32|Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux35~0_combout\,
	datab => \SLL64_A|Mux32|Mux31~36_combout\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \SLL64_A|Mux32|Mux23~3_combout\,
	combout => \SLL64_A|Mux8|Mux23~2_combout\);

-- Location: LCCOMB_X57_Y38_N6
\SLL64_A|Mux8|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux23~4_combout\ = (\B[2]~input_o\ & (!\B[5]~input_o\ & (\B[3]~input_o\ & \SLL64_A|Mux32|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~4_combout\,
	combout => \SLL64_A|Mux8|Mux23~4_combout\);

-- Location: LCCOMB_X57_Y38_N4
\SLL64_A|Mux8|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux23~3_combout\ = (\SLL64_A|Mux8|Mux23~2_combout\) # ((\SLL64_A|Mux8|Mux23~4_combout\) # ((\SLL64_A|Mux8|Mux27~0_combout\ & \SLL64_A|Mux32|Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux27~0_combout\,
	datab => \SLL64_A|Mux32|Mux27~3_combout\,
	datac => \SLL64_A|Mux8|Mux23~2_combout\,
	datad => \SLL64_A|Mux8|Mux23~4_combout\,
	combout => \SLL64_A|Mux8|Mux23~3_combout\);

-- Location: LCCOMB_X56_Y42_N22
\Selector151~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector151~1_combout\ = (\C[40]~input_o\ & (((\Selector191~1_combout\ & \SLL64_A|Mux8|Mux23~3_combout\)) # (!\ShiftFN[0]~input_o\))) # (!\C[40]~input_o\ & (((\Selector191~1_combout\ & \SLL64_A|Mux8|Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[40]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Selector191~1_combout\,
	datad => \SLL64_A|Mux8|Mux23~3_combout\,
	combout => \Selector151~1_combout\);

-- Location: LCCOMB_X56_Y42_N12
\Selector151~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector151~0_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux26~2_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux24~2_combout\,
	datab => \Selector126~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux26~2_combout\,
	combout => \Selector151~0_combout\);

-- Location: LCCOMB_X56_Y42_N0
\Selector151~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector151~2_combout\ = (\Selector151~1_combout\) # ((\Selector151~0_combout\) # ((\SLL64_A|Mux8|Mux25~2_combout\ & \Selector157~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux25~2_combout\,
	datab => \Selector157~4_combout\,
	datac => \Selector151~1_combout\,
	datad => \Selector151~0_combout\,
	combout => \Selector151~2_combout\);

-- Location: LCCOMB_X50_Y39_N10
\SLL64_A|Mux4|Mux31~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~67_combout\ = (!\B[5]~input_o\ & (!\B[4]~input_o\ & ((\SLL64_A|Mux4|Mux31~11_combout\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~11_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~67_combout\);

-- Location: LCCOMB_X49_Y38_N4
\SLL64_A|Mux8|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux51~0_combout\ = (\B[3]~input_o\ & (\Selector63~0_combout\)) # (!\B[3]~input_o\ & ((\Selector55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datac => \B[3]~input_o\,
	datad => \Selector55~0_combout\,
	combout => \SLL64_A|Mux8|Mux51~0_combout\);

-- Location: LCCOMB_X49_Y38_N22
\SLL64_A|Mux8|Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux55~1_combout\ = (\B[2]~input_o\ & (\Selector59~0_combout\)) # (!\B[2]~input_o\ & ((\SLL64_A|Mux8|Mux51~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector59~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SLL64_A|Mux8|Mux51~0_combout\,
	combout => \SLL64_A|Mux8|Mux55~1_combout\);

-- Location: LCCOMB_X50_Y40_N0
\SLL64_A|Mux4|Mux31~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~22_combout\ = (\SLL64_A|Mux4|Mux31~67_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux4|Mux31~18_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux55~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~67_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64_A|Mux8|Mux55~1_combout\,
	datad => \SLL64_A|Mux4|Mux31~18_combout\,
	combout => \SLL64_A|Mux4|Mux31~22_combout\);

-- Location: LCCOMB_X50_Y40_N18
\Selector503~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector503~3_combout\ = (\Selector481~1_combout\ & (((\Selector481~2_combout\) # (\SLL64_A|Mux4|Mux31~22_combout\)))) # (!\Selector481~1_combout\ & (\Selector151~2_combout\ & (!\Selector481~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~1_combout\,
	datab => \Selector151~2_combout\,
	datac => \Selector481~2_combout\,
	datad => \SLL64_A|Mux4|Mux31~22_combout\,
	combout => \Selector503~3_combout\);

-- Location: LCCOMB_X50_Y40_N28
\Selector503~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector503~4_combout\ = (\Selector503~3_combout\ & (((\SLL64_A|Mux4|Mux31~21_combout\) # (!\Selector481~2_combout\)))) # (!\Selector503~3_combout\ & (\C[8]~input_o\ & ((\Selector481~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[8]~input_o\,
	datab => \Selector503~3_combout\,
	datac => \SLL64_A|Mux4|Mux31~21_combout\,
	datad => \Selector481~2_combout\,
	combout => \Selector503~4_combout\);

-- Location: LCCOMB_X52_Y36_N14
\SRL64_A|Mux8|Mux63~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~31_combout\ = (\SLL64_A|Mux32|Mux31~6_combout\ & ((\B[2]~input_o\ & ((\Selector8~0_combout\))) # (!\B[2]~input_o\ & (\Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~6_combout\,
	datab => \Selector12~0_combout\,
	datac => \Selector8~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~31_combout\);

-- Location: LCCOMB_X50_Y38_N26
\SRL64_A|Mux32|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux40~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector24~0_combout\)) # (!\B[4]~input_o\ & ((\Selector40~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector24~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector40~0_combout\,
	combout => \SRL64_A|Mux32|Mux40~0_combout\);

-- Location: LCCOMB_X52_Y36_N8
\SRL64_A|Mux8|Mux63~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~32_combout\ = (\SRL64_A|Mux8|Mux63~31_combout\) # ((\B[2]~input_o\ & (\SRL64_A|Mux32|Mux40~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~31_combout\,
	datac => \SRL64_A|Mux32|Mux40~0_combout\,
	datad => \SRL64_A|Mux32|Mux44~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~32_combout\);

-- Location: LCCOMB_X54_Y36_N16
\SRL64_A|Mux8|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux52~0_combout\ = (\SRL64_A|Mux32|Mux48~1_combout\ & ((\SLL64_A|Mux8|Mux27~0_combout\) # ((\SRL64_A|Mux32|Mux52~1_combout\ & \SLL64_A|Mux8|Mux31~4_combout\)))) # (!\SRL64_A|Mux32|Mux48~1_combout\ & (((\SRL64_A|Mux32|Mux52~1_combout\ & 
-- \SLL64_A|Mux8|Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux48~1_combout\,
	datab => \SLL64_A|Mux8|Mux27~0_combout\,
	datac => \SRL64_A|Mux32|Mux52~1_combout\,
	datad => \SLL64_A|Mux8|Mux31~4_combout\,
	combout => \SRL64_A|Mux8|Mux52~0_combout\);

-- Location: LCCOMB_X59_Y38_N8
\SRL64_A|Mux4|Mux63~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~95_combout\ = (\SRL64_A|Mux8|Mux52~0_combout\) # ((\B[3]~input_o\ & \SRL64_A|Mux8|Mux63~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~32_combout\,
	datad => \SRL64_A|Mux8|Mux52~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~95_combout\);

-- Location: LCCOMB_X59_Y38_N18
\SRL64_A|Mux4|Mux63~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~96_combout\ = (\B[1]~input_o\ & ((\SRL64_A|Mux4|Mux63~95_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux4|Mux63~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~86_combout\,
	datac => \SRL64_A|Mux4|Mux63~95_combout\,
	combout => \SRL64_A|Mux4|Mux63~96_combout\);

-- Location: LCCOMB_X58_Y36_N18
\Selector503~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector503~0_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~96_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRL64_A|Mux4|Mux63~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~96_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~92_combout\,
	combout => \Selector503~0_combout\);

-- Location: LCCOMB_X52_Y36_N10
\SRA64_A|Mux32|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux40~0_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector0~0_combout\))) # (!\B[4]~input_o\ & (\Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \B[5]~input_o\,
	datac => \Selector0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64_A|Mux32|Mux40~0_combout\);

-- Location: LCCOMB_X52_Y36_N2
\SRA64_A|Mux8|Mux44~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux44~5_combout\ = (\B[2]~input_o\ & (((\SRL64_A|Mux32|Mux40~0_combout\) # (\SRA64_A|Mux32|Mux40~0_combout\)))) # (!\B[2]~input_o\ & (\SRA64_A|Mux32|Mux44~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64_A|Mux32|Mux44~1_combout\,
	datac => \SRL64_A|Mux32|Mux40~0_combout\,
	datad => \SRA64_A|Mux32|Mux40~0_combout\,
	combout => \SRA64_A|Mux8|Mux44~5_combout\);

-- Location: LCCOMB_X59_Y38_N28
\SRA64_A|Mux8|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux52~0_combout\ = (\SRL64_A|Mux8|Mux52~0_combout\) # ((\B[3]~input_o\ & \SRA64_A|Mux8|Mux44~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRA64_A|Mux8|Mux44~5_combout\,
	datad => \SRL64_A|Mux8|Mux52~0_combout\,
	combout => \SRA64_A|Mux8|Mux52~0_combout\);

-- Location: LCCOMB_X58_Y36_N4
\SRL64_A|Mux4|Mux63~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~253_combout\ = (\B[1]~input_o\ & (((\SRA64_A|Mux8|Mux52~0_combout\)))) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux54~0_combout\) # ((\SRA64_A|Mux8|Mux54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux54~0_combout\,
	datab => \SRA64_A|Mux8|Mux54~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64_A|Mux8|Mux52~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~253_combout\);

-- Location: LCCOMB_X58_Y36_N20
\Selector503~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector503~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector503~0_combout\ & (\SRL64_A|Mux4|Mux63~253_combout\)) # (!\Selector503~0_combout\ & ((\SRL64_A|Mux4|Mux63~252_combout\))))) # (!\ShiftFN[0]~input_o\ & (\Selector503~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Selector503~0_combout\,
	datac => \SRL64_A|Mux4|Mux63~253_combout\,
	datad => \SRL64_A|Mux4|Mux63~252_combout\,
	combout => \Selector503~1_combout\);

-- Location: LCCOMB_X52_Y37_N10
\SRL64_A|Mux4|Mux63~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~98_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\) # ((\B[1]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~98_combout\);

-- Location: LCCOMB_X52_Y37_N28
\SRL64_A|Mux4|Mux63~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~99_combout\ = (\B[5]~input_o\) # (\SRL64_A|Mux4|Mux63~98_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~98_combout\,
	combout => \SRL64_A|Mux4|Mux63~99_combout\);

-- Location: LCCOMB_X49_Y39_N18
\SRL64_A|Mux4|Mux63~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~100_combout\ = (\SRL64_A|Mux4|Mux63~99_combout\ & (((\Selector0~0_combout\)))) # (!\SRL64_A|Mux4|Mux63~99_combout\ & (\SRL64_A|Mux8|Mux22~5_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux22~5_combout\,
	datab => \Selector0~0_combout\,
	datac => \SRL64_A|Mux4|Mux63~99_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~100_combout\);

-- Location: LCCOMB_X53_Y39_N10
\SRA64_A|Mux8|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux20~1_combout\ = (\Selector16~0_combout\ & ((\SLL64_A|Mux8|Mux27~0_combout\) # ((\SLL64_A|Mux8|Mux55~0_combout\ & \Selector8~0_combout\)))) # (!\Selector16~0_combout\ & (\SLL64_A|Mux8|Mux55~0_combout\ & ((\Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \SLL64_A|Mux8|Mux55~0_combout\,
	datac => \SLL64_A|Mux8|Mux27~0_combout\,
	datad => \Selector8~0_combout\,
	combout => \SRA64_A|Mux8|Mux20~1_combout\);

-- Location: LCCOMB_X53_Y34_N8
\SRA64_A|Mux8|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux20~0_combout\ = (\SLL64_A|Mux8|Mux31~4_combout\ & ((\B[4]~input_o\ & ((\Selector4~0_combout\))) # (!\B[4]~input_o\ & (\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector20~0_combout\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \Selector4~0_combout\,
	combout => \SRA64_A|Mux8|Mux20~0_combout\);

-- Location: LCCOMB_X53_Y39_N20
\SRA64_A|Mux8|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux20~2_combout\ = (\SRA64_A|Mux8|Mux20~1_combout\) # ((\SRA64_A|Mux8|Mux20~0_combout\) # ((\Selector12~0_combout\ & \SLL64_A|Mux8|Mux35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux20~1_combout\,
	datab => \SRA64_A|Mux8|Mux20~0_combout\,
	datac => \Selector12~0_combout\,
	datad => \SLL64_A|Mux8|Mux35~0_combout\,
	combout => \SRA64_A|Mux8|Mux20~2_combout\);

-- Location: LCCOMB_X49_Y39_N12
\SRL64_A|Mux4|Mux63~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~101_combout\ = (\SRL64_A|Mux4|Mux63~100_combout\) # ((\B[1]~input_o\ & (!\SRL64_A|Mux4|Mux63~99_combout\ & \SRA64_A|Mux8|Mux20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~100_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~99_combout\,
	datad => \SRA64_A|Mux8|Mux20~2_combout\,
	combout => \SRL64_A|Mux4|Mux63~101_combout\);

-- Location: LCCOMB_X49_Y39_N0
\Selector87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (\B[0]~input_o\ & (\ShiftFN[0]~input_o\)) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~94_combout\) # ((\ShiftFN[0]~input_o\ & \SRL64_A|Mux4|Mux63~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~93_combout\,
	datad => \SRL64_A|Mux4|Mux63~94_combout\,
	combout => \Selector87~0_combout\);

-- Location: LCCOMB_X53_Y39_N8
\SRL64_A|Mux8|Mux63~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~33_combout\ = (\B[2]~input_o\ & (\Selector8~0_combout\)) # (!\B[2]~input_o\ & ((\Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector8~0_combout\,
	datac => \Selector12~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~33_combout\);

-- Location: LCCOMB_X52_Y35_N18
\SRL64_A|Mux8|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux20~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SLL64_A|Mux32|Mux31~17_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~18_combout\,
	datab => \SLL64_A|Mux32|Mux31~17_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux8|Mux20~0_combout\);

-- Location: LCCOMB_X52_Y35_N28
\SRL64_A|Mux8|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux20~1_combout\ = (\SRL64_A|Mux8|Mux20~0_combout\) # ((\B[3]~input_o\ & \SRL64_A|Mux8|Mux63~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~33_combout\,
	datad => \SRL64_A|Mux8|Mux20~0_combout\,
	combout => \SRL64_A|Mux8|Mux20~1_combout\);

-- Location: LCCOMB_X49_Y39_N6
\SRL64_A|Mux4|Mux63~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~97_combout\ = (!\SRA64_A|Mux8|Mux24~1_combout\ & ((\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux20~1_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux8|Mux22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux22~5_combout\,
	datab => \SRL64_A|Mux8|Mux20~1_combout\,
	datac => \SRA64_A|Mux8|Mux24~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~97_combout\);

-- Location: LCCOMB_X49_Y39_N22
\Selector87~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~1_combout\ = (\Selector87~0_combout\ & ((\SRL64_A|Mux4|Mux63~101_combout\) # ((!\B[0]~input_o\)))) # (!\Selector87~0_combout\ & (((\B[0]~input_o\ & \SRL64_A|Mux4|Mux63~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~101_combout\,
	datab => \Selector87~0_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~97_combout\,
	combout => \Selector87~1_combout\);

-- Location: LCCOMB_X50_Y43_N28
\Selector503~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector503~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & (\Selector503~1_combout\)) # (!\Selector481~0_combout\ & ((\Selector87~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector503~1_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector481~0_combout\,
	datad => \Selector87~1_combout\,
	combout => \Selector503~2_combout\);

-- Location: LCCOMB_X50_Y43_N30
\Selector503~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector503~5_combout\ = (\Selector503~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector503~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector503~4_combout\,
	datad => \Selector503~2_combout\,
	combout => \Selector503~5_combout\);

-- Location: LCCOMB_X58_Y35_N26
\SRL64_A|Mux8|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux11~0_combout\ = (\B[2]~input_o\ & (\Selector7~0_combout\)) # (!\B[2]~input_o\ & ((\Selector11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector7~0_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector11~0_combout\,
	combout => \SRL64_A|Mux8|Mux11~0_combout\);

-- Location: LCCOMB_X54_Y36_N10
\SRL64_A|Mux8|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux19~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Selector15~0_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux31~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~28_combout\,
	datad => \Selector15~0_combout\,
	combout => \SRL64_A|Mux8|Mux19~0_combout\);

-- Location: LCCOMB_X54_Y36_N20
\SRL64_A|Mux8|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux19~1_combout\ = (\SRL64_A|Mux8|Mux19~0_combout\) # ((\B[3]~input_o\ & \SRL64_A|Mux8|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux11~0_combout\,
	datad => \SRL64_A|Mux8|Mux19~0_combout\,
	combout => \SRL64_A|Mux8|Mux19~1_combout\);

-- Location: LCCOMB_X49_Y39_N26
\SRL64_A|Mux4|Mux63~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~105_combout\ = (!\SRL64_A|Mux4|Mux63~99_combout\ & ((\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux19~1_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux8|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux21~1_combout\,
	datab => \SRL64_A|Mux8|Mux19~1_combout\,
	datac => \SRL64_A|Mux4|Mux63~99_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~105_combout\);

-- Location: LCCOMB_X49_Y39_N16
\Selector86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (\ShiftFN[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~101_combout\) # ((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((!\B[0]~input_o\ & \SRL64_A|Mux4|Mux63~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~101_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~97_combout\,
	combout => \Selector86~0_combout\);

-- Location: LCCOMB_X52_Y37_N22
\SRL64_A|Mux4|Mux63~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~104_combout\ = (\Selector0~0_combout\ & ((\B[5]~input_o\) # (\SRL64_A|Mux4|Mux63~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datac => \B[5]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~98_combout\,
	combout => \SRL64_A|Mux4|Mux63~104_combout\);

-- Location: LCCOMB_X55_Y39_N26
\Selector86~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~1_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~105_combout\) # ((\Selector86~0_combout\ & \SRL64_A|Mux4|Mux63~104_combout\)))) # (!\B[0]~input_o\ & (((\Selector86~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~105_combout\,
	datab => \B[0]~input_o\,
	datac => \Selector86~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~104_combout\,
	combout => \Selector86~1_combout\);

-- Location: LCCOMB_X58_Y35_N8
\SRL64_A|Mux8|Mux63~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~34_combout\ = (\SLL64_A|Mux32|Mux31~6_combout\ & ((\B[2]~input_o\ & (\Selector7~0_combout\)) # (!\B[2]~input_o\ & ((\Selector11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~6_combout\,
	datab => \Selector7~0_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector11~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~34_combout\);

-- Location: LCCOMB_X58_Y38_N8
\SRL64_A|Mux32|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux39~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector23~0_combout\)) # (!\B[4]~input_o\ & ((\Selector39~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Selector39~0_combout\,
	combout => \SRL64_A|Mux32|Mux39~0_combout\);

-- Location: LCCOMB_X59_Y37_N2
\SRL64_A|Mux8|Mux63~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~35_combout\ = (\SRL64_A|Mux8|Mux63~34_combout\) # ((\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux39~0_combout\))) # (!\B[2]~input_o\ & (\SRL64_A|Mux32|Mux43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux43~0_combout\,
	datab => \SRL64_A|Mux8|Mux63~34_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64_A|Mux32|Mux39~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~35_combout\);

-- Location: LCCOMB_X59_Y40_N30
\SRL64_A|Mux4|Mux63~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~102_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~35_combout\))) # (!\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~15_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~35_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~102_combout\);

-- Location: LCCOMB_X59_Y40_N0
\SRL64_A|Mux4|Mux63~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~103_combout\ = (\SRL64_A|Mux4|Mux63~102_combout\) # ((!\B[1]~input_o\ & \SRL64_A|Mux4|Mux63~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~102_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~91_combout\,
	combout => \SRL64_A|Mux4|Mux63~103_combout\);

-- Location: LCCOMB_X58_Y37_N14
\Selector502~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector502~0_combout\ = (\ShiftFN[0]~input_o\ & (\B[0]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~103_combout\)) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~103_combout\,
	datad => \SRL64_A|Mux4|Mux63~96_combout\,
	combout => \Selector502~0_combout\);

-- Location: LCCOMB_X58_Y38_N10
\SRA64_A|Mux32|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux39~0_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector0~0_combout\))) # (!\B[4]~input_o\ & (\Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SRA64_A|Mux32|Mux39~0_combout\);

-- Location: LCCOMB_X59_Y37_N30
\SRA64_A|Mux8|Mux47~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux47~6_combout\ = (\B[3]~input_o\ & ((\SRA64_A|Mux32|Mux39~0_combout\) # ((\SRL64_A|Mux32|Mux39~0_combout\)))) # (!\B[3]~input_o\ & (((\SRA64_A|Mux32|Mux47~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux32|Mux39~0_combout\,
	datab => \SRL64_A|Mux32|Mux39~0_combout\,
	datac => \SRA64_A|Mux32|Mux47~1_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA64_A|Mux8|Mux47~6_combout\);

-- Location: LCCOMB_X59_Y37_N28
\SRA64_A|Mux8|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux51~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SRA64_A|Mux32|Mux43~1_combout\))) # (!\B[3]~input_o\ & (\SRL64_A|Mux32|Mux51~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRL64_A|Mux32|Mux51~1_combout\,
	datad => \SRA64_A|Mux32|Mux43~1_combout\,
	combout => \SRA64_A|Mux8|Mux51~0_combout\);

-- Location: LCCOMB_X59_Y37_N8
\SRA64_A|Mux8|Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux51~1_combout\ = (\SRA64_A|Mux8|Mux51~0_combout\) # ((\SRA64_A|Mux8|Mux47~6_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux47~6_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64_A|Mux8|Mux51~0_combout\,
	combout => \SRA64_A|Mux8|Mux51~1_combout\);

-- Location: LCCOMB_X59_Y40_N2
\SRL64_A|Mux4|Mux63~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~254_combout\ = (\B[1]~input_o\ & (((\SRA64_A|Mux8|Mux51~1_combout\)))) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux53~0_combout\) # ((\SRA64_A|Mux8|Mux53~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux53~0_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64_A|Mux8|Mux51~1_combout\,
	datad => \SRA64_A|Mux8|Mux53~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~254_combout\);

-- Location: LCCOMB_X55_Y39_N0
\Selector502~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector502~1_combout\ = (\Selector502~0_combout\ & (((\SRL64_A|Mux4|Mux63~254_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\Selector502~0_combout\ & (\SRL64_A|Mux4|Mux63~253_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector502~0_combout\,
	datab => \SRL64_A|Mux4|Mux63~253_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~254_combout\,
	combout => \Selector502~1_combout\);

-- Location: LCCOMB_X55_Y39_N4
\Selector502~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector502~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector502~1_combout\))) # (!\Selector481~0_combout\ & (\Selector86~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector86~1_combout\,
	datab => \Selector481~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector502~1_combout\,
	combout => \Selector502~2_combout\);

-- Location: LCCOMB_X56_Y42_N10
\Selector150~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector150~0_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & (\SLL64_A|Mux8|Mux25~2_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux23~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux25~2_combout\,
	datab => \Selector126~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux23~3_combout\,
	combout => \Selector150~0_combout\);

-- Location: IOIBUF_X65_Y73_N15
\C[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(41),
	o => \C[41]~input_o\);

-- Location: LCCOMB_X54_Y35_N18
\SLL64_A|Mux32|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux22~2_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector38~0_combout\)) # (!\B[4]~input_o\ & ((\Selector22~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Selector38~0_combout\,
	datad => \Selector22~0_combout\,
	combout => \SLL64_A|Mux32|Mux22~2_combout\);

-- Location: LCCOMB_X54_Y35_N4
\SLL64_A|Mux32|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux22~3_combout\ = (\SLL64_A|Mux32|Mux22~2_combout\) # ((!\B[4]~input_o\ & (\B[5]~input_o\ & \Selector54~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Selector54~0_combout\,
	datad => \SLL64_A|Mux32|Mux22~2_combout\,
	combout => \SLL64_A|Mux32|Mux22~3_combout\);

-- Location: LCCOMB_X56_Y39_N18
\SLL64_A|Mux8|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux22~2_combout\ = (\SLL64_A|Mux8|Mux35~0_combout\ & ((\SLL64_A|Mux32|Mux30~3_combout\) # ((\SLL64_A|Mux8|Mux31~4_combout\ & \SLL64_A|Mux32|Mux22~3_combout\)))) # (!\SLL64_A|Mux8|Mux35~0_combout\ & (\SLL64_A|Mux8|Mux31~4_combout\ & 
-- (\SLL64_A|Mux32|Mux22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux35~0_combout\,
	datab => \SLL64_A|Mux8|Mux31~4_combout\,
	datac => \SLL64_A|Mux32|Mux22~3_combout\,
	datad => \SLL64_A|Mux32|Mux30~3_combout\,
	combout => \SLL64_A|Mux8|Mux22~2_combout\);

-- Location: LCCOMB_X56_Y39_N6
\SLL64_A|Mux8|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux22~4_combout\ = (!\B[5]~input_o\ & (\B[2]~input_o\ & (\B[3]~input_o\ & \SLL64_A|Mux32|Mux31~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~8_combout\,
	combout => \SLL64_A|Mux8|Mux22~4_combout\);

-- Location: LCCOMB_X56_Y39_N20
\SLL64_A|Mux8|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux22~3_combout\ = (\SLL64_A|Mux8|Mux22~2_combout\) # ((\SLL64_A|Mux8|Mux22~4_combout\) # ((\SLL64_A|Mux32|Mux26~3_combout\ & \SLL64_A|Mux8|Mux27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux26~3_combout\,
	datab => \SLL64_A|Mux8|Mux22~2_combout\,
	datac => \SLL64_A|Mux8|Mux27~0_combout\,
	datad => \SLL64_A|Mux8|Mux22~4_combout\,
	combout => \SLL64_A|Mux8|Mux22~3_combout\);

-- Location: LCCOMB_X56_Y42_N20
\Selector150~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector150~1_combout\ = (\Selector191~1_combout\ & ((\SLL64_A|Mux8|Mux22~3_combout\) # ((!\ShiftFN[0]~input_o\ & \C[41]~input_o\)))) # (!\Selector191~1_combout\ & (!\ShiftFN[0]~input_o\ & (\C[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector191~1_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \C[41]~input_o\,
	datad => \SLL64_A|Mux8|Mux22~3_combout\,
	combout => \Selector150~1_combout\);

-- Location: LCCOMB_X56_Y42_N14
\Selector150~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector150~2_combout\ = (\Selector150~0_combout\) # ((\Selector150~1_combout\) # ((\Selector157~4_combout\ & \SLL64_A|Mux8|Mux24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector150~0_combout\,
	datab => \Selector157~4_combout\,
	datac => \SLL64_A|Mux8|Mux24~2_combout\,
	datad => \Selector150~1_combout\,
	combout => \Selector150~2_combout\);

-- Location: IOIBUF_X49_Y73_N15
\C[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(9),
	o => \C[9]~input_o\);

-- Location: LCCOMB_X50_Y40_N24
\Selector502~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector502~3_combout\ = (\Selector481~1_combout\ & (((\Selector481~2_combout\)))) # (!\Selector481~1_combout\ & ((\Selector481~2_combout\ & ((\C[9]~input_o\))) # (!\Selector481~2_combout\ & (\Selector150~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~1_combout\,
	datab => \Selector150~2_combout\,
	datac => \Selector481~2_combout\,
	datad => \C[9]~input_o\,
	combout => \Selector502~3_combout\);

-- Location: LCCOMB_X50_Y37_N4
\SLL64_A|Mux8|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux50~0_combout\ = (\B[3]~input_o\ & (\Selector62~0_combout\)) # (!\B[3]~input_o\ & ((\Selector54~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Selector62~0_combout\,
	datac => \Selector54~0_combout\,
	combout => \SLL64_A|Mux8|Mux50~0_combout\);

-- Location: LCCOMB_X50_Y37_N22
\SLL64_A|Mux8|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux54~0_combout\ = (\B[2]~input_o\ & (\Selector58~0_combout\)) # (!\B[2]~input_o\ & ((\SLL64_A|Mux8|Mux50~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Selector58~0_combout\,
	datac => \SLL64_A|Mux8|Mux50~0_combout\,
	combout => \SLL64_A|Mux8|Mux54~0_combout\);

-- Location: LCCOMB_X50_Y40_N6
\SLL64_A|Mux4|Mux31~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~23_combout\ = (\SLL64_A|Mux4|Mux31~67_combout\ & ((\B[1]~input_o\ & (\SLL64_A|Mux4|Mux31~20_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux54~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~67_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64_A|Mux4|Mux31~20_combout\,
	datad => \SLL64_A|Mux8|Mux54~0_combout\,
	combout => \SLL64_A|Mux4|Mux31~23_combout\);

-- Location: LCCOMB_X50_Y40_N10
\Selector502~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector502~4_combout\ = (\Selector481~1_combout\ & ((\Selector502~3_combout\ & (\SLL64_A|Mux4|Mux31~22_combout\)) # (!\Selector502~3_combout\ & ((\SLL64_A|Mux4|Mux31~23_combout\))))) # (!\Selector481~1_combout\ & (\Selector502~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~1_combout\,
	datab => \Selector502~3_combout\,
	datac => \SLL64_A|Mux4|Mux31~22_combout\,
	datad => \SLL64_A|Mux4|Mux31~23_combout\,
	combout => \Selector502~4_combout\);

-- Location: LCCOMB_X50_Y35_N16
\Selector502~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector502~5_combout\ = (\Selector502~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector502~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector502~2_combout\,
	datad => \Selector502~4_combout\,
	combout => \Selector502~5_combout\);

-- Location: IOIBUF_X0_Y44_N1
\C[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(10),
	o => \C[10]~input_o\);

-- Location: LCCOMB_X54_Y41_N18
\SLL64_A|Mux32|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux21~2_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector37~0_combout\))) # (!\B[4]~input_o\ & (\Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Selector37~0_combout\,
	combout => \SLL64_A|Mux32|Mux21~2_combout\);

-- Location: LCCOMB_X54_Y41_N6
\SLL64_A|Mux32|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux21~3_combout\ = (\SLL64_A|Mux32|Mux21~2_combout\) # ((\Selector53~0_combout\ & (!\B[4]~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux21~2_combout\,
	datab => \Selector53~0_combout\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux32|Mux21~3_combout\);

-- Location: LCCOMB_X53_Y42_N14
\SLL64_A|Mux8|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux21~2_combout\ = (\SLL64_A|Mux8|Mux35~0_combout\ & ((\SLL64_A|Mux32|Mux29~3_combout\) # ((\SLL64_A|Mux8|Mux31~4_combout\ & \SLL64_A|Mux32|Mux21~3_combout\)))) # (!\SLL64_A|Mux8|Mux35~0_combout\ & (\SLL64_A|Mux8|Mux31~4_combout\ & 
-- (\SLL64_A|Mux32|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux35~0_combout\,
	datab => \SLL64_A|Mux8|Mux31~4_combout\,
	datac => \SLL64_A|Mux32|Mux21~3_combout\,
	datad => \SLL64_A|Mux32|Mux29~3_combout\,
	combout => \SLL64_A|Mux8|Mux21~2_combout\);

-- Location: LCCOMB_X53_Y41_N4
\SLL64_A|Mux8|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux21~4_combout\ = (\B[3]~input_o\ & (!\B[5]~input_o\ & (\SLL64_A|Mux32|Mux31~15_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~15_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64_A|Mux8|Mux21~4_combout\);

-- Location: LCCOMB_X53_Y42_N16
\SLL64_A|Mux8|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux21~3_combout\ = (\SLL64_A|Mux8|Mux21~2_combout\) # ((\SLL64_A|Mux8|Mux21~4_combout\) # ((\SLL64_A|Mux32|Mux25~3_combout\ & \SLL64_A|Mux8|Mux27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux25~3_combout\,
	datab => \SLL64_A|Mux8|Mux21~2_combout\,
	datac => \SLL64_A|Mux8|Mux21~4_combout\,
	datad => \SLL64_A|Mux8|Mux27~0_combout\,
	combout => \SLL64_A|Mux8|Mux21~3_combout\);

-- Location: IOIBUF_X60_Y73_N15
\C[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(42),
	o => \C[42]~input_o\);

-- Location: LCCOMB_X56_Y42_N18
\Selector149~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector149~1_combout\ = (\Selector191~1_combout\ & ((\SLL64_A|Mux8|Mux21~3_combout\) # ((!\ShiftFN[0]~input_o\ & \C[42]~input_o\)))) # (!\Selector191~1_combout\ & (!\ShiftFN[0]~input_o\ & ((\C[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector191~1_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SLL64_A|Mux8|Mux21~3_combout\,
	datad => \C[42]~input_o\,
	combout => \Selector149~1_combout\);

-- Location: LCCOMB_X56_Y42_N8
\Selector149~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector149~0_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & (\SLL64_A|Mux8|Mux24~2_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux22~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux24~2_combout\,
	datab => \Selector126~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux22~3_combout\,
	combout => \Selector149~0_combout\);

-- Location: LCCOMB_X56_Y42_N4
\Selector149~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector149~2_combout\ = (\Selector149~1_combout\) # ((\Selector149~0_combout\) # ((\Selector157~4_combout\ & \SLL64_A|Mux8|Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector157~4_combout\,
	datab => \Selector149~1_combout\,
	datac => \Selector149~0_combout\,
	datad => \SLL64_A|Mux8|Mux23~3_combout\,
	combout => \Selector149~2_combout\);

-- Location: LCCOMB_X55_Y38_N2
\SLL64_A|Mux4|Mux31~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~24_combout\ = (!\B[5]~input_o\ & (!\B[4]~input_o\ & ((!\B[3]~input_o\) # (!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~24_combout\);

-- Location: LCCOMB_X50_Y42_N22
\SLL64_A|Mux8|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux49~0_combout\ = (\B[3]~input_o\ & (\Selector61~0_combout\)) # (!\B[3]~input_o\ & ((\Selector53~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Selector61~0_combout\,
	datad => \Selector53~0_combout\,
	combout => \SLL64_A|Mux8|Mux49~0_combout\);

-- Location: LCCOMB_X50_Y42_N8
\SLL64_A|Mux8|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux53~0_combout\ = (\B[2]~input_o\ & ((\Selector57~0_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux8|Mux49~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux49~0_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector57~0_combout\,
	combout => \SLL64_A|Mux8|Mux53~0_combout\);

-- Location: LCCOMB_X50_Y40_N20
\SLL64_A|Mux4|Mux31~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~25_combout\ = (\SLL64_A|Mux4|Mux31~24_combout\ & ((\B[1]~input_o\ & (\SLL64_A|Mux8|Mux55~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux53~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux55~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64_A|Mux4|Mux31~24_combout\,
	datad => \SLL64_A|Mux8|Mux53~0_combout\,
	combout => \SLL64_A|Mux4|Mux31~25_combout\);

-- Location: LCCOMB_X50_Y40_N14
\Selector501~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector501~3_combout\ = (\Selector481~1_combout\ & (((\Selector481~2_combout\) # (\SLL64_A|Mux4|Mux31~25_combout\)))) # (!\Selector481~1_combout\ & (\Selector149~2_combout\ & (!\Selector481~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~1_combout\,
	datab => \Selector149~2_combout\,
	datac => \Selector481~2_combout\,
	datad => \SLL64_A|Mux4|Mux31~25_combout\,
	combout => \Selector501~3_combout\);

-- Location: LCCOMB_X50_Y40_N16
\Selector501~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector501~4_combout\ = (\Selector481~2_combout\ & ((\Selector501~3_combout\ & ((\SLL64_A|Mux4|Mux31~23_combout\))) # (!\Selector501~3_combout\ & (\C[10]~input_o\)))) # (!\Selector481~2_combout\ & (((\Selector501~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \C[10]~input_o\,
	datac => \Selector501~3_combout\,
	datad => \SLL64_A|Mux4|Mux31~23_combout\,
	combout => \Selector501~4_combout\);

-- Location: LCCOMB_X55_Y39_N10
\Selector85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~105_combout\) # ((\ShiftFN[0]~input_o\ & \SRL64_A|Mux4|Mux63~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~105_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~104_combout\,
	combout => \Selector85~0_combout\);

-- Location: LCCOMB_X55_Y38_N8
\SRL64_A|Mux4|Mux63~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~110_combout\ = (\B[5]~input_o\) # ((\B[4]~input_o\ & ((\B[2]~input_o\) # (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~110_combout\);

-- Location: LCCOMB_X55_Y35_N30
\SRL64_A|Mux8|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux18~0_combout\ = (\SLL64_A|Mux8|Mux31~4_combout\ & ((\B[4]~input_o\ & (\Selector2~0_combout\)) # (!\B[4]~input_o\ & ((\Selector18~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector2~0_combout\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \Selector18~0_combout\,
	combout => \SRL64_A|Mux8|Mux18~0_combout\);

-- Location: LCCOMB_X54_Y35_N2
\SRL64_A|Mux8|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux18~1_combout\ = (\SLL64_A|Mux8|Mux27~0_combout\ & ((\Selector14~0_combout\) # ((\SLL64_A|Mux8|Mux55~0_combout\ & \Selector6~0_combout\)))) # (!\SLL64_A|Mux8|Mux27~0_combout\ & (((\SLL64_A|Mux8|Mux55~0_combout\ & \Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux27~0_combout\,
	datab => \Selector14~0_combout\,
	datac => \SLL64_A|Mux8|Mux55~0_combout\,
	datad => \Selector6~0_combout\,
	combout => \SRL64_A|Mux8|Mux18~1_combout\);

-- Location: LCCOMB_X55_Y35_N8
\SRL64_A|Mux8|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux18~2_combout\ = (\SRL64_A|Mux8|Mux18~0_combout\) # ((\SRL64_A|Mux8|Mux18~1_combout\) # ((\SLL64_A|Mux8|Mux35~0_combout\ & \Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux35~0_combout\,
	datab => \Selector10~0_combout\,
	datac => \SRL64_A|Mux8|Mux18~0_combout\,
	datad => \SRL64_A|Mux8|Mux18~1_combout\,
	combout => \SRL64_A|Mux8|Mux18~2_combout\);

-- Location: LCCOMB_X55_Y39_N12
\SRL64_A|Mux4|Mux63~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~111_combout\ = (\SRL64_A|Mux4|Mux63~110_combout\ & (((\Selector0~0_combout\)))) # (!\SRL64_A|Mux4|Mux63~110_combout\ & (\SRL64_A|Mux8|Mux18~2_combout\ & ((\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux18~2_combout\,
	datab => \Selector0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~110_combout\,
	combout => \SRL64_A|Mux4|Mux63~111_combout\);

-- Location: LCCOMB_X55_Y39_N30
\SRL64_A|Mux4|Mux63~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~112_combout\ = (\SRL64_A|Mux4|Mux63~111_combout\) # ((!\SRL64_A|Mux4|Mux63~110_combout\ & (\SRA64_A|Mux8|Mux20~2_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~110_combout\,
	datab => \SRA64_A|Mux8|Mux20~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~111_combout\,
	combout => \SRL64_A|Mux4|Mux63~112_combout\);

-- Location: LCCOMB_X55_Y39_N16
\SRL64_A|Mux4|Mux63~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~109_combout\ = (!\SRL64_A|Mux4|Mux63~99_combout\ & ((\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux18~2_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux8|Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux20~1_combout\,
	datab => \SRL64_A|Mux4|Mux63~99_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux8|Mux18~2_combout\,
	combout => \SRL64_A|Mux4|Mux63~109_combout\);

-- Location: LCCOMB_X55_Y39_N8
\Selector85~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~1_combout\ = (\Selector85~0_combout\ & (((\SRL64_A|Mux4|Mux63~112_combout\)) # (!\B[0]~input_o\))) # (!\Selector85~0_combout\ & (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector85~0_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~112_combout\,
	datad => \SRL64_A|Mux4|Mux63~109_combout\,
	combout => \Selector85~1_combout\);

-- Location: LCCOMB_X54_Y35_N14
\SRL64_A|Mux32|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux38~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector22~0_combout\))) # (!\B[4]~input_o\ & (\Selector38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Selector38~0_combout\,
	datad => \Selector22~0_combout\,
	combout => \SRL64_A|Mux32|Mux38~0_combout\);

-- Location: LCCOMB_X54_Y35_N20
\SRL64_A|Mux8|Mux63~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~36_combout\ = (\SLL64_A|Mux32|Mux31~6_combout\ & ((\B[2]~input_o\ & ((\Selector6~0_combout\))) # (!\B[2]~input_o\ & (\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~6_combout\,
	datab => \B[2]~input_o\,
	datac => \Selector10~0_combout\,
	datad => \Selector6~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~36_combout\);

-- Location: LCCOMB_X55_Y37_N4
\SRL64_A|Mux8|Mux63~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~37_combout\ = (\SRL64_A|Mux8|Mux63~36_combout\) # ((\B[2]~input_o\ & (\SRL64_A|Mux32|Mux38~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux38~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~36_combout\,
	datad => \SRL64_A|Mux32|Mux42~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~37_combout\);

-- Location: LCCOMB_X59_Y38_N6
\SRL64_A|Mux4|Mux63~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~106_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~37_combout\))) # (!\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~17_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~37_combout\,
	combout => \SRL64_A|Mux4|Mux63~106_combout\);

-- Location: LCCOMB_X59_Y38_N0
\SRL64_A|Mux4|Mux63~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~107_combout\ = (\SRL64_A|Mux4|Mux63~106_combout\) # ((\SRL64_A|Mux4|Mux63~95_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~106_combout\,
	datab => \SRL64_A|Mux4|Mux63~95_combout\,
	datac => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~107_combout\);

-- Location: LCCOMB_X58_Y37_N24
\Selector501~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector501~0_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~107_combout\)) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~103_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~107_combout\,
	datab => \SRL64_A|Mux4|Mux63~103_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Selector501~0_combout\);

-- Location: LCCOMB_X57_Y36_N8
\SRA64_A|Mux8|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux50~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SRA64_A|Mux32|Mux42~1_combout\))) # (!\B[3]~input_o\ & (\SRL64_A|Mux32|Mux50~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux50~1_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64_A|Mux32|Mux42~1_combout\,
	combout => \SRA64_A|Mux8|Mux50~0_combout\);

-- Location: LCCOMB_X54_Y35_N24
\SRA64_A|Mux32|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux38~0_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector0~0_combout\)) # (!\B[4]~input_o\ & ((\Selector6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Selector0~0_combout\,
	datad => \Selector6~0_combout\,
	combout => \SRA64_A|Mux32|Mux38~0_combout\);

-- Location: LCCOMB_X58_Y39_N4
\SRA64_A|Mux8|Mux46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux46~6_combout\ = (\B[3]~input_o\ & ((\SRA64_A|Mux32|Mux38~0_combout\) # ((\SRL64_A|Mux32|Mux38~0_combout\)))) # (!\B[3]~input_o\ & (((\SRA64_A|Mux32|Mux46~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux32|Mux38~0_combout\,
	datab => \SRA64_A|Mux32|Mux46~1_combout\,
	datac => \SRL64_A|Mux32|Mux38~0_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA64_A|Mux8|Mux46~6_combout\);

-- Location: LCCOMB_X57_Y37_N24
\SRA64_A|Mux8|Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux50~1_combout\ = (\SRA64_A|Mux8|Mux50~0_combout\) # ((\SRA64_A|Mux8|Mux46~6_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux50~0_combout\,
	datab => \SRA64_A|Mux8|Mux46~6_combout\,
	datac => \B[2]~input_o\,
	combout => \SRA64_A|Mux8|Mux50~1_combout\);

-- Location: LCCOMB_X57_Y37_N18
\SRL64_A|Mux4|Mux63~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~108_combout\ = (\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux50~1_combout\))) # (!\B[1]~input_o\ & (\SRA64_A|Mux8|Mux52~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux52~0_combout\,
	datab => \SRA64_A|Mux8|Mux50~1_combout\,
	datac => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~108_combout\);

-- Location: LCCOMB_X55_Y39_N14
\Selector501~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector501~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector501~0_combout\ & (\SRL64_A|Mux4|Mux63~108_combout\)) # (!\Selector501~0_combout\ & ((\SRL64_A|Mux4|Mux63~254_combout\))))) # (!\ShiftFN[0]~input_o\ & (\Selector501~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Selector501~0_combout\,
	datac => \SRL64_A|Mux4|Mux63~108_combout\,
	datad => \SRL64_A|Mux4|Mux63~254_combout\,
	combout => \Selector501~1_combout\);

-- Location: LCCOMB_X55_Y39_N2
\Selector501~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector501~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector501~1_combout\))) # (!\Selector481~0_combout\ & (\Selector85~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector85~1_combout\,
	datac => \Selector501~1_combout\,
	datad => \Selector481~0_combout\,
	combout => \Selector501~2_combout\);

-- Location: LCCOMB_X55_Y39_N28
\Selector501~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector501~5_combout\ = (\Selector501~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector501~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \Selector501~4_combout\,
	datad => \Selector501~2_combout\,
	combout => \Selector501~5_combout\);

-- Location: LCCOMB_X50_Y37_N24
\SLL64_A|Mux8|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux48~0_combout\ = (\B[3]~input_o\ & (\Selector60~0_combout\)) # (!\B[3]~input_o\ & ((\Selector52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Selector60~0_combout\,
	datad => \Selector52~0_combout\,
	combout => \SLL64_A|Mux8|Mux48~0_combout\);

-- Location: LCCOMB_X50_Y37_N10
\SLL64_A|Mux8|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux52~0_combout\ = (\B[2]~input_o\ & ((\Selector56~0_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux8|Mux48~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux8|Mux48~0_combout\,
	datac => \Selector56~0_combout\,
	combout => \SLL64_A|Mux8|Mux52~0_combout\);

-- Location: LCCOMB_X50_Y40_N2
\SLL64_A|Mux4|Mux31~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~26_combout\ = (\SLL64_A|Mux4|Mux31~24_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux54~0_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~24_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64_A|Mux8|Mux52~0_combout\,
	datad => \SLL64_A|Mux8|Mux54~0_combout\,
	combout => \SLL64_A|Mux4|Mux31~26_combout\);

-- Location: IOIBUF_X31_Y73_N8
\C[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(11),
	o => \C[11]~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\C[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(43),
	o => \C[43]~input_o\);

-- Location: LCCOMB_X53_Y38_N22
\SLL64_A|Mux8|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux20~4_combout\ = (\SLL64_A|Mux32|Mux31~12_combout\ & (\B[3]~input_o\ & (\B[2]~input_o\ & !\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~12_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux8|Mux20~4_combout\);

-- Location: LCCOMB_X53_Y34_N26
\SLL64_A|Mux32|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux20~2_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector36~0_combout\))) # (!\B[4]~input_o\ & (\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector20~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector36~0_combout\,
	combout => \SLL64_A|Mux32|Mux20~2_combout\);

-- Location: LCCOMB_X53_Y34_N10
\SLL64_A|Mux32|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux20~3_combout\ = (\SLL64_A|Mux32|Mux20~2_combout\) # ((!\B[4]~input_o\ & (\B[5]~input_o\ & \Selector52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SLL64_A|Mux32|Mux20~2_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector52~0_combout\,
	combout => \SLL64_A|Mux32|Mux20~3_combout\);

-- Location: LCCOMB_X53_Y38_N30
\SLL64_A|Mux8|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux20~2_combout\ = (\SLL64_A|Mux8|Mux35~0_combout\ & ((\SLL64_A|Mux32|Mux28~3_combout\) # ((\SLL64_A|Mux32|Mux20~3_combout\ & \SLL64_A|Mux8|Mux31~4_combout\)))) # (!\SLL64_A|Mux8|Mux35~0_combout\ & (((\SLL64_A|Mux32|Mux20~3_combout\ & 
-- \SLL64_A|Mux8|Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux35~0_combout\,
	datab => \SLL64_A|Mux32|Mux28~3_combout\,
	datac => \SLL64_A|Mux32|Mux20~3_combout\,
	datad => \SLL64_A|Mux8|Mux31~4_combout\,
	combout => \SLL64_A|Mux8|Mux20~2_combout\);

-- Location: LCCOMB_X53_Y38_N8
\SLL64_A|Mux8|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux20~3_combout\ = (\SLL64_A|Mux8|Mux20~4_combout\) # ((\SLL64_A|Mux8|Mux20~2_combout\) # ((\SLL64_A|Mux8|Mux27~0_combout\ & \SLL64_A|Mux32|Mux24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux20~4_combout\,
	datab => \SLL64_A|Mux8|Mux27~0_combout\,
	datac => \SLL64_A|Mux8|Mux20~2_combout\,
	datad => \SLL64_A|Mux32|Mux24~3_combout\,
	combout => \SLL64_A|Mux8|Mux20~3_combout\);

-- Location: LCCOMB_X57_Y40_N8
\Selector148~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector148~1_combout\ = (\ShiftFN[0]~input_o\ & (\Selector191~1_combout\ & ((\SLL64_A|Mux8|Mux20~3_combout\)))) # (!\ShiftFN[0]~input_o\ & ((\C[43]~input_o\) # ((\Selector191~1_combout\ & \SLL64_A|Mux8|Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Selector191~1_combout\,
	datac => \C[43]~input_o\,
	datad => \SLL64_A|Mux8|Mux20~3_combout\,
	combout => \Selector148~1_combout\);

-- Location: LCCOMB_X56_Y42_N30
\Selector148~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector148~0_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux23~3_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector126~1_combout\,
	datac => \SLL64_A|Mux8|Mux21~3_combout\,
	datad => \SLL64_A|Mux8|Mux23~3_combout\,
	combout => \Selector148~0_combout\);

-- Location: LCCOMB_X57_Y40_N10
\Selector148~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector148~2_combout\ = (\Selector148~1_combout\) # ((\Selector148~0_combout\) # ((\SLL64_A|Mux8|Mux22~3_combout\ & \Selector157~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux22~3_combout\,
	datab => \Selector157~4_combout\,
	datac => \Selector148~1_combout\,
	datad => \Selector148~0_combout\,
	combout => \Selector148~2_combout\);

-- Location: LCCOMB_X50_Y40_N4
\Selector500~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector500~3_combout\ = (\Selector481~1_combout\ & (((\Selector481~2_combout\)))) # (!\Selector481~1_combout\ & ((\Selector481~2_combout\ & (\C[11]~input_o\)) # (!\Selector481~2_combout\ & ((\Selector148~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~1_combout\,
	datab => \C[11]~input_o\,
	datac => \Selector148~2_combout\,
	datad => \Selector481~2_combout\,
	combout => \Selector500~3_combout\);

-- Location: LCCOMB_X50_Y40_N30
\Selector500~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector500~4_combout\ = (\Selector481~1_combout\ & ((\Selector500~3_combout\ & ((\SLL64_A|Mux4|Mux31~25_combout\))) # (!\Selector500~3_combout\ & (\SLL64_A|Mux4|Mux31~26_combout\)))) # (!\Selector481~1_combout\ & (((\Selector500~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~1_combout\,
	datab => \SLL64_A|Mux4|Mux31~26_combout\,
	datac => \Selector500~3_combout\,
	datad => \SLL64_A|Mux4|Mux31~25_combout\,
	combout => \Selector500~4_combout\);

-- Location: LCCOMB_X54_Y41_N22
\SRA64_A|Mux32|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux37~0_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector0~0_combout\)) # (!\B[4]~input_o\ & ((\Selector5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Selector5~0_combout\,
	combout => \SRA64_A|Mux32|Mux37~0_combout\);

-- Location: LCCOMB_X54_Y41_N20
\SRL64_A|Mux32|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux37~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector21~0_combout\)) # (!\B[4]~input_o\ & ((\Selector37~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Selector37~0_combout\,
	combout => \SRL64_A|Mux32|Mux37~0_combout\);

-- Location: LCCOMB_X55_Y41_N28
\SRA64_A|Mux8|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux45~0_combout\ = (\B[3]~input_o\ & ((\SRA64_A|Mux32|Mux37~0_combout\) # ((\SRL64_A|Mux32|Mux37~0_combout\)))) # (!\B[3]~input_o\ & (((\SRA64_A|Mux32|Mux45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64_A|Mux32|Mux37~0_combout\,
	datac => \SRL64_A|Mux32|Mux37~0_combout\,
	datad => \SRA64_A|Mux32|Mux45~1_combout\,
	combout => \SRA64_A|Mux8|Mux45~0_combout\);

-- Location: LCCOMB_X55_Y41_N10
\SRA64_A|Mux8|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux49~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SRA64_A|Mux32|Mux41~1_combout\))) # (!\B[3]~input_o\ & (\SRL64_A|Mux32|Mux49~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64_A|Mux32|Mux49~1_combout\,
	datac => \SRA64_A|Mux32|Mux41~1_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64_A|Mux8|Mux49~0_combout\);

-- Location: LCCOMB_X55_Y41_N14
\SRA64_A|Mux8|Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux49~1_combout\ = (\SRA64_A|Mux8|Mux49~0_combout\) # ((\B[2]~input_o\ & \SRA64_A|Mux8|Mux45~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64_A|Mux8|Mux45~0_combout\,
	datad => \SRA64_A|Mux8|Mux49~0_combout\,
	combout => \SRA64_A|Mux8|Mux49~1_combout\);

-- Location: LCCOMB_X57_Y37_N12
\SRL64_A|Mux4|Mux63~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~115_combout\ = (\B[1]~input_o\ & (\SRA64_A|Mux8|Mux49~1_combout\)) # (!\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux51~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64_A|Mux8|Mux49~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64_A|Mux8|Mux51~1_combout\,
	combout => \SRL64_A|Mux4|Mux63~115_combout\);

-- Location: LCCOMB_X52_Y41_N6
\SRL64_A|Mux8|Mux63~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~38_combout\ = (\SLL64_A|Mux32|Mux31~6_combout\ & ((\B[2]~input_o\ & (\Selector5~0_combout\)) # (!\B[2]~input_o\ & ((\Selector9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \SLL64_A|Mux32|Mux31~6_combout\,
	datac => \Selector9~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~38_combout\);

-- Location: LCCOMB_X52_Y41_N24
\SRL64_A|Mux8|Mux63~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~39_combout\ = (\SRL64_A|Mux8|Mux63~38_combout\) # ((\B[2]~input_o\ & (\SRL64_A|Mux32|Mux37~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64_A|Mux32|Mux37~0_combout\,
	datac => \SRL64_A|Mux32|Mux41~0_combout\,
	datad => \SRL64_A|Mux8|Mux63~38_combout\,
	combout => \SRL64_A|Mux8|Mux63~39_combout\);

-- Location: LCCOMB_X59_Y39_N8
\SRL64_A|Mux4|Mux63~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~113_combout\ = (\B[3]~input_o\ & ((\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux63~39_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux8|Mux63~35_combout\)))) # (!\B[3]~input_o\ & (((\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~35_combout\,
	datab => \SRL64_A|Mux8|Mux63~39_combout\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~113_combout\);

-- Location: LCCOMB_X59_Y40_N18
\SRL64_A|Mux4|Mux63~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~114_combout\ = (\SRL64_A|Mux4|Mux63~113_combout\ & ((\SRL64_A|Mux8|Mux63~19_combout\) # ((\B[3]~input_o\)))) # (!\SRL64_A|Mux4|Mux63~113_combout\ & (((\SRL64_A|Mux8|Mux63~15_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~19_combout\,
	datab => \SRL64_A|Mux4|Mux63~113_combout\,
	datac => \SRL64_A|Mux8|Mux63~15_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~114_combout\);

-- Location: LCCOMB_X58_Y37_N2
\Selector500~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector500~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRL64_A|Mux4|Mux63~114_combout\)))) # (!\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~107_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~107_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~114_combout\,
	combout => \Selector500~0_combout\);

-- Location: LCCOMB_X57_Y37_N14
\Selector500~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector500~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector500~0_combout\ & (\SRL64_A|Mux4|Mux63~115_combout\)) # (!\Selector500~0_combout\ & ((\SRL64_A|Mux4|Mux63~108_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Selector500~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~115_combout\,
	datab => \SRL64_A|Mux4|Mux63~108_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Selector500~0_combout\,
	combout => \Selector500~1_combout\);

-- Location: LCCOMB_X49_Y39_N20
\SRL64_A|Mux4|Mux63~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~116_combout\ = (\Selector0~0_combout\ & \SRL64_A|Mux4|Mux63~110_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector0~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~110_combout\,
	combout => \SRL64_A|Mux4|Mux63~116_combout\);

-- Location: LCCOMB_X55_Y39_N22
\Selector84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = (\ShiftFN[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~112_combout\) # ((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((!\B[0]~input_o\ & \SRL64_A|Mux4|Mux63~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~112_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~109_combout\,
	combout => \Selector84~0_combout\);

-- Location: LCCOMB_X54_Y42_N6
\SRL64_A|Mux8|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux17~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Selector13~0_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux31~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~24_combout\,
	datab => \Selector13~0_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux17~0_combout\);

-- Location: LCCOMB_X52_Y38_N18
\SRL64_A|Mux8|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux9~0_combout\ = (\B[2]~input_o\ & (\Selector5~0_combout\)) # (!\B[2]~input_o\ & ((\Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector5~0_combout\,
	datac => \Selector9~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux9~0_combout\);

-- Location: LCCOMB_X48_Y39_N24
\SRL64_A|Mux8|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux17~1_combout\ = (\SRL64_A|Mux8|Mux17~0_combout\) # ((\B[3]~input_o\ & \SRL64_A|Mux8|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux17~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux9~0_combout\,
	combout => \SRL64_A|Mux8|Mux17~1_combout\);

-- Location: LCCOMB_X49_Y39_N14
\SRL64_A|Mux4|Mux63~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~117_combout\ = (!\SRL64_A|Mux4|Mux63~110_combout\ & ((\B[1]~input_o\ & (\SRL64_A|Mux8|Mux17~1_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux19~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~110_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux8|Mux17~1_combout\,
	datad => \SRL64_A|Mux8|Mux19~1_combout\,
	combout => \SRL64_A|Mux4|Mux63~117_combout\);

-- Location: LCCOMB_X48_Y37_N24
\Selector84~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~1_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~117_combout\) # ((\SRL64_A|Mux4|Mux63~116_combout\ & \Selector84~0_combout\)))) # (!\B[0]~input_o\ & (((\Selector84~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~116_combout\,
	datab => \B[0]~input_o\,
	datac => \Selector84~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~117_combout\,
	combout => \Selector84~1_combout\);

-- Location: LCCOMB_X48_Y37_N26
\Selector500~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector500~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & (\Selector500~1_combout\)) # (!\Selector481~0_combout\ & ((\Selector84~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector500~1_combout\,
	datac => \Selector481~0_combout\,
	datad => \Selector84~1_combout\,
	combout => \Selector500~2_combout\);

-- Location: LCCOMB_X55_Y38_N4
\Selector500~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector500~5_combout\ = (\Selector500~2_combout\) # ((\Selector500~4_combout\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector500~4_combout\,
	datac => \Selector500~2_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector500~5_combout\);

-- Location: LCCOMB_X49_Y38_N8
\SLL64_A|Mux8|Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux51~1_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Selector59~0_combout\))) # (!\B[3]~input_o\ & (\Selector51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~0_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Selector59~0_combout\,
	combout => \SLL64_A|Mux8|Mux51~1_combout\);

-- Location: LCCOMB_X49_Y38_N10
\SLL64_A|Mux8|Mux51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux51~2_combout\ = (\SLL64_A|Mux8|Mux51~1_combout\) # ((\B[2]~input_o\ & \SLL64_A|Mux8|Mux51~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SLL64_A|Mux8|Mux51~1_combout\,
	datad => \SLL64_A|Mux8|Mux51~0_combout\,
	combout => \SLL64_A|Mux8|Mux51~2_combout\);

-- Location: LCCOMB_X50_Y39_N22
\SLL64_A|Mux4|Mux31~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~27_combout\ = (\B[2]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~27_combout\);

-- Location: LCCOMB_X50_Y39_N20
\SLL64_A|Mux4|Mux31~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~68_combout\ = (!\B[4]~input_o\ & (!\B[5]~input_o\ & ((!\B[3]~input_o\) # (!\SLL64_A|Mux4|Mux31~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux4|Mux31~27_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~68_combout\);

-- Location: LCCOMB_X50_Y39_N24
\SLL64_A|Mux4|Mux31~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~28_combout\ = (\SLL64_A|Mux4|Mux31~68_combout\ & ((\B[1]~input_o\ & (\SLL64_A|Mux8|Mux53~0_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux51~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux53~0_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64_A|Mux8|Mux51~2_combout\,
	datad => \SLL64_A|Mux4|Mux31~68_combout\,
	combout => \SLL64_A|Mux4|Mux31~28_combout\);

-- Location: LCCOMB_X56_Y38_N2
\SLL64_A|Mux32|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux19~2_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector35~0_combout\))) # (!\B[4]~input_o\ & (\Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Selector19~0_combout\,
	datad => \Selector35~0_combout\,
	combout => \SLL64_A|Mux32|Mux19~2_combout\);

-- Location: LCCOMB_X56_Y38_N12
\SLL64_A|Mux32|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux19~3_combout\ = (\SLL64_A|Mux32|Mux19~2_combout\) # ((!\B[4]~input_o\ & (\Selector51~0_combout\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector51~0_combout\,
	datac => \B[5]~input_o\,
	datad => \SLL64_A|Mux32|Mux19~2_combout\,
	combout => \SLL64_A|Mux32|Mux19~3_combout\);

-- Location: LCCOMB_X57_Y38_N16
\SLL64_A|Mux8|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux19~1_combout\ = (\SLL64_A|Mux8|Mux35~0_combout\ & ((\SLL64_A|Mux32|Mux27~3_combout\) # ((\SLL64_A|Mux32|Mux19~3_combout\ & \SLL64_A|Mux8|Mux31~4_combout\)))) # (!\SLL64_A|Mux8|Mux35~0_combout\ & (\SLL64_A|Mux32|Mux19~3_combout\ & 
-- (\SLL64_A|Mux8|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux35~0_combout\,
	datab => \SLL64_A|Mux32|Mux19~3_combout\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \SLL64_A|Mux32|Mux27~3_combout\,
	combout => \SLL64_A|Mux8|Mux19~1_combout\);

-- Location: LCCOMB_X57_Y38_N14
\SLL64_A|Mux8|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux19~0_combout\ = (\SLL64_A|Mux8|Mux55~0_combout\ & ((\SLL64_A|Mux32|Mux31~5_combout\) # ((\SLL64_A|Mux32|Mux31~6_combout\ & \Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~5_combout\,
	datab => \SLL64_A|Mux32|Mux31~6_combout\,
	datac => \Selector63~0_combout\,
	datad => \SLL64_A|Mux8|Mux55~0_combout\,
	combout => \SLL64_A|Mux8|Mux19~0_combout\);

-- Location: LCCOMB_X57_Y38_N10
\SLL64_A|Mux8|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux19~2_combout\ = (\SLL64_A|Mux8|Mux19~1_combout\) # ((\SLL64_A|Mux8|Mux19~0_combout\) # ((\SLL64_A|Mux8|Mux27~0_combout\ & \SLL64_A|Mux32|Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux27~0_combout\,
	datab => \SLL64_A|Mux8|Mux19~1_combout\,
	datac => \SLL64_A|Mux8|Mux19~0_combout\,
	datad => \SLL64_A|Mux32|Mux23~3_combout\,
	combout => \SLL64_A|Mux8|Mux19~2_combout\);

-- Location: IOIBUF_X65_Y73_N8
\C[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(44),
	o => \C[44]~input_o\);

-- Location: LCCOMB_X57_Y41_N26
\Selector147~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector147~1_combout\ = (\ShiftFN[0]~input_o\ & (\Selector191~1_combout\ & (\SLL64_A|Mux8|Mux19~2_combout\))) # (!\ShiftFN[0]~input_o\ & ((\C[44]~input_o\) # ((\Selector191~1_combout\ & \SLL64_A|Mux8|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Selector191~1_combout\,
	datac => \SLL64_A|Mux8|Mux19~2_combout\,
	datad => \C[44]~input_o\,
	combout => \Selector147~1_combout\);

-- Location: LCCOMB_X57_Y41_N24
\Selector147~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector147~0_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux22~3_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector126~1_combout\,
	datac => \SLL64_A|Mux8|Mux20~3_combout\,
	datad => \SLL64_A|Mux8|Mux22~3_combout\,
	combout => \Selector147~0_combout\);

-- Location: LCCOMB_X57_Y41_N4
\Selector147~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector147~2_combout\ = (\Selector147~1_combout\) # ((\Selector147~0_combout\) # ((\SLL64_A|Mux8|Mux21~3_combout\ & \Selector157~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector147~1_combout\,
	datab => \SLL64_A|Mux8|Mux21~3_combout\,
	datac => \Selector157~4_combout\,
	datad => \Selector147~0_combout\,
	combout => \Selector147~2_combout\);

-- Location: LCCOMB_X56_Y37_N26
\Selector499~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector499~3_combout\ = (\Selector481~2_combout\ & (\Selector481~1_combout\)) # (!\Selector481~2_combout\ & ((\Selector481~1_combout\ & (\SLL64_A|Mux4|Mux31~28_combout\)) # (!\Selector481~1_combout\ & ((\Selector147~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \Selector481~1_combout\,
	datac => \SLL64_A|Mux4|Mux31~28_combout\,
	datad => \Selector147~2_combout\,
	combout => \Selector499~3_combout\);

-- Location: IOIBUF_X81_Y73_N1
\C[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(12),
	o => \C[12]~input_o\);

-- Location: LCCOMB_X53_Y40_N26
\Selector499~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector499~4_combout\ = (\Selector481~2_combout\ & ((\Selector499~3_combout\ & (\SLL64_A|Mux4|Mux31~26_combout\)) # (!\Selector499~3_combout\ & ((\C[12]~input_o\))))) # (!\Selector481~2_combout\ & (\Selector499~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \Selector499~3_combout\,
	datac => \SLL64_A|Mux4|Mux31~26_combout\,
	datad => \C[12]~input_o\,
	combout => \Selector499~4_combout\);

-- Location: LCCOMB_X52_Y36_N26
\SRL64_A|Mux8|Mux63~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~42_combout\ = (\B[2]~input_o\ & (\Selector4~0_combout\)) # (!\B[2]~input_o\ & ((\Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector4~0_combout\,
	datac => \Selector8~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~42_combout\);

-- Location: LCCOMB_X48_Y36_N20
\SRL64_A|Mux8|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux16~4_combout\ = (\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~42_combout\)) # (!\B[3]~input_o\ & (((\Selector12~0_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~42_combout\,
	datac => \Selector12~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux16~4_combout\);

-- Location: LCCOMB_X48_Y36_N22
\SRL64_A|Mux8|Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux16~5_combout\ = (\SRL64_A|Mux8|Mux16~4_combout\) # ((\SLL64_A|Mux32|Mux31~17_combout\ & (!\B[3]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~17_combout\,
	datab => \SRL64_A|Mux8|Mux16~4_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux16~5_combout\);

-- Location: LCCOMB_X48_Y36_N10
\SRL64_A|Mux4|Mux63~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~121_combout\ = (!\SRL64_A|Mux4|Mux63~110_combout\ & ((\B[1]~input_o\ & (\SRL64_A|Mux8|Mux16~5_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux18~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux16~5_combout\,
	datab => \SRL64_A|Mux4|Mux63~110_combout\,
	datac => \SRL64_A|Mux8|Mux18~2_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~121_combout\);

-- Location: LCCOMB_X48_Y36_N28
\SRA64_A|Mux8|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux16~1_combout\ = (\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~42_combout\))) # (!\B[3]~input_o\ & (\SRA64_A|Mux8|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64_A|Mux8|Mux16~0_combout\,
	datad => \SRL64_A|Mux8|Mux63~42_combout\,
	combout => \SRA64_A|Mux8|Mux16~1_combout\);

-- Location: LCCOMB_X48_Y36_N30
\SRL64_A|Mux4|Mux63~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~122_combout\ = (\B[4]~input_o\ & ((\B[2]~input_o\) # ((\B[3]~input_o\) # (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~122_combout\);

-- Location: LCCOMB_X48_Y36_N16
\SRL64_A|Mux4|Mux63~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~123_combout\ = (\SRL64_A|Mux4|Mux63~122_combout\) # (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~122_combout\,
	datac => \B[5]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~123_combout\);

-- Location: LCCOMB_X48_Y36_N2
\SRL64_A|Mux4|Mux63~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~124_combout\ = (\SRL64_A|Mux4|Mux63~123_combout\ & (\Selector0~0_combout\)) # (!\SRL64_A|Mux4|Mux63~123_combout\ & (((\B[1]~input_o\ & \SRA64_A|Mux8|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64_A|Mux8|Mux16~1_combout\,
	datad => \SRL64_A|Mux4|Mux63~123_combout\,
	combout => \SRL64_A|Mux4|Mux63~124_combout\);

-- Location: LCCOMB_X48_Y36_N4
\SRL64_A|Mux4|Mux63~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~125_combout\ = (\SRL64_A|Mux4|Mux63~124_combout\) # ((!\B[1]~input_o\ & (\SRL64_A|Mux8|Mux18~2_combout\ & !\SRL64_A|Mux4|Mux63~123_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~124_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux8|Mux18~2_combout\,
	datad => \SRL64_A|Mux4|Mux63~123_combout\,
	combout => \SRL64_A|Mux4|Mux63~125_combout\);

-- Location: LCCOMB_X48_Y37_N20
\Selector83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~117_combout\) # ((\SRL64_A|Mux4|Mux63~116_combout\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~116_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~117_combout\,
	combout => \Selector83~0_combout\);

-- Location: LCCOMB_X48_Y37_N6
\Selector83~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector83~1_combout\ = (\B[0]~input_o\ & ((\Selector83~0_combout\ & ((\SRL64_A|Mux4|Mux63~125_combout\))) # (!\Selector83~0_combout\ & (\SRL64_A|Mux4|Mux63~121_combout\)))) # (!\B[0]~input_o\ & (((\Selector83~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~121_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~125_combout\,
	datad => \Selector83~0_combout\,
	combout => \Selector83~1_combout\);

-- Location: LCCOMB_X52_Y36_N20
\SRA64_A|Mux32|Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux40~1_combout\ = (\SRL64_A|Mux32|Mux40~0_combout\) # (\SRA64_A|Mux32|Mux40~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64_A|Mux32|Mux40~0_combout\,
	datad => \SRA64_A|Mux32|Mux40~0_combout\,
	combout => \SRA64_A|Mux32|Mux40~1_combout\);

-- Location: LCCOMB_X53_Y34_N4
\SRL64_A|Mux32|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux36~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector20~0_combout\)) # (!\B[4]~input_o\ & ((\Selector36~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector20~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector36~0_combout\,
	combout => \SRL64_A|Mux32|Mux36~0_combout\);

-- Location: LCCOMB_X53_Y36_N16
\SRA64_A|Mux32|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux36~0_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector0~0_combout\)) # (!\B[4]~input_o\ & ((\Selector4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Selector4~0_combout\,
	combout => \SRA64_A|Mux32|Mux36~0_combout\);

-- Location: LCCOMB_X53_Y36_N26
\SRA64_A|Mux32|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux36~1_combout\ = (\SRL64_A|Mux32|Mux36~0_combout\) # (\SRA64_A|Mux32|Mux36~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux36~0_combout\,
	datad => \SRA64_A|Mux32|Mux36~0_combout\,
	combout => \SRA64_A|Mux32|Mux36~1_combout\);

-- Location: LCCOMB_X54_Y36_N30
\SRA64_A|Mux8|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux48~0_combout\ = (\B[3]~input_o\ & (((\SRA64_A|Mux32|Mux36~1_combout\) # (!\B[2]~input_o\)))) # (!\B[3]~input_o\ & (\SRA64_A|Mux32|Mux44~1_combout\ & ((\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64_A|Mux32|Mux44~1_combout\,
	datac => \SRA64_A|Mux32|Mux36~1_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64_A|Mux8|Mux48~0_combout\);

-- Location: LCCOMB_X54_Y36_N8
\SRA64_A|Mux8|Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux48~1_combout\ = (\SRA64_A|Mux8|Mux48~0_combout\ & (((\SRA64_A|Mux32|Mux40~1_combout\) # (\B[2]~input_o\)))) # (!\SRA64_A|Mux8|Mux48~0_combout\ & (\SRL64_A|Mux32|Mux48~1_combout\ & ((!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux48~1_combout\,
	datab => \SRA64_A|Mux32|Mux40~1_combout\,
	datac => \SRA64_A|Mux8|Mux48~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64_A|Mux8|Mux48~1_combout\);

-- Location: LCCOMB_X57_Y37_N8
\SRL64_A|Mux4|Mux63~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~120_combout\ = (\B[1]~input_o\ & (\SRA64_A|Mux8|Mux48~1_combout\)) # (!\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux50~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux48~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64_A|Mux8|Mux50~1_combout\,
	combout => \SRL64_A|Mux4|Mux63~120_combout\);

-- Location: LCCOMB_X52_Y36_N30
\SRL64_A|Mux8|Mux63~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~40_combout\ = (\SLL64_A|Mux32|Mux31~6_combout\ & ((\B[2]~input_o\ & (\Selector4~0_combout\)) # (!\B[2]~input_o\ & ((\Selector8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~6_combout\,
	datab => \Selector4~0_combout\,
	datac => \Selector8~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~40_combout\);

-- Location: LCCOMB_X52_Y36_N16
\SRL64_A|Mux8|Mux63~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~41_combout\ = (\SRL64_A|Mux8|Mux63~40_combout\) # ((\B[2]~input_o\ & (\SRL64_A|Mux32|Mux36~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux36~0_combout\,
	datab => \SRL64_A|Mux32|Mux40~0_combout\,
	datac => \SRL64_A|Mux8|Mux63~40_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~41_combout\);

-- Location: LCCOMB_X54_Y40_N8
\SRL64_A|Mux4|Mux63~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~118_combout\ = (\B[1]~input_o\ & (((\SRL64_A|Mux8|Mux63~41_combout\)) # (!\B[3]~input_o\))) # (!\B[1]~input_o\ & (\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~41_combout\,
	datad => \SRL64_A|Mux8|Mux63~37_combout\,
	combout => \SRL64_A|Mux4|Mux63~118_combout\);

-- Location: LCCOMB_X55_Y38_N30
\SRL64_A|Mux4|Mux63~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~119_combout\ = (\B[3]~input_o\ & (((\SRL64_A|Mux4|Mux63~118_combout\)))) # (!\B[3]~input_o\ & ((\SRL64_A|Mux4|Mux63~118_combout\ & ((\SRL64_A|Mux8|Mux63~20_combout\))) # (!\SRL64_A|Mux4|Mux63~118_combout\ & 
-- (\SRL64_A|Mux8|Mux63~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~17_combout\,
	datab => \SRL64_A|Mux8|Mux63~20_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~118_combout\,
	combout => \SRL64_A|Mux4|Mux63~119_combout\);

-- Location: LCCOMB_X58_Y37_N28
\Selector499~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector499~0_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~119_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRL64_A|Mux4|Mux63~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~119_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~114_combout\,
	combout => \Selector499~0_combout\);

-- Location: LCCOMB_X57_Y37_N26
\Selector499~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector499~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector499~0_combout\ & ((\SRL64_A|Mux4|Mux63~120_combout\))) # (!\Selector499~0_combout\ & (\SRL64_A|Mux4|Mux63~115_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Selector499~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~115_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~120_combout\,
	datad => \Selector499~0_combout\,
	combout => \Selector499~1_combout\);

-- Location: LCCOMB_X56_Y37_N24
\Selector499~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector499~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector499~1_combout\))) # (!\Selector481~0_combout\ & (\Selector83~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~0_combout\,
	datab => \Selector83~1_combout\,
	datac => \Selector499~1_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector499~2_combout\);

-- Location: LCCOMB_X56_Y37_N4
\Selector499~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector499~5_combout\ = (\Selector499~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector499~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector499~4_combout\,
	datad => \Selector499~2_combout\,
	combout => \Selector499~5_combout\);

-- Location: LCCOMB_X48_Y36_N6
\SRL64_A|Mux4|Mux63~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~129_combout\ = (\Selector0~0_combout\ & ((\SRL64_A|Mux4|Mux63~122_combout\) # (\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~122_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector0~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~129_combout\);

-- Location: LCCOMB_X48_Y39_N2
\SRL64_A|Mux8|Mux63~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~45_combout\ = (\B[2]~input_o\ & (\Selector3~0_combout\)) # (!\B[2]~input_o\ & ((\Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector7~0_combout\,
	datac => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~45_combout\);

-- Location: LCCOMB_X49_Y38_N12
\SRL64_A|Mux8|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux15~0_combout\ = (\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~45_combout\))) # (!\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64_A|Mux8|Mux63~24_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~45_combout\,
	combout => \SRL64_A|Mux8|Mux15~0_combout\);

-- Location: LCCOMB_X49_Y38_N30
\SRL64_A|Mux4|Mux63~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~130_combout\ = (!\SRL64_A|Mux4|Mux63~123_combout\ & ((\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux15~0_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux8|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~123_combout\,
	datab => \SRL64_A|Mux8|Mux17~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux8|Mux15~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~130_combout\);

-- Location: LCCOMB_X48_Y37_N16
\Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (\B[0]~input_o\ & (\ShiftFN[0]~input_o\)) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRL64_A|Mux4|Mux63~125_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~121_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~125_combout\,
	datad => \SRL64_A|Mux4|Mux63~121_combout\,
	combout => \Selector82~0_combout\);

-- Location: LCCOMB_X48_Y37_N18
\Selector82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~1_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~130_combout\) # ((\SRL64_A|Mux4|Mux63~129_combout\ & \Selector82~0_combout\)))) # (!\B[0]~input_o\ & (((\Selector82~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~129_combout\,
	datac => \SRL64_A|Mux4|Mux63~130_combout\,
	datad => \Selector82~0_combout\,
	combout => \Selector82~1_combout\);

-- Location: LCCOMB_X56_Y38_N28
\SRL64_A|Mux32|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux35~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector19~0_combout\)) # (!\B[4]~input_o\ & ((\Selector35~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Selector19~0_combout\,
	datad => \Selector35~0_combout\,
	combout => \SRL64_A|Mux32|Mux35~0_combout\);

-- Location: LCCOMB_X59_Y38_N26
\SRL64_A|Mux8|Mux63~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~43_combout\ = (\SLL64_A|Mux32|Mux31~6_combout\ & ((\B[2]~input_o\ & ((\Selector3~0_combout\))) # (!\B[2]~input_o\ & (\Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux32|Mux31~6_combout\,
	datac => \Selector7~0_combout\,
	datad => \Selector3~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~43_combout\);

-- Location: LCCOMB_X59_Y38_N12
\SRL64_A|Mux8|Mux63~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~44_combout\ = (\SRL64_A|Mux8|Mux63~43_combout\) # ((\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux35~0_combout\))) # (!\B[2]~input_o\ & (\SRL64_A|Mux32|Mux39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux39~0_combout\,
	datab => \SRL64_A|Mux32|Mux35~0_combout\,
	datac => \SRL64_A|Mux8|Mux63~43_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~44_combout\);

-- Location: LCCOMB_X59_Y39_N2
\SRL64_A|Mux4|Mux63~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~126_combout\ = (\B[3]~input_o\ & ((\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux63~44_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux8|Mux63~39_combout\)))) # (!\B[3]~input_o\ & (((\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~39_combout\,
	datac => \SRL64_A|Mux8|Mux63~44_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~126_combout\);

-- Location: LCCOMB_X59_Y40_N12
\SRL64_A|Mux4|Mux63~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~127_combout\ = (\B[3]~input_o\ & (((\SRL64_A|Mux4|Mux63~126_combout\)))) # (!\B[3]~input_o\ & ((\SRL64_A|Mux4|Mux63~126_combout\ & ((\SRL64_A|Mux8|Mux63~23_combout\))) # (!\SRL64_A|Mux4|Mux63~126_combout\ & 
-- (\SRL64_A|Mux8|Mux63~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~19_combout\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~23_combout\,
	datad => \SRL64_A|Mux4|Mux63~126_combout\,
	combout => \SRL64_A|Mux4|Mux63~127_combout\);

-- Location: LCCOMB_X58_Y37_N6
\Selector498~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector498~0_combout\ = (\ShiftFN[0]~input_o\ & (\B[0]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~127_combout\)) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~119_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~127_combout\,
	datad => \SRL64_A|Mux4|Mux63~119_combout\,
	combout => \Selector498~0_combout\);

-- Location: LCCOMB_X59_Y38_N30
\SRA64_A|Mux32|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux35~0_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector0~0_combout\)) # (!\B[4]~input_o\ & ((\Selector3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Selector0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector3~0_combout\,
	combout => \SRA64_A|Mux32|Mux35~0_combout\);

-- Location: LCCOMB_X59_Y38_N16
\SRA64_A|Mux32|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux35~1_combout\ = (\SRL64_A|Mux32|Mux35~0_combout\) # (\SRA64_A|Mux32|Mux35~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64_A|Mux32|Mux35~0_combout\,
	datac => \SRA64_A|Mux32|Mux35~0_combout\,
	combout => \SRA64_A|Mux32|Mux35~1_combout\);

-- Location: LCCOMB_X59_Y37_N26
\SRA64_A|Mux8|Mux47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux47~4_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SRA64_A|Mux32|Mux35~1_combout\))) # (!\B[3]~input_o\ & (\SRA64_A|Mux32|Mux43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64_A|Mux32|Mux43~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64_A|Mux32|Mux35~1_combout\,
	combout => \SRA64_A|Mux8|Mux47~4_combout\);

-- Location: LCCOMB_X59_Y37_N4
\SRA64_A|Mux8|Mux47~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux47~5_combout\ = (\SRA64_A|Mux8|Mux47~4_combout\) # ((\SRA64_A|Mux8|Mux47~6_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux47~6_combout\,
	datab => \B[2]~input_o\,
	datac => \SRA64_A|Mux8|Mux47~4_combout\,
	combout => \SRA64_A|Mux8|Mux47~5_combout\);

-- Location: LCCOMB_X57_Y37_N28
\SRL64_A|Mux4|Mux63~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~128_combout\ = (\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux47~5_combout\))) # (!\B[1]~input_o\ & (\SRA64_A|Mux8|Mux49~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64_A|Mux8|Mux49~1_combout\,
	datac => \SRA64_A|Mux8|Mux47~5_combout\,
	combout => \SRL64_A|Mux4|Mux63~128_combout\);

-- Location: LCCOMB_X57_Y37_N6
\Selector498~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector498~1_combout\ = (\Selector498~0_combout\ & ((\SRL64_A|Mux4|Mux63~128_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\Selector498~0_combout\ & (((\SRL64_A|Mux4|Mux63~120_combout\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector498~0_combout\,
	datab => \SRL64_A|Mux4|Mux63~128_combout\,
	datac => \SRL64_A|Mux4|Mux63~120_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector498~1_combout\);

-- Location: LCCOMB_X56_Y37_N30
\Selector498~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector498~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector498~1_combout\))) # (!\Selector481~0_combout\ & (\Selector82~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~0_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector82~1_combout\,
	datad => \Selector498~1_combout\,
	combout => \Selector498~2_combout\);

-- Location: LCCOMB_X50_Y37_N28
\SLL64_A|Mux8|Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux50~1_combout\ = (\B[3]~input_o\ & (\Selector58~0_combout\)) # (!\B[3]~input_o\ & ((\Selector50~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Selector58~0_combout\,
	datac => \Selector50~0_combout\,
	combout => \SLL64_A|Mux8|Mux50~1_combout\);

-- Location: LCCOMB_X50_Y37_N6
\SLL64_A|Mux8|Mux50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux50~2_combout\ = (\B[2]~input_o\ & ((\SLL64_A|Mux8|Mux50~0_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux8|Mux50~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux8|Mux50~1_combout\,
	datac => \SLL64_A|Mux8|Mux50~0_combout\,
	combout => \SLL64_A|Mux8|Mux50~2_combout\);

-- Location: LCCOMB_X50_Y37_N16
\SLL64_A|Mux4|Mux31~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~29_combout\ = (\SLL64_A|Mux4|Mux31~68_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux52~0_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux50~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux50~2_combout\,
	datab => \SLL64_A|Mux4|Mux31~68_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux52~0_combout\,
	combout => \SLL64_A|Mux4|Mux31~29_combout\);

-- Location: IOIBUF_X115_Y34_N15
\C[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(13),
	o => \C[13]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\C[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(45),
	o => \C[45]~input_o\);

-- Location: LCCOMB_X57_Y40_N12
\Selector146~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector146~1_combout\ = (\SLL64_A|Mux8|Mux20~3_combout\ & ((\Selector157~4_combout\) # ((\C[45]~input_o\ & !\ShiftFN[0]~input_o\)))) # (!\SLL64_A|Mux8|Mux20~3_combout\ & (((\C[45]~input_o\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux20~3_combout\,
	datab => \Selector157~4_combout\,
	datac => \C[45]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector146~1_combout\);

-- Location: LCCOMB_X57_Y41_N14
\Selector146~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector146~0_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux21~3_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector126~1_combout\,
	datac => \SLL64_A|Mux8|Mux19~2_combout\,
	datad => \SLL64_A|Mux8|Mux21~3_combout\,
	combout => \Selector146~0_combout\);

-- Location: LCCOMB_X55_Y35_N18
\SLL64_A|Mux32|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux18~2_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector34~0_combout\)) # (!\B[4]~input_o\ & ((\Selector18~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector34~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector18~0_combout\,
	combout => \SLL64_A|Mux32|Mux18~2_combout\);

-- Location: LCCOMB_X55_Y35_N22
\SLL64_A|Mux32|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux18~3_combout\ = (\SLL64_A|Mux32|Mux18~2_combout\) # ((!\B[4]~input_o\ & (\Selector50~0_combout\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector50~0_combout\,
	datac => \B[5]~input_o\,
	datad => \SLL64_A|Mux32|Mux18~2_combout\,
	combout => \SLL64_A|Mux32|Mux18~3_combout\);

-- Location: LCCOMB_X56_Y39_N24
\SLL64_A|Mux8|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux18~1_combout\ = (\SLL64_A|Mux8|Mux35~0_combout\ & ((\SLL64_A|Mux32|Mux26~3_combout\) # ((\SLL64_A|Mux8|Mux31~4_combout\ & \SLL64_A|Mux32|Mux18~3_combout\)))) # (!\SLL64_A|Mux8|Mux35~0_combout\ & (\SLL64_A|Mux8|Mux31~4_combout\ & 
-- (\SLL64_A|Mux32|Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux35~0_combout\,
	datab => \SLL64_A|Mux8|Mux31~4_combout\,
	datac => \SLL64_A|Mux32|Mux18~3_combout\,
	datad => \SLL64_A|Mux32|Mux26~3_combout\,
	combout => \SLL64_A|Mux8|Mux18~1_combout\);

-- Location: LCCOMB_X56_Y39_N14
\SLL64_A|Mux8|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux18~0_combout\ = (\SLL64_A|Mux8|Mux27~0_combout\ & ((\SLL64_A|Mux32|Mux22~3_combout\) # ((\SLL64_A|Mux8|Mux55~0_combout\ & \SLL64_A|Mux32|Mux30~3_combout\)))) # (!\SLL64_A|Mux8|Mux27~0_combout\ & (((\SLL64_A|Mux8|Mux55~0_combout\ & 
-- \SLL64_A|Mux32|Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux27~0_combout\,
	datab => \SLL64_A|Mux32|Mux22~3_combout\,
	datac => \SLL64_A|Mux8|Mux55~0_combout\,
	datad => \SLL64_A|Mux32|Mux30~3_combout\,
	combout => \SLL64_A|Mux8|Mux18~0_combout\);

-- Location: LCCOMB_X56_Y39_N2
\SLL64_A|Mux8|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux18~2_combout\ = (\SLL64_A|Mux8|Mux18~1_combout\) # (\SLL64_A|Mux8|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64_A|Mux8|Mux18~1_combout\,
	datac => \SLL64_A|Mux8|Mux18~0_combout\,
	combout => \SLL64_A|Mux8|Mux18~2_combout\);

-- Location: LCCOMB_X57_Y41_N16
\Selector146~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector146~2_combout\ = (\Selector146~1_combout\) # ((\Selector146~0_combout\) # ((\Selector191~1_combout\ & \SLL64_A|Mux8|Mux18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector146~1_combout\,
	datab => \Selector146~0_combout\,
	datac => \Selector191~1_combout\,
	datad => \SLL64_A|Mux8|Mux18~2_combout\,
	combout => \Selector146~2_combout\);

-- Location: LCCOMB_X56_Y37_N0
\Selector498~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector498~3_combout\ = (\Selector481~2_combout\ & ((\Selector481~1_combout\) # ((\C[13]~input_o\)))) # (!\Selector481~2_combout\ & (!\Selector481~1_combout\ & ((\Selector146~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \Selector481~1_combout\,
	datac => \C[13]~input_o\,
	datad => \Selector146~2_combout\,
	combout => \Selector498~3_combout\);

-- Location: LCCOMB_X56_Y37_N2
\Selector498~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector498~4_combout\ = (\Selector481~1_combout\ & ((\Selector498~3_combout\ & ((\SLL64_A|Mux4|Mux31~28_combout\))) # (!\Selector498~3_combout\ & (\SLL64_A|Mux4|Mux31~29_combout\)))) # (!\Selector481~1_combout\ & (((\Selector498~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~29_combout\,
	datab => \Selector481~1_combout\,
	datac => \SLL64_A|Mux4|Mux31~28_combout\,
	datad => \Selector498~3_combout\,
	combout => \Selector498~4_combout\);

-- Location: LCCOMB_X56_Y37_N12
\Selector498~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector498~5_combout\ = (\Selector498~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector498~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector498~2_combout\,
	datad => \Selector498~4_combout\,
	combout => \Selector498~5_combout\);

-- Location: LCCOMB_X54_Y35_N22
\SRL64_A|Mux8|Mux63~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~48_combout\ = (\B[2]~input_o\ & (\Selector2~0_combout\)) # (!\B[2]~input_o\ & ((\Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Selector2~0_combout\,
	datad => \Selector6~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~48_combout\);

-- Location: LCCOMB_X52_Y35_N22
\SRL64_A|Mux8|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux14~0_combout\ = (\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~48_combout\))) # (!\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~27_combout\,
	datac => \SRL64_A|Mux8|Mux63~48_combout\,
	combout => \SRL64_A|Mux8|Mux14~0_combout\);

-- Location: LCCOMB_X53_Y36_N20
\SRL64_A|Mux4|Mux63~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~135_combout\ = (\Selector0~0_combout\ & ((\B[5]~input_o\) # (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~135_combout\);

-- Location: LCCOMB_X48_Y36_N18
\SRL64_A|Mux4|Mux63~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~136_combout\ = (\SRL64_A|Mux4|Mux63~135_combout\) # ((\SLL64_A|Mux32|Mux31~32_combout\ & (!\B[1]~input_o\ & \SRA64_A|Mux8|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~32_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~135_combout\,
	datad => \SRA64_A|Mux8|Mux16~1_combout\,
	combout => \SRL64_A|Mux4|Mux63~136_combout\);

-- Location: LCCOMB_X48_Y36_N12
\SRL64_A|Mux4|Mux63~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~137_combout\ = (\SRL64_A|Mux4|Mux63~136_combout\) # ((\SRL64_A|Mux8|Mux14~0_combout\ & (\SLL64_A|Mux32|Mux31~32_combout\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux14~0_combout\,
	datab => \SRL64_A|Mux4|Mux63~136_combout\,
	datac => \SLL64_A|Mux32|Mux31~32_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~137_combout\);

-- Location: LCCOMB_X48_Y36_N0
\SRL64_A|Mux4|Mux63~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~134_combout\ = (!\SRL64_A|Mux4|Mux63~123_combout\ & ((\B[1]~input_o\ & (\SRL64_A|Mux8|Mux14~0_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux16~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux14~0_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux8|Mux16~5_combout\,
	datad => \SRL64_A|Mux4|Mux63~123_combout\,
	combout => \SRL64_A|Mux4|Mux63~134_combout\);

-- Location: LCCOMB_X48_Y37_N4
\Selector81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (\B[0]~input_o\ & (\ShiftFN[0]~input_o\)) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~130_combout\) # ((\ShiftFN[0]~input_o\ & \SRL64_A|Mux4|Mux63~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~130_combout\,
	datad => \SRL64_A|Mux4|Mux63~129_combout\,
	combout => \Selector81~0_combout\);

-- Location: LCCOMB_X48_Y37_N22
\Selector81~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~1_combout\ = (\Selector81~0_combout\ & ((\SRL64_A|Mux4|Mux63~137_combout\) # ((!\B[0]~input_o\)))) # (!\Selector81~0_combout\ & (((\SRL64_A|Mux4|Mux63~134_combout\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~137_combout\,
	datab => \SRL64_A|Mux4|Mux63~134_combout\,
	datac => \Selector81~0_combout\,
	datad => \B[0]~input_o\,
	combout => \Selector81~1_combout\);

-- Location: LCCOMB_X55_Y35_N28
\SRL64_A|Mux32|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux34~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector18~0_combout\))) # (!\B[4]~input_o\ & (\Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector34~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector18~0_combout\,
	combout => \SRL64_A|Mux32|Mux34~0_combout\);

-- Location: LCCOMB_X55_Y37_N8
\SRA64_A|Mux32|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux34~0_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector0~0_combout\)) # (!\B[4]~input_o\ & ((\Selector2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Selector0~0_combout\,
	datad => \Selector2~0_combout\,
	combout => \SRA64_A|Mux32|Mux34~0_combout\);

-- Location: LCCOMB_X55_Y37_N26
\SRA64_A|Mux32|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux34~1_combout\ = (\SRL64_A|Mux32|Mux34~0_combout\) # (\SRA64_A|Mux32|Mux34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux34~0_combout\,
	datac => \SRA64_A|Mux32|Mux34~0_combout\,
	combout => \SRA64_A|Mux32|Mux34~1_combout\);

-- Location: LCCOMB_X55_Y37_N20
\SRA64_A|Mux8|Mux46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux46~4_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRA64_A|Mux32|Mux34~1_combout\)) # (!\B[3]~input_o\ & ((\SRA64_A|Mux32|Mux42~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux32|Mux34~1_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64_A|Mux32|Mux42~1_combout\,
	combout => \SRA64_A|Mux8|Mux46~4_combout\);

-- Location: LCCOMB_X57_Y37_N16
\SRA64_A|Mux8|Mux46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux46~5_combout\ = (\SRA64_A|Mux8|Mux46~4_combout\) # ((!\B[2]~input_o\ & \SRA64_A|Mux8|Mux46~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SRA64_A|Mux8|Mux46~6_combout\,
	datad => \SRA64_A|Mux8|Mux46~4_combout\,
	combout => \SRA64_A|Mux8|Mux46~5_combout\);

-- Location: LCCOMB_X57_Y37_N10
\SRL64_A|Mux4|Mux63~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~133_combout\ = (\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux46~5_combout\))) # (!\B[1]~input_o\ & (\SRA64_A|Mux8|Mux48~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux48~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64_A|Mux8|Mux46~5_combout\,
	combout => \SRL64_A|Mux4|Mux63~133_combout\);

-- Location: LCCOMB_X54_Y35_N12
\SRL64_A|Mux8|Mux63~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~46_combout\ = (\SLL64_A|Mux32|Mux31~6_combout\ & ((\B[2]~input_o\ & (\Selector2~0_combout\)) # (!\B[2]~input_o\ & ((\Selector6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Selector2~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~6_combout\,
	datad => \Selector6~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~46_combout\);

-- Location: LCCOMB_X55_Y37_N6
\SRL64_A|Mux8|Mux63~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~47_combout\ = (\SRL64_A|Mux8|Mux63~46_combout\) # ((\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux34~0_combout\))) # (!\B[2]~input_o\ & (\SRL64_A|Mux32|Mux38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux38~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~46_combout\,
	datad => \SRL64_A|Mux32|Mux34~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~47_combout\);

-- Location: LCCOMB_X54_Y40_N26
\SRL64_A|Mux4|Mux63~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~131_combout\ = (\B[1]~input_o\ & (((\SRL64_A|Mux8|Mux63~47_combout\)) # (!\B[3]~input_o\))) # (!\B[1]~input_o\ & (\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~41_combout\,
	datad => \SRL64_A|Mux8|Mux63~47_combout\,
	combout => \SRL64_A|Mux4|Mux63~131_combout\);

-- Location: LCCOMB_X54_Y40_N12
\SRL64_A|Mux4|Mux63~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~132_combout\ = (\SRL64_A|Mux4|Mux63~131_combout\ & ((\B[3]~input_o\) # ((\SRL64_A|Mux8|Mux63~26_combout\)))) # (!\SRL64_A|Mux4|Mux63~131_combout\ & (!\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~131_combout\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~26_combout\,
	datad => \SRL64_A|Mux8|Mux63~20_combout\,
	combout => \SRL64_A|Mux4|Mux63~132_combout\);

-- Location: LCCOMB_X58_Y37_N16
\Selector497~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector497~0_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~132_combout\)) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~127_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~132_combout\,
	datab => \SRL64_A|Mux4|Mux63~127_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Selector497~0_combout\);

-- Location: LCCOMB_X57_Y37_N4
\Selector497~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector497~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector497~0_combout\ & (\SRL64_A|Mux4|Mux63~133_combout\)) # (!\Selector497~0_combout\ & ((\SRL64_A|Mux4|Mux63~128_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Selector497~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~133_combout\,
	datab => \SRL64_A|Mux4|Mux63~128_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Selector497~0_combout\,
	combout => \Selector497~1_combout\);

-- Location: LCCOMB_X56_Y37_N6
\Selector497~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector497~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector497~1_combout\))) # (!\Selector481~0_combout\ & (\Selector81~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector81~1_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector481~0_combout\,
	datad => \Selector497~1_combout\,
	combout => \Selector497~2_combout\);

-- Location: LCCOMB_X50_Y42_N10
\SLL64_A|Mux8|Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux49~1_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Selector57~0_combout\))) # (!\B[3]~input_o\ & (\Selector49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Selector49~0_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector57~0_combout\,
	combout => \SLL64_A|Mux8|Mux49~1_combout\);

-- Location: LCCOMB_X50_Y42_N12
\SLL64_A|Mux8|Mux49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux49~2_combout\ = (\SLL64_A|Mux8|Mux49~1_combout\) # ((\SLL64_A|Mux8|Mux49~0_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux49~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64_A|Mux8|Mux49~1_combout\,
	combout => \SLL64_A|Mux8|Mux49~2_combout\);

-- Location: LCCOMB_X49_Y38_N0
\SLL64_A|Mux4|Mux31~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~30_combout\ = (\SLL64_A|Mux32|Mux31~32_combout\ & ((\B[1]~input_o\ & (\SLL64_A|Mux8|Mux51~2_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux49~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux51~2_combout\,
	datab => \SLL64_A|Mux8|Mux49~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~32_combout\,
	combout => \SLL64_A|Mux4|Mux31~30_combout\);

-- Location: LCCOMB_X52_Y41_N18
\SLL64_A|Mux32|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux17~2_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector33~0_combout\))) # (!\B[4]~input_o\ & (\Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector17~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector33~0_combout\,
	combout => \SLL64_A|Mux32|Mux17~2_combout\);

-- Location: LCCOMB_X52_Y41_N22
\SLL64_A|Mux32|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux17~3_combout\ = (\SLL64_A|Mux32|Mux17~2_combout\) # ((!\B[4]~input_o\ & (\B[5]~input_o\ & \Selector49~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SLL64_A|Mux32|Mux17~2_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector49~0_combout\,
	combout => \SLL64_A|Mux32|Mux17~3_combout\);

-- Location: LCCOMB_X53_Y42_N12
\SLL64_A|Mux8|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux17~1_combout\ = (\SLL64_A|Mux32|Mux25~3_combout\ & ((\SLL64_A|Mux8|Mux35~0_combout\) # ((\SLL64_A|Mux32|Mux17~3_combout\ & \SLL64_A|Mux8|Mux31~4_combout\)))) # (!\SLL64_A|Mux32|Mux25~3_combout\ & (\SLL64_A|Mux32|Mux17~3_combout\ & 
-- (\SLL64_A|Mux8|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux25~3_combout\,
	datab => \SLL64_A|Mux32|Mux17~3_combout\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \SLL64_A|Mux8|Mux35~0_combout\,
	combout => \SLL64_A|Mux8|Mux17~1_combout\);

-- Location: LCCOMB_X53_Y42_N26
\SLL64_A|Mux8|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux17~0_combout\ = (\SLL64_A|Mux8|Mux55~0_combout\ & ((\SLL64_A|Mux32|Mux29~3_combout\) # ((\SLL64_A|Mux32|Mux21~3_combout\ & \SLL64_A|Mux8|Mux27~0_combout\)))) # (!\SLL64_A|Mux8|Mux55~0_combout\ & (((\SLL64_A|Mux32|Mux21~3_combout\ & 
-- \SLL64_A|Mux8|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux55~0_combout\,
	datab => \SLL64_A|Mux32|Mux29~3_combout\,
	datac => \SLL64_A|Mux32|Mux21~3_combout\,
	datad => \SLL64_A|Mux8|Mux27~0_combout\,
	combout => \SLL64_A|Mux8|Mux17~0_combout\);

-- Location: LCCOMB_X53_Y42_N30
\SLL64_A|Mux8|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux17~2_combout\ = (\SLL64_A|Mux8|Mux17~1_combout\) # (\SLL64_A|Mux8|Mux17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux17~1_combout\,
	datac => \SLL64_A|Mux8|Mux17~0_combout\,
	combout => \SLL64_A|Mux8|Mux17~2_combout\);

-- Location: LCCOMB_X57_Y41_N12
\Selector145~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector145~1_combout\ = (\Selector157~4_combout\ & ((\SLL64_A|Mux8|Mux19~2_combout\) # ((\Selector191~1_combout\ & \SLL64_A|Mux8|Mux17~2_combout\)))) # (!\Selector157~4_combout\ & (\Selector191~1_combout\ & ((\SLL64_A|Mux8|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector157~4_combout\,
	datab => \Selector191~1_combout\,
	datac => \SLL64_A|Mux8|Mux19~2_combout\,
	datad => \SLL64_A|Mux8|Mux17~2_combout\,
	combout => \Selector145~1_combout\);

-- Location: LCCOMB_X57_Y41_N2
\Selector145~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector145~0_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & (\SLL64_A|Mux8|Mux20~3_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux18~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector126~1_combout\,
	datac => \SLL64_A|Mux8|Mux20~3_combout\,
	datad => \SLL64_A|Mux8|Mux18~2_combout\,
	combout => \Selector145~0_combout\);

-- Location: IOIBUF_X115_Y41_N8
\C[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(46),
	o => \C[46]~input_o\);

-- Location: LCCOMB_X57_Y41_N30
\Selector145~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector145~2_combout\ = (\Selector145~1_combout\) # ((\Selector145~0_combout\) # ((!\ShiftFN[0]~input_o\ & \C[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector145~1_combout\,
	datab => \Selector145~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \C[46]~input_o\,
	combout => \Selector145~2_combout\);

-- Location: LCCOMB_X56_Y37_N8
\Selector497~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector497~3_combout\ = (\Selector481~2_combout\ & (((\Selector481~1_combout\)))) # (!\Selector481~2_combout\ & ((\Selector481~1_combout\ & (\SLL64_A|Mux4|Mux31~30_combout\)) # (!\Selector481~1_combout\ & ((\Selector145~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \SLL64_A|Mux4|Mux31~30_combout\,
	datac => \Selector481~1_combout\,
	datad => \Selector145~2_combout\,
	combout => \Selector497~3_combout\);

-- Location: IOIBUF_X60_Y0_N1
\C[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(14),
	o => \C[14]~input_o\);

-- Location: LCCOMB_X56_Y37_N18
\Selector497~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector497~4_combout\ = (\Selector481~2_combout\ & ((\Selector497~3_combout\ & (\SLL64_A|Mux4|Mux31~29_combout\)) # (!\Selector497~3_combout\ & ((\C[14]~input_o\))))) # (!\Selector481~2_combout\ & (\Selector497~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \Selector497~3_combout\,
	datac => \SLL64_A|Mux4|Mux31~29_combout\,
	datad => \C[14]~input_o\,
	combout => \Selector497~4_combout\);

-- Location: LCCOMB_X56_Y37_N20
\Selector497~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector497~5_combout\ = (\Selector497~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector497~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector497~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datad => \Selector497~4_combout\,
	combout => \Selector497~5_combout\);

-- Location: LCCOMB_X52_Y41_N12
\SRL64_A|Mux32|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux33~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector17~0_combout\)) # (!\B[4]~input_o\ & ((\Selector33~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector17~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector33~0_combout\,
	combout => \SRL64_A|Mux32|Mux33~0_combout\);

-- Location: LCCOMB_X52_Y41_N14
\SRA64_A|Mux32|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux33~0_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector0~0_combout\)) # (!\B[4]~input_o\ & ((\Selector1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector1~0_combout\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRA64_A|Mux32|Mux33~0_combout\);

-- Location: LCCOMB_X52_Y41_N16
\SRA64_A|Mux32|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux33~1_combout\ = (\SRL64_A|Mux32|Mux33~0_combout\) # (\SRA64_A|Mux32|Mux33~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux33~0_combout\,
	datac => \SRA64_A|Mux32|Mux33~0_combout\,
	combout => \SRA64_A|Mux32|Mux33~1_combout\);

-- Location: LCCOMB_X55_Y41_N24
\SRA64_A|Mux8|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux45~1_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRA64_A|Mux32|Mux33~1_combout\)) # (!\B[3]~input_o\ & ((\SRA64_A|Mux32|Mux41~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64_A|Mux32|Mux33~1_combout\,
	datac => \SRA64_A|Mux32|Mux41~1_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64_A|Mux8|Mux45~1_combout\);

-- Location: LCCOMB_X55_Y41_N18
\SRA64_A|Mux8|Mux45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux45~2_combout\ = (\SRA64_A|Mux8|Mux45~1_combout\) # ((!\B[2]~input_o\ & \SRA64_A|Mux8|Mux45~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64_A|Mux8|Mux45~0_combout\,
	datad => \SRA64_A|Mux8|Mux45~1_combout\,
	combout => \SRA64_A|Mux8|Mux45~2_combout\);

-- Location: LCCOMB_X57_Y37_N30
\SRL64_A|Mux4|Mux63~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~142_combout\ = (\B[1]~input_o\ & (\SRA64_A|Mux8|Mux45~2_combout\)) # (!\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux47~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64_A|Mux8|Mux45~2_combout\,
	datac => \SRA64_A|Mux8|Mux47~5_combout\,
	combout => \SRL64_A|Mux4|Mux63~142_combout\);

-- Location: LCCOMB_X54_Y41_N24
\SRL64_A|Mux8|Mux63~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~49_combout\ = (\SLL64_A|Mux32|Mux31~6_combout\ & ((\B[2]~input_o\ & ((\Selector1~0_combout\))) # (!\B[2]~input_o\ & (\Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~6_combout\,
	datab => \Selector5~0_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector1~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~49_combout\);

-- Location: LCCOMB_X54_Y41_N2
\SRL64_A|Mux8|Mux63~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~50_combout\ = (\SRL64_A|Mux8|Mux63~49_combout\) # ((\B[2]~input_o\ & (\SRL64_A|Mux32|Mux33~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux33~0_combout\,
	datab => \SRL64_A|Mux32|Mux37~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~49_combout\,
	combout => \SRL64_A|Mux8|Mux63~50_combout\);

-- Location: LCCOMB_X59_Y39_N6
\SRL64_A|Mux4|Mux63~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~140_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~50_combout\)) # (!\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~50_combout\,
	datac => \SRL64_A|Mux8|Mux63~29_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~140_combout\);

-- Location: LCCOMB_X52_Y40_N8
\SRL64_A|Mux4|Mux63~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~138_combout\ = (!\B[1]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~138_combout\);

-- Location: LCCOMB_X53_Y39_N6
\SRL64_A|Mux4|Mux63~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~73_combout\ = (\B[3]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~73_combout\);

-- Location: LCCOMB_X59_Y39_N12
\SRL64_A|Mux4|Mux63~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~139_combout\ = (\SRL64_A|Mux4|Mux63~138_combout\ & ((\SRL64_A|Mux8|Mux63~23_combout\) # ((\SRL64_A|Mux8|Mux63~44_combout\ & \SRL64_A|Mux4|Mux63~73_combout\)))) # (!\SRL64_A|Mux4|Mux63~138_combout\ & (\SRL64_A|Mux8|Mux63~44_combout\ & 
-- ((\SRL64_A|Mux4|Mux63~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~138_combout\,
	datab => \SRL64_A|Mux8|Mux63~44_combout\,
	datac => \SRL64_A|Mux8|Mux63~23_combout\,
	datad => \SRL64_A|Mux4|Mux63~73_combout\,
	combout => \SRL64_A|Mux4|Mux63~139_combout\);

-- Location: LCCOMB_X59_Y39_N0
\SRL64_A|Mux4|Mux63~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~141_combout\ = (\SRL64_A|Mux4|Mux63~140_combout\) # (\SRL64_A|Mux4|Mux63~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~140_combout\,
	datad => \SRL64_A|Mux4|Mux63~139_combout\,
	combout => \SRL64_A|Mux4|Mux63~141_combout\);

-- Location: LCCOMB_X58_Y37_N26
\Selector496~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector496~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRL64_A|Mux4|Mux63~141_combout\)))) # (!\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~132_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~132_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~141_combout\,
	combout => \Selector496~0_combout\);

-- Location: LCCOMB_X57_Y37_N0
\Selector496~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector496~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector496~0_combout\ & ((\SRL64_A|Mux4|Mux63~142_combout\))) # (!\Selector496~0_combout\ & (\SRL64_A|Mux4|Mux63~133_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Selector496~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~133_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~142_combout\,
	datad => \Selector496~0_combout\,
	combout => \Selector496~1_combout\);

-- Location: LCCOMB_X48_Y37_N8
\Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRL64_A|Mux4|Mux63~137_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~134_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~137_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~134_combout\,
	combout => \Selector80~0_combout\);

-- Location: LCCOMB_X47_Y39_N8
\SRL64_A|Mux8|Mux63~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~51_combout\ = (\B[2]~input_o\ & ((\Selector1~0_combout\))) # (!\B[2]~input_o\ & (\Selector5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector5~0_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector1~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~51_combout\);

-- Location: LCCOMB_X49_Y38_N26
\SRL64_A|Mux4|Mux63~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~143_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~51_combout\)) # (!\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~51_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~30_combout\,
	combout => \SRL64_A|Mux4|Mux63~143_combout\);

-- Location: LCCOMB_X49_Y38_N28
\SRL64_A|Mux4|Mux63~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~144_combout\ = (\SLL64_A|Mux32|Mux31~32_combout\ & ((\SRL64_A|Mux4|Mux63~143_combout\) # ((\SRL64_A|Mux8|Mux15~0_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux15~0_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~143_combout\,
	datad => \SLL64_A|Mux32|Mux31~32_combout\,
	combout => \SRL64_A|Mux4|Mux63~144_combout\);

-- Location: LCCOMB_X48_Y37_N2
\Selector80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~1_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~144_combout\) # ((\SRL64_A|Mux4|Mux63~135_combout\ & \Selector80~0_combout\)))) # (!\B[0]~input_o\ & (((\Selector80~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~135_combout\,
	datab => \B[0]~input_o\,
	datac => \Selector80~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~144_combout\,
	combout => \Selector80~1_combout\);

-- Location: LCCOMB_X49_Y37_N0
\Selector496~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector496~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & (\Selector496~1_combout\)) # (!\Selector481~0_combout\ & ((\Selector80~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector496~1_combout\,
	datab => \Selector481~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector80~1_combout\,
	combout => \Selector496~2_combout\);

-- Location: LCCOMB_X50_Y37_N26
\SLL64_A|Mux8|Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux48~1_combout\ = (\B[3]~input_o\ & ((\Selector56~0_combout\))) # (!\B[3]~input_o\ & (\Selector48~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Selector48~0_combout\,
	datac => \Selector56~0_combout\,
	combout => \SLL64_A|Mux8|Mux48~1_combout\);

-- Location: LCCOMB_X50_Y37_N20
\SLL64_A|Mux8|Mux48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux48~2_combout\ = (\B[2]~input_o\ & (\SLL64_A|Mux8|Mux48~0_combout\)) # (!\B[2]~input_o\ & ((\SLL64_A|Mux8|Mux48~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux8|Mux48~0_combout\,
	datac => \SLL64_A|Mux8|Mux48~1_combout\,
	combout => \SLL64_A|Mux8|Mux48~2_combout\);

-- Location: LCCOMB_X50_Y37_N30
\SLL64_A|Mux4|Mux31~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~31_combout\ = (\SLL64_A|Mux32|Mux31~32_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux50~2_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux48~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64_A|Mux8|Mux48~2_combout\,
	datac => \SLL64_A|Mux32|Mux31~32_combout\,
	datad => \SLL64_A|Mux8|Mux50~2_combout\,
	combout => \SLL64_A|Mux4|Mux31~31_combout\);

-- Location: IOIBUF_X49_Y0_N15
\C[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(15),
	o => \C[15]~input_o\);

-- Location: LCCOMB_X53_Y38_N18
\SLL64_A|Mux8|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux16~0_combout\ = (\SLL64_A|Mux8|Mux55~0_combout\ & ((\SLL64_A|Mux32|Mux28~2_combout\) # ((\Selector60~0_combout\ & \SLL64_A|Mux32|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux55~0_combout\,
	datab => \Selector60~0_combout\,
	datac => \SLL64_A|Mux32|Mux28~2_combout\,
	datad => \SLL64_A|Mux32|Mux31~6_combout\,
	combout => \SLL64_A|Mux8|Mux16~0_combout\);

-- Location: LCCOMB_X53_Y36_N30
\SLL64_A|Mux32|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux16~2_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector32~0_combout\))) # (!\B[4]~input_o\ & (\Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Selector32~0_combout\,
	combout => \SLL64_A|Mux32|Mux16~2_combout\);

-- Location: LCCOMB_X53_Y36_N12
\SLL64_A|Mux32|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux16~3_combout\ = (\SLL64_A|Mux32|Mux16~2_combout\) # ((\B[5]~input_o\ & (\Selector48~0_combout\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux16~2_combout\,
	datab => \B[5]~input_o\,
	datac => \Selector48~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux16~3_combout\);

-- Location: LCCOMB_X52_Y38_N20
\SLL64_A|Mux8|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux16~1_combout\ = (\SLL64_A|Mux32|Mux24~3_combout\ & ((\SLL64_A|Mux8|Mux35~0_combout\) # ((\SLL64_A|Mux8|Mux31~4_combout\ & \SLL64_A|Mux32|Mux16~3_combout\)))) # (!\SLL64_A|Mux32|Mux24~3_combout\ & (((\SLL64_A|Mux8|Mux31~4_combout\ & 
-- \SLL64_A|Mux32|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux24~3_combout\,
	datab => \SLL64_A|Mux8|Mux35~0_combout\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \SLL64_A|Mux32|Mux16~3_combout\,
	combout => \SLL64_A|Mux8|Mux16~1_combout\);

-- Location: LCCOMB_X52_Y38_N6
\SLL64_A|Mux8|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux16~2_combout\ = (\SLL64_A|Mux8|Mux16~0_combout\) # ((\SLL64_A|Mux8|Mux16~1_combout\) # ((\SLL64_A|Mux8|Mux27~0_combout\ & \SLL64_A|Mux32|Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux27~0_combout\,
	datab => \SLL64_A|Mux8|Mux16~0_combout\,
	datac => \SLL64_A|Mux32|Mux20~3_combout\,
	datad => \SLL64_A|Mux8|Mux16~1_combout\,
	combout => \SLL64_A|Mux8|Mux16~2_combout\);

-- Location: LCCOMB_X57_Y41_N10
\Selector144~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector144~1_combout\ = (\SLL64_A|Mux8|Mux16~2_combout\ & ((\Selector191~1_combout\) # ((\Selector157~4_combout\ & \SLL64_A|Mux8|Mux18~2_combout\)))) # (!\SLL64_A|Mux8|Mux16~2_combout\ & (((\Selector157~4_combout\ & \SLL64_A|Mux8|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux16~2_combout\,
	datab => \Selector191~1_combout\,
	datac => \Selector157~4_combout\,
	datad => \SLL64_A|Mux8|Mux18~2_combout\,
	combout => \Selector144~1_combout\);

-- Location: LCCOMB_X57_Y41_N0
\Selector144~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector144~0_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & (\SLL64_A|Mux8|Mux19~2_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux17~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64_A|Mux8|Mux19~2_combout\,
	datac => \Selector126~1_combout\,
	datad => \SLL64_A|Mux8|Mux17~2_combout\,
	combout => \Selector144~0_combout\);

-- Location: IOIBUF_X67_Y73_N22
\C[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(47),
	o => \C[47]~input_o\);

-- Location: LCCOMB_X57_Y41_N28
\Selector144~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector144~2_combout\ = (\Selector144~1_combout\) # ((\Selector144~0_combout\) # ((!\ShiftFN[0]~input_o\ & \C[47]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector144~1_combout\,
	datab => \Selector144~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \C[47]~input_o\,
	combout => \Selector144~2_combout\);

-- Location: LCCOMB_X49_Y37_N10
\Selector496~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector496~3_combout\ = (\Selector481~2_combout\ & ((\C[15]~input_o\) # ((\Selector481~1_combout\)))) # (!\Selector481~2_combout\ & (((!\Selector481~1_combout\ & \Selector144~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[15]~input_o\,
	datab => \Selector481~2_combout\,
	datac => \Selector481~1_combout\,
	datad => \Selector144~2_combout\,
	combout => \Selector496~3_combout\);

-- Location: LCCOMB_X49_Y37_N28
\Selector496~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector496~4_combout\ = (\Selector481~1_combout\ & ((\Selector496~3_combout\ & (\SLL64_A|Mux4|Mux31~30_combout\)) # (!\Selector496~3_combout\ & ((\SLL64_A|Mux4|Mux31~31_combout\))))) # (!\Selector481~1_combout\ & (((\Selector496~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~30_combout\,
	datab => \SLL64_A|Mux4|Mux31~31_combout\,
	datac => \Selector481~1_combout\,
	datad => \Selector496~3_combout\,
	combout => \Selector496~4_combout\);

-- Location: LCCOMB_X49_Y37_N6
\Selector496~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector496~5_combout\ = (\Selector496~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector496~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector496~2_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector496~4_combout\,
	combout => \Selector496~5_combout\);

-- Location: LCCOMB_X54_Y40_N6
\SRL64_A|Mux4|Mux63~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~145_combout\ = (\SRL64_A|Mux8|Mux63~26_combout\ & ((\SRL64_A|Mux4|Mux63~138_combout\) # ((\SRL64_A|Mux4|Mux63~73_combout\ & \SRL64_A|Mux8|Mux63~47_combout\)))) # (!\SRL64_A|Mux8|Mux63~26_combout\ & (\SRL64_A|Mux4|Mux63~73_combout\ & 
-- ((\SRL64_A|Mux8|Mux63~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~26_combout\,
	datab => \SRL64_A|Mux4|Mux63~73_combout\,
	datac => \SRL64_A|Mux4|Mux63~138_combout\,
	datad => \SRL64_A|Mux8|Mux63~47_combout\,
	combout => \SRL64_A|Mux4|Mux63~145_combout\);

-- Location: LCCOMB_X53_Y36_N2
\SRL64_A|Mux32|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux32~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector16~0_combout\)) # (!\B[4]~input_o\ & ((\Selector32~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Selector32~0_combout\,
	combout => \SRL64_A|Mux32|Mux32~0_combout\);

-- Location: LCCOMB_X53_Y36_N8
\SRL64_A|Mux8|Mux63~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~52_combout\ = (\SLL64_A|Mux32|Mux31~6_combout\ & ((\B[2]~input_o\ & ((\Selector0~0_combout\))) # (!\B[2]~input_o\ & (\Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~6_combout\,
	datab => \Selector4~0_combout\,
	datac => \Selector0~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~52_combout\);

-- Location: LCCOMB_X53_Y36_N28
\SRL64_A|Mux8|Mux63~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~53_combout\ = (\SRL64_A|Mux8|Mux63~52_combout\) # ((\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux32~0_combout\))) # (!\B[2]~input_o\ & (\SRL64_A|Mux32|Mux36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux36~0_combout\,
	datab => \SRL64_A|Mux32|Mux32~0_combout\,
	datac => \SRL64_A|Mux8|Mux63~52_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~53_combout\);

-- Location: LCCOMB_X56_Y40_N8
\SRL64_A|Mux4|Mux63~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~146_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~53_combout\))) # (!\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~32_combout\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~53_combout\,
	combout => \SRL64_A|Mux4|Mux63~146_combout\);

-- Location: LCCOMB_X56_Y40_N26
\SRL64_A|Mux4|Mux63~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~147_combout\ = (\SRL64_A|Mux4|Mux63~145_combout\) # (\SRL64_A|Mux4|Mux63~146_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~145_combout\,
	datac => \SRL64_A|Mux4|Mux63~146_combout\,
	combout => \SRL64_A|Mux4|Mux63~147_combout\);

-- Location: LCCOMB_X56_Y40_N4
\Selector495~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector495~0_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~147_combout\))) # (!\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~141_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~147_combout\,
	datad => \B[0]~input_o\,
	combout => \Selector495~0_combout\);

-- Location: LCCOMB_X54_Y36_N2
\SRL64_A|Mux8|Mux63~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~54_combout\ = (\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux32~0_combout\) # ((\SRL64_A|Mux4|Mux63~54_combout\)))) # (!\B[2]~input_o\ & (((\SRA64_A|Mux32|Mux36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux32~0_combout\,
	datab => \SRL64_A|Mux4|Mux63~54_combout\,
	datac => \SRA64_A|Mux32|Mux36~1_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~54_combout\);

-- Location: LCCOMB_X54_Y37_N24
\SRA64_A|Mux8|Mux44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux44~4_combout\ = (\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~54_combout\))) # (!\B[3]~input_o\ & (\SRA64_A|Mux8|Mux44~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux44~5_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~54_combout\,
	combout => \SRA64_A|Mux8|Mux44~4_combout\);

-- Location: LCCOMB_X57_Y37_N2
\SRL64_A|Mux4|Mux63~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~148_combout\ = (\B[1]~input_o\ & (\SRA64_A|Mux8|Mux44~4_combout\)) # (!\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux46~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64_A|Mux8|Mux44~4_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64_A|Mux8|Mux46~5_combout\,
	combout => \SRL64_A|Mux4|Mux63~148_combout\);

-- Location: LCCOMB_X57_Y37_N20
\Selector495~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector495~1_combout\ = (\Selector495~0_combout\ & (((\SRL64_A|Mux4|Mux63~148_combout\)) # (!\ShiftFN[0]~input_o\))) # (!\Selector495~0_combout\ & (\ShiftFN[0]~input_o\ & (\SRL64_A|Mux4|Mux63~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector495~0_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~142_combout\,
	datad => \SRL64_A|Mux4|Mux63~148_combout\,
	combout => \Selector495~1_combout\);

-- Location: LCCOMB_X47_Y39_N10
\SRL64_A|Mux8|Mux63~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~55_combout\ = (\B[2]~input_o\ & ((\Selector0~0_combout\))) # (!\B[2]~input_o\ & (\Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \B[2]~input_o\,
	datac => \Selector0~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~55_combout\);

-- Location: LCCOMB_X47_Y38_N16
\SRL64_A|Mux4|Mux63~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~149_combout\ = (\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~55_combout\))) # (!\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~33_combout\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~55_combout\,
	combout => \SRL64_A|Mux4|Mux63~149_combout\);

-- Location: LCCOMB_X47_Y38_N18
\SRL64_A|Mux4|Mux63~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~150_combout\ = (\SLL64_A|Mux32|Mux31~32_combout\ & ((\B[1]~input_o\ & (\SRL64_A|Mux4|Mux63~149_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~32_combout\,
	datab => \SRL64_A|Mux4|Mux63~149_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux8|Mux14~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~150_combout\);

-- Location: LCCOMB_X47_Y38_N6
\SRL64_A|Mux4|Mux63~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~151_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & ((\B[2]~input_o\))) # (!\B[3]~input_o\ & (!\SLL64_A|Mux32|Mux31~32_combout\)))) # (!\B[1]~input_o\ & (!\SLL64_A|Mux32|Mux31~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~32_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~151_combout\);

-- Location: LCCOMB_X52_Y36_N28
\SRA64_A|Mux8|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux12~0_combout\ = (\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux31~32_combout\ & ((\Selector4~0_combout\))) # (!\SLL64_A|Mux32|Mux31~32_combout\ & (\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector4~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~32_combout\,
	combout => \SRA64_A|Mux8|Mux12~0_combout\);

-- Location: LCCOMB_X47_Y38_N28
\SRA64_A|Mux8|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux12~1_combout\ = (\SRA64_A|Mux8|Mux12~0_combout\) # ((\SRL64_A|Mux8|Mux63~33_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~33_combout\,
	datab => \B[3]~input_o\,
	datad => \SRA64_A|Mux8|Mux12~0_combout\,
	combout => \SRA64_A|Mux8|Mux12~1_combout\);

-- Location: LCCOMB_X47_Y38_N8
\SRL64_A|Mux4|Mux63~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~152_combout\ = (\SRL64_A|Mux4|Mux63~151_combout\ & (((\Selector0~0_combout\)))) # (!\SRL64_A|Mux4|Mux63~151_combout\ & (\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~151_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector0~0_combout\,
	datad => \SRA64_A|Mux8|Mux12~1_combout\,
	combout => \SRL64_A|Mux4|Mux63~152_combout\);

-- Location: LCCOMB_X47_Y38_N26
\SRL64_A|Mux4|Mux63~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~153_combout\ = (\SRL64_A|Mux4|Mux63~152_combout\) # ((!\SRL64_A|Mux4|Mux63~151_combout\ & (!\B[1]~input_o\ & \SRL64_A|Mux8|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~151_combout\,
	datab => \SRL64_A|Mux4|Mux63~152_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux8|Mux14~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~153_combout\);

-- Location: LCCOMB_X48_Y37_N12
\Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~144_combout\) # ((\SRL64_A|Mux4|Mux63~135_combout\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~135_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~144_combout\,
	combout => \Selector79~0_combout\);

-- Location: LCCOMB_X48_Y37_N14
\Selector79~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~1_combout\ = (\B[0]~input_o\ & ((\Selector79~0_combout\ & ((\SRL64_A|Mux4|Mux63~153_combout\))) # (!\Selector79~0_combout\ & (\SRL64_A|Mux4|Mux63~150_combout\)))) # (!\B[0]~input_o\ & (((\Selector79~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~150_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~153_combout\,
	datad => \Selector79~0_combout\,
	combout => \Selector79~1_combout\);

-- Location: LCCOMB_X49_Y37_N16
\Selector495~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector495~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & (\Selector495~1_combout\)) # (!\Selector481~0_combout\ & ((\Selector79~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector495~1_combout\,
	datab => \Selector481~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector79~1_combout\,
	combout => \Selector495~2_combout\);

-- Location: LCCOMB_X57_Y38_N12
\SLL64_A|Mux8|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux15~1_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux27~3_combout\))) # (!\B[3]~input_o\ & (\SLL64_A|Mux32|Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux32|Mux19~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux32|Mux27~3_combout\,
	combout => \SLL64_A|Mux8|Mux15~1_combout\);

-- Location: LCCOMB_X59_Y36_N16
\SLL64_A|Mux32|Mux31~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~33_combout\ = (\B[4]~input_o\ & (\Selector63~0_combout\)) # (!\B[4]~input_o\ & ((\Selector47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector63~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector47~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~33_combout\);

-- Location: LCCOMB_X59_Y36_N2
\SLL64_A|Mux32|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux15~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector31~0_combout\))) # (!\B[4]~input_o\ & (\Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Selector15~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector31~0_combout\,
	combout => \SLL64_A|Mux32|Mux15~0_combout\);

-- Location: LCCOMB_X58_Y38_N12
\SLL64_A|Mux8|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux15~0_combout\ = (\SLL64_A|Mux8|Mux31~4_combout\ & ((\SLL64_A|Mux32|Mux15~0_combout\) # ((\SLL64_A|Mux32|Mux31~33_combout\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~33_combout\,
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \SLL64_A|Mux32|Mux15~0_combout\,
	combout => \SLL64_A|Mux8|Mux15~0_combout\);

-- Location: LCCOMB_X60_Y38_N0
\SLL64_A|Mux8|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux15~2_combout\ = (\SLL64_A|Mux8|Mux15~1_combout\) # ((\SLL64_A|Mux8|Mux15~0_combout\) # ((\SLL64_A|Mux8|Mux35~0_combout\ & \SLL64_A|Mux32|Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux35~0_combout\,
	datab => \SLL64_A|Mux32|Mux23~3_combout\,
	datac => \SLL64_A|Mux8|Mux15~1_combout\,
	datad => \SLL64_A|Mux8|Mux15~0_combout\,
	combout => \SLL64_A|Mux8|Mux15~2_combout\);

-- Location: IOIBUF_X115_Y40_N8
\C[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(48),
	o => \C[48]~input_o\);

-- Location: LCCOMB_X57_Y41_N8
\Selector143~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector143~1_combout\ = (\ShiftFN[0]~input_o\ & (\Selector191~1_combout\ & (\SLL64_A|Mux8|Mux15~2_combout\))) # (!\ShiftFN[0]~input_o\ & ((\C[48]~input_o\) # ((\Selector191~1_combout\ & \SLL64_A|Mux8|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Selector191~1_combout\,
	datac => \SLL64_A|Mux8|Mux15~2_combout\,
	datad => \C[48]~input_o\,
	combout => \Selector143~1_combout\);

-- Location: LCCOMB_X57_Y41_N22
\Selector143~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector143~0_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux18~2_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux16~2_combout\,
	datab => \Selector126~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux18~2_combout\,
	combout => \Selector143~0_combout\);

-- Location: LCCOMB_X57_Y41_N18
\Selector143~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector143~2_combout\ = (\Selector143~1_combout\) # ((\Selector143~0_combout\) # ((\Selector157~4_combout\ & \SLL64_A|Mux8|Mux17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector157~4_combout\,
	datab => \Selector143~1_combout\,
	datac => \SLL64_A|Mux8|Mux17~2_combout\,
	datad => \Selector143~0_combout\,
	combout => \Selector143~2_combout\);

-- Location: LCCOMB_X48_Y36_N14
\SLL64_A|Mux4|Mux31~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~32_combout\ = (!\SRL64_A|Mux4|Mux63~122_combout\ & !\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~122_combout\,
	datac => \B[5]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~32_combout\);

-- Location: LCCOMB_X49_Y38_N6
\SLL64_A|Mux8|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux47~0_combout\ = (\B[2]~input_o\ & ((\Selector59~0_combout\) # ((!\B[3]~input_o\)))) # (!\B[2]~input_o\ & (((\B[3]~input_o\ & \Selector55~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector59~0_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Selector55~0_combout\,
	combout => \SLL64_A|Mux8|Mux47~0_combout\);

-- Location: LCCOMB_X49_Y38_N24
\SLL64_A|Mux8|Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux47~1_combout\ = (\B[3]~input_o\ & (((\SLL64_A|Mux8|Mux47~0_combout\)))) # (!\B[3]~input_o\ & ((\SLL64_A|Mux8|Mux47~0_combout\ & (\Selector51~0_combout\)) # (!\SLL64_A|Mux8|Mux47~0_combout\ & ((\SLL64_A|Mux32|Mux31~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~0_combout\,
	datab => \SLL64_A|Mux32|Mux31~33_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux8|Mux47~0_combout\,
	combout => \SLL64_A|Mux8|Mux47~1_combout\);

-- Location: LCCOMB_X49_Y38_N18
\SLL64_A|Mux4|Mux31~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~33_combout\ = (\SLL64_A|Mux4|Mux31~32_combout\ & ((\B[1]~input_o\ & (\SLL64_A|Mux8|Mux49~2_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux47~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~32_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64_A|Mux8|Mux49~2_combout\,
	datad => \SLL64_A|Mux8|Mux47~1_combout\,
	combout => \SLL64_A|Mux4|Mux31~33_combout\);

-- Location: LCCOMB_X49_Y37_N26
\Selector495~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector495~3_combout\ = (\Selector481~1_combout\ & ((\Selector481~2_combout\) # ((\SLL64_A|Mux4|Mux31~33_combout\)))) # (!\Selector481~1_combout\ & (!\Selector481~2_combout\ & (\Selector143~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~1_combout\,
	datab => \Selector481~2_combout\,
	datac => \Selector143~2_combout\,
	datad => \SLL64_A|Mux4|Mux31~33_combout\,
	combout => \Selector495~3_combout\);

-- Location: IOIBUF_X42_Y0_N22
\C[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(16),
	o => \C[16]~input_o\);

-- Location: LCCOMB_X49_Y37_N20
\Selector495~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector495~4_combout\ = (\Selector495~3_combout\ & (((\SLL64_A|Mux4|Mux31~31_combout\)) # (!\Selector481~2_combout\))) # (!\Selector495~3_combout\ & (\Selector481~2_combout\ & (\C[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector495~3_combout\,
	datab => \Selector481~2_combout\,
	datac => \C[16]~input_o\,
	datad => \SLL64_A|Mux4|Mux31~31_combout\,
	combout => \Selector495~4_combout\);

-- Location: LCCOMB_X49_Y37_N22
\Selector495~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector495~5_combout\ = (\Selector495~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector495~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector495~2_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector495~4_combout\,
	combout => \Selector495~5_combout\);

-- Location: LCCOMB_X55_Y36_N6
\SLL64_A|Mux8|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux14~1_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux26~3_combout\))) # (!\B[3]~input_o\ & (\SLL64_A|Mux32|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux18~3_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64_A|Mux32|Mux26~3_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64_A|Mux8|Mux14~1_combout\);

-- Location: LCCOMB_X56_Y36_N30
\SLL64_A|Mux32|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux14~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector30~0_combout\))) # (!\B[4]~input_o\ & (\Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~0_combout\,
	datab => \B[5]~input_o\,
	datac => \Selector30~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux14~0_combout\);

-- Location: LCCOMB_X56_Y36_N24
\SLL64_A|Mux8|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux14~0_combout\ = (\SLL64_A|Mux8|Mux31~4_combout\ & ((\SLL64_A|Mux32|Mux14~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux31~4_combout\,
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux32|Mux14~0_combout\,
	datad => \SLL64_A|Mux32|Mux31~9_combout\,
	combout => \SLL64_A|Mux8|Mux14~0_combout\);

-- Location: LCCOMB_X55_Y36_N8
\SLL64_A|Mux8|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux14~2_combout\ = (\SLL64_A|Mux8|Mux14~1_combout\) # ((\SLL64_A|Mux8|Mux14~0_combout\) # ((\SLL64_A|Mux8|Mux35~0_combout\ & \SLL64_A|Mux32|Mux22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux14~1_combout\,
	datab => \SLL64_A|Mux8|Mux35~0_combout\,
	datac => \SLL64_A|Mux32|Mux22~3_combout\,
	datad => \SLL64_A|Mux8|Mux14~0_combout\,
	combout => \SLL64_A|Mux8|Mux14~2_combout\);

-- Location: IOIBUF_X83_Y73_N15
\C[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(49),
	o => \C[49]~input_o\);

-- Location: LCCOMB_X56_Y41_N0
\Selector142~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector142~1_combout\ = (\Selector157~0_combout\ & ((\SLL64_A|Mux8|Mux15~2_combout\) # ((!\ShiftFN[0]~input_o\ & \C[49]~input_o\)))) # (!\Selector157~0_combout\ & (!\ShiftFN[0]~input_o\ & ((\C[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector157~0_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SLL64_A|Mux8|Mux15~2_combout\,
	datad => \C[49]~input_o\,
	combout => \Selector142~1_combout\);

-- Location: LCCOMB_X47_Y40_N28
\Selector157~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector157~6_combout\ = (\B[0]~input_o\ & (\B[1]~input_o\ & \ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector157~6_combout\);

-- Location: LCCOMB_X57_Y41_N20
\Selector142~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector142~0_combout\ = (\SLL64_A|Mux8|Mux17~2_combout\ & ((\Selector157~6_combout\) # ((\Selector157~4_combout\ & \SLL64_A|Mux8|Mux16~2_combout\)))) # (!\SLL64_A|Mux8|Mux17~2_combout\ & (((\Selector157~4_combout\ & \SLL64_A|Mux8|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux17~2_combout\,
	datab => \Selector157~6_combout\,
	datac => \Selector157~4_combout\,
	datad => \SLL64_A|Mux8|Mux16~2_combout\,
	combout => \Selector142~0_combout\);

-- Location: LCCOMB_X56_Y41_N18
\Selector142~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector142~2_combout\ = (\Selector142~1_combout\) # ((\Selector142~0_combout\) # ((\SLL64_A|Mux8|Mux14~2_combout\ & \Selector191~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux14~2_combout\,
	datab => \Selector142~1_combout\,
	datac => \Selector142~0_combout\,
	datad => \Selector191~1_combout\,
	combout => \Selector142~2_combout\);

-- Location: IOIBUF_X25_Y73_N22
\C[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(17),
	o => \C[17]~input_o\);

-- Location: LCCOMB_X49_Y37_N8
\Selector494~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector494~3_combout\ = (\Selector481~2_combout\ & (((\Selector481~1_combout\) # (\C[17]~input_o\)))) # (!\Selector481~2_combout\ & (\Selector142~2_combout\ & (!\Selector481~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector142~2_combout\,
	datab => \Selector481~2_combout\,
	datac => \Selector481~1_combout\,
	datad => \C[17]~input_o\,
	combout => \Selector494~3_combout\);

-- Location: LCCOMB_X53_Y35_N22
\SLL64_A|Mux8|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux46~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Selector54~0_combout\)) # (!\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux31~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Selector54~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~9_combout\,
	combout => \SLL64_A|Mux8|Mux46~0_combout\);

-- Location: LCCOMB_X50_Y37_N8
\SLL64_A|Mux8|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux46~1_combout\ = (\SLL64_A|Mux8|Mux46~0_combout\) # ((\B[2]~input_o\ & \SLL64_A|Mux8|Mux50~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux8|Mux46~0_combout\,
	datad => \SLL64_A|Mux8|Mux50~1_combout\,
	combout => \SLL64_A|Mux8|Mux46~1_combout\);

-- Location: LCCOMB_X50_Y37_N18
\SLL64_A|Mux4|Mux31~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~34_combout\ = (\SLL64_A|Mux4|Mux31~32_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux48~2_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux46~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~32_combout\,
	datab => \SLL64_A|Mux8|Mux46~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux48~2_combout\,
	combout => \SLL64_A|Mux4|Mux31~34_combout\);

-- Location: LCCOMB_X49_Y37_N18
\Selector494~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector494~4_combout\ = (\Selector481~1_combout\ & ((\Selector494~3_combout\ & ((\SLL64_A|Mux4|Mux31~33_combout\))) # (!\Selector494~3_combout\ & (\SLL64_A|Mux4|Mux31~34_combout\)))) # (!\Selector481~1_combout\ & (\Selector494~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~1_combout\,
	datab => \Selector494~3_combout\,
	datac => \SLL64_A|Mux4|Mux31~34_combout\,
	datad => \SLL64_A|Mux4|Mux31~33_combout\,
	combout => \Selector494~4_combout\);

-- Location: LCCOMB_X48_Y39_N30
\SRA64_A|Mux8|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux11~0_combout\ = (\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux31~32_combout\ & ((\Selector3~0_combout\))) # (!\SLL64_A|Mux32|Mux31~32_combout\ & (\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \SLL64_A|Mux32|Mux31~32_combout\,
	datac => \Selector3~0_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA64_A|Mux8|Mux11~0_combout\);

-- Location: LCCOMB_X48_Y39_N8
\SRA64_A|Mux8|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux11~1_combout\ = (\SRA64_A|Mux8|Mux11~0_combout\) # ((\SRL64_A|Mux8|Mux11~0_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux11~0_combout\,
	datac => \SRA64_A|Mux8|Mux11~0_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA64_A|Mux8|Mux11~1_combout\);

-- Location: LCCOMB_X47_Y38_N24
\SRL64_A|Mux4|Mux63~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~162_combout\ = (\SRL64_A|Mux4|Mux63~151_combout\ & (((\Selector0~0_combout\)))) # (!\SRL64_A|Mux4|Mux63~151_combout\ & (\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~151_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector0~0_combout\,
	datad => \SRA64_A|Mux8|Mux11~1_combout\,
	combout => \SRL64_A|Mux4|Mux63~162_combout\);

-- Location: LCCOMB_X49_Y38_N20
\SRL64_A|Mux4|Mux63~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~159_combout\ = (!\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~51_combout\)) # (!\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~51_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~30_combout\,
	combout => \SRL64_A|Mux4|Mux63~159_combout\);

-- Location: LCCOMB_X47_Y38_N2
\SRL64_A|Mux4|Mux63~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~163_combout\ = (\SRL64_A|Mux4|Mux63~162_combout\) # ((!\SRL64_A|Mux4|Mux63~151_combout\ & \SRL64_A|Mux4|Mux63~159_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~151_combout\,
	datab => \SRL64_A|Mux4|Mux63~162_combout\,
	datad => \SRL64_A|Mux4|Mux63~159_combout\,
	combout => \SRL64_A|Mux4|Mux63~163_combout\);

-- Location: LCCOMB_X48_Y39_N20
\SRL64_A|Mux4|Mux63~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~160_combout\ = (\B[3]~input_o\ & (\Selector3~0_combout\)) # (!\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datac => \SRL64_A|Mux8|Mux11~0_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~160_combout\);

-- Location: LCCOMB_X47_Y38_N20
\SRL64_A|Mux4|Mux63~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~158_combout\ = (\SLL64_A|Mux32|Mux31~32_combout\ & (((!\B[3]~input_o\) # (!\B[1]~input_o\)) # (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~32_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~158_combout\);

-- Location: LCCOMB_X47_Y38_N30
\SRL64_A|Mux4|Mux63~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~161_combout\ = (\SRL64_A|Mux4|Mux63~158_combout\ & ((\SRL64_A|Mux4|Mux63~159_combout\) # ((\SRL64_A|Mux4|Mux63~160_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~160_combout\,
	datab => \SRL64_A|Mux4|Mux63~158_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~159_combout\,
	combout => \SRL64_A|Mux4|Mux63~161_combout\);

-- Location: LCCOMB_X48_Y37_N0
\Selector78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRL64_A|Mux4|Mux63~153_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~150_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~153_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~150_combout\,
	combout => \Selector78~0_combout\);

-- Location: LCCOMB_X47_Y40_N18
\Selector78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~1_combout\ = (\B[0]~input_o\ & ((\Selector78~0_combout\ & (\SRL64_A|Mux4|Mux63~163_combout\)) # (!\Selector78~0_combout\ & ((\SRL64_A|Mux4|Mux63~161_combout\))))) # (!\B[0]~input_o\ & (((\Selector78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~163_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~161_combout\,
	datad => \Selector78~0_combout\,
	combout => \Selector78~1_combout\);

-- Location: LCCOMB_X59_Y39_N10
\SRL64_A|Mux4|Mux63~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~154_combout\ = (\SRL64_A|Mux4|Mux63~138_combout\ & ((\SRL64_A|Mux8|Mux63~29_combout\) # ((\SRL64_A|Mux4|Mux63~73_combout\ & \SRL64_A|Mux8|Mux63~50_combout\)))) # (!\SRL64_A|Mux4|Mux63~138_combout\ & (\SRL64_A|Mux4|Mux63~73_combout\ & 
-- ((\SRL64_A|Mux8|Mux63~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~138_combout\,
	datab => \SRL64_A|Mux4|Mux63~73_combout\,
	datac => \SRL64_A|Mux8|Mux63~29_combout\,
	datad => \SRL64_A|Mux8|Mux63~50_combout\,
	combout => \SRL64_A|Mux4|Mux63~154_combout\);

-- Location: LCCOMB_X59_Y36_N20
\SRL64_A|Mux8|Mux63~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~57_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector15~0_combout\)) # (!\B[4]~input_o\ & ((\Selector31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Selector15~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector31~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~57_combout\);

-- Location: LCCOMB_X59_Y38_N2
\SRL64_A|Mux8|Mux63~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~56_combout\ = (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux35~0_combout\) # ((\SLL64_A|Mux32|Mux31~6_combout\ & \Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64_A|Mux32|Mux35~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~6_combout\,
	datad => \Selector3~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~56_combout\);

-- Location: LCCOMB_X59_Y38_N4
\SRL64_A|Mux8|Mux63~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~58_combout\ = (\SRL64_A|Mux8|Mux63~56_combout\) # ((\B[2]~input_o\ & \SRL64_A|Mux8|Mux63~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~57_combout\,
	datad => \SRL64_A|Mux8|Mux63~56_combout\,
	combout => \SRL64_A|Mux8|Mux63~58_combout\);

-- Location: LCCOMB_X59_Y39_N4
\SRL64_A|Mux4|Mux63~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~155_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~58_combout\))) # (!\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~35_combout\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~58_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~155_combout\);

-- Location: LCCOMB_X59_Y39_N22
\SRL64_A|Mux4|Mux63~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~156_combout\ = (\SRL64_A|Mux4|Mux63~154_combout\) # (\SRL64_A|Mux4|Mux63~155_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~154_combout\,
	datac => \SRL64_A|Mux4|Mux63~155_combout\,
	combout => \SRL64_A|Mux4|Mux63~156_combout\);

-- Location: LCCOMB_X56_Y40_N30
\Selector494~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector494~0_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~156_combout\)) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~147_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~156_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~147_combout\,
	datad => \B[0]~input_o\,
	combout => \Selector494~0_combout\);

-- Location: LCCOMB_X59_Y37_N6
\SRA64_A|Mux32|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux39~1_combout\ = (\SRA64_A|Mux32|Mux39~0_combout\) # (\SRL64_A|Mux32|Mux39~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRA64_A|Mux32|Mux39~0_combout\,
	datad => \SRL64_A|Mux32|Mux39~0_combout\,
	combout => \SRA64_A|Mux32|Mux39~1_combout\);

-- Location: LCCOMB_X59_Y37_N22
\SRA64_A|Mux8|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux43~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64_A|Mux32|Mux39~1_combout\))) # (!\B[2]~input_o\ & (\SRA64_A|Mux32|Mux43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64_A|Mux32|Mux43~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64_A|Mux32|Mux39~1_combout\,
	combout => \SRA64_A|Mux8|Mux43~0_combout\);

-- Location: LCCOMB_X59_Y37_N24
\SRL64_A|Mux8|Mux63~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~59_combout\ = (\B[2]~input_o\ & ((\SRL64_A|Mux4|Mux63~54_combout\) # ((\SRL64_A|Mux8|Mux63~57_combout\)))) # (!\B[2]~input_o\ & (((\SRA64_A|Mux32|Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~54_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~57_combout\,
	datad => \SRA64_A|Mux32|Mux35~1_combout\,
	combout => \SRL64_A|Mux8|Mux63~59_combout\);

-- Location: LCCOMB_X59_Y37_N10
\SRA64_A|Mux8|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux43~1_combout\ = (\SRA64_A|Mux8|Mux43~0_combout\) # ((\B[3]~input_o\ & \SRL64_A|Mux8|Mux63~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRA64_A|Mux8|Mux43~0_combout\,
	datad => \SRL64_A|Mux8|Mux63~59_combout\,
	combout => \SRA64_A|Mux8|Mux43~1_combout\);

-- Location: LCCOMB_X56_Y40_N24
\SRL64_A|Mux4|Mux63~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~157_combout\ = (\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux43~1_combout\))) # (!\B[1]~input_o\ & (\SRA64_A|Mux8|Mux45~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64_A|Mux8|Mux45~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64_A|Mux8|Mux43~1_combout\,
	combout => \SRL64_A|Mux4|Mux63~157_combout\);

-- Location: LCCOMB_X56_Y40_N10
\Selector494~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector494~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector494~0_combout\ & ((\SRL64_A|Mux4|Mux63~157_combout\))) # (!\Selector494~0_combout\ & (\SRL64_A|Mux4|Mux63~148_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Selector494~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~148_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Selector494~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~157_combout\,
	combout => \Selector494~1_combout\);

-- Location: LCCOMB_X56_Y40_N12
\Selector494~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector494~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector494~1_combout\))) # (!\Selector481~0_combout\ & (\Selector78~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector78~1_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector481~0_combout\,
	datad => \Selector494~1_combout\,
	combout => \Selector494~2_combout\);

-- Location: LCCOMB_X56_Y40_N6
\Selector494~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector494~5_combout\ = (\Selector494~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector494~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector494~4_combout\,
	datad => \Selector494~2_combout\,
	combout => \Selector494~5_combout\);

-- Location: LCCOMB_X54_Y35_N0
\SRL64_A|Mux8|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux10~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Selector6~0_combout\))) # (!\B[2]~input_o\ & (\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Selector6~0_combout\,
	combout => \SRL64_A|Mux8|Mux10~0_combout\);

-- Location: LCCOMB_X47_Y38_N4
\SRL64_A|Mux4|Mux63~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~168_combout\ = (\SRL64_A|Mux8|Mux10~0_combout\) # ((\B[3]~input_o\ & \Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux10~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Selector2~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~168_combout\);

-- Location: LCCOMB_X47_Y38_N14
\SRL64_A|Mux4|Mux63~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~169_combout\ = (\SRL64_A|Mux4|Mux63~158_combout\ & ((\B[1]~input_o\ & ((\SRL64_A|Mux4|Mux63~168_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux4|Mux63~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~149_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~168_combout\,
	datad => \SRL64_A|Mux4|Mux63~158_combout\,
	combout => \SRL64_A|Mux4|Mux63~169_combout\);

-- Location: LCCOMB_X54_Y35_N30
\SRL64_A|Mux4|Mux63~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~255_combout\ = (\B[4]~input_o\ & (((\Selector0~0_combout\)))) # (!\B[4]~input_o\ & ((\B[5]~input_o\ & (\Selector0~0_combout\)) # (!\B[5]~input_o\ & ((\Selector2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Selector0~0_combout\,
	datad => \Selector2~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~255_combout\);

-- Location: LCCOMB_X47_Y38_N0
\SRA64_A|Mux8|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux10~0_combout\ = (\SRL64_A|Mux8|Mux10~0_combout\) # ((\B[3]~input_o\ & \SRL64_A|Mux4|Mux63~255_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~255_combout\,
	datad => \SRL64_A|Mux8|Mux10~0_combout\,
	combout => \SRA64_A|Mux8|Mux10~0_combout\);

-- Location: LCCOMB_X47_Y42_N28
\SRL64_A|Mux4|Mux63~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~170_combout\ = (\B[3]~input_o\ & (((\B[2]~input_o\)))) # (!\B[3]~input_o\ & ((\B[5]~input_o\) # ((\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~170_combout\);

-- Location: LCCOMB_X47_Y38_N10
\SRL64_A|Mux4|Mux63~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~171_combout\ = (\SRL64_A|Mux4|Mux63~170_combout\ & (((\Selector0~0_combout\)))) # (!\SRL64_A|Mux4|Mux63~170_combout\ & (\SRA64_A|Mux8|Mux10~0_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux10~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector0~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~170_combout\,
	combout => \SRL64_A|Mux4|Mux63~171_combout\);

-- Location: LCCOMB_X47_Y38_N12
\SRL64_A|Mux4|Mux63~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~172_combout\ = (\SRL64_A|Mux4|Mux63~171_combout\) # ((\SRA64_A|Mux8|Mux12~1_combout\ & (!\B[1]~input_o\ & !\SRL64_A|Mux4|Mux63~170_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~171_combout\,
	datab => \SRA64_A|Mux8|Mux12~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~170_combout\,
	combout => \SRL64_A|Mux4|Mux63~172_combout\);

-- Location: LCCOMB_X47_Y40_N22
\Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\ShiftFN[0]~input_o\ & ((\B[0]~input_o\) # ((\SRL64_A|Mux4|Mux63~163_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~161_combout\,
	datad => \SRL64_A|Mux4|Mux63~163_combout\,
	combout => \Selector77~0_combout\);

-- Location: LCCOMB_X47_Y40_N8
\Selector77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~1_combout\ = (\Selector77~0_combout\ & (((\SRL64_A|Mux4|Mux63~172_combout\) # (!\B[0]~input_o\)))) # (!\Selector77~0_combout\ & (\SRL64_A|Mux4|Mux63~169_combout\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~169_combout\,
	datab => \SRL64_A|Mux4|Mux63~172_combout\,
	datac => \Selector77~0_combout\,
	datad => \B[0]~input_o\,
	combout => \Selector77~1_combout\);

-- Location: LCCOMB_X55_Y37_N10
\SRL64_A|Mux8|Mux63~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~78_combout\ = (\B[5]~input_o\ & (!\B[4]~input_o\ & \Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Selector2~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~78_combout\);

-- Location: LCCOMB_X56_Y36_N18
\SRL64_A|Mux8|Mux63~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~60_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector14~0_combout\)) # (!\B[4]~input_o\ & ((\Selector30~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~0_combout\,
	datab => \B[5]~input_o\,
	datac => \Selector30~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~60_combout\);

-- Location: LCCOMB_X55_Y37_N22
\SRL64_A|Mux8|Mux63~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~61_combout\ = (\B[2]~input_o\ & (((\SRL64_A|Mux8|Mux63~60_combout\)))) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux34~0_combout\) # ((\SRL64_A|Mux8|Mux63~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux34~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~78_combout\,
	datad => \SRL64_A|Mux8|Mux63~60_combout\,
	combout => \SRL64_A|Mux8|Mux63~61_combout\);

-- Location: LCCOMB_X54_Y40_N10
\SRL64_A|Mux4|Mux63~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~165_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~61_combout\)) # (!\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~61_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~37_combout\,
	combout => \SRL64_A|Mux4|Mux63~165_combout\);

-- Location: LCCOMB_X54_Y40_N24
\SRL64_A|Mux4|Mux63~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~164_combout\ = (\SRL64_A|Mux8|Mux63~53_combout\ & ((\SRL64_A|Mux4|Mux63~73_combout\) # ((\SRL64_A|Mux4|Mux63~138_combout\ & \SRL64_A|Mux8|Mux63~32_combout\)))) # (!\SRL64_A|Mux8|Mux63~53_combout\ & (\SRL64_A|Mux4|Mux63~138_combout\ & 
-- ((\SRL64_A|Mux8|Mux63~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~53_combout\,
	datab => \SRL64_A|Mux4|Mux63~138_combout\,
	datac => \SRL64_A|Mux4|Mux63~73_combout\,
	datad => \SRL64_A|Mux8|Mux63~32_combout\,
	combout => \SRL64_A|Mux4|Mux63~164_combout\);

-- Location: LCCOMB_X56_Y40_N16
\SRL64_A|Mux4|Mux63~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~166_combout\ = (\SRL64_A|Mux4|Mux63~165_combout\) # (\SRL64_A|Mux4|Mux63~164_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~165_combout\,
	datac => \SRL64_A|Mux4|Mux63~164_combout\,
	combout => \SRL64_A|Mux4|Mux63~166_combout\);

-- Location: LCCOMB_X56_Y40_N2
\Selector493~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector493~0_combout\ = (\B[0]~input_o\ & ((\ShiftFN[0]~input_o\) # ((\SRL64_A|Mux4|Mux63~166_combout\)))) # (!\B[0]~input_o\ & (!\ShiftFN[0]~input_o\ & (\SRL64_A|Mux4|Mux63~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~156_combout\,
	datad => \SRL64_A|Mux4|Mux63~166_combout\,
	combout => \Selector493~0_combout\);

-- Location: LCCOMB_X58_Y39_N8
\SRA64_A|Mux32|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux32|Mux38~1_combout\ = (\SRA64_A|Mux32|Mux38~0_combout\) # (\SRL64_A|Mux32|Mux38~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux32|Mux38~0_combout\,
	datac => \SRL64_A|Mux32|Mux38~0_combout\,
	combout => \SRA64_A|Mux32|Mux38~1_combout\);

-- Location: LCCOMB_X55_Y37_N0
\SRA64_A|Mux8|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux42~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64_A|Mux32|Mux38~1_combout\)) # (!\B[2]~input_o\ & ((\SRA64_A|Mux32|Mux42~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux32|Mux38~1_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64_A|Mux32|Mux42~1_combout\,
	combout => \SRA64_A|Mux8|Mux42~0_combout\);

-- Location: LCCOMB_X55_Y37_N18
\SRL64_A|Mux8|Mux63~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~62_combout\ = (\B[2]~input_o\ & ((\SRL64_A|Mux4|Mux63~54_combout\) # ((\SRL64_A|Mux8|Mux63~60_combout\)))) # (!\B[2]~input_o\ & (((\SRA64_A|Mux32|Mux34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~54_combout\,
	datab => \B[2]~input_o\,
	datac => \SRA64_A|Mux32|Mux34~1_combout\,
	datad => \SRL64_A|Mux8|Mux63~60_combout\,
	combout => \SRL64_A|Mux8|Mux63~62_combout\);

-- Location: LCCOMB_X55_Y37_N28
\SRA64_A|Mux8|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux42~1_combout\ = (\SRA64_A|Mux8|Mux42~0_combout\) # ((\B[3]~input_o\ & \SRL64_A|Mux8|Mux63~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64_A|Mux8|Mux42~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~62_combout\,
	combout => \SRA64_A|Mux8|Mux42~1_combout\);

-- Location: LCCOMB_X54_Y37_N26
\SRL64_A|Mux4|Mux63~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~167_combout\ = (\B[1]~input_o\ & (\SRA64_A|Mux8|Mux42~1_combout\)) # (!\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux44~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux42~1_combout\,
	datab => \SRA64_A|Mux8|Mux44~4_combout\,
	datac => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~167_combout\);

-- Location: LCCOMB_X56_Y40_N20
\Selector493~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector493~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector493~0_combout\ & (\SRL64_A|Mux4|Mux63~167_combout\)) # (!\Selector493~0_combout\ & ((\SRL64_A|Mux4|Mux63~157_combout\))))) # (!\ShiftFN[0]~input_o\ & (\Selector493~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Selector493~0_combout\,
	datac => \SRL64_A|Mux4|Mux63~167_combout\,
	datad => \SRL64_A|Mux4|Mux63~157_combout\,
	combout => \Selector493~1_combout\);

-- Location: LCCOMB_X56_Y40_N14
\Selector493~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector493~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector493~1_combout\))) # (!\Selector481~0_combout\ & (\Selector77~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~0_combout\,
	datab => \Selector77~1_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector493~1_combout\,
	combout => \Selector493~2_combout\);

-- Location: IOIBUF_X0_Y32_N22
\C[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(18),
	o => \C[18]~input_o\);

-- Location: IOIBUF_X115_Y45_N22
\C[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(50),
	o => \C[50]~input_o\);

-- Location: LCCOMB_X56_Y41_N12
\Selector141~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector141~0_combout\ = (\Selector157~0_combout\ & ((\SLL64_A|Mux8|Mux14~2_combout\) # ((!\ShiftFN[0]~input_o\ & \C[50]~input_o\)))) # (!\Selector157~0_combout\ & (!\ShiftFN[0]~input_o\ & (\C[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector157~0_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \C[50]~input_o\,
	datad => \SLL64_A|Mux8|Mux14~2_combout\,
	combout => \Selector141~0_combout\);

-- Location: LCCOMB_X50_Y42_N30
\SLL64_A|Mux32|Mux31~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~34_combout\ = (\B[4]~input_o\ & (\Selector61~0_combout\)) # (!\B[4]~input_o\ & ((\Selector45~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector61~0_combout\,
	datab => \Selector45~0_combout\,
	datac => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux31~34_combout\);

-- Location: LCCOMB_X55_Y42_N8
\SLL64_A|Mux32|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux13~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector29~0_combout\))) # (!\B[4]~input_o\ & (\Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \B[5]~input_o\,
	datac => \Selector29~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux32|Mux13~0_combout\);

-- Location: LCCOMB_X53_Y42_N0
\SLL64_A|Mux8|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux13~0_combout\ = (\SLL64_A|Mux8|Mux31~4_combout\ & ((\SLL64_A|Mux32|Mux13~0_combout\) # ((\SLL64_A|Mux32|Mux31~34_combout\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~34_combout\,
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \SLL64_A|Mux32|Mux13~0_combout\,
	combout => \SLL64_A|Mux8|Mux13~0_combout\);

-- Location: LCCOMB_X53_Y42_N18
\SLL64_A|Mux8|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux13~1_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SLL64_A|Mux32|Mux25~3_combout\)) # (!\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux17~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux25~3_combout\,
	datab => \SLL64_A|Mux32|Mux17~3_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLL64_A|Mux8|Mux13~1_combout\);

-- Location: LCCOMB_X53_Y42_N4
\SLL64_A|Mux8|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux13~2_combout\ = (\SLL64_A|Mux8|Mux13~0_combout\) # ((\SLL64_A|Mux8|Mux13~1_combout\) # ((\SLL64_A|Mux8|Mux35~0_combout\ & \SLL64_A|Mux32|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux35~0_combout\,
	datab => \SLL64_A|Mux8|Mux13~0_combout\,
	datac => \SLL64_A|Mux32|Mux21~3_combout\,
	datad => \SLL64_A|Mux8|Mux13~1_combout\,
	combout => \SLL64_A|Mux8|Mux13~2_combout\);

-- Location: LCCOMB_X57_Y41_N6
\Selector141~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector141~1_combout\ = (\SLL64_A|Mux8|Mux16~2_combout\ & ((\Selector157~6_combout\) # ((\SLL64_A|Mux8|Mux13~2_combout\ & \Selector191~1_combout\)))) # (!\SLL64_A|Mux8|Mux16~2_combout\ & (\SLL64_A|Mux8|Mux13~2_combout\ & (\Selector191~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux16~2_combout\,
	datab => \SLL64_A|Mux8|Mux13~2_combout\,
	datac => \Selector191~1_combout\,
	datad => \Selector157~6_combout\,
	combout => \Selector141~1_combout\);

-- Location: LCCOMB_X56_Y41_N22
\Selector141~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector141~2_combout\ = (\Selector141~0_combout\) # ((\Selector141~1_combout\) # ((\Selector157~4_combout\ & \SLL64_A|Mux8|Mux15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector141~0_combout\,
	datab => \Selector157~4_combout\,
	datac => \SLL64_A|Mux8|Mux15~2_combout\,
	datad => \Selector141~1_combout\,
	combout => \Selector141~2_combout\);

-- Location: LCCOMB_X50_Y42_N16
\SLL64_A|Mux8|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux45~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Selector57~0_combout\))) # (!\B[2]~input_o\ & (\Selector53~0_combout\)))) # (!\B[3]~input_o\ & (((\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector53~0_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Selector57~0_combout\,
	combout => \SLL64_A|Mux8|Mux45~0_combout\);

-- Location: LCCOMB_X50_Y42_N2
\SLL64_A|Mux8|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux45~1_combout\ = (\B[3]~input_o\ & (\SLL64_A|Mux8|Mux45~0_combout\)) # (!\B[3]~input_o\ & ((\SLL64_A|Mux8|Mux45~0_combout\ & ((\Selector49~0_combout\))) # (!\SLL64_A|Mux8|Mux45~0_combout\ & (\SLL64_A|Mux32|Mux31~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64_A|Mux8|Mux45~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~34_combout\,
	datad => \Selector49~0_combout\,
	combout => \SLL64_A|Mux8|Mux45~1_combout\);

-- Location: LCCOMB_X48_Y38_N2
\SLL64_A|Mux4|Mux31~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~35_combout\ = (!\SRL64_A|Mux4|Mux63~110_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux47~1_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~110_combout\,
	datac => \SLL64_A|Mux8|Mux45~1_combout\,
	datad => \SLL64_A|Mux8|Mux47~1_combout\,
	combout => \SLL64_A|Mux4|Mux31~35_combout\);

-- Location: LCCOMB_X48_Y38_N4
\Selector493~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector493~3_combout\ = (\Selector481~2_combout\ & (((\Selector481~1_combout\)))) # (!\Selector481~2_combout\ & ((\Selector481~1_combout\ & ((\SLL64_A|Mux4|Mux31~35_combout\))) # (!\Selector481~1_combout\ & (\Selector141~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \Selector141~2_combout\,
	datac => \Selector481~1_combout\,
	datad => \SLL64_A|Mux4|Mux31~35_combout\,
	combout => \Selector493~3_combout\);

-- Location: LCCOMB_X49_Y37_N4
\Selector493~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector493~4_combout\ = (\Selector481~2_combout\ & ((\Selector493~3_combout\ & (\SLL64_A|Mux4|Mux31~34_combout\)) # (!\Selector493~3_combout\ & ((\C[18]~input_o\))))) # (!\Selector481~2_combout\ & (((\Selector493~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~34_combout\,
	datab => \Selector481~2_combout\,
	datac => \C[18]~input_o\,
	datad => \Selector493~3_combout\,
	combout => \Selector493~4_combout\);

-- Location: LCCOMB_X56_Y40_N0
\Selector493~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector493~5_combout\ = (\Selector493~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector493~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector493~2_combout\,
	datad => \Selector493~4_combout\,
	combout => \Selector493~5_combout\);

-- Location: IOIBUF_X33_Y0_N8
\C[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(19),
	o => \C[19]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\C[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(51),
	o => \C[51]~input_o\);

-- Location: LCCOMB_X56_Y41_N2
\Selector140~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector140~1_combout\ = (\SLL64_A|Mux8|Mux14~2_combout\ & ((\Selector157~4_combout\) # ((!\ShiftFN[0]~input_o\ & \C[51]~input_o\)))) # (!\SLL64_A|Mux8|Mux14~2_combout\ & (!\ShiftFN[0]~input_o\ & (\C[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux14~2_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \C[51]~input_o\,
	datad => \Selector157~4_combout\,
	combout => \Selector140~1_combout\);

-- Location: LCCOMB_X52_Y38_N12
\SLL64_A|Mux8|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux12~1_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux24~3_combout\))) # (!\B[3]~input_o\ & (\SLL64_A|Mux32|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux16~3_combout\,
	datab => \B[2]~input_o\,
	datac => \SLL64_A|Mux32|Mux24~3_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64_A|Mux8|Mux12~1_combout\);

-- Location: LCCOMB_X53_Y38_N12
\SLL64_A|Mux32|Mux31~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux31~35_combout\ = (\B[4]~input_o\ & (\Selector60~0_combout\)) # (!\B[4]~input_o\ & ((\Selector44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector60~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector44~0_combout\,
	combout => \SLL64_A|Mux32|Mux31~35_combout\);

-- Location: LCCOMB_X52_Y37_N0
\SLL64_A|Mux32|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux12~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector28~0_combout\))) # (!\B[4]~input_o\ & (\Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector12~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector28~0_combout\,
	combout => \SLL64_A|Mux32|Mux12~0_combout\);

-- Location: LCCOMB_X52_Y38_N10
\SLL64_A|Mux8|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux12~0_combout\ = (\SLL64_A|Mux8|Mux31~4_combout\ & ((\SLL64_A|Mux32|Mux12~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux31~4_combout\,
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~35_combout\,
	datad => \SLL64_A|Mux32|Mux12~0_combout\,
	combout => \SLL64_A|Mux8|Mux12~0_combout\);

-- Location: LCCOMB_X52_Y38_N30
\SLL64_A|Mux8|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux12~2_combout\ = (\SLL64_A|Mux8|Mux12~1_combout\) # ((\SLL64_A|Mux8|Mux12~0_combout\) # ((\SLL64_A|Mux8|Mux35~0_combout\ & \SLL64_A|Mux32|Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux12~1_combout\,
	datab => \SLL64_A|Mux8|Mux35~0_combout\,
	datac => \SLL64_A|Mux32|Mux20~3_combout\,
	datad => \SLL64_A|Mux8|Mux12~0_combout\,
	combout => \SLL64_A|Mux8|Mux12~2_combout\);

-- Location: LCCOMB_X56_Y41_N24
\Selector140~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector140~0_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux15~2_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux13~2_combout\,
	datab => \Selector126~1_combout\,
	datac => \SLL64_A|Mux8|Mux15~2_combout\,
	datad => \B[1]~input_o\,
	combout => \Selector140~0_combout\);

-- Location: LCCOMB_X56_Y41_N4
\Selector140~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector140~2_combout\ = (\Selector140~1_combout\) # ((\Selector140~0_combout\) # ((\Selector191~1_combout\ & \SLL64_A|Mux8|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector191~1_combout\,
	datab => \Selector140~1_combout\,
	datac => \SLL64_A|Mux8|Mux12~2_combout\,
	datad => \Selector140~0_combout\,
	combout => \Selector140~2_combout\);

-- Location: LCCOMB_X48_Y38_N16
\Selector492~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector492~3_combout\ = (\Selector481~2_combout\ & ((\Selector481~1_combout\) # ((\C[19]~input_o\)))) # (!\Selector481~2_combout\ & (!\Selector481~1_combout\ & ((\Selector140~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \Selector481~1_combout\,
	datac => \C[19]~input_o\,
	datad => \Selector140~2_combout\,
	combout => \Selector492~3_combout\);

-- Location: LCCOMB_X52_Y38_N16
\SLL64_A|Mux8|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux44~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Selector52~0_combout\)) # (!\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux31~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Selector52~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~35_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64_A|Mux8|Mux44~0_combout\);

-- Location: LCCOMB_X50_Y37_N12
\SLL64_A|Mux8|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux44~1_combout\ = (\SLL64_A|Mux8|Mux44~0_combout\) # ((\B[2]~input_o\ & \SLL64_A|Mux8|Mux48~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SLL64_A|Mux8|Mux48~1_combout\,
	datad => \SLL64_A|Mux8|Mux44~0_combout\,
	combout => \SLL64_A|Mux8|Mux44~1_combout\);

-- Location: LCCOMB_X50_Y37_N14
\SLL64_A|Mux4|Mux31~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~36_combout\ = (!\SRL64_A|Mux4|Mux63~110_combout\ & ((\B[1]~input_o\ & (\SLL64_A|Mux8|Mux46~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux44~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~110_combout\,
	datac => \SLL64_A|Mux8|Mux46~1_combout\,
	datad => \SLL64_A|Mux8|Mux44~1_combout\,
	combout => \SLL64_A|Mux4|Mux31~36_combout\);

-- Location: LCCOMB_X48_Y38_N26
\Selector492~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector492~4_combout\ = (\Selector492~3_combout\ & ((\SLL64_A|Mux4|Mux31~35_combout\) # ((!\Selector481~1_combout\)))) # (!\Selector492~3_combout\ & (((\Selector481~1_combout\ & \SLL64_A|Mux4|Mux31~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector492~3_combout\,
	datab => \SLL64_A|Mux4|Mux31~35_combout\,
	datac => \Selector481~1_combout\,
	datad => \SLL64_A|Mux4|Mux31~36_combout\,
	combout => \Selector492~4_combout\);

-- Location: LCCOMB_X55_Y42_N2
\SRL64_A|Mux8|Mux63~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~64_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector13~0_combout\)) # (!\B[4]~input_o\ & ((\Selector29~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \B[5]~input_o\,
	datac => \Selector29~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~64_combout\);

-- Location: LCCOMB_X52_Y41_N26
\SRL64_A|Mux8|Mux63~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~63_combout\ = (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux33~0_combout\) # ((\Selector1~0_combout\ & \SLL64_A|Mux32|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux33~0_combout\,
	datab => \Selector1~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~6_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~63_combout\);

-- Location: LCCOMB_X52_Y41_N28
\SRL64_A|Mux8|Mux63~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~65_combout\ = (\SRL64_A|Mux8|Mux63~63_combout\) # ((\B[2]~input_o\ & \SRL64_A|Mux8|Mux63~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~64_combout\,
	datac => \SRL64_A|Mux8|Mux63~63_combout\,
	combout => \SRL64_A|Mux8|Mux63~65_combout\);

-- Location: LCCOMB_X57_Y37_N22
\SRL64_A|Mux4|Mux63~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~174_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~65_combout\)) # (!\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~65_combout\,
	datab => \SRL64_A|Mux8|Mux63~39_combout\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~174_combout\);

-- Location: LCCOMB_X59_Y39_N16
\SRL64_A|Mux4|Mux63~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~173_combout\ = (\SRL64_A|Mux8|Mux63~35_combout\ & ((\SRL64_A|Mux4|Mux63~138_combout\) # ((\SRL64_A|Mux8|Mux63~58_combout\ & \SRL64_A|Mux4|Mux63~73_combout\)))) # (!\SRL64_A|Mux8|Mux63~35_combout\ & (\SRL64_A|Mux8|Mux63~58_combout\ & 
-- ((\SRL64_A|Mux4|Mux63~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~35_combout\,
	datab => \SRL64_A|Mux8|Mux63~58_combout\,
	datac => \SRL64_A|Mux4|Mux63~138_combout\,
	datad => \SRL64_A|Mux4|Mux63~73_combout\,
	combout => \SRL64_A|Mux4|Mux63~173_combout\);

-- Location: LCCOMB_X58_Y37_N20
\SRL64_A|Mux4|Mux63~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~175_combout\ = (\SRL64_A|Mux4|Mux63~174_combout\) # (\SRL64_A|Mux4|Mux63~173_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64_A|Mux4|Mux63~174_combout\,
	datad => \SRL64_A|Mux4|Mux63~173_combout\,
	combout => \SRL64_A|Mux4|Mux63~175_combout\);

-- Location: LCCOMB_X56_Y40_N18
\Selector492~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector492~0_combout\ = (\B[0]~input_o\ & ((\ShiftFN[0]~input_o\) # ((\SRL64_A|Mux4|Mux63~175_combout\)))) # (!\B[0]~input_o\ & (!\ShiftFN[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~175_combout\,
	datad => \SRL64_A|Mux4|Mux63~166_combout\,
	combout => \Selector492~0_combout\);

-- Location: LCCOMB_X55_Y41_N30
\SRA64_A|Mux8|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux41~0_combout\ = (\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux37~0_combout\) # ((\SRA64_A|Mux32|Mux37~0_combout\)))) # (!\B[2]~input_o\ & (((\SRA64_A|Mux32|Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux37~0_combout\,
	datab => \SRA64_A|Mux32|Mux37~0_combout\,
	datac => \SRA64_A|Mux32|Mux41~1_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64_A|Mux8|Mux41~0_combout\);

-- Location: LCCOMB_X55_Y41_N12
\SRL64_A|Mux8|Mux63~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~66_combout\ = (\B[2]~input_o\ & (((\SRL64_A|Mux4|Mux63~54_combout\) # (\SRL64_A|Mux8|Mux63~64_combout\)))) # (!\B[2]~input_o\ & (\SRA64_A|Mux32|Mux33~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64_A|Mux32|Mux33~1_combout\,
	datac => \SRL64_A|Mux4|Mux63~54_combout\,
	datad => \SRL64_A|Mux8|Mux63~64_combout\,
	combout => \SRL64_A|Mux8|Mux63~66_combout\);

-- Location: LCCOMB_X55_Y41_N8
\SRA64_A|Mux8|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux41~1_combout\ = (\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~66_combout\))) # (!\B[3]~input_o\ & (\SRA64_A|Mux8|Mux41~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRA64_A|Mux8|Mux41~0_combout\,
	datad => \SRL64_A|Mux8|Mux63~66_combout\,
	combout => \SRA64_A|Mux8|Mux41~1_combout\);

-- Location: LCCOMB_X56_Y40_N28
\SRL64_A|Mux4|Mux63~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~176_combout\ = (\B[1]~input_o\ & (\SRA64_A|Mux8|Mux41~1_combout\)) # (!\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux43~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux41~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64_A|Mux8|Mux43~1_combout\,
	combout => \SRL64_A|Mux4|Mux63~176_combout\);

-- Location: LCCOMB_X56_Y40_N22
\Selector492~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector492~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector492~0_combout\ & ((\SRL64_A|Mux4|Mux63~176_combout\))) # (!\Selector492~0_combout\ & (\SRL64_A|Mux4|Mux63~167_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Selector492~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~167_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Selector492~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~176_combout\,
	combout => \Selector492~1_combout\);

-- Location: LCCOMB_X47_Y40_N12
\Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\ShiftFN[0]~input_o\ & ((\B[0]~input_o\) # ((\SRL64_A|Mux4|Mux63~172_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~172_combout\,
	datad => \SRL64_A|Mux4|Mux63~169_combout\,
	combout => \Selector76~0_combout\);

-- Location: LCCOMB_X48_Y39_N26
\SRL64_A|Mux4|Mux63~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~177_combout\ = (\B[3]~input_o\ & (\Selector1~0_combout\)) # (!\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector1~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux9~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~177_combout\);

-- Location: LCCOMB_X47_Y40_N2
\SRL64_A|Mux4|Mux63~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~178_combout\ = (\SLL64_A|Mux4|Mux31~24_combout\ & ((\B[1]~input_o\ & (\SRL64_A|Mux4|Mux63~177_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux4|Mux63~160_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64_A|Mux4|Mux31~24_combout\,
	datac => \SRL64_A|Mux4|Mux63~177_combout\,
	datad => \SRL64_A|Mux4|Mux63~160_combout\,
	combout => \SRL64_A|Mux4|Mux63~178_combout\);

-- Location: LCCOMB_X48_Y39_N12
\SRA64_A|Mux8|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux9~0_combout\ = (\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux31~32_combout\ & ((\Selector1~0_combout\))) # (!\SLL64_A|Mux32|Mux31~32_combout\ & (\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector1~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~32_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA64_A|Mux8|Mux9~0_combout\);

-- Location: LCCOMB_X48_Y39_N6
\SRA64_A|Mux8|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux9~1_combout\ = (\SRA64_A|Mux8|Mux9~0_combout\) # ((!\B[3]~input_o\ & \SRL64_A|Mux8|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux9~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux9~0_combout\,
	combout => \SRA64_A|Mux8|Mux9~1_combout\);

-- Location: LCCOMB_X48_Y39_N16
\SRL64_A|Mux4|Mux63~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~179_combout\ = (\SRL64_A|Mux4|Mux63~170_combout\ & (((\Selector0~0_combout\)))) # (!\SRL64_A|Mux4|Mux63~170_combout\ & (\SRA64_A|Mux8|Mux9~1_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux9~1_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector0~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~170_combout\,
	combout => \SRL64_A|Mux4|Mux63~179_combout\);

-- Location: LCCOMB_X48_Y39_N10
\SRL64_A|Mux4|Mux63~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~180_combout\ = (\SRL64_A|Mux4|Mux63~179_combout\) # ((!\SRL64_A|Mux4|Mux63~170_combout\ & (\SRA64_A|Mux8|Mux11~1_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~179_combout\,
	datab => \SRL64_A|Mux4|Mux63~170_combout\,
	datac => \SRA64_A|Mux8|Mux11~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~180_combout\);

-- Location: LCCOMB_X47_Y40_N6
\Selector76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~1_combout\ = (\Selector76~0_combout\ & (((\SRL64_A|Mux4|Mux63~180_combout\) # (!\B[0]~input_o\)))) # (!\Selector76~0_combout\ & (\SRL64_A|Mux4|Mux63~178_combout\ & (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector76~0_combout\,
	datab => \SRL64_A|Mux4|Mux63~178_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~180_combout\,
	combout => \Selector76~1_combout\);

-- Location: LCCOMB_X48_Y38_N6
\Selector492~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector492~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & (\Selector492~1_combout\)) # (!\Selector481~0_combout\ & ((\Selector76~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector492~1_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector481~0_combout\,
	datad => \Selector76~1_combout\,
	combout => \Selector492~2_combout\);

-- Location: LCCOMB_X48_Y38_N20
\Selector492~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector492~5_combout\ = (\Selector492~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector492~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector492~4_combout\,
	datad => \Selector492~2_combout\,
	combout => \Selector492~5_combout\);

-- Location: IOIBUF_X40_Y0_N15
\C[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(20),
	o => \C[20]~input_o\);

-- Location: IOIBUF_X0_Y57_N15
\C[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(52),
	o => \C[52]~input_o\);

-- Location: LCCOMB_X56_Y41_N8
\Selector139~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector139~1_combout\ = (\C[52]~input_o\ & (((\SLL64_A|Mux8|Mux13~2_combout\ & \Selector157~4_combout\)) # (!\ShiftFN[0]~input_o\))) # (!\C[52]~input_o\ & (\SLL64_A|Mux8|Mux13~2_combout\ & ((\Selector157~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[52]~input_o\,
	datab => \SLL64_A|Mux8|Mux13~2_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Selector157~4_combout\,
	combout => \Selector139~1_combout\);

-- Location: LCCOMB_X58_Y35_N28
\SLL64_A|Mux32|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux11~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector27~0_combout\)) # (!\B[4]~input_o\ & ((\Selector11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector27~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector11~0_combout\,
	combout => \SLL64_A|Mux32|Mux11~0_combout\);

-- Location: LCCOMB_X56_Y38_N22
\SLL64_A|Mux8|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux11~0_combout\ = (\SLL64_A|Mux8|Mux31~4_combout\ & ((\SLL64_A|Mux32|Mux11~0_combout\) # ((\SLL64_A|Mux32|Mux31~2_combout\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~2_combout\,
	datab => \SLL64_A|Mux8|Mux31~4_combout\,
	datac => \SLL64_A|Mux32|Mux11~0_combout\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux8|Mux11~0_combout\);

-- Location: LCCOMB_X58_Y38_N14
\SLL64_A|Mux32|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux15~1_combout\ = (\SLL64_A|Mux32|Mux15~0_combout\) # ((\SLL64_A|Mux32|Mux31~33_combout\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~33_combout\,
	datab => \B[5]~input_o\,
	datad => \SLL64_A|Mux32|Mux15~0_combout\,
	combout => \SLL64_A|Mux32|Mux15~1_combout\);

-- Location: LCCOMB_X57_Y38_N22
\SLL64_A|Mux8|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux11~1_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SLL64_A|Mux32|Mux23~3_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux32|Mux19~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux32|Mux23~3_combout\,
	combout => \SLL64_A|Mux8|Mux11~1_combout\);

-- Location: LCCOMB_X58_Y38_N0
\SLL64_A|Mux8|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux11~2_combout\ = (\SLL64_A|Mux8|Mux11~0_combout\) # ((\SLL64_A|Mux8|Mux11~1_combout\) # ((\SLL64_A|Mux8|Mux27~0_combout\ & \SLL64_A|Mux32|Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux27~0_combout\,
	datab => \SLL64_A|Mux8|Mux11~0_combout\,
	datac => \SLL64_A|Mux32|Mux15~1_combout\,
	datad => \SLL64_A|Mux8|Mux11~1_combout\,
	combout => \SLL64_A|Mux8|Mux11~2_combout\);

-- Location: LCCOMB_X56_Y41_N6
\Selector139~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector139~0_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux14~2_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux12~2_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector126~1_combout\,
	datad => \SLL64_A|Mux8|Mux14~2_combout\,
	combout => \Selector139~0_combout\);

-- Location: LCCOMB_X56_Y41_N26
\Selector139~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector139~2_combout\ = (\Selector139~1_combout\) # ((\Selector139~0_combout\) # ((\Selector191~1_combout\ & \SLL64_A|Mux8|Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector191~1_combout\,
	datab => \Selector139~1_combout\,
	datac => \SLL64_A|Mux8|Mux11~2_combout\,
	datad => \Selector139~0_combout\,
	combout => \Selector139~2_combout\);

-- Location: LCCOMB_X55_Y38_N24
\SLL64_A|Mux8|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux43~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Selector55~0_combout\)) # (!\B[2]~input_o\ & ((\Selector51~0_combout\))))) # (!\B[3]~input_o\ & (((\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector55~0_combout\,
	datab => \Selector51~0_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLL64_A|Mux8|Mux43~0_combout\);

-- Location: LCCOMB_X55_Y38_N10
\SLL64_A|Mux8|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux43~1_combout\ = (\B[3]~input_o\ & (((\SLL64_A|Mux8|Mux43~0_combout\)))) # (!\B[3]~input_o\ & ((\SLL64_A|Mux8|Mux43~0_combout\ & ((\SLL64_A|Mux32|Mux31~33_combout\))) # (!\SLL64_A|Mux8|Mux43~0_combout\ & 
-- (\SLL64_A|Mux32|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~2_combout\,
	datab => \SLL64_A|Mux32|Mux31~33_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux8|Mux43~0_combout\,
	combout => \SLL64_A|Mux8|Mux43~1_combout\);

-- Location: LCCOMB_X50_Y39_N26
\SLL64_A|Mux4|Mux31~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~37_combout\ = (\B[5]~input_o\) # ((\B[4]~input_o\ & ((\SLL64_A|Mux4|Mux31~27_combout\) # (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux4|Mux31~27_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~37_combout\);

-- Location: LCCOMB_X50_Y39_N28
\SLL64_A|Mux4|Mux31~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~38_combout\ = (!\SLL64_A|Mux4|Mux31~37_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux45~1_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux43~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64_A|Mux4|Mux31~37_combout\,
	datad => \SLL64_A|Mux8|Mux45~1_combout\,
	combout => \SLL64_A|Mux4|Mux31~38_combout\);

-- Location: LCCOMB_X48_Y38_N10
\Selector491~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector491~3_combout\ = (\Selector481~1_combout\ & (((\SLL64_A|Mux4|Mux31~38_combout\) # (\Selector481~2_combout\)))) # (!\Selector481~1_combout\ & (\Selector139~2_combout\ & ((!\Selector481~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector139~2_combout\,
	datab => \Selector481~1_combout\,
	datac => \SLL64_A|Mux4|Mux31~38_combout\,
	datad => \Selector481~2_combout\,
	combout => \Selector491~3_combout\);

-- Location: LCCOMB_X48_Y38_N12
\Selector491~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector491~4_combout\ = (\Selector481~2_combout\ & ((\Selector491~3_combout\ & (\SLL64_A|Mux4|Mux31~36_combout\)) # (!\Selector491~3_combout\ & ((\C[20]~input_o\))))) # (!\Selector481~2_combout\ & (((\Selector491~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \SLL64_A|Mux4|Mux31~36_combout\,
	datac => \C[20]~input_o\,
	datad => \Selector491~3_combout\,
	combout => \Selector491~4_combout\);

-- Location: LCCOMB_X53_Y36_N0
\SRL64_A|Mux8|Mux63~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~68_combout\ = (!\B[2]~input_o\ & ((\B[4]~input_o\ & (\Selector16~0_combout\)) # (!\B[4]~input_o\ & ((\Selector32~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \B[4]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Selector32~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~68_combout\);

-- Location: LCCOMB_X53_Y37_N8
\SRA64_A|Mux8|Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux40~1_combout\ = (!\B[5]~input_o\ & ((\SRL64_A|Mux8|Mux63~68_combout\) # ((\SLL64_A|Mux32|Mux31~19_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~68_combout\,
	datac => \SLL64_A|Mux32|Mux31~19_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64_A|Mux8|Mux40~1_combout\);

-- Location: LCCOMB_X54_Y36_N28
\SRA64_A|Mux8|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux40~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64_A|Mux32|Mux36~1_combout\))) # (!\B[2]~input_o\ & (\SRA64_A|Mux32|Mux40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64_A|Mux32|Mux40~1_combout\,
	datac => \SRA64_A|Mux32|Mux36~1_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64_A|Mux8|Mux40~0_combout\);

-- Location: LCCOMB_X54_Y37_N28
\SRA64_A|Mux8|Mux40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux40~2_combout\ = (\SRA64_A|Mux8|Mux40~0_combout\) # ((\B[3]~input_o\ & ((\SRA64_A|Mux8|Mux40~1_combout\) # (\SRL64_A|Mux4|Mux63~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux40~1_combout\,
	datab => \SRL64_A|Mux4|Mux63~54_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64_A|Mux8|Mux40~0_combout\,
	combout => \SRA64_A|Mux8|Mux40~2_combout\);

-- Location: LCCOMB_X54_Y37_N14
\SRL64_A|Mux4|Mux63~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~184_combout\ = (\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux40~2_combout\))) # (!\B[1]~input_o\ & (\SRA64_A|Mux8|Mux42~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux42~1_combout\,
	datab => \SRA64_A|Mux8|Mux40~2_combout\,
	datac => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~184_combout\);

-- Location: LCCOMB_X54_Y40_N4
\SRL64_A|Mux4|Mux63~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~181_combout\ = (\SRL64_A|Mux8|Mux63~37_combout\ & ((\SRL64_A|Mux4|Mux63~138_combout\) # ((\SRL64_A|Mux4|Mux63~73_combout\ & \SRL64_A|Mux8|Mux63~61_combout\)))) # (!\SRL64_A|Mux8|Mux63~37_combout\ & (\SRL64_A|Mux4|Mux63~73_combout\ & 
-- ((\SRL64_A|Mux8|Mux63~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~37_combout\,
	datab => \SRL64_A|Mux4|Mux63~73_combout\,
	datac => \SRL64_A|Mux4|Mux63~138_combout\,
	datad => \SRL64_A|Mux8|Mux63~61_combout\,
	combout => \SRL64_A|Mux4|Mux63~181_combout\);

-- Location: LCCOMB_X53_Y36_N6
\SRL64_A|Mux8|Mux63~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~67_combout\ = (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux32~0_combout\) # ((\SLL64_A|Mux32|Mux31~6_combout\ & \Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~6_combout\,
	datab => \SRL64_A|Mux32|Mux32~0_combout\,
	datac => \Selector0~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~67_combout\);

-- Location: LCCOMB_X53_Y37_N22
\SRL64_A|Mux8|Mux63~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~79_combout\ = (\SRL64_A|Mux8|Mux63~67_combout\) # ((!\B[5]~input_o\ & (\SLL64_A|Mux32|Mux31~19_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~67_combout\,
	datac => \SLL64_A|Mux32|Mux31~19_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~79_combout\);

-- Location: LCCOMB_X54_Y40_N22
\SRL64_A|Mux4|Mux63~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~182_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~79_combout\))) # (!\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~41_combout\,
	datad => \SRL64_A|Mux8|Mux63~79_combout\,
	combout => \SRL64_A|Mux4|Mux63~182_combout\);

-- Location: LCCOMB_X54_Y40_N16
\SRL64_A|Mux4|Mux63~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~183_combout\ = (\SRL64_A|Mux4|Mux63~181_combout\) # (\SRL64_A|Mux4|Mux63~182_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64_A|Mux4|Mux63~181_combout\,
	datac => \SRL64_A|Mux4|Mux63~182_combout\,
	combout => \SRL64_A|Mux4|Mux63~183_combout\);

-- Location: LCCOMB_X48_Y42_N16
\Selector491~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector491~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRL64_A|Mux4|Mux63~183_combout\)))) # (!\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~175_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~175_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~183_combout\,
	combout => \Selector491~0_combout\);

-- Location: LCCOMB_X48_Y38_N30
\Selector491~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector491~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector491~0_combout\ & (\SRL64_A|Mux4|Mux63~184_combout\)) # (!\Selector491~0_combout\ & ((\SRL64_A|Mux4|Mux63~176_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Selector491~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~184_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~176_combout\,
	datad => \Selector491~0_combout\,
	combout => \Selector491~1_combout\);

-- Location: LCCOMB_X48_Y40_N24
\SRL64_A|Mux4|Mux63~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~185_combout\ = (\B[3]~input_o\ & (\Selector0~0_combout\)) # (!\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~42_combout\,
	combout => \SRL64_A|Mux4|Mux63~185_combout\);

-- Location: LCCOMB_X47_Y40_N0
\SRL64_A|Mux4|Mux63~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~186_combout\ = (\SLL64_A|Mux4|Mux31~24_combout\ & ((\B[1]~input_o\ & (\SRL64_A|Mux4|Mux63~185_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux4|Mux63~168_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~185_combout\,
	datab => \SLL64_A|Mux4|Mux31~24_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~168_combout\,
	combout => \SRL64_A|Mux4|Mux63~186_combout\);

-- Location: LCCOMB_X47_Y40_N26
\Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\) # (\SRL64_A|Mux4|Mux63~180_combout\)))) # (!\ShiftFN[0]~input_o\ & (\SRL64_A|Mux4|Mux63~178_combout\ & (!\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~178_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~180_combout\,
	combout => \Selector75~0_combout\);

-- Location: LCCOMB_X48_Y39_N22
\SRL64_A|Mux4|Mux63~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~189_combout\ = (\B[1]~input_o\ & (\B[3]~input_o\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux4|Mux63~170_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[1]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~170_combout\,
	combout => \SRL64_A|Mux4|Mux63~189_combout\);

-- Location: LCCOMB_X52_Y36_N22
\SRL64_A|Mux4|Mux63~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~187_combout\ = (\SLL64_A|Mux32|Mux31~32_combout\ & ((\B[2]~input_o\ & (\Selector4~0_combout\)) # (!\B[2]~input_o\ & ((\Selector8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Selector4~0_combout\,
	datac => \Selector8~0_combout\,
	datad => \SLL64_A|Mux32|Mux31~32_combout\,
	combout => \SRL64_A|Mux4|Mux63~187_combout\);

-- Location: LCCOMB_X48_Y39_N4
\SRL64_A|Mux4|Mux63~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~188_combout\ = (\B[1]~input_o\ & ((\SRL64_A|Mux4|Mux63~135_combout\) # ((\SRL64_A|Mux4|Mux63~187_combout\)))) # (!\B[1]~input_o\ & (((\SRA64_A|Mux8|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~135_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~187_combout\,
	datad => \SRA64_A|Mux8|Mux10~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~188_combout\);

-- Location: LCCOMB_X48_Y39_N0
\SRL64_A|Mux4|Mux63~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~190_combout\ = (\SRL64_A|Mux4|Mux63~189_combout\ & ((\Selector0~0_combout\))) # (!\SRL64_A|Mux4|Mux63~189_combout\ & (\SRL64_A|Mux4|Mux63~188_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~189_combout\,
	datab => \SRL64_A|Mux4|Mux63~188_combout\,
	datac => \Selector0~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~190_combout\);

-- Location: LCCOMB_X47_Y40_N4
\Selector75~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~1_combout\ = (\B[0]~input_o\ & ((\Selector75~0_combout\ & ((\SRL64_A|Mux4|Mux63~190_combout\))) # (!\Selector75~0_combout\ & (\SRL64_A|Mux4|Mux63~186_combout\)))) # (!\B[0]~input_o\ & (((\Selector75~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~186_combout\,
	datac => \Selector75~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~190_combout\,
	combout => \Selector75~1_combout\);

-- Location: LCCOMB_X48_Y38_N0
\Selector491~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector491~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & (\Selector491~1_combout\)) # (!\Selector481~0_combout\ & ((\Selector75~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector491~1_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector481~0_combout\,
	datad => \Selector75~1_combout\,
	combout => \Selector491~2_combout\);

-- Location: LCCOMB_X48_Y38_N14
\Selector491~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector491~5_combout\ = (\Selector491~2_combout\) # ((\Selector491~4_combout\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector491~4_combout\,
	datab => \ShiftFN[1]~input_o\,
	datad => \Selector491~2_combout\,
	combout => \Selector491~5_combout\);

-- Location: LCCOMB_X53_Y35_N16
\SLL64_A|Mux8|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux42~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Selector54~0_combout\)) # (!\B[2]~input_o\ & ((\Selector50~0_combout\))))) # (!\B[3]~input_o\ & (((\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Selector54~0_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector50~0_combout\,
	combout => \SLL64_A|Mux8|Mux42~0_combout\);

-- Location: LCCOMB_X53_Y35_N18
\SLL64_A|Mux8|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux42~1_combout\ = (\B[3]~input_o\ & (((\SLL64_A|Mux8|Mux42~0_combout\)))) # (!\B[3]~input_o\ & ((\SLL64_A|Mux8|Mux42~0_combout\ & ((\SLL64_A|Mux32|Mux31~9_combout\))) # (!\SLL64_A|Mux8|Mux42~0_combout\ & (\SLL64_A|Mux32|Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64_A|Mux32|Mux31~7_combout\,
	datac => \SLL64_A|Mux8|Mux42~0_combout\,
	datad => \SLL64_A|Mux32|Mux31~9_combout\,
	combout => \SLL64_A|Mux8|Mux42~1_combout\);

-- Location: LCCOMB_X50_Y39_N6
\SLL64_A|Mux4|Mux31~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~39_combout\ = (!\SLL64_A|Mux4|Mux31~37_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux44~1_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~37_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64_A|Mux8|Mux42~1_combout\,
	datad => \SLL64_A|Mux8|Mux44~1_combout\,
	combout => \SLL64_A|Mux4|Mux31~39_combout\);

-- Location: IOIBUF_X115_Y41_N1
\C[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(53),
	o => \C[53]~input_o\);

-- Location: LCCOMB_X56_Y41_N14
\Selector138~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector138~1_combout\ = (\SLL64_A|Mux8|Mux12~2_combout\ & ((\Selector157~4_combout\) # ((!\ShiftFN[0]~input_o\ & \C[53]~input_o\)))) # (!\SLL64_A|Mux8|Mux12~2_combout\ & (!\ShiftFN[0]~input_o\ & (\C[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux12~2_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \C[53]~input_o\,
	datad => \Selector157~4_combout\,
	combout => \Selector138~1_combout\);

-- Location: LCCOMB_X55_Y37_N30
\SLL64_A|Mux32|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux10~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector26~0_combout\))) # (!\B[4]~input_o\ & (\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Selector10~0_combout\,
	datad => \Selector26~0_combout\,
	combout => \SLL64_A|Mux32|Mux10~0_combout\);

-- Location: LCCOMB_X55_Y36_N10
\SLL64_A|Mux8|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux10~0_combout\ = (\SLL64_A|Mux8|Mux31~4_combout\ & ((\SLL64_A|Mux32|Mux10~0_combout\) # ((\SLL64_A|Mux32|Mux31~7_combout\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux31~4_combout\,
	datab => \SLL64_A|Mux32|Mux31~7_combout\,
	datac => \SLL64_A|Mux32|Mux10~0_combout\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux8|Mux10~0_combout\);

-- Location: LCCOMB_X55_Y36_N20
\SLL64_A|Mux8|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux10~1_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SLL64_A|Mux32|Mux22~3_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux18~3_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux32|Mux22~3_combout\,
	combout => \SLL64_A|Mux8|Mux10~1_combout\);

-- Location: LCCOMB_X56_Y36_N20
\SLL64_A|Mux32|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux14~1_combout\ = (\SLL64_A|Mux32|Mux14~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux14~0_combout\,
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~9_combout\,
	combout => \SLL64_A|Mux32|Mux14~1_combout\);

-- Location: LCCOMB_X55_Y36_N30
\SLL64_A|Mux8|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux10~2_combout\ = (\SLL64_A|Mux8|Mux10~0_combout\) # ((\SLL64_A|Mux8|Mux10~1_combout\) # ((\SLL64_A|Mux32|Mux14~1_combout\ & \SLL64_A|Mux8|Mux27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux10~0_combout\,
	datab => \SLL64_A|Mux8|Mux10~1_combout\,
	datac => \SLL64_A|Mux32|Mux14~1_combout\,
	datad => \SLL64_A|Mux8|Mux27~0_combout\,
	combout => \SLL64_A|Mux8|Mux10~2_combout\);

-- Location: LCCOMB_X56_Y41_N20
\Selector138~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector138~0_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux13~2_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux11~2_combout\,
	datab => \SLL64_A|Mux8|Mux13~2_combout\,
	datac => \Selector126~1_combout\,
	datad => \B[1]~input_o\,
	combout => \Selector138~0_combout\);

-- Location: LCCOMB_X56_Y41_N16
\Selector138~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector138~2_combout\ = (\Selector138~1_combout\) # ((\Selector138~0_combout\) # ((\Selector191~1_combout\ & \SLL64_A|Mux8|Mux10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector191~1_combout\,
	datab => \Selector138~1_combout\,
	datac => \SLL64_A|Mux8|Mux10~2_combout\,
	datad => \Selector138~0_combout\,
	combout => \Selector138~2_combout\);

-- Location: IOIBUF_X0_Y46_N15
\C[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(21),
	o => \C[21]~input_o\);

-- Location: LCCOMB_X48_Y42_N8
\Selector490~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector490~3_combout\ = (\Selector481~2_combout\ & (((\Selector481~1_combout\) # (\C[21]~input_o\)))) # (!\Selector481~2_combout\ & (\Selector138~2_combout\ & (!\Selector481~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \Selector138~2_combout\,
	datac => \Selector481~1_combout\,
	datad => \C[21]~input_o\,
	combout => \Selector490~3_combout\);

-- Location: LCCOMB_X48_Y42_N2
\Selector490~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector490~4_combout\ = (\Selector490~3_combout\ & (((\SLL64_A|Mux4|Mux31~38_combout\) # (!\Selector481~1_combout\)))) # (!\Selector490~3_combout\ & (\SLL64_A|Mux4|Mux31~39_combout\ & (\Selector481~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~39_combout\,
	datab => \Selector490~3_combout\,
	datac => \Selector481~1_combout\,
	datad => \SLL64_A|Mux4|Mux31~38_combout\,
	combout => \Selector490~4_combout\);

-- Location: LCCOMB_X59_Y39_N18
\SRL64_A|Mux4|Mux63~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~191_combout\ = (\SRL64_A|Mux8|Mux63~39_combout\ & (!\B[3]~input_o\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64_A|Mux8|Mux63~39_combout\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~191_combout\);

-- Location: LCCOMB_X59_Y38_N20
\SRL64_A|Mux8|Mux63~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~80_combout\ = (\B[2]~input_o\ & (((!\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~29_combout\)))) # (!\B[2]~input_o\ & (\SRL64_A|Mux8|Mux63~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~57_combout\,
	datac => \B[5]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~29_combout\,
	combout => \SRL64_A|Mux8|Mux63~80_combout\);

-- Location: LCCOMB_X59_Y39_N28
\SRL64_A|Mux4|Mux63~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~192_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~80_combout\))) # (!\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~44_combout\,
	datad => \SRL64_A|Mux8|Mux63~80_combout\,
	combout => \SRL64_A|Mux4|Mux63~192_combout\);

-- Location: LCCOMB_X59_Y39_N30
\SRL64_A|Mux4|Mux63~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~193_combout\ = (\SRL64_A|Mux4|Mux63~191_combout\) # ((\SRL64_A|Mux4|Mux63~192_combout\) # ((\SRL64_A|Mux8|Mux63~65_combout\ & \SRL64_A|Mux4|Mux63~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~191_combout\,
	datab => \SRL64_A|Mux8|Mux63~65_combout\,
	datac => \SRL64_A|Mux4|Mux63~73_combout\,
	datad => \SRL64_A|Mux4|Mux63~192_combout\,
	combout => \SRL64_A|Mux4|Mux63~193_combout\);

-- Location: LCCOMB_X48_Y42_N26
\Selector490~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector490~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRL64_A|Mux4|Mux63~193_combout\)))) # (!\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~183_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~183_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~193_combout\,
	combout => \Selector490~0_combout\);

-- Location: LCCOMB_X59_Y38_N14
\SRA64_A|Mux8|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux39~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64_A|Mux32|Mux35~1_combout\))) # (!\B[2]~input_o\ & (\SRA64_A|Mux32|Mux39~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64_A|Mux32|Mux39~1_combout\,
	datac => \SRA64_A|Mux32|Mux35~1_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA64_A|Mux8|Mux39~0_combout\);

-- Location: LCCOMB_X59_Y38_N24
\SRA64_A|Mux8|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux39~1_combout\ = (\SRA64_A|Mux8|Mux39~0_combout\) # ((\B[3]~input_o\ & ((\SRL64_A|Mux4|Mux63~54_combout\) # (\SRL64_A|Mux8|Mux63~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64_A|Mux8|Mux39~0_combout\,
	datac => \SRL64_A|Mux4|Mux63~54_combout\,
	datad => \SRL64_A|Mux8|Mux63~80_combout\,
	combout => \SRA64_A|Mux8|Mux39~1_combout\);

-- Location: LCCOMB_X59_Y38_N10
\SRL64_A|Mux4|Mux63~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~194_combout\ = (\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux39~1_combout\))) # (!\B[1]~input_o\ & (\SRA64_A|Mux8|Mux41~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux41~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64_A|Mux8|Mux39~1_combout\,
	combout => \SRL64_A|Mux4|Mux63~194_combout\);

-- Location: LCCOMB_X48_Y42_N28
\Selector490~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector490~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector490~0_combout\ & ((\SRL64_A|Mux4|Mux63~194_combout\))) # (!\Selector490~0_combout\ & (\SRL64_A|Mux4|Mux63~184_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Selector490~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~184_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Selector490~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~194_combout\,
	combout => \Selector490~1_combout\);

-- Location: LCCOMB_X47_Y40_N14
\Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\) # (\SRL64_A|Mux4|Mux63~190_combout\)))) # (!\ShiftFN[0]~input_o\ & (\SRL64_A|Mux4|Mux63~186_combout\ & (!\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~186_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~190_combout\,
	combout => \Selector74~0_combout\);

-- Location: LCCOMB_X50_Y42_N4
\SRL64_A|Mux4|Mux63~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~256_combout\ = ((\B[3]~input_o\ & ((\B[1]~input_o\) # (\B[2]~input_o\)))) # (!\SLL64_A|Mux32|Mux31~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~32_combout\,
	combout => \SRL64_A|Mux4|Mux63~256_combout\);

-- Location: LCCOMB_X48_Y40_N26
\SRL64_A|Mux4|Mux63~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~195_combout\ = (!\SRL64_A|Mux4|Mux63~256_combout\ & ((\B[1]~input_o\ & (\SRL64_A|Mux8|Mux63~45_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux4|Mux63~177_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~45_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~177_combout\,
	datad => \SRL64_A|Mux4|Mux63~256_combout\,
	combout => \SRL64_A|Mux4|Mux63~195_combout\);

-- Location: LCCOMB_X48_Y39_N18
\SRL64_A|Mux4|Mux63~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~196_combout\ = (\SLL64_A|Mux32|Mux31~32_combout\ & ((\B[2]~input_o\ & (\Selector3~0_combout\)) # (!\B[2]~input_o\ & ((\Selector7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector7~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~32_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~196_combout\);

-- Location: LCCOMB_X48_Y39_N28
\SRL64_A|Mux4|Mux63~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~197_combout\ = (\B[1]~input_o\ & (((\SRL64_A|Mux4|Mux63~135_combout\) # (\SRL64_A|Mux4|Mux63~196_combout\)))) # (!\B[1]~input_o\ & (\SRA64_A|Mux8|Mux9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux9~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~135_combout\,
	datad => \SRL64_A|Mux4|Mux63~196_combout\,
	combout => \SRL64_A|Mux4|Mux63~197_combout\);

-- Location: LCCOMB_X48_Y39_N14
\SRL64_A|Mux4|Mux63~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~198_combout\ = (\SRL64_A|Mux4|Mux63~189_combout\ & ((\Selector0~0_combout\))) # (!\SRL64_A|Mux4|Mux63~189_combout\ & (\SRL64_A|Mux4|Mux63~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~189_combout\,
	datab => \SRL64_A|Mux4|Mux63~197_combout\,
	datac => \Selector0~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~198_combout\);

-- Location: LCCOMB_X48_Y40_N12
\Selector74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~1_combout\ = (\B[0]~input_o\ & ((\Selector74~0_combout\ & ((\SRL64_A|Mux4|Mux63~198_combout\))) # (!\Selector74~0_combout\ & (\SRL64_A|Mux4|Mux63~195_combout\)))) # (!\B[0]~input_o\ & (\Selector74~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Selector74~0_combout\,
	datac => \SRL64_A|Mux4|Mux63~195_combout\,
	datad => \SRL64_A|Mux4|Mux63~198_combout\,
	combout => \Selector74~1_combout\);

-- Location: LCCOMB_X48_Y42_N22
\Selector490~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector490~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & (\Selector490~1_combout\)) # (!\Selector481~0_combout\ & ((\Selector74~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector490~1_combout\,
	datac => \Selector481~0_combout\,
	datad => \Selector74~1_combout\,
	combout => \Selector490~2_combout\);

-- Location: LCCOMB_X48_Y42_N4
\Selector490~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector490~5_combout\ = (\Selector490~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector490~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector490~4_combout\,
	datac => \Selector490~2_combout\,
	combout => \Selector490~5_combout\);

-- Location: LCCOMB_X48_Y40_N30
\SRL64_A|Mux4|Mux63~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~203_combout\ = (!\SRL64_A|Mux4|Mux63~256_combout\ & ((\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux63~48_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux4|Mux63~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~185_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~48_combout\,
	datad => \SRL64_A|Mux4|Mux63~256_combout\,
	combout => \SRL64_A|Mux4|Mux63~203_combout\);

-- Location: LCCOMB_X48_Y40_N10
\SRL64_A|Mux4|Mux63~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~204_combout\ = (\SLL64_A|Mux4|Mux31~17_combout\ & ((\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux63~48_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux8|Mux63~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~42_combout\,
	datac => \SRL64_A|Mux8|Mux63~48_combout\,
	datad => \SLL64_A|Mux4|Mux31~17_combout\,
	combout => \SRL64_A|Mux4|Mux63~204_combout\);

-- Location: LCCOMB_X48_Y40_N28
\SRL64_A|Mux4|Mux63~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~205_combout\ = (\SRL64_A|Mux4|Mux63~204_combout\) # ((!\SLL64_A|Mux4|Mux31~17_combout\ & \Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64_A|Mux4|Mux31~17_combout\,
	datac => \Selector0~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~204_combout\,
	combout => \SRL64_A|Mux4|Mux63~205_combout\);

-- Location: LCCOMB_X48_Y40_N16
\Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\) # (\SRL64_A|Mux4|Mux63~198_combout\)))) # (!\ShiftFN[0]~input_o\ & (\SRL64_A|Mux4|Mux63~195_combout\ & (!\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~195_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~198_combout\,
	combout => \Selector73~0_combout\);

-- Location: LCCOMB_X48_Y40_N6
\Selector73~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector73~1_combout\ = (\B[0]~input_o\ & ((\Selector73~0_combout\ & ((\SRL64_A|Mux4|Mux63~205_combout\))) # (!\Selector73~0_combout\ & (\SRL64_A|Mux4|Mux63~203_combout\)))) # (!\B[0]~input_o\ & (((\Selector73~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~203_combout\,
	datab => \SRL64_A|Mux4|Mux63~205_combout\,
	datac => \B[0]~input_o\,
	datad => \Selector73~0_combout\,
	combout => \Selector73~1_combout\);

-- Location: LCCOMB_X55_Y37_N12
\SRL64_A|Mux8|Mux63~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~81_combout\ = (\B[2]~input_o\ & (!\B[5]~input_o\ & (\SLL64_A|Mux32|Mux31~21_combout\))) # (!\B[2]~input_o\ & (((\SRL64_A|Mux8|Mux63~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~21_combout\,
	datad => \SRL64_A|Mux8|Mux63~60_combout\,
	combout => \SRL64_A|Mux8|Mux63~81_combout\);

-- Location: LCCOMB_X55_Y37_N24
\SRA64_A|Mux8|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux38~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64_A|Mux32|Mux34~1_combout\)) # (!\B[2]~input_o\ & ((\SRA64_A|Mux32|Mux38~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux32|Mux34~1_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64_A|Mux32|Mux38~1_combout\,
	combout => \SRA64_A|Mux8|Mux38~0_combout\);

-- Location: LCCOMB_X54_Y37_N16
\SRA64_A|Mux8|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux38~1_combout\ = (\SRA64_A|Mux8|Mux38~0_combout\) # ((\B[3]~input_o\ & ((\SRL64_A|Mux4|Mux63~54_combout\) # (\SRL64_A|Mux8|Mux63~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~54_combout\,
	datac => \SRL64_A|Mux8|Mux63~81_combout\,
	datad => \SRA64_A|Mux8|Mux38~0_combout\,
	combout => \SRA64_A|Mux8|Mux38~1_combout\);

-- Location: LCCOMB_X54_Y37_N18
\SRL64_A|Mux4|Mux63~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~202_combout\ = (\B[1]~input_o\ & (\SRA64_A|Mux8|Mux38~1_combout\)) # (!\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux40~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64_A|Mux8|Mux38~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64_A|Mux8|Mux40~2_combout\,
	combout => \SRL64_A|Mux4|Mux63~202_combout\);

-- Location: LCCOMB_X54_Y40_N18
\SRL64_A|Mux4|Mux63~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~199_combout\ = (\SRL64_A|Mux8|Mux63~41_combout\ & ((\SRL64_A|Mux4|Mux63~138_combout\) # ((\SRL64_A|Mux4|Mux63~73_combout\ & \SRL64_A|Mux8|Mux63~79_combout\)))) # (!\SRL64_A|Mux8|Mux63~41_combout\ & (((\SRL64_A|Mux4|Mux63~73_combout\ & 
-- \SRL64_A|Mux8|Mux63~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~41_combout\,
	datab => \SRL64_A|Mux4|Mux63~138_combout\,
	datac => \SRL64_A|Mux4|Mux63~73_combout\,
	datad => \SRL64_A|Mux8|Mux63~79_combout\,
	combout => \SRL64_A|Mux4|Mux63~199_combout\);

-- Location: LCCOMB_X54_Y40_N20
\SRL64_A|Mux4|Mux63~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~200_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~81_combout\)) # (!\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~81_combout\,
	datad => \SRL64_A|Mux8|Mux63~47_combout\,
	combout => \SRL64_A|Mux4|Mux63~200_combout\);

-- Location: LCCOMB_X54_Y40_N14
\SRL64_A|Mux4|Mux63~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~201_combout\ = (\SRL64_A|Mux4|Mux63~199_combout\) # (\SRL64_A|Mux4|Mux63~200_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64_A|Mux4|Mux63~199_combout\,
	datad => \SRL64_A|Mux4|Mux63~200_combout\,
	combout => \SRL64_A|Mux4|Mux63~201_combout\);

-- Location: LCCOMB_X48_Y42_N30
\Selector489~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector489~0_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~201_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRL64_A|Mux4|Mux63~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~201_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~193_combout\,
	combout => \Selector489~0_combout\);

-- Location: LCCOMB_X48_Y42_N24
\Selector489~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector489~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector489~0_combout\ & (\SRL64_A|Mux4|Mux63~202_combout\)) # (!\Selector489~0_combout\ & ((\SRL64_A|Mux4|Mux63~194_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Selector489~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~202_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Selector489~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~194_combout\,
	combout => \Selector489~1_combout\);

-- Location: LCCOMB_X45_Y44_N0
\Selector489~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector489~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector489~1_combout\))) # (!\Selector481~0_combout\ & (\Selector73~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector73~1_combout\,
	datab => \Selector481~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector489~1_combout\,
	combout => \Selector489~2_combout\);

-- Location: IOIBUF_X0_Y51_N15
\C[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(22),
	o => \C[22]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\C[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(54),
	o => \C[54]~input_o\);

-- Location: LCCOMB_X56_Y41_N28
\Selector137~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector137~1_combout\ = (\ShiftFN[0]~input_o\ & (\Selector157~4_combout\ & (\SLL64_A|Mux8|Mux11~2_combout\))) # (!\ShiftFN[0]~input_o\ & ((\C[54]~input_o\) # ((\Selector157~4_combout\ & \SLL64_A|Mux8|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Selector157~4_combout\,
	datac => \SLL64_A|Mux8|Mux11~2_combout\,
	datad => \C[54]~input_o\,
	combout => \Selector137~1_combout\);

-- Location: LCCOMB_X52_Y42_N12
\SLL64_A|Mux32|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux9~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector25~0_combout\)) # (!\B[4]~input_o\ & ((\Selector9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datab => \Selector9~0_combout\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux32|Mux9~0_combout\);

-- Location: LCCOMB_X53_Y42_N6
\SLL64_A|Mux8|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux9~0_combout\ = (\SLL64_A|Mux8|Mux31~4_combout\ & ((\SLL64_A|Mux32|Mux9~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux9~0_combout\,
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \SLL64_A|Mux32|Mux31~14_combout\,
	combout => \SLL64_A|Mux8|Mux9~0_combout\);

-- Location: LCCOMB_X53_Y42_N2
\SLL64_A|Mux32|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux13~1_combout\ = (\SLL64_A|Mux32|Mux13~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~34_combout\,
	datad => \SLL64_A|Mux32|Mux13~0_combout\,
	combout => \SLL64_A|Mux32|Mux13~1_combout\);

-- Location: LCCOMB_X53_Y42_N8
\SLL64_A|Mux8|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux9~1_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SLL64_A|Mux32|Mux21~3_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux32|Mux17~3_combout\,
	datac => \SLL64_A|Mux32|Mux21~3_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64_A|Mux8|Mux9~1_combout\);

-- Location: LCCOMB_X53_Y42_N20
\SLL64_A|Mux8|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux9~2_combout\ = (\SLL64_A|Mux8|Mux9~0_combout\) # ((\SLL64_A|Mux8|Mux9~1_combout\) # ((\SLL64_A|Mux32|Mux13~1_combout\ & \SLL64_A|Mux8|Mux27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux9~0_combout\,
	datab => \SLL64_A|Mux32|Mux13~1_combout\,
	datac => \SLL64_A|Mux8|Mux9~1_combout\,
	datad => \SLL64_A|Mux8|Mux27~0_combout\,
	combout => \SLL64_A|Mux8|Mux9~2_combout\);

-- Location: LCCOMB_X56_Y41_N10
\Selector137~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector137~0_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux12~2_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux10~2_combout\,
	datab => \Selector126~1_combout\,
	datac => \SLL64_A|Mux8|Mux12~2_combout\,
	datad => \B[1]~input_o\,
	combout => \Selector137~0_combout\);

-- Location: LCCOMB_X56_Y41_N30
\Selector137~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector137~2_combout\ = (\Selector137~1_combout\) # ((\Selector137~0_combout\) # ((\Selector191~1_combout\ & \SLL64_A|Mux8|Mux9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector191~1_combout\,
	datab => \Selector137~1_combout\,
	datac => \SLL64_A|Mux8|Mux9~2_combout\,
	datad => \Selector137~0_combout\,
	combout => \Selector137~2_combout\);

-- Location: LCCOMB_X50_Y42_N28
\SLL64_A|Mux8|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux41~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Selector53~0_combout\)) # (!\B[2]~input_o\ & ((\Selector49~0_combout\))))) # (!\B[3]~input_o\ & (((\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector53~0_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Selector49~0_combout\,
	combout => \SLL64_A|Mux8|Mux41~0_combout\);

-- Location: LCCOMB_X50_Y42_N14
\SLL64_A|Mux8|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux41~1_combout\ = (\B[3]~input_o\ & (((\SLL64_A|Mux8|Mux41~0_combout\)))) # (!\B[3]~input_o\ & ((\SLL64_A|Mux8|Mux41~0_combout\ & ((\SLL64_A|Mux32|Mux31~34_combout\))) # (!\SLL64_A|Mux8|Mux41~0_combout\ & 
-- (\SLL64_A|Mux32|Mux31~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~14_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~34_combout\,
	datad => \SLL64_A|Mux8|Mux41~0_combout\,
	combout => \SLL64_A|Mux8|Mux41~1_combout\);

-- Location: LCCOMB_X50_Y39_N0
\SLL64_A|Mux4|Mux31~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~40_combout\ = (!\SRA64_A|Mux8|Mux24~1_combout\ & ((\B[1]~input_o\ & (\SLL64_A|Mux8|Mux43~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux41~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux43~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64_A|Mux8|Mux41~1_combout\,
	datad => \SRA64_A|Mux8|Mux24~1_combout\,
	combout => \SLL64_A|Mux4|Mux31~40_combout\);

-- Location: LCCOMB_X45_Y44_N26
\Selector489~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector489~3_combout\ = (\Selector481~1_combout\ & (((\SLL64_A|Mux4|Mux31~40_combout\) # (\Selector481~2_combout\)))) # (!\Selector481~1_combout\ & (\Selector137~2_combout\ & ((!\Selector481~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector137~2_combout\,
	datab => \Selector481~1_combout\,
	datac => \SLL64_A|Mux4|Mux31~40_combout\,
	datad => \Selector481~2_combout\,
	combout => \Selector489~3_combout\);

-- Location: LCCOMB_X45_Y44_N28
\Selector489~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector489~4_combout\ = (\Selector481~2_combout\ & ((\Selector489~3_combout\ & ((\SLL64_A|Mux4|Mux31~39_combout\))) # (!\Selector489~3_combout\ & (\C[22]~input_o\)))) # (!\Selector481~2_combout\ & (((\Selector489~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \C[22]~input_o\,
	datac => \Selector489~3_combout\,
	datad => \SLL64_A|Mux4|Mux31~39_combout\,
	combout => \Selector489~4_combout\);

-- Location: LCCOMB_X45_Y44_N6
\Selector489~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector489~5_combout\ = (\Selector489~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector489~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector489~2_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector489~4_combout\,
	combout => \Selector489~5_combout\);

-- Location: IOIBUF_X0_Y44_N8
\C[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(23),
	o => \C[23]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\C[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(55),
	o => \C[55]~input_o\);

-- Location: LCCOMB_X49_Y41_N10
\Selector136~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector136~1_combout\ = (\ShiftFN[0]~input_o\ & (\SLL64_A|Mux8|Mux10~2_combout\ & ((\Selector157~4_combout\)))) # (!\ShiftFN[0]~input_o\ & ((\C[55]~input_o\) # ((\SLL64_A|Mux8|Mux10~2_combout\ & \Selector157~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SLL64_A|Mux8|Mux10~2_combout\,
	datac => \C[55]~input_o\,
	datad => \Selector157~4_combout\,
	combout => \Selector136~1_combout\);

-- Location: LCCOMB_X50_Y38_N20
\SLL64_A|Mux32|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux8~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector24~0_combout\))) # (!\B[4]~input_o\ & (\Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Selector8~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector24~0_combout\,
	combout => \SLL64_A|Mux32|Mux8~0_combout\);

-- Location: LCCOMB_X50_Y38_N6
\SLL64_A|Mux8|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux8~0_combout\ = (\SLL64_A|Mux8|Mux31~4_combout\ & ((\SLL64_A|Mux32|Mux8~0_combout\) # ((\SLL64_A|Mux32|Mux31~11_combout\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux31~4_combout\,
	datab => \SLL64_A|Mux32|Mux31~11_combout\,
	datac => \B[5]~input_o\,
	datad => \SLL64_A|Mux32|Mux8~0_combout\,
	combout => \SLL64_A|Mux8|Mux8~0_combout\);

-- Location: LCCOMB_X52_Y38_N22
\SLL64_A|Mux32|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux12~1_combout\ = (\SLL64_A|Mux32|Mux12~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~35_combout\,
	datad => \SLL64_A|Mux32|Mux12~0_combout\,
	combout => \SLL64_A|Mux32|Mux12~1_combout\);

-- Location: LCCOMB_X52_Y38_N4
\SLL64_A|Mux8|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux8~1_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SLL64_A|Mux32|Mux20~3_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux16~3_combout\,
	datab => \B[2]~input_o\,
	datac => \SLL64_A|Mux32|Mux20~3_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64_A|Mux8|Mux8~1_combout\);

-- Location: LCCOMB_X49_Y41_N4
\SLL64_A|Mux8|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux8~2_combout\ = (\SLL64_A|Mux8|Mux8~0_combout\) # ((\SLL64_A|Mux8|Mux8~1_combout\) # ((\SLL64_A|Mux8|Mux27~0_combout\ & \SLL64_A|Mux32|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux8~0_combout\,
	datab => \SLL64_A|Mux8|Mux27~0_combout\,
	datac => \SLL64_A|Mux32|Mux12~1_combout\,
	datad => \SLL64_A|Mux8|Mux8~1_combout\,
	combout => \SLL64_A|Mux8|Mux8~2_combout\);

-- Location: LCCOMB_X49_Y41_N0
\Selector136~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector136~0_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux11~2_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux9~2_combout\,
	datab => \Selector126~1_combout\,
	datac => \SLL64_A|Mux8|Mux11~2_combout\,
	datad => \B[1]~input_o\,
	combout => \Selector136~0_combout\);

-- Location: LCCOMB_X49_Y41_N22
\Selector136~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector136~2_combout\ = (\Selector136~1_combout\) # ((\Selector136~0_combout\) # ((\Selector191~1_combout\ & \SLL64_A|Mux8|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector136~1_combout\,
	datab => \Selector191~1_combout\,
	datac => \SLL64_A|Mux8|Mux8~2_combout\,
	datad => \Selector136~0_combout\,
	combout => \Selector136~2_combout\);

-- Location: LCCOMB_X45_Y44_N18
\Selector488~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector488~3_combout\ = (\Selector481~1_combout\ & (((\Selector481~2_combout\)))) # (!\Selector481~1_combout\ & ((\Selector481~2_combout\ & (\C[23]~input_o\)) # (!\Selector481~2_combout\ & ((\Selector136~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[23]~input_o\,
	datab => \Selector481~1_combout\,
	datac => \Selector481~2_combout\,
	datad => \Selector136~2_combout\,
	combout => \Selector488~3_combout\);

-- Location: LCCOMB_X52_Y38_N0
\SLL64_A|Mux8|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux40~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Selector52~0_combout\))) # (!\B[2]~input_o\ & (\Selector48~0_combout\)))) # (!\B[3]~input_o\ & (((\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Selector48~0_combout\,
	datac => \Selector52~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64_A|Mux8|Mux40~0_combout\);

-- Location: LCCOMB_X52_Y38_N2
\SLL64_A|Mux8|Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux40~1_combout\ = (\B[3]~input_o\ & (((\SLL64_A|Mux8|Mux40~0_combout\)))) # (!\B[3]~input_o\ & ((\SLL64_A|Mux8|Mux40~0_combout\ & ((\SLL64_A|Mux32|Mux31~35_combout\))) # (!\SLL64_A|Mux8|Mux40~0_combout\ & 
-- (\SLL64_A|Mux32|Mux31~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64_A|Mux32|Mux31~11_combout\,
	datac => \SLL64_A|Mux32|Mux31~35_combout\,
	datad => \SLL64_A|Mux8|Mux40~0_combout\,
	combout => \SLL64_A|Mux8|Mux40~1_combout\);

-- Location: LCCOMB_X50_Y39_N2
\SLL64_A|Mux4|Mux31~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~41_combout\ = (!\SRA64_A|Mux8|Mux24~1_combout\ & ((\B[1]~input_o\ & (\SLL64_A|Mux8|Mux42~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux40~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux24~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64_A|Mux8|Mux42~1_combout\,
	datad => \SLL64_A|Mux8|Mux40~1_combout\,
	combout => \SLL64_A|Mux4|Mux31~41_combout\);

-- Location: LCCOMB_X45_Y44_N20
\Selector488~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector488~4_combout\ = (\Selector488~3_combout\ & ((\SLL64_A|Mux4|Mux31~40_combout\) # ((!\Selector481~1_combout\)))) # (!\Selector488~3_combout\ & (((\Selector481~1_combout\ & \SLL64_A|Mux4|Mux31~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~40_combout\,
	datab => \Selector488~3_combout\,
	datac => \Selector481~1_combout\,
	datad => \SLL64_A|Mux4|Mux31~41_combout\,
	combout => \Selector488~4_combout\);

-- Location: LCCOMB_X52_Y36_N4
\SRL64_A|Mux4|Mux63~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~257_combout\ = (\Selector0~0_combout\ & ((\B[5]~input_o\) # ((\B[3]~input_o\) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~257_combout\);

-- Location: LCCOMB_X48_Y40_N18
\SRL64_A|Mux4|Mux63~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~209_combout\ = (\SLL64_A|Mux4|Mux31~17_combout\ & ((\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux63~51_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux8|Mux63~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~45_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~51_combout\,
	datad => \SLL64_A|Mux4|Mux31~17_combout\,
	combout => \SRL64_A|Mux4|Mux63~209_combout\);

-- Location: LCCOMB_X48_Y40_N0
\Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~205_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRL64_A|Mux4|Mux63~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~203_combout\,
	datab => \SRL64_A|Mux4|Mux63~205_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector72~0_combout\);

-- Location: LCCOMB_X48_Y40_N4
\Selector72~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~1_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~209_combout\) # ((\SRL64_A|Mux4|Mux63~257_combout\ & \Selector72~0_combout\)))) # (!\B[0]~input_o\ & (((\Selector72~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~257_combout\,
	datab => \SRL64_A|Mux4|Mux63~209_combout\,
	datac => \B[0]~input_o\,
	datad => \Selector72~0_combout\,
	combout => \Selector72~1_combout\);

-- Location: LCCOMB_X55_Y42_N20
\SRL64_A|Mux8|Mux63~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~69_combout\ = (!\B[5]~input_o\ & ((\B[2]~input_o\ & (\SLL64_A|Mux32|Mux31~27_combout\)) # (!\B[2]~input_o\ & ((\SLL64_A|Mux32|Mux31~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~27_combout\,
	datad => \SLL64_A|Mux32|Mux31~26_combout\,
	combout => \SRL64_A|Mux8|Mux63~69_combout\);

-- Location: LCCOMB_X55_Y41_N26
\SRA64_A|Mux8|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux37~0_combout\ = (\B[2]~input_o\ & (\SRA64_A|Mux32|Mux33~1_combout\)) # (!\B[2]~input_o\ & (((\SRL64_A|Mux32|Mux37~0_combout\) # (\SRA64_A|Mux32|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64_A|Mux32|Mux33~1_combout\,
	datac => \SRL64_A|Mux32|Mux37~0_combout\,
	datad => \SRA64_A|Mux32|Mux37~0_combout\,
	combout => \SRA64_A|Mux8|Mux37~0_combout\);

-- Location: LCCOMB_X55_Y41_N20
\SRA64_A|Mux8|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux37~1_combout\ = (\B[3]~input_o\ & ((\SRL64_A|Mux4|Mux63~54_combout\) # ((\SRL64_A|Mux8|Mux63~69_combout\)))) # (!\B[3]~input_o\ & (((\SRA64_A|Mux8|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~54_combout\,
	datab => \SRL64_A|Mux8|Mux63~69_combout\,
	datac => \SRA64_A|Mux8|Mux37~0_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA64_A|Mux8|Mux37~1_combout\);

-- Location: LCCOMB_X55_Y41_N6
\SRL64_A|Mux4|Mux63~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~208_combout\ = (\B[1]~input_o\ & (\SRA64_A|Mux8|Mux37~1_combout\)) # (!\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux39~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \SRA64_A|Mux8|Mux37~1_combout\,
	datad => \SRA64_A|Mux8|Mux39~1_combout\,
	combout => \SRL64_A|Mux4|Mux63~208_combout\);

-- Location: LCCOMB_X59_Y39_N24
\SRL64_A|Mux4|Mux63~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~206_combout\ = (\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux63~69_combout\) # ((!\B[3]~input_o\)))) # (!\B[1]~input_o\ & (((\B[3]~input_o\ & \SRL64_A|Mux8|Mux63~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~69_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~80_combout\,
	combout => \SRL64_A|Mux4|Mux63~206_combout\);

-- Location: LCCOMB_X59_Y39_N26
\SRL64_A|Mux4|Mux63~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~207_combout\ = (\B[3]~input_o\ & (((\SRL64_A|Mux4|Mux63~206_combout\)))) # (!\B[3]~input_o\ & ((\SRL64_A|Mux4|Mux63~206_combout\ & (\SRL64_A|Mux8|Mux63~50_combout\)) # (!\SRL64_A|Mux4|Mux63~206_combout\ & 
-- ((\SRL64_A|Mux8|Mux63~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~50_combout\,
	datac => \SRL64_A|Mux8|Mux63~44_combout\,
	datad => \SRL64_A|Mux4|Mux63~206_combout\,
	combout => \SRL64_A|Mux4|Mux63~207_combout\);

-- Location: LCCOMB_X50_Y41_N0
\Selector488~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector488~0_combout\ = (\ShiftFN[0]~input_o\ & (\B[0]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~207_combout\))) # (!\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~201_combout\,
	datad => \SRL64_A|Mux4|Mux63~207_combout\,
	combout => \Selector488~0_combout\);

-- Location: LCCOMB_X50_Y41_N10
\Selector488~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector488~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector488~0_combout\ & ((\SRL64_A|Mux4|Mux63~208_combout\))) # (!\Selector488~0_combout\ & (\SRL64_A|Mux4|Mux63~202_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Selector488~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~202_combout\,
	datac => \SRL64_A|Mux4|Mux63~208_combout\,
	datad => \Selector488~0_combout\,
	combout => \Selector488~1_combout\);

-- Location: LCCOMB_X45_Y44_N8
\Selector488~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector488~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector488~1_combout\))) # (!\Selector481~0_combout\ & (\Selector72~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector72~1_combout\,
	datab => \Selector481~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector488~1_combout\,
	combout => \Selector488~2_combout\);

-- Location: LCCOMB_X45_Y44_N14
\Selector488~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector488~5_combout\ = (\Selector488~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector488~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector488~4_combout\,
	datac => \Selector488~2_combout\,
	combout => \Selector488~5_combout\);

-- Location: LCCOMB_X55_Y35_N14
\SLL64_A|Mux8|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux31~6_combout\ = (\B[3]~input_o\) # (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[5]~input_o\,
	combout => \SLL64_A|Mux8|Mux31~6_combout\);

-- Location: LCCOMB_X56_Y38_N4
\SLL64_A|Mux8|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux31~7_combout\ = (\B[3]~input_o\) # ((\B[4]~input_o\ & !\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux8|Mux31~7_combout\);

-- Location: LCCOMB_X58_Y38_N18
\SLL64_A|Mux8|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux31~8_combout\ = (\SLL64_A|Mux8|Mux31~7_combout\ & ((\Selector23~0_combout\) # ((\SLL64_A|Mux8|Mux31~6_combout\)))) # (!\SLL64_A|Mux8|Mux31~7_combout\ & (((\Selector7~0_combout\ & !\SLL64_A|Mux8|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \SLL64_A|Mux8|Mux31~7_combout\,
	datac => \Selector7~0_combout\,
	datad => \SLL64_A|Mux8|Mux31~6_combout\,
	combout => \SLL64_A|Mux8|Mux31~8_combout\);

-- Location: LCCOMB_X58_Y38_N4
\SLL64_A|Mux8|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux31~9_combout\ = (\SLL64_A|Mux8|Mux31~6_combout\ & ((\SLL64_A|Mux8|Mux31~8_combout\ & (\SLL64_A|Mux32|Mux15~1_combout\)) # (!\SLL64_A|Mux8|Mux31~8_combout\ & ((\SLL64_A|Mux32|Mux31~3_combout\))))) # (!\SLL64_A|Mux8|Mux31~6_combout\ & 
-- (((\SLL64_A|Mux8|Mux31~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux31~6_combout\,
	datab => \SLL64_A|Mux32|Mux15~1_combout\,
	datac => \SLL64_A|Mux32|Mux31~3_combout\,
	datad => \SLL64_A|Mux8|Mux31~8_combout\,
	combout => \SLL64_A|Mux8|Mux31~9_combout\);

-- Location: LCCOMB_X56_Y38_N24
\SLL64_A|Mux32|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux11~1_combout\ = (\SLL64_A|Mux32|Mux11~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux32|Mux11~0_combout\,
	datad => \SLL64_A|Mux32|Mux31~2_combout\,
	combout => \SLL64_A|Mux32|Mux11~1_combout\);

-- Location: LCCOMB_X56_Y38_N26
\SLL64_A|Mux8|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux7~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SLL64_A|Mux32|Mux19~3_combout\)) # (!\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux11~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SLL64_A|Mux32|Mux19~3_combout\,
	datad => \SLL64_A|Mux32|Mux11~1_combout\,
	combout => \SLL64_A|Mux8|Mux7~0_combout\);

-- Location: LCCOMB_X53_Y41_N12
\SLL64_A|Mux8|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux7~1_combout\ = (\SLL64_A|Mux8|Mux7~0_combout\) # ((!\B[2]~input_o\ & \SLL64_A|Mux8|Mux31~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux8|Mux31~9_combout\,
	datac => \SLL64_A|Mux8|Mux7~0_combout\,
	combout => \SLL64_A|Mux8|Mux7~1_combout\);

-- Location: LCCOMB_X49_Y41_N18
\Selector135~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector135~1_combout\ = (\SLL64_A|Mux8|Mux9~2_combout\ & ((\Selector157~4_combout\) # ((\SLL64_A|Mux8|Mux7~1_combout\ & \Selector191~1_combout\)))) # (!\SLL64_A|Mux8|Mux9~2_combout\ & (\SLL64_A|Mux8|Mux7~1_combout\ & (\Selector191~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux9~2_combout\,
	datab => \SLL64_A|Mux8|Mux7~1_combout\,
	datac => \Selector191~1_combout\,
	datad => \Selector157~4_combout\,
	combout => \Selector135~1_combout\);

-- Location: IOIBUF_X27_Y73_N22
\C[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(56),
	o => \C[56]~input_o\);

-- Location: LCCOMB_X49_Y41_N16
\Selector135~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector135~0_combout\ = (\ShiftFN[0]~input_o\ & (\SLL64_A|Mux8|Mux10~2_combout\ & (\Selector157~6_combout\))) # (!\ShiftFN[0]~input_o\ & ((\C[56]~input_o\) # ((\SLL64_A|Mux8|Mux10~2_combout\ & \Selector157~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SLL64_A|Mux8|Mux10~2_combout\,
	datac => \Selector157~6_combout\,
	datad => \C[56]~input_o\,
	combout => \Selector135~0_combout\);

-- Location: LCCOMB_X49_Y41_N12
\Selector135~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector135~2_combout\ = (\Selector135~1_combout\) # ((\Selector135~0_combout\) # ((\Selector157~0_combout\ & \SLL64_A|Mux8|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector157~0_combout\,
	datab => \Selector135~1_combout\,
	datac => \SLL64_A|Mux8|Mux8~2_combout\,
	datad => \Selector135~0_combout\,
	combout => \Selector135~2_combout\);

-- Location: LCCOMB_X55_Y38_N12
\SLL64_A|Mux8|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux39~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Selector51~0_combout\)) # (!\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux31~2_combout\))))) # (!\B[2]~input_o\ & (((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Selector51~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~2_combout\,
	combout => \SLL64_A|Mux8|Mux39~0_combout\);

-- Location: LCCOMB_X55_Y38_N6
\SLL64_A|Mux8|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux39~1_combout\ = (\B[2]~input_o\ & (((\SLL64_A|Mux8|Mux39~0_combout\)))) # (!\B[2]~input_o\ & ((\SLL64_A|Mux8|Mux39~0_combout\ & (\SLL64_A|Mux32|Mux31~33_combout\)) # (!\SLL64_A|Mux8|Mux39~0_combout\ & 
-- ((\SLL64_A|Mux32|Mux31~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux32|Mux31~33_combout\,
	datac => \SLL64_A|Mux32|Mux31~3_combout\,
	datad => \SLL64_A|Mux8|Mux39~0_combout\,
	combout => \SLL64_A|Mux8|Mux39~1_combout\);

-- Location: LCCOMB_X47_Y42_N22
\SLL64_A|Mux4|Mux31~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~42_combout\ = (\B[1]~input_o\ & (\SLL64_A|Mux8|Mux41~1_combout\ & ((!\B[3]~input_o\) # (!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux41~1_combout\,
	combout => \SLL64_A|Mux4|Mux31~42_combout\);

-- Location: LCCOMB_X47_Y42_N16
\SLL64_A|Mux4|Mux31~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~43_combout\ = (!\B[1]~input_o\ & (((!\B[3]~input_o\) # (!\B[2]~input_o\)) # (!\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~43_combout\);

-- Location: LCCOMB_X47_Y42_N18
\SLL64_A|Mux4|Mux31~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~44_combout\ = (!\B[5]~input_o\ & ((\SLL64_A|Mux4|Mux31~42_combout\) # ((\SLL64_A|Mux8|Mux39~1_combout\ & \SLL64_A|Mux4|Mux31~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SLL64_A|Mux8|Mux39~1_combout\,
	datac => \SLL64_A|Mux4|Mux31~42_combout\,
	datad => \SLL64_A|Mux4|Mux31~43_combout\,
	combout => \SLL64_A|Mux4|Mux31~44_combout\);

-- Location: LCCOMB_X47_Y42_N4
\Selector487~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector487~3_combout\ = (\Selector481~2_combout\ & (\Selector481~1_combout\)) # (!\Selector481~2_combout\ & ((\Selector481~1_combout\ & ((\SLL64_A|Mux4|Mux31~44_combout\))) # (!\Selector481~1_combout\ & (\Selector135~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \Selector481~1_combout\,
	datac => \Selector135~2_combout\,
	datad => \SLL64_A|Mux4|Mux31~44_combout\,
	combout => \Selector487~3_combout\);

-- Location: IOIBUF_X38_Y73_N1
\C[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(24),
	o => \C[24]~input_o\);

-- Location: LCCOMB_X45_Y44_N2
\Selector487~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector487~4_combout\ = (\Selector487~3_combout\ & (((\SLL64_A|Mux4|Mux31~41_combout\) # (!\Selector481~2_combout\)))) # (!\Selector487~3_combout\ & (\C[24]~input_o\ & (\Selector481~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector487~3_combout\,
	datab => \C[24]~input_o\,
	datac => \Selector481~2_combout\,
	datad => \SLL64_A|Mux4|Mux31~41_combout\,
	combout => \Selector487~4_combout\);

-- Location: LCCOMB_X48_Y36_N24
\SRL64_A|Mux4|Mux63~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~214_combout\ = (!\SLL64_A|Mux4|Mux31~13_combout\ & ((\B[1]~input_o\ & (\Selector4~0_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux63~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \SRL64_A|Mux8|Mux63~48_combout\,
	datac => \SLL64_A|Mux4|Mux31~13_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~214_combout\);

-- Location: LCCOMB_X48_Y36_N26
\SRL64_A|Mux4|Mux63~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~215_combout\ = (\SRL64_A|Mux4|Mux63~214_combout\) # ((\Selector0~0_combout\ & \SLL64_A|Mux4|Mux31~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datac => \SLL64_A|Mux4|Mux31~13_combout\,
	datad => \SRL64_A|Mux4|Mux63~214_combout\,
	combout => \SRL64_A|Mux4|Mux63~215_combout\);

-- Location: LCCOMB_X48_Y40_N8
\Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~209_combout\) # ((\SRL64_A|Mux4|Mux63~257_combout\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~257_combout\,
	datab => \SRL64_A|Mux4|Mux63~209_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector71~0_combout\);

-- Location: LCCOMB_X48_Y40_N14
\SRL64_A|Mux4|Mux63~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~213_combout\ = (\SLL64_A|Mux4|Mux31~17_combout\ & ((\B[1]~input_o\ & (\SRL64_A|Mux8|Mux63~55_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux63~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~55_combout\,
	datab => \SLL64_A|Mux4|Mux31~17_combout\,
	datac => \SRL64_A|Mux8|Mux63~48_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~213_combout\);

-- Location: LCCOMB_X48_Y40_N2
\Selector71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~1_combout\ = (\Selector71~0_combout\ & ((\SRL64_A|Mux4|Mux63~215_combout\) # ((!\B[0]~input_o\)))) # (!\Selector71~0_combout\ & (((\SRL64_A|Mux4|Mux63~213_combout\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~215_combout\,
	datab => \Selector71~0_combout\,
	datac => \SRL64_A|Mux4|Mux63~213_combout\,
	datad => \B[0]~input_o\,
	combout => \Selector71~1_combout\);

-- Location: LCCOMB_X53_Y37_N2
\SRL64_A|Mux8|Mux63~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~70_combout\ = (\SLL64_A|Mux32|Mux31~19_combout\ & ((\SRL64_A|Mux8|Mux63~14_combout\) # ((\SLL64_A|Mux32|Mux31~20_combout\ & \SRL64_A|Mux8|Mux63~16_combout\)))) # (!\SLL64_A|Mux32|Mux31~19_combout\ & (\SLL64_A|Mux32|Mux31~20_combout\ & 
-- (\SRL64_A|Mux8|Mux63~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~19_combout\,
	datab => \SLL64_A|Mux32|Mux31~20_combout\,
	datac => \SRL64_A|Mux8|Mux63~16_combout\,
	datad => \SRL64_A|Mux8|Mux63~14_combout\,
	combout => \SRL64_A|Mux8|Mux63~70_combout\);

-- Location: LCCOMB_X54_Y37_N6
\SRA64_A|Mux8|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux36~0_combout\ = (\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~70_combout\) # ((\SRL64_A|Mux4|Mux63~54_combout\)))) # (!\B[3]~input_o\ & (((\SRL64_A|Mux8|Mux63~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~70_combout\,
	datab => \SRL64_A|Mux4|Mux63~54_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~54_combout\,
	combout => \SRA64_A|Mux8|Mux36~0_combout\);

-- Location: LCCOMB_X54_Y37_N0
\SRL64_A|Mux4|Mux63~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~212_combout\ = (\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux36~0_combout\))) # (!\B[1]~input_o\ & (\SRA64_A|Mux8|Mux38~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64_A|Mux8|Mux38~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64_A|Mux8|Mux36~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~212_combout\);

-- Location: LCCOMB_X54_Y37_N12
\SRL64_A|Mux4|Mux63~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~210_combout\ = (\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux63~70_combout\) # ((!\B[3]~input_o\)))) # (!\B[1]~input_o\ & (((\SRL64_A|Mux8|Mux63~81_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~70_combout\,
	datab => \SRL64_A|Mux8|Mux63~81_combout\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~210_combout\);

-- Location: LCCOMB_X54_Y40_N0
\SRL64_A|Mux4|Mux63~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~211_combout\ = (\B[3]~input_o\ & (((\SRL64_A|Mux4|Mux63~210_combout\)))) # (!\B[3]~input_o\ & ((\SRL64_A|Mux4|Mux63~210_combout\ & (\SRL64_A|Mux8|Mux63~53_combout\)) # (!\SRL64_A|Mux4|Mux63~210_combout\ & 
-- ((\SRL64_A|Mux8|Mux63~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~53_combout\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~210_combout\,
	datad => \SRL64_A|Mux8|Mux63~47_combout\,
	combout => \SRL64_A|Mux4|Mux63~211_combout\);

-- Location: LCCOMB_X50_Y41_N28
\Selector487~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector487~0_combout\ = (\ShiftFN[0]~input_o\ & (\B[0]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~211_combout\)) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~207_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~211_combout\,
	datad => \SRL64_A|Mux4|Mux63~207_combout\,
	combout => \Selector487~0_combout\);

-- Location: LCCOMB_X50_Y41_N14
\Selector487~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector487~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector487~0_combout\ & (\SRL64_A|Mux4|Mux63~212_combout\)) # (!\Selector487~0_combout\ & ((\SRL64_A|Mux4|Mux63~208_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Selector487~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~212_combout\,
	datac => \SRL64_A|Mux4|Mux63~208_combout\,
	datad => \Selector487~0_combout\,
	combout => \Selector487~1_combout\);

-- Location: LCCOMB_X45_Y44_N24
\Selector487~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector487~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector487~1_combout\))) # (!\Selector481~0_combout\ & (\Selector71~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector71~1_combout\,
	datab => \Selector481~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector487~1_combout\,
	combout => \Selector487~2_combout\);

-- Location: LCCOMB_X45_Y44_N12
\Selector487~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector487~5_combout\ = (\Selector487~2_combout\) # ((\Selector487~4_combout\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector487~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector487~2_combout\,
	combout => \Selector487~5_combout\);

-- Location: LCCOMB_X47_Y39_N6
\SRL64_A|Mux4|Mux63~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~220_combout\ = (!\SLL64_A|Mux4|Mux31~13_combout\ & ((\B[1]~input_o\ & (\Selector3~0_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux63~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \SLL64_A|Mux4|Mux31~13_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~51_combout\,
	combout => \SRL64_A|Mux4|Mux63~220_combout\);

-- Location: LCCOMB_X48_Y40_N20
\Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRL64_A|Mux4|Mux63~215_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~213_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~215_combout\,
	datab => \SRL64_A|Mux4|Mux63~213_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector70~0_combout\);

-- Location: LCCOMB_X47_Y39_N20
\SRL64_A|Mux4|Mux63~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~219_combout\ = (\Selector0~0_combout\ & (((\B[1]~input_o\ & \B[2]~input_o\)) # (!\SLL64_A|Mux4|Mux31~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64_A|Mux4|Mux31~17_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector0~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~219_combout\);

-- Location: LCCOMB_X47_Y39_N24
\Selector70~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~1_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~220_combout\) # ((\Selector70~0_combout\ & \SRL64_A|Mux4|Mux63~219_combout\)))) # (!\B[0]~input_o\ & (((\Selector70~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~220_combout\,
	datab => \B[0]~input_o\,
	datac => \Selector70~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~219_combout\,
	combout => \Selector70~1_combout\);

-- Location: LCCOMB_X53_Y37_N12
\SRL64_A|Mux8|Mux63~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~71_combout\ = (\SRL64_A|Mux8|Mux63~14_combout\ & ((\SLL64_A|Mux32|Mux31~29_combout\) # ((\SLL64_A|Mux32|Mux31~31_combout\ & \SRL64_A|Mux8|Mux63~16_combout\)))) # (!\SRL64_A|Mux8|Mux63~14_combout\ & (\SLL64_A|Mux32|Mux31~31_combout\ & 
-- (\SRL64_A|Mux8|Mux63~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~14_combout\,
	datab => \SLL64_A|Mux32|Mux31~31_combout\,
	datac => \SRL64_A|Mux8|Mux63~16_combout\,
	datad => \SLL64_A|Mux32|Mux31~29_combout\,
	combout => \SRL64_A|Mux8|Mux63~71_combout\);

-- Location: LCCOMB_X59_Y37_N12
\SRA64_A|Mux8|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux35~0_combout\ = (\B[3]~input_o\ & ((\SRL64_A|Mux4|Mux63~54_combout\) # ((\SRL64_A|Mux8|Mux63~71_combout\)))) # (!\B[3]~input_o\ & (((\SRL64_A|Mux8|Mux63~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~54_combout\,
	datac => \SRL64_A|Mux8|Mux63~71_combout\,
	datad => \SRL64_A|Mux8|Mux63~59_combout\,
	combout => \SRA64_A|Mux8|Mux35~0_combout\);

-- Location: LCCOMB_X55_Y41_N16
\SRL64_A|Mux4|Mux63~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~218_combout\ = (\B[1]~input_o\ & (\SRA64_A|Mux8|Mux35~0_combout\)) # (!\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux35~0_combout\,
	datab => \B[1]~input_o\,
	datad => \SRA64_A|Mux8|Mux37~1_combout\,
	combout => \SRL64_A|Mux4|Mux63~218_combout\);

-- Location: LCCOMB_X50_Y39_N4
\SRL64_A|Mux4|Mux63~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~216_combout\ = (\B[3]~input_o\ & ((\B[1]~input_o\ & (\SRL64_A|Mux8|Mux63~71_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux63~69_combout\))))) # (!\B[3]~input_o\ & (((\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~71_combout\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~69_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~216_combout\);

-- Location: LCCOMB_X59_Y39_N20
\SRL64_A|Mux4|Mux63~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~217_combout\ = (\SRL64_A|Mux4|Mux63~216_combout\ & ((\B[3]~input_o\) # ((\SRL64_A|Mux8|Mux63~58_combout\)))) # (!\SRL64_A|Mux4|Mux63~216_combout\ & (!\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~216_combout\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~58_combout\,
	datad => \SRL64_A|Mux8|Mux63~50_combout\,
	combout => \SRL64_A|Mux4|Mux63~217_combout\);

-- Location: LCCOMB_X50_Y41_N16
\Selector486~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector486~0_combout\ = (\B[0]~input_o\ & (((\SRL64_A|Mux4|Mux63~217_combout\) # (\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~211_combout\ & ((!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~211_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~217_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector486~0_combout\);

-- Location: LCCOMB_X50_Y41_N2
\Selector486~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector486~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector486~0_combout\ & ((\SRL64_A|Mux4|Mux63~218_combout\))) # (!\Selector486~0_combout\ & (\SRL64_A|Mux4|Mux63~212_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Selector486~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~212_combout\,
	datac => \SRL64_A|Mux4|Mux63~218_combout\,
	datad => \Selector486~0_combout\,
	combout => \Selector486~1_combout\);

-- Location: LCCOMB_X48_Y42_N18
\Selector486~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector486~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector486~1_combout\))) # (!\Selector481~0_combout\ & (\Selector70~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector70~1_combout\,
	datac => \Selector481~0_combout\,
	datad => \Selector486~1_combout\,
	combout => \Selector486~2_combout\);

-- Location: IOIBUF_X0_Y49_N1
\C[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(25),
	o => \C[25]~input_o\);

-- Location: LCCOMB_X54_Y35_N10
\SLL64_A|Mux8|Mux34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux34~3_combout\ = (\SLL64_A|Mux8|Mux31~6_combout\ & (((\SLL64_A|Mux32|Mux31~10_combout\) # (\SLL64_A|Mux8|Mux31~7_combout\)))) # (!\SLL64_A|Mux8|Mux31~6_combout\ & (\Selector6~0_combout\ & ((!\SLL64_A|Mux8|Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux31~6_combout\,
	datab => \Selector6~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~10_combout\,
	datad => \SLL64_A|Mux8|Mux31~7_combout\,
	combout => \SLL64_A|Mux8|Mux34~3_combout\);

-- Location: LCCOMB_X55_Y35_N0
\SLL64_A|Mux8|Mux34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux34~4_combout\ = (\SLL64_A|Mux8|Mux31~7_combout\ & ((\SLL64_A|Mux8|Mux34~3_combout\ & (\SLL64_A|Mux32|Mux14~1_combout\)) # (!\SLL64_A|Mux8|Mux34~3_combout\ & ((\Selector22~0_combout\))))) # (!\SLL64_A|Mux8|Mux31~7_combout\ & 
-- (((\SLL64_A|Mux8|Mux34~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux31~7_combout\,
	datab => \SLL64_A|Mux32|Mux14~1_combout\,
	datac => \Selector22~0_combout\,
	datad => \SLL64_A|Mux8|Mux34~3_combout\,
	combout => \SLL64_A|Mux8|Mux34~4_combout\);

-- Location: LCCOMB_X55_Y36_N0
\SLL64_A|Mux32|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux10~1_combout\ = (\SLL64_A|Mux32|Mux10~0_combout\) # ((\SLL64_A|Mux32|Mux31~7_combout\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64_A|Mux32|Mux31~7_combout\,
	datac => \SLL64_A|Mux32|Mux10~0_combout\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux32|Mux10~1_combout\);

-- Location: LCCOMB_X55_Y36_N26
\SLL64_A|Mux8|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux6~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SLL64_A|Mux32|Mux18~3_combout\)) # (!\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux10~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux18~3_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux32|Mux10~1_combout\,
	combout => \SLL64_A|Mux8|Mux6~0_combout\);

-- Location: LCCOMB_X55_Y36_N4
\SLL64_A|Mux8|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux6~1_combout\ = (\SLL64_A|Mux8|Mux6~0_combout\) # ((\SLL64_A|Mux8|Mux34~4_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux34~4_combout\,
	datab => \B[2]~input_o\,
	datac => \SLL64_A|Mux8|Mux6~0_combout\,
	combout => \SLL64_A|Mux8|Mux6~1_combout\);

-- Location: LCCOMB_X49_Y41_N30
\Selector134~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector134~0_combout\ = (\Selector157~0_combout\ & ((\SLL64_A|Mux8|Mux7~1_combout\) # ((\SLL64_A|Mux8|Mux6~1_combout\ & \Selector191~1_combout\)))) # (!\Selector157~0_combout\ & (\SLL64_A|Mux8|Mux6~1_combout\ & (\Selector191~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector157~0_combout\,
	datab => \SLL64_A|Mux8|Mux6~1_combout\,
	datac => \Selector191~1_combout\,
	datad => \SLL64_A|Mux8|Mux7~1_combout\,
	combout => \Selector134~0_combout\);

-- Location: IOIBUF_X0_Y45_N22
\C[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(57),
	o => \C[57]~input_o\);

-- Location: LCCOMB_X49_Y41_N24
\Selector134~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector134~1_combout\ = (\ShiftFN[0]~input_o\ & (\SLL64_A|Mux8|Mux9~2_combout\ & (\Selector157~6_combout\))) # (!\ShiftFN[0]~input_o\ & ((\C[57]~input_o\) # ((\SLL64_A|Mux8|Mux9~2_combout\ & \Selector157~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SLL64_A|Mux8|Mux9~2_combout\,
	datac => \Selector157~6_combout\,
	datad => \C[57]~input_o\,
	combout => \Selector134~1_combout\);

-- Location: LCCOMB_X49_Y41_N2
\Selector134~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector134~2_combout\ = (\Selector134~0_combout\) # ((\Selector134~1_combout\) # ((\Selector157~4_combout\ & \SLL64_A|Mux8|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector134~0_combout\,
	datab => \Selector157~4_combout\,
	datac => \SLL64_A|Mux8|Mux8~2_combout\,
	datad => \Selector134~1_combout\,
	combout => \Selector134~2_combout\);

-- Location: LCCOMB_X48_Y42_N20
\Selector486~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector486~3_combout\ = (\Selector481~2_combout\ & ((\C[25]~input_o\) # ((\Selector481~1_combout\)))) # (!\Selector481~2_combout\ & (((!\Selector481~1_combout\ & \Selector134~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \C[25]~input_o\,
	datac => \Selector481~1_combout\,
	datad => \Selector134~2_combout\,
	combout => \Selector486~3_combout\);

-- Location: LCCOMB_X53_Y35_N12
\SLL64_A|Mux8|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux38~0_combout\ = (\B[3]~input_o\ & (((\Selector50~0_combout\) # (!\B[2]~input_o\)))) # (!\B[3]~input_o\ & (\SLL64_A|Mux32|Mux31~7_combout\ & (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64_A|Mux32|Mux31~7_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector50~0_combout\,
	combout => \SLL64_A|Mux8|Mux38~0_combout\);

-- Location: LCCOMB_X53_Y35_N6
\SLL64_A|Mux8|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux38~1_combout\ = (\SLL64_A|Mux8|Mux38~0_combout\ & (((\B[2]~input_o\) # (\SLL64_A|Mux32|Mux31~9_combout\)))) # (!\SLL64_A|Mux8|Mux38~0_combout\ & (\SLL64_A|Mux32|Mux31~10_combout\ & (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux38~0_combout\,
	datab => \SLL64_A|Mux32|Mux31~10_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~9_combout\,
	combout => \SLL64_A|Mux8|Mux38~1_combout\);

-- Location: LCCOMB_X50_Y39_N14
\SLL64_A|Mux4|Mux31~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~45_combout\ = (!\B[5]~input_o\ & ((\SLL64_A|Mux4|Mux31~11_combout\) # ((!\B[3]~input_o\) # (!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~11_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~45_combout\);

-- Location: LCCOMB_X50_Y39_N8
\SLL64_A|Mux4|Mux31~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~46_combout\ = (\SLL64_A|Mux4|Mux31~45_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux40~1_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux38~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux38~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64_A|Mux4|Mux31~45_combout\,
	datad => \SLL64_A|Mux8|Mux40~1_combout\,
	combout => \SLL64_A|Mux4|Mux31~46_combout\);

-- Location: LCCOMB_X47_Y42_N14
\Selector486~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector486~4_combout\ = (\Selector486~3_combout\ & ((\SLL64_A|Mux4|Mux31~44_combout\) # ((!\Selector481~1_combout\)))) # (!\Selector486~3_combout\ & (((\Selector481~1_combout\ & \SLL64_A|Mux4|Mux31~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector486~3_combout\,
	datab => \SLL64_A|Mux4|Mux31~44_combout\,
	datac => \Selector481~1_combout\,
	datad => \SLL64_A|Mux4|Mux31~46_combout\,
	combout => \Selector486~4_combout\);

-- Location: LCCOMB_X48_Y42_N6
\Selector486~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector486~5_combout\ = (\Selector486~2_combout\) # ((!\ShiftFN[1]~input_o\ & \Selector486~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector486~2_combout\,
	datad => \Selector486~4_combout\,
	combout => \Selector486~5_combout\);

-- Location: IOIBUF_X38_Y73_N8
\C[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(26),
	o => \C[26]~input_o\);

-- Location: LCCOMB_X49_Y41_N14
\Selector133~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector133~1_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\SLL64_A|Mux8|Mux8~2_combout\))) # (!\B[0]~input_o\ & (\SLL64_A|Mux8|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLL64_A|Mux8|Mux7~1_combout\,
	datac => \SLL64_A|Mux8|Mux8~2_combout\,
	datad => \B[1]~input_o\,
	combout => \Selector133~1_combout\);

-- Location: IOIBUF_X0_Y29_N22
\C[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(58),
	o => \C[58]~input_o\);

-- Location: LCCOMB_X53_Y42_N22
\SLL64_A|Mux32|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux9~1_combout\ = (\SLL64_A|Mux32|Mux9~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux9~0_combout\,
	datab => \B[5]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~14_combout\,
	combout => \SLL64_A|Mux32|Mux9~1_combout\);

-- Location: LCCOMB_X53_Y41_N6
\SLL64_A|Mux8|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux5~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SLL64_A|Mux32|Mux17~3_combout\)) # (!\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux9~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux32|Mux17~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux32|Mux9~1_combout\,
	combout => \SLL64_A|Mux8|Mux5~0_combout\);

-- Location: LCCOMB_X54_Y41_N12
\SLL64_A|Mux8|Mux33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux33~3_combout\ = (\SLL64_A|Mux8|Mux31~7_combout\ & ((\Selector21~0_combout\) # ((\SLL64_A|Mux8|Mux31~6_combout\)))) # (!\SLL64_A|Mux8|Mux31~7_combout\ & (((\Selector5~0_combout\ & !\SLL64_A|Mux8|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~0_combout\,
	datab => \Selector5~0_combout\,
	datac => \SLL64_A|Mux8|Mux31~7_combout\,
	datad => \SLL64_A|Mux8|Mux31~6_combout\,
	combout => \SLL64_A|Mux8|Mux33~3_combout\);

-- Location: LCCOMB_X53_Y41_N16
\SLL64_A|Mux8|Mux33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux33~4_combout\ = (\SLL64_A|Mux8|Mux33~3_combout\ & (((\SLL64_A|Mux32|Mux13~1_combout\) # (!\SLL64_A|Mux8|Mux31~6_combout\)))) # (!\SLL64_A|Mux8|Mux33~3_combout\ & (\SLL64_A|Mux32|Mux31~16_combout\ & ((\SLL64_A|Mux8|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~16_combout\,
	datab => \SLL64_A|Mux32|Mux13~1_combout\,
	datac => \SLL64_A|Mux8|Mux33~3_combout\,
	datad => \SLL64_A|Mux8|Mux31~6_combout\,
	combout => \SLL64_A|Mux8|Mux33~4_combout\);

-- Location: LCCOMB_X53_Y41_N2
\SLL64_A|Mux8|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux5~1_combout\ = (\SLL64_A|Mux8|Mux5~0_combout\) # ((\SLL64_A|Mux8|Mux33~4_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux5~0_combout\,
	datab => \SLL64_A|Mux8|Mux33~4_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64_A|Mux8|Mux5~1_combout\);

-- Location: LCCOMB_X49_Y41_N20
\Selector133~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector133~0_combout\ = (\SLL64_A|Mux8|Mux6~1_combout\ & ((\Selector157~0_combout\) # ((\Selector191~1_combout\ & \SLL64_A|Mux8|Mux5~1_combout\)))) # (!\SLL64_A|Mux8|Mux6~1_combout\ & (\Selector191~1_combout\ & (\SLL64_A|Mux8|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux6~1_combout\,
	datab => \Selector191~1_combout\,
	datac => \SLL64_A|Mux8|Mux5~1_combout\,
	datad => \Selector157~0_combout\,
	combout => \Selector133~0_combout\);

-- Location: LCCOMB_X49_Y41_N8
\Selector133~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector133~2_combout\ = (\Selector133~0_combout\) # ((\ShiftFN[0]~input_o\ & (\Selector133~1_combout\)) # (!\ShiftFN[0]~input_o\ & ((\C[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Selector133~1_combout\,
	datac => \C[58]~input_o\,
	datad => \Selector133~0_combout\,
	combout => \Selector133~2_combout\);

-- Location: LCCOMB_X47_Y42_N12
\SLL64_A|Mux4|Mux31~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~48_combout\ = (\B[1]~input_o\ & (((!\B[3]~input_o\) # (!\B[2]~input_o\)) # (!\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~48_combout\);

-- Location: LCCOMB_X50_Y42_N0
\SLL64_A|Mux8|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux37~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux31~34_combout\))) # (!\B[3]~input_o\ & (\SLL64_A|Mux32|Mux31~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~16_combout\,
	datab => \B[2]~input_o\,
	datac => \SLL64_A|Mux32|Mux31~34_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64_A|Mux8|Mux37~0_combout\);

-- Location: LCCOMB_X47_Y42_N24
\SLL64_A|Mux8|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux37~1_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Selector49~0_combout\)) # (!\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux31~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Selector49~0_combout\,
	datad => \SLL64_A|Mux32|Mux31~14_combout\,
	combout => \SLL64_A|Mux8|Mux37~1_combout\);

-- Location: LCCOMB_X47_Y42_N10
\SLL64_A|Mux4|Mux31~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~47_combout\ = (\SLL64_A|Mux4|Mux31~43_combout\ & ((\SLL64_A|Mux8|Mux37~0_combout\) # (\SLL64_A|Mux8|Mux37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux37~0_combout\,
	datab => \SLL64_A|Mux4|Mux31~43_combout\,
	datad => \SLL64_A|Mux8|Mux37~1_combout\,
	combout => \SLL64_A|Mux4|Mux31~47_combout\);

-- Location: LCCOMB_X47_Y42_N30
\SLL64_A|Mux4|Mux31~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~49_combout\ = (!\B[5]~input_o\ & ((\SLL64_A|Mux4|Mux31~47_combout\) # ((\SLL64_A|Mux4|Mux31~48_combout\ & \SLL64_A|Mux8|Mux39~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~48_combout\,
	datab => \SLL64_A|Mux8|Mux39~1_combout\,
	datac => \B[5]~input_o\,
	datad => \SLL64_A|Mux4|Mux31~47_combout\,
	combout => \SLL64_A|Mux4|Mux31~49_combout\);

-- Location: LCCOMB_X47_Y41_N10
\Selector485~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector485~3_combout\ = (\Selector481~1_combout\ & (((\SLL64_A|Mux4|Mux31~49_combout\) # (\Selector481~2_combout\)))) # (!\Selector481~1_combout\ & (\Selector133~2_combout\ & ((!\Selector481~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector133~2_combout\,
	datab => \SLL64_A|Mux4|Mux31~49_combout\,
	datac => \Selector481~1_combout\,
	datad => \Selector481~2_combout\,
	combout => \Selector485~3_combout\);

-- Location: LCCOMB_X47_Y41_N20
\Selector485~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector485~4_combout\ = (\Selector481~2_combout\ & ((\Selector485~3_combout\ & ((\SLL64_A|Mux4|Mux31~46_combout\))) # (!\Selector485~3_combout\ & (\C[26]~input_o\)))) # (!\Selector481~2_combout\ & (((\Selector485~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \C[26]~input_o\,
	datac => \SLL64_A|Mux4|Mux31~46_combout\,
	datad => \Selector485~3_combout\,
	combout => \Selector485~4_combout\);

-- Location: LCCOMB_X47_Y39_N22
\SRL64_A|Mux4|Mux63~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~225_combout\ = (!\SLL64_A|Mux8|Mux63~0_combout\ & ((\B[1]~input_o\ & (\Selector2~0_combout\)) # (!\B[1]~input_o\ & ((\Selector4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector2~0_combout\,
	datac => \Selector4~0_combout\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~225_combout\);

-- Location: LCCOMB_X47_Y39_N16
\SRL64_A|Mux4|Mux63~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~226_combout\ = (\SRL64_A|Mux4|Mux63~225_combout\) # ((\Selector0~0_combout\ & \SLL64_A|Mux8|Mux63~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~225_combout\,
	datac => \Selector0~0_combout\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~226_combout\);

-- Location: LCCOMB_X47_Y39_N4
\Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~220_combout\) # ((\ShiftFN[0]~input_o\ & \SRL64_A|Mux4|Mux63~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~220_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~219_combout\,
	combout => \Selector69~0_combout\);

-- Location: LCCOMB_X47_Y39_N2
\SRL64_A|Mux4|Mux63~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~224_combout\ = (!\SLL64_A|Mux4|Mux31~13_combout\ & ((\B[1]~input_o\ & (\Selector2~0_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux63~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector2~0_combout\,
	datac => \SLL64_A|Mux4|Mux31~13_combout\,
	datad => \SRL64_A|Mux8|Mux63~55_combout\,
	combout => \SRL64_A|Mux4|Mux63~224_combout\);

-- Location: LCCOMB_X47_Y39_N26
\Selector69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~1_combout\ = (\B[0]~input_o\ & ((\Selector69~0_combout\ & (\SRL64_A|Mux4|Mux63~226_combout\)) # (!\Selector69~0_combout\ & ((\SRL64_A|Mux4|Mux63~224_combout\))))) # (!\B[0]~input_o\ & (((\Selector69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~226_combout\,
	datac => \Selector69~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~224_combout\,
	combout => \Selector69~1_combout\);

-- Location: LCCOMB_X53_Y37_N30
\SRL64_A|Mux8|Mux63~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~72_combout\ = (\SLL64_A|Mux32|Mux31~21_combout\ & ((\SRL64_A|Mux8|Mux63~14_combout\) # ((\SLL64_A|Mux32|Mux31~23_combout\ & \SRL64_A|Mux8|Mux63~16_combout\)))) # (!\SLL64_A|Mux32|Mux31~21_combout\ & (\SLL64_A|Mux32|Mux31~23_combout\ & 
-- (\SRL64_A|Mux8|Mux63~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~21_combout\,
	datab => \SLL64_A|Mux32|Mux31~23_combout\,
	datac => \SRL64_A|Mux8|Mux63~16_combout\,
	datad => \SRL64_A|Mux8|Mux63~14_combout\,
	combout => \SRL64_A|Mux8|Mux63~72_combout\);

-- Location: LCCOMB_X54_Y37_N20
\SRA64_A|Mux8|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux34~0_combout\ = (\B[3]~input_o\ & (((\SRL64_A|Mux4|Mux63~54_combout\) # (\SRL64_A|Mux8|Mux63~72_combout\)))) # (!\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~62_combout\,
	datab => \SRL64_A|Mux4|Mux63~54_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~72_combout\,
	combout => \SRA64_A|Mux8|Mux34~0_combout\);

-- Location: LCCOMB_X54_Y37_N30
\SRL64_A|Mux4|Mux63~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~223_combout\ = (\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux34~0_combout\))) # (!\B[1]~input_o\ & (\SRA64_A|Mux8|Mux36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux36~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64_A|Mux8|Mux34~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~223_combout\);

-- Location: LCCOMB_X54_Y37_N2
\SRL64_A|Mux4|Mux63~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~221_combout\ = (\B[3]~input_o\ & ((\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux63~72_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux8|Mux63~70_combout\)))) # (!\B[3]~input_o\ & (((\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~70_combout\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~72_combout\,
	combout => \SRL64_A|Mux4|Mux63~221_combout\);

-- Location: LCCOMB_X54_Y40_N2
\SRL64_A|Mux4|Mux63~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~222_combout\ = (\B[3]~input_o\ & (((\SRL64_A|Mux4|Mux63~221_combout\)))) # (!\B[3]~input_o\ & ((\SRL64_A|Mux4|Mux63~221_combout\ & ((\SRL64_A|Mux8|Mux63~61_combout\))) # (!\SRL64_A|Mux4|Mux63~221_combout\ & 
-- (\SRL64_A|Mux8|Mux63~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~53_combout\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~221_combout\,
	datad => \SRL64_A|Mux8|Mux63~61_combout\,
	combout => \SRL64_A|Mux4|Mux63~222_combout\);

-- Location: LCCOMB_X50_Y41_N20
\Selector485~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector485~0_combout\ = (\ShiftFN[0]~input_o\ & (\B[0]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~222_combout\))) # (!\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~217_combout\,
	datad => \SRL64_A|Mux4|Mux63~222_combout\,
	combout => \Selector485~0_combout\);

-- Location: LCCOMB_X50_Y41_N6
\Selector485~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector485~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector485~0_combout\ & (\SRL64_A|Mux4|Mux63~223_combout\)) # (!\Selector485~0_combout\ & ((\SRL64_A|Mux4|Mux63~218_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Selector485~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~223_combout\,
	datac => \SRL64_A|Mux4|Mux63~218_combout\,
	datad => \Selector485~0_combout\,
	combout => \Selector485~1_combout\);

-- Location: LCCOMB_X47_Y41_N24
\Selector485~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector485~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector485~1_combout\))) # (!\Selector481~0_combout\ & (\Selector69~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector69~1_combout\,
	datac => \Selector481~0_combout\,
	datad => \Selector485~1_combout\,
	combout => \Selector485~2_combout\);

-- Location: LCCOMB_X47_Y41_N6
\Selector485~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector485~5_combout\ = (\Selector485~2_combout\) # ((\Selector485~4_combout\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector485~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector485~2_combout\,
	combout => \Selector485~5_combout\);

-- Location: LCCOMB_X53_Y35_N26
\SLL64_A|Mux4|Mux31~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~51_combout\ = (\B[3]~input_o\ & (\B[2]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[4]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~51_combout\);

-- Location: LCCOMB_X53_Y38_N14
\SLL64_A|Mux8|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux36~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux31~35_combout\))) # (!\B[3]~input_o\ & (\SLL64_A|Mux32|Mux31~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux31~13_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~35_combout\,
	combout => \SLL64_A|Mux8|Mux36~0_combout\);

-- Location: LCCOMB_X52_Y38_N8
\SLL64_A|Mux8|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux36~1_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Selector48~0_combout\))) # (!\B[3]~input_o\ & (\SLL64_A|Mux32|Mux31~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64_A|Mux32|Mux31~11_combout\,
	datac => \Selector48~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64_A|Mux8|Mux36~1_combout\);

-- Location: LCCOMB_X53_Y35_N8
\SLL64_A|Mux4|Mux31~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~50_combout\ = (\B[1]~input_o\ & (\SLL64_A|Mux8|Mux38~1_combout\)) # (!\B[1]~input_o\ & (((\SLL64_A|Mux8|Mux36~0_combout\) # (\SLL64_A|Mux8|Mux36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux38~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64_A|Mux8|Mux36~0_combout\,
	datad => \SLL64_A|Mux8|Mux36~1_combout\,
	combout => \SLL64_A|Mux4|Mux31~50_combout\);

-- Location: LCCOMB_X53_Y35_N28
\SLL64_A|Mux4|Mux31~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~52_combout\ = (!\SLL64_A|Mux4|Mux31~51_combout\ & (!\B[5]~input_o\ & \SLL64_A|Mux4|Mux31~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~51_combout\,
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux4|Mux31~50_combout\,
	combout => \SLL64_A|Mux4|Mux31~52_combout\);

-- Location: IOIBUF_X40_Y73_N1
\C[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(27),
	o => \C[27]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\C[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(59),
	o => \C[59]~input_o\);

-- Location: LCCOMB_X49_Y41_N26
\Selector132~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector132~0_combout\ = (\Selector157~6_combout\ & ((\SLL64_A|Mux8|Mux7~1_combout\) # ((\SLL64_A|Mux8|Mux5~1_combout\ & \Selector157~0_combout\)))) # (!\Selector157~6_combout\ & (((\SLL64_A|Mux8|Mux5~1_combout\ & \Selector157~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector157~6_combout\,
	datab => \SLL64_A|Mux8|Mux7~1_combout\,
	datac => \SLL64_A|Mux8|Mux5~1_combout\,
	datad => \Selector157~0_combout\,
	combout => \Selector132~0_combout\);

-- Location: LCCOMB_X53_Y34_N30
\SLL64_A|Mux8|Mux32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux32~3_combout\ = (\SLL64_A|Mux8|Mux31~7_combout\ & (((\SLL64_A|Mux8|Mux31~6_combout\)))) # (!\SLL64_A|Mux8|Mux31~7_combout\ & ((\SLL64_A|Mux8|Mux31~6_combout\ & (\SLL64_A|Mux32|Mux31~13_combout\)) # (!\SLL64_A|Mux8|Mux31~6_combout\ & 
-- ((\Selector4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux31~7_combout\,
	datab => \SLL64_A|Mux32|Mux31~13_combout\,
	datac => \SLL64_A|Mux8|Mux31~6_combout\,
	datad => \Selector4~0_combout\,
	combout => \SLL64_A|Mux8|Mux32~3_combout\);

-- Location: LCCOMB_X53_Y34_N24
\SLL64_A|Mux8|Mux32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux32~4_combout\ = (\SLL64_A|Mux8|Mux32~3_combout\ & (((\SLL64_A|Mux32|Mux12~1_combout\) # (!\SLL64_A|Mux8|Mux31~7_combout\)))) # (!\SLL64_A|Mux8|Mux32~3_combout\ & (\Selector20~0_combout\ & ((\SLL64_A|Mux8|Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux32~3_combout\,
	datab => \Selector20~0_combout\,
	datac => \SLL64_A|Mux32|Mux12~1_combout\,
	datad => \SLL64_A|Mux8|Mux31~7_combout\,
	combout => \SLL64_A|Mux8|Mux32~4_combout\);

-- Location: LCCOMB_X50_Y38_N16
\SLL64_A|Mux32|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux8~1_combout\ = (\SLL64_A|Mux32|Mux8~0_combout\) # ((\SLL64_A|Mux32|Mux31~11_combout\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64_A|Mux32|Mux31~11_combout\,
	datac => \B[5]~input_o\,
	datad => \SLL64_A|Mux32|Mux8~0_combout\,
	combout => \SLL64_A|Mux32|Mux8~1_combout\);

-- Location: LCCOMB_X52_Y38_N26
\SLL64_A|Mux8|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux4~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux16~3_combout\))) # (!\B[3]~input_o\ & (\SLL64_A|Mux32|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SLL64_A|Mux32|Mux8~1_combout\,
	datad => \SLL64_A|Mux32|Mux16~3_combout\,
	combout => \SLL64_A|Mux8|Mux4~0_combout\);

-- Location: LCCOMB_X54_Y38_N26
\SLL64_A|Mux8|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux4~1_combout\ = (\SLL64_A|Mux8|Mux4~0_combout\) # ((\SLL64_A|Mux8|Mux32~4_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux32~4_combout\,
	datac => \SLL64_A|Mux8|Mux4~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64_A|Mux8|Mux4~1_combout\);

-- Location: LCCOMB_X49_Y41_N28
\Selector132~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector132~1_combout\ = (\SLL64_A|Mux8|Mux4~1_combout\ & ((\Selector191~1_combout\) # ((\SLL64_A|Mux8|Mux6~1_combout\ & \Selector157~4_combout\)))) # (!\SLL64_A|Mux8|Mux4~1_combout\ & (\SLL64_A|Mux8|Mux6~1_combout\ & ((\Selector157~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux4~1_combout\,
	datab => \SLL64_A|Mux8|Mux6~1_combout\,
	datac => \Selector191~1_combout\,
	datad => \Selector157~4_combout\,
	combout => \Selector132~1_combout\);

-- Location: LCCOMB_X49_Y41_N6
\Selector132~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector132~2_combout\ = (\Selector132~0_combout\) # ((\Selector132~1_combout\) # ((!\ShiftFN[0]~input_o\ & \C[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \C[59]~input_o\,
	datac => \Selector132~0_combout\,
	datad => \Selector132~1_combout\,
	combout => \Selector132~2_combout\);

-- Location: LCCOMB_X47_Y41_N18
\Selector484~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector484~3_combout\ = (\Selector481~2_combout\ & ((\C[27]~input_o\) # ((\Selector481~1_combout\)))) # (!\Selector481~2_combout\ & (((!\Selector481~1_combout\ & \Selector132~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \C[27]~input_o\,
	datac => \Selector481~1_combout\,
	datad => \Selector132~2_combout\,
	combout => \Selector484~3_combout\);

-- Location: LCCOMB_X47_Y41_N28
\Selector484~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector484~4_combout\ = (\Selector481~1_combout\ & ((\Selector484~3_combout\ & ((\SLL64_A|Mux4|Mux31~49_combout\))) # (!\Selector484~3_combout\ & (\SLL64_A|Mux4|Mux31~52_combout\)))) # (!\Selector481~1_combout\ & (((\Selector484~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~1_combout\,
	datab => \SLL64_A|Mux4|Mux31~52_combout\,
	datac => \SLL64_A|Mux4|Mux31~49_combout\,
	datad => \Selector484~3_combout\,
	combout => \Selector484~4_combout\);

-- Location: LCCOMB_X47_Y39_N28
\SRL64_A|Mux4|Mux63~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~230_combout\ = (\Selector0~0_combout\ & \SLL64_A|Mux8|Mux63~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector0~0_combout\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~230_combout\);

-- Location: LCCOMB_X47_Y39_N30
\Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRL64_A|Mux4|Mux63~226_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~224_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~226_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~224_combout\,
	combout => \Selector68~0_combout\);

-- Location: LCCOMB_X47_Y39_N0
\SRL64_A|Mux4|Mux63~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~231_combout\ = (!\SLL64_A|Mux8|Mux63~0_combout\ & ((\B[1]~input_o\ & ((\Selector1~0_combout\))) # (!\B[1]~input_o\ & (\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector1~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~231_combout\);

-- Location: LCCOMB_X47_Y39_N18
\Selector68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~1_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~231_combout\) # ((\SRL64_A|Mux4|Mux63~230_combout\ & \Selector68~0_combout\)))) # (!\B[0]~input_o\ & (((\Selector68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~230_combout\,
	datac => \Selector68~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~231_combout\,
	combout => \Selector68~1_combout\);

-- Location: LCCOMB_X53_Y37_N24
\SRL64_A|Mux8|Mux63~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~73_combout\ = (\SRL64_A|Mux8|Mux63~14_combout\ & ((\SLL64_A|Mux32|Mux31~27_combout\) # ((\SRL64_A|Mux8|Mux63~16_combout\ & \SLL64_A|Mux32|Mux31~25_combout\)))) # (!\SRL64_A|Mux8|Mux63~14_combout\ & (((\SRL64_A|Mux8|Mux63~16_combout\ & 
-- \SLL64_A|Mux32|Mux31~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~14_combout\,
	datab => \SLL64_A|Mux32|Mux31~27_combout\,
	datac => \SRL64_A|Mux8|Mux63~16_combout\,
	datad => \SLL64_A|Mux32|Mux31~25_combout\,
	combout => \SRL64_A|Mux8|Mux63~73_combout\);

-- Location: LCCOMB_X55_Y41_N2
\SRA64_A|Mux8|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux33~0_combout\ = (\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~73_combout\) # ((\SRL64_A|Mux4|Mux63~54_combout\)))) # (!\B[3]~input_o\ & (((\SRL64_A|Mux8|Mux63~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~73_combout\,
	datac => \SRL64_A|Mux4|Mux63~54_combout\,
	datad => \SRL64_A|Mux8|Mux63~66_combout\,
	combout => \SRA64_A|Mux8|Mux33~0_combout\);

-- Location: LCCOMB_X55_Y41_N4
\SRL64_A|Mux4|Mux63~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~229_combout\ = (\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux33~0_combout\))) # (!\B[1]~input_o\ & (\SRA64_A|Mux8|Mux35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux35~0_combout\,
	datab => \B[1]~input_o\,
	datad => \SRA64_A|Mux8|Mux33~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~229_combout\);

-- Location: LCCOMB_X53_Y37_N26
\SRL64_A|Mux4|Mux63~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~227_combout\ = (\B[3]~input_o\ & ((\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux63~73_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux8|Mux63~71_combout\)))) # (!\B[3]~input_o\ & (((\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~71_combout\,
	datab => \SRL64_A|Mux8|Mux63~73_combout\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~227_combout\);

-- Location: LCCOMB_X59_Y39_N14
\SRL64_A|Mux4|Mux63~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~228_combout\ = (\SRL64_A|Mux4|Mux63~227_combout\ & ((\B[3]~input_o\) # ((\SRL64_A|Mux8|Mux63~65_combout\)))) # (!\SRL64_A|Mux4|Mux63~227_combout\ & (!\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~227_combout\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux63~58_combout\,
	datad => \SRL64_A|Mux8|Mux63~65_combout\,
	combout => \SRL64_A|Mux4|Mux63~228_combout\);

-- Location: LCCOMB_X50_Y41_N24
\Selector484~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector484~0_combout\ = (\ShiftFN[0]~input_o\ & (\B[0]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~228_combout\)) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~222_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~228_combout\,
	datad => \SRL64_A|Mux4|Mux63~222_combout\,
	combout => \Selector484~0_combout\);

-- Location: LCCOMB_X50_Y41_N26
\Selector484~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector484~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector484~0_combout\ & ((\SRL64_A|Mux4|Mux63~229_combout\))) # (!\Selector484~0_combout\ & (\SRL64_A|Mux4|Mux63~223_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Selector484~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~223_combout\,
	datac => \SRL64_A|Mux4|Mux63~229_combout\,
	datad => \Selector484~0_combout\,
	combout => \Selector484~1_combout\);

-- Location: LCCOMB_X47_Y41_N16
\Selector484~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector484~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector484~1_combout\))) # (!\Selector481~0_combout\ & (\Selector68~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector68~1_combout\,
	datac => \Selector481~0_combout\,
	datad => \Selector484~1_combout\,
	combout => \Selector484~2_combout\);

-- Location: LCCOMB_X47_Y41_N14
\Selector484~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector484~5_combout\ = (\Selector484~2_combout\) # ((\Selector484~4_combout\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector484~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector484~2_combout\,
	combout => \Selector484~5_combout\);

-- Location: LCCOMB_X54_Y38_N6
\Selector131~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector131~1_combout\ = (\Selector126~1_combout\ & ((\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux6~1_combout\))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux4~1_combout\,
	datab => \Selector126~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux6~1_combout\,
	combout => \Selector131~1_combout\);

-- Location: LCCOMB_X54_Y38_N24
\Selector191~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector191~3_combout\ = (\ShiftFN[0]~input_o\ & !\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Selector191~3_combout\);

-- Location: LCCOMB_X56_Y38_N16
\SLL64_A|Mux8|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux3~0_combout\ = (\SLL64_A|Mux8|Mux31~7_combout\ & (((\Selector19~0_combout\) # (\SLL64_A|Mux8|Mux31~6_combout\)))) # (!\SLL64_A|Mux8|Mux31~7_combout\ & (\Selector3~0_combout\ & ((!\SLL64_A|Mux8|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \SLL64_A|Mux8|Mux31~7_combout\,
	datac => \Selector19~0_combout\,
	datad => \SLL64_A|Mux8|Mux31~6_combout\,
	combout => \SLL64_A|Mux8|Mux3~0_combout\);

-- Location: LCCOMB_X56_Y38_N18
\SLL64_A|Mux8|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux3~1_combout\ = (\SLL64_A|Mux8|Mux31~6_combout\ & ((\SLL64_A|Mux8|Mux3~0_combout\ & ((\SLL64_A|Mux32|Mux11~1_combout\))) # (!\SLL64_A|Mux8|Mux3~0_combout\ & (\SLL64_A|Mux32|Mux31~4_combout\)))) # (!\SLL64_A|Mux8|Mux31~6_combout\ & 
-- (\SLL64_A|Mux8|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux31~6_combout\,
	datab => \SLL64_A|Mux8|Mux3~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~4_combout\,
	datad => \SLL64_A|Mux32|Mux11~1_combout\,
	combout => \SLL64_A|Mux8|Mux3~1_combout\);

-- Location: LCCOMB_X53_Y41_N28
\SLL64_A|Mux4|Mux31~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~55_combout\ = (!\B[1]~input_o\ & ((\B[2]~input_o\ & ((\SLL64_A|Mux8|Mux31~9_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux8|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux8|Mux3~1_combout\,
	datac => \SLL64_A|Mux8|Mux31~9_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~55_combout\);

-- Location: LCCOMB_X53_Y41_N14
\SLL64_A|Mux4|Mux31~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~56_combout\ = (\SLL64_A|Mux4|Mux31~55_combout\) # ((\B[1]~input_o\ & \SLL64_A|Mux8|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64_A|Mux4|Mux31~55_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux5~1_combout\,
	combout => \SLL64_A|Mux4|Mux31~56_combout\);

-- Location: IOIBUF_X81_Y73_N22
\C[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(60),
	o => \C[60]~input_o\);

-- Location: LCCOMB_X54_Y38_N12
\Selector131~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector131~0_combout\ = (!\ShiftFN[0]~input_o\ & \C[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datad => \C[60]~input_o\,
	combout => \Selector131~0_combout\);

-- Location: LCCOMB_X54_Y38_N10
\Selector131~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector131~2_combout\ = (\Selector131~1_combout\) # ((\Selector131~0_combout\) # ((\Selector191~3_combout\ & \SLL64_A|Mux4|Mux31~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector131~1_combout\,
	datab => \Selector191~3_combout\,
	datac => \SLL64_A|Mux4|Mux31~56_combout\,
	datad => \Selector131~0_combout\,
	combout => \Selector131~2_combout\);

-- Location: LCCOMB_X49_Y38_N14
\SLL64_A|Mux8|Mux35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux35~2_combout\ = (\SLL64_A|Mux8|Mux55~0_combout\ & ((\SLL64_A|Mux32|Mux31~33_combout\) # ((\SLL64_A|Mux8|Mux27~0_combout\ & \SLL64_A|Mux32|Mux31~3_combout\)))) # (!\SLL64_A|Mux8|Mux55~0_combout\ & (\SLL64_A|Mux8|Mux27~0_combout\ & 
-- ((\SLL64_A|Mux32|Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux55~0_combout\,
	datab => \SLL64_A|Mux8|Mux27~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~33_combout\,
	datad => \SLL64_A|Mux32|Mux31~3_combout\,
	combout => \SLL64_A|Mux8|Mux35~2_combout\);

-- Location: LCCOMB_X58_Y35_N30
\SLL64_A|Mux8|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux35~1_combout\ = (\SLL64_A|Mux8|Mux35~0_combout\ & ((\B[4]~input_o\ & (\Selector59~0_combout\)) # (!\B[4]~input_o\ & ((\Selector43~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux35~0_combout\,
	datab => \Selector59~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector43~0_combout\,
	combout => \SLL64_A|Mux8|Mux35~1_combout\);

-- Location: LCCOMB_X56_Y38_N6
\SLL64_A|Mux8|Mux35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux35~3_combout\ = (\SLL64_A|Mux8|Mux35~2_combout\) # ((\SLL64_A|Mux8|Mux35~1_combout\) # ((\SLL64_A|Mux8|Mux31~4_combout\ & \SLL64_A|Mux32|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux35~2_combout\,
	datab => \SLL64_A|Mux8|Mux31~4_combout\,
	datac => \SLL64_A|Mux8|Mux35~1_combout\,
	datad => \SLL64_A|Mux32|Mux31~4_combout\,
	combout => \SLL64_A|Mux8|Mux35~3_combout\);

-- Location: LCCOMB_X47_Y42_N0
\SLL64_A|Mux4|Mux31~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~53_combout\ = (\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux37~0_combout\) # ((\SLL64_A|Mux8|Mux37~1_combout\)))) # (!\B[1]~input_o\ & (((\SLL64_A|Mux8|Mux35~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux37~0_combout\,
	datab => \SLL64_A|Mux8|Mux35~3_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux37~1_combout\,
	combout => \SLL64_A|Mux4|Mux31~53_combout\);

-- Location: LCCOMB_X47_Y42_N26
\SRL64_A|Mux4|Mux63~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~238_combout\ = (\B[2]~input_o\ & (\B[1]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~238_combout\);

-- Location: LCCOMB_X47_Y42_N20
\SLL64_A|Mux4|Mux31~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~54_combout\ = (\SLL64_A|Mux4|Mux31~53_combout\ & (!\B[5]~input_o\ & ((!\SRL64_A|Mux4|Mux63~238_combout\) # (!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SLL64_A|Mux4|Mux31~53_combout\,
	datac => \SRL64_A|Mux4|Mux63~238_combout\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~54_combout\);

-- Location: LCCOMB_X47_Y41_N8
\Selector483~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector483~3_combout\ = (\Selector481~2_combout\ & (((\Selector481~1_combout\)))) # (!\Selector481~2_combout\ & ((\Selector481~1_combout\ & ((\SLL64_A|Mux4|Mux31~54_combout\))) # (!\Selector481~1_combout\ & (\Selector131~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \Selector131~2_combout\,
	datac => \Selector481~1_combout\,
	datad => \SLL64_A|Mux4|Mux31~54_combout\,
	combout => \Selector483~3_combout\);

-- Location: IOIBUF_X38_Y73_N22
\C[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(28),
	o => \C[28]~input_o\);

-- Location: LCCOMB_X47_Y41_N2
\Selector483~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector483~4_combout\ = (\Selector481~2_combout\ & ((\Selector483~3_combout\ & (\SLL64_A|Mux4|Mux31~52_combout\)) # (!\Selector483~3_combout\ & ((\C[28]~input_o\))))) # (!\Selector481~2_combout\ & (((\Selector483~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~2_combout\,
	datab => \SLL64_A|Mux4|Mux31~52_combout\,
	datac => \Selector483~3_combout\,
	datad => \C[28]~input_o\,
	combout => \Selector483~4_combout\);

-- Location: LCCOMB_X53_Y37_N28
\SRL64_A|Mux8|Mux63~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~74_combout\ = (\SRL64_A|Mux8|Mux63~68_combout\) # ((\SLL64_A|Mux32|Mux31~19_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64_A|Mux8|Mux63~68_combout\,
	datac => \SLL64_A|Mux32|Mux31~19_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~74_combout\);

-- Location: LCCOMB_X54_Y37_N8
\SRL64_A|Mux4|Mux63~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~234_combout\ = (!\B[5]~input_o\ & ((\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~21_combout\)) # (!\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~21_combout\,
	datab => \B[5]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~74_combout\,
	combout => \SRL64_A|Mux4|Mux63~234_combout\);

-- Location: LCCOMB_X54_Y37_N10
\SRL64_A|Mux4|Mux63~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~235_combout\ = (\B[1]~input_o\ & (((\SRL64_A|Mux4|Mux63~234_combout\) # (\SRL64_A|Mux4|Mux63~54_combout\)))) # (!\B[1]~input_o\ & (\SRA64_A|Mux8|Mux34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64_A|Mux8|Mux34~0_combout\,
	datab => \SRL64_A|Mux4|Mux63~234_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~54_combout\,
	combout => \SRL64_A|Mux4|Mux63~235_combout\);

-- Location: LCCOMB_X54_Y40_N28
\SRL64_A|Mux4|Mux63~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~232_combout\ = (!\B[3]~input_o\ & ((\B[1]~input_o\ & (\SRL64_A|Mux8|Mux63~79_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux63~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~79_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~61_combout\,
	combout => \SRL64_A|Mux4|Mux63~232_combout\);

-- Location: LCCOMB_X54_Y37_N22
\SRL64_A|Mux4|Mux63~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~258_combout\ = (\B[1]~input_o\ & (\SRL64_A|Mux8|Mux63~21_combout\ & (!\B[5]~input_o\))) # (!\B[1]~input_o\ & (((\SRL64_A|Mux8|Mux63~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~21_combout\,
	datab => \B[5]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~72_combout\,
	combout => \SRL64_A|Mux4|Mux63~258_combout\);

-- Location: LCCOMB_X50_Y41_N4
\SRL64_A|Mux4|Mux63~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~233_combout\ = (\SRL64_A|Mux4|Mux63~232_combout\) # ((\B[3]~input_o\ & \SRL64_A|Mux4|Mux63~258_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~232_combout\,
	datad => \SRL64_A|Mux4|Mux63~258_combout\,
	combout => \SRL64_A|Mux4|Mux63~233_combout\);

-- Location: LCCOMB_X50_Y41_N22
\Selector483~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector483~0_combout\ = (\B[0]~input_o\ & (((\SRL64_A|Mux4|Mux63~233_combout\) # (\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~228_combout\ & ((!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~228_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~233_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector483~0_combout\);

-- Location: LCCOMB_X50_Y41_N8
\Selector483~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector483~1_combout\ = (\Selector483~0_combout\ & ((\SRL64_A|Mux4|Mux63~235_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\Selector483~0_combout\ & (((\SRL64_A|Mux4|Mux63~229_combout\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~235_combout\,
	datab => \SRL64_A|Mux4|Mux63~229_combout\,
	datac => \Selector483~0_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector483~1_combout\);

-- Location: LCCOMB_X47_Y39_N12
\SRL64_A|Mux4|Mux63~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~236_combout\ = (!\SLL64_A|Mux8|Mux63~0_combout\ & ((\B[1]~input_o\ & ((\Selector0~0_combout\))) # (!\B[1]~input_o\ & (\Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector2~0_combout\,
	datac => \Selector0~0_combout\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~236_combout\);

-- Location: LCCOMB_X47_Y38_N22
\SRL64_A|Mux4|Mux63~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~237_combout\ = (\B[1]~input_o\ & (((\Selector0~0_combout\)))) # (!\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux31~4_combout\ & (\SRL64_A|Mux4|Mux63~255_combout\)) # (!\SLL64_A|Mux8|Mux31~4_combout\ & ((\Selector0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~255_combout\,
	datab => \Selector0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux31~4_combout\,
	combout => \SRL64_A|Mux4|Mux63~237_combout\);

-- Location: LCCOMB_X47_Y39_N14
\Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~231_combout\) # ((\SRL64_A|Mux4|Mux63~230_combout\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~230_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~231_combout\,
	combout => \Selector67~0_combout\);

-- Location: LCCOMB_X48_Y41_N0
\Selector67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~1_combout\ = (\Selector67~0_combout\ & (((\SRL64_A|Mux4|Mux63~237_combout\) # (!\B[0]~input_o\)))) # (!\Selector67~0_combout\ & (\SRL64_A|Mux4|Mux63~236_combout\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~236_combout\,
	datab => \SRL64_A|Mux4|Mux63~237_combout\,
	datac => \Selector67~0_combout\,
	datad => \B[0]~input_o\,
	combout => \Selector67~1_combout\);

-- Location: LCCOMB_X48_Y41_N10
\Selector483~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector483~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & (\Selector483~1_combout\)) # (!\Selector481~0_combout\ & ((\Selector67~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector481~0_combout\,
	datac => \Selector483~1_combout\,
	datad => \Selector67~1_combout\,
	combout => \Selector483~2_combout\);

-- Location: LCCOMB_X48_Y41_N12
\Selector483~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector483~5_combout\ = (\Selector483~2_combout\) # ((\Selector483~4_combout\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector483~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector483~2_combout\,
	combout => \Selector483~5_combout\);

-- Location: IOIBUF_X115_Y34_N22
\C[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(61),
	o => \C[61]~input_o\);

-- Location: LCCOMB_X54_Y38_N4
\Selector130~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector130~0_combout\ = (!\ShiftFN[0]~input_o\ & \C[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datad => \C[61]~input_o\,
	combout => \Selector130~0_combout\);

-- Location: LCCOMB_X55_Y35_N26
\SLL64_A|Mux8|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux2~0_combout\ = (\SLL64_A|Mux8|Mux31~7_combout\ & (((\SLL64_A|Mux8|Mux31~6_combout\)))) # (!\SLL64_A|Mux8|Mux31~7_combout\ & ((\SLL64_A|Mux8|Mux31~6_combout\ & ((\SLL64_A|Mux32|Mux31~8_combout\))) # (!\SLL64_A|Mux8|Mux31~6_combout\ & 
-- (\Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux31~7_combout\,
	datab => \Selector2~0_combout\,
	datac => \SLL64_A|Mux32|Mux31~8_combout\,
	datad => \SLL64_A|Mux8|Mux31~6_combout\,
	combout => \SLL64_A|Mux8|Mux2~0_combout\);

-- Location: LCCOMB_X55_Y35_N20
\SLL64_A|Mux8|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux2~1_combout\ = (\SLL64_A|Mux8|Mux31~7_combout\ & ((\SLL64_A|Mux8|Mux2~0_combout\ & (\SLL64_A|Mux32|Mux10~1_combout\)) # (!\SLL64_A|Mux8|Mux2~0_combout\ & ((\Selector18~0_combout\))))) # (!\SLL64_A|Mux8|Mux31~7_combout\ & 
-- (((\SLL64_A|Mux8|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux31~7_combout\,
	datab => \SLL64_A|Mux32|Mux10~1_combout\,
	datac => \SLL64_A|Mux8|Mux2~0_combout\,
	datad => \Selector18~0_combout\,
	combout => \SLL64_A|Mux8|Mux2~1_combout\);

-- Location: LCCOMB_X54_Y38_N22
\SLL64_A|Mux4|Mux31~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~59_combout\ = (!\B[1]~input_o\ & ((\B[2]~input_o\ & ((\SLL64_A|Mux8|Mux34~4_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux8|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux8|Mux2~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux34~4_combout\,
	combout => \SLL64_A|Mux4|Mux31~59_combout\);

-- Location: LCCOMB_X54_Y38_N16
\Selector130~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector130~1_combout\ = (\Selector191~3_combout\ & ((\SLL64_A|Mux4|Mux31~59_combout\) # ((\SLL64_A|Mux8|Mux4~1_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux4~1_combout\,
	datab => \SLL64_A|Mux4|Mux31~59_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector191~3_combout\,
	combout => \Selector130~1_combout\);

-- Location: LCCOMB_X54_Y38_N18
\Selector130~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector130~2_combout\ = (\Selector130~0_combout\) # ((\Selector130~1_combout\) # ((\SLL64_A|Mux4|Mux31~56_combout\ & \Selector126~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~56_combout\,
	datab => \Selector130~0_combout\,
	datac => \Selector126~1_combout\,
	datad => \Selector130~1_combout\,
	combout => \Selector130~2_combout\);

-- Location: IOIBUF_X20_Y73_N15
\C[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(29),
	o => \C[29]~input_o\);

-- Location: LCCOMB_X47_Y41_N4
\Selector482~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector482~3_combout\ = (\Selector481~1_combout\ & (((\Selector481~2_combout\)))) # (!\Selector481~1_combout\ & ((\Selector481~2_combout\ & ((\C[29]~input_o\))) # (!\Selector481~2_combout\ & (\Selector130~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~1_combout\,
	datab => \Selector130~2_combout\,
	datac => \C[29]~input_o\,
	datad => \Selector481~2_combout\,
	combout => \Selector482~3_combout\);

-- Location: LCCOMB_X53_Y35_N14
\SLL64_A|Mux4|Mux31~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~57_combout\ = (!\SLL64_A|Mux4|Mux31~51_combout\ & (\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux36~1_combout\) # (\SLL64_A|Mux8|Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux36~1_combout\,
	datab => \SLL64_A|Mux8|Mux36~0_combout\,
	datac => \SLL64_A|Mux4|Mux31~51_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~57_combout\);

-- Location: LCCOMB_X53_Y40_N12
\SLL64_A|Mux4|Mux31~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~58_combout\ = (!\B[5]~input_o\ & ((\SLL64_A|Mux4|Mux31~57_combout\) # ((\SLL64_A|Mux8|Mux34~2_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SLL64_A|Mux8|Mux34~2_combout\,
	datac => \SLL64_A|Mux4|Mux31~57_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~58_combout\);

-- Location: LCCOMB_X47_Y41_N30
\Selector482~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector482~4_combout\ = (\Selector481~1_combout\ & ((\Selector482~3_combout\ & ((\SLL64_A|Mux4|Mux31~54_combout\))) # (!\Selector482~3_combout\ & (\SLL64_A|Mux4|Mux31~58_combout\)))) # (!\Selector481~1_combout\ & (\Selector482~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~1_combout\,
	datab => \Selector482~3_combout\,
	datac => \SLL64_A|Mux4|Mux31~58_combout\,
	datad => \SLL64_A|Mux4|Mux31~54_combout\,
	combout => \Selector482~4_combout\);

-- Location: LCCOMB_X48_Y41_N6
\SRL64_A|Mux4|Mux63~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~240_combout\ = (\Selector1~0_combout\ & (!\B[1]~input_o\ & !\SLL64_A|Mux8|Mux63~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector1~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~240_combout\);

-- Location: LCCOMB_X48_Y41_N8
\Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~237_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRL64_A|Mux4|Mux63~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~236_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~237_combout\,
	combout => \Selector66~0_combout\);

-- Location: LCCOMB_X48_Y41_N2
\SRA64_A|Mux8|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux8|Mux1~0_combout\ = (\SLL64_A|Mux8|Mux31~4_combout\ & ((\SLL64_A|Mux32|Mux31~32_combout\ & ((\Selector1~0_combout\))) # (!\SLL64_A|Mux32|Mux31~32_combout\ & (\Selector0~0_combout\)))) # (!\SLL64_A|Mux8|Mux31~4_combout\ & 
-- (\Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector1~0_combout\,
	datac => \SLL64_A|Mux8|Mux31~4_combout\,
	datad => \SLL64_A|Mux32|Mux31~32_combout\,
	combout => \SRA64_A|Mux8|Mux1~0_combout\);

-- Location: LCCOMB_X48_Y41_N4
\SRL64_A|Mux4|Mux63~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~241_combout\ = (\B[1]~input_o\ & (\Selector0~0_combout\)) # (!\B[1]~input_o\ & ((\SRA64_A|Mux8|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64_A|Mux8|Mux1~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~241_combout\);

-- Location: LCCOMB_X48_Y41_N30
\Selector66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~1_combout\ = (\Selector66~0_combout\ & (((\SRL64_A|Mux4|Mux63~241_combout\) # (!\B[0]~input_o\)))) # (!\Selector66~0_combout\ & (\SRL64_A|Mux4|Mux63~240_combout\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~240_combout\,
	datab => \Selector66~0_combout\,
	datac => \SRL64_A|Mux4|Mux63~241_combout\,
	datad => \B[0]~input_o\,
	combout => \Selector66~1_combout\);

-- Location: LCCOMB_X55_Y41_N22
\SRL64_A|Mux4|Mux63~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~239_combout\ = (\B[1]~input_o\ & ((\SRL64_A|Mux4|Mux63~56_combout\) # ((\SRL64_A|Mux4|Mux63~54_combout\)))) # (!\B[1]~input_o\ & (((\SRA64_A|Mux8|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~56_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~54_combout\,
	datad => \SRA64_A|Mux8|Mux33~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~239_combout\);

-- Location: LCCOMB_X54_Y39_N28
\SRL64_A|Mux4|Mux63~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~259_combout\ = (\B[1]~input_o\ & (((\SRL64_A|Mux4|Mux63~56_combout\)))) # (!\B[1]~input_o\ & (\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~73_combout\,
	datac => \SRL64_A|Mux4|Mux63~56_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~259_combout\);

-- Location: LCCOMB_X54_Y39_N22
\SRL64_A|Mux4|Mux63~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~260_combout\ = (\SRL64_A|Mux4|Mux63~259_combout\) # ((\SRL64_A|Mux8|Mux63~65_combout\ & (!\B[3]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~65_combout\,
	datab => \SRL64_A|Mux4|Mux63~259_combout\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~260_combout\);

-- Location: LCCOMB_X50_Y41_N18
\Selector482~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector482~0_combout\ = (\ShiftFN[0]~input_o\ & (\B[0]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~260_combout\))) # (!\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~233_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~233_combout\,
	datad => \SRL64_A|Mux4|Mux63~260_combout\,
	combout => \Selector482~0_combout\);

-- Location: LCCOMB_X50_Y41_N12
\Selector482~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector482~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector482~0_combout\ & (\SRL64_A|Mux4|Mux63~239_combout\)) # (!\Selector482~0_combout\ & ((\SRL64_A|Mux4|Mux63~235_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Selector482~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~239_combout\,
	datac => \SRL64_A|Mux4|Mux63~235_combout\,
	datad => \Selector482~0_combout\,
	combout => \Selector482~1_combout\);

-- Location: LCCOMB_X48_Y41_N16
\Selector482~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector482~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & ((\Selector482~1_combout\))) # (!\Selector481~0_combout\ & (\Selector66~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector66~1_combout\,
	datab => \Selector481~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector482~1_combout\,
	combout => \Selector482~2_combout\);

-- Location: LCCOMB_X48_Y41_N26
\Selector482~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector482~5_combout\ = (\Selector482~2_combout\) # ((\Selector482~4_combout\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector482~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector482~2_combout\,
	combout => \Selector482~5_combout\);

-- Location: IOIBUF_X67_Y0_N22
\C[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(62),
	o => \C[62]~input_o\);

-- Location: LCCOMB_X54_Y38_N30
\Selector129~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector129~1_combout\ = (\C[62]~input_o\ & !\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C[62]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector129~1_combout\);

-- Location: LCCOMB_X54_Y38_N20
\Selector129~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector129~0_combout\ = (\Selector126~1_combout\ & ((\SLL64_A|Mux4|Mux31~59_combout\) # ((\SLL64_A|Mux8|Mux4~1_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux4~1_combout\,
	datab => \Selector126~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux4|Mux31~59_combout\,
	combout => \Selector129~0_combout\);

-- Location: LCCOMB_X53_Y41_N8
\SLL64_A|Mux4|Mux31~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~61_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector17~0_combout\))) # (!\B[4]~input_o\ & (\Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Selector17~0_combout\,
	combout => \SLL64_A|Mux4|Mux31~61_combout\);

-- Location: LCCOMB_X53_Y41_N18
\SLL64_A|Mux4|Mux31~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~62_combout\ = (!\B[3]~input_o\ & ((\SLL64_A|Mux4|Mux31~61_combout\) # ((\SLL64_A|Mux32|Mux31~15_combout\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64_A|Mux32|Mux31~15_combout\,
	datac => \SLL64_A|Mux4|Mux31~61_combout\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~62_combout\);

-- Location: LCCOMB_X53_Y41_N20
\SLL64_A|Mux4|Mux31~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~63_combout\ = (\SLL64_A|Mux4|Mux31~11_combout\ & ((\SLL64_A|Mux4|Mux31~62_combout\) # ((\B[3]~input_o\ & \SLL64_A|Mux32|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64_A|Mux4|Mux31~62_combout\,
	datac => \SLL64_A|Mux4|Mux31~11_combout\,
	datad => \SLL64_A|Mux32|Mux9~1_combout\,
	combout => \SLL64_A|Mux4|Mux31~63_combout\);

-- Location: LCCOMB_X53_Y41_N30
\SLL64_A|Mux4|Mux31~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~64_combout\ = (\B[1]~input_o\ & ((\B[2]~input_o\ & ((\SLL64_A|Mux8|Mux31~9_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux8|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux8|Mux3~1_combout\,
	datac => \SLL64_A|Mux8|Mux31~9_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~64_combout\);

-- Location: LCCOMB_X53_Y41_N24
\SLL64_A|Mux4|Mux31~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~65_combout\ = (\B[2]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~65_combout\);

-- Location: LCCOMB_X53_Y41_N10
\SLL64_A|Mux4|Mux31~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~66_combout\ = (\SLL64_A|Mux4|Mux31~63_combout\) # ((\SLL64_A|Mux4|Mux31~64_combout\) # ((\SLL64_A|Mux8|Mux33~4_combout\ & \SLL64_A|Mux4|Mux31~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux33~4_combout\,
	datab => \SLL64_A|Mux4|Mux31~63_combout\,
	datac => \SLL64_A|Mux4|Mux31~64_combout\,
	datad => \SLL64_A|Mux4|Mux31~65_combout\,
	combout => \SLL64_A|Mux4|Mux31~66_combout\);

-- Location: LCCOMB_X54_Y38_N0
\Selector129~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector129~2_combout\ = (\Selector129~1_combout\) # ((\Selector129~0_combout\) # ((\SLL64_A|Mux4|Mux31~66_combout\ & \Selector191~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector129~1_combout\,
	datab => \Selector129~0_combout\,
	datac => \SLL64_A|Mux4|Mux31~66_combout\,
	datad => \Selector191~3_combout\,
	combout => \Selector129~2_combout\);

-- Location: LCCOMB_X53_Y40_N30
\SLL64_A|Mux4|Mux31~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux31~60_combout\ = (!\B[5]~input_o\ & ((\B[1]~input_o\ & (\SLL64_A|Mux8|Mux35~3_combout\)) # (!\B[1]~input_o\ & ((\SLL64_A|Mux8|Mux33~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux35~3_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64_A|Mux8|Mux33~2_combout\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux4|Mux31~60_combout\);

-- Location: LCCOMB_X53_Y40_N16
\Selector481~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector481~6_combout\ = (\Selector481~1_combout\ & (((\SLL64_A|Mux4|Mux31~60_combout\) # (\Selector481~2_combout\)))) # (!\Selector481~1_combout\ & (\Selector129~2_combout\ & ((!\Selector481~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~1_combout\,
	datab => \Selector129~2_combout\,
	datac => \SLL64_A|Mux4|Mux31~60_combout\,
	datad => \Selector481~2_combout\,
	combout => \Selector481~6_combout\);

-- Location: IOIBUF_X72_Y0_N1
\C[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(30),
	o => \C[30]~input_o\);

-- Location: LCCOMB_X53_Y40_N18
\Selector481~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector481~7_combout\ = (\Selector481~6_combout\ & ((\SLL64_A|Mux4|Mux31~58_combout\) # ((!\Selector481~2_combout\)))) # (!\Selector481~6_combout\ & (((\C[30]~input_o\ & \Selector481~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux31~58_combout\,
	datab => \Selector481~6_combout\,
	datac => \C[30]~input_o\,
	datad => \Selector481~2_combout\,
	combout => \Selector481~7_combout\);

-- Location: LCCOMB_X54_Y37_N4
\SRL64_A|Mux4|Mux63~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~244_combout\ = (!\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~21_combout\)) # (!\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~21_combout\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux8|Mux63~74_combout\,
	combout => \SRL64_A|Mux4|Mux63~244_combout\);

-- Location: LCCOMB_X53_Y39_N16
\SRL64_A|Mux4|Mux63~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~245_combout\ = (!\B[5]~input_o\ & ((\SRL64_A|Mux4|Mux63~244_combout\) # ((\B[1]~input_o\ & \SRL64_A|Mux8|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~244_combout\,
	datab => \B[1]~input_o\,
	datac => \B[5]~input_o\,
	datad => \SRL64_A|Mux8|Mux30~2_combout\,
	combout => \SRL64_A|Mux4|Mux63~245_combout\);

-- Location: LCCOMB_X53_Y39_N30
\SRL64_A|Mux4|Mux63~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~261_combout\ = (\SRL64_A|Mux4|Mux63~245_combout\) # ((\Selector0~0_combout\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datac => \B[5]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~245_combout\,
	combout => \SRL64_A|Mux4|Mux63~261_combout\);

-- Location: LCCOMB_X54_Y40_N30
\SRL64_A|Mux4|Mux63~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~242_combout\ = (\SRL64_A|Mux4|Mux63~55_combout\ & ((\SRL64_A|Mux8|Mux30~2_combout\) # ((\SRL64_A|Mux8|Mux63~79_combout\ & \SRL64_A|Mux4|Mux63~138_combout\)))) # (!\SRL64_A|Mux4|Mux63~55_combout\ & (\SRL64_A|Mux8|Mux63~79_combout\ & 
-- (\SRL64_A|Mux4|Mux63~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~55_combout\,
	datab => \SRL64_A|Mux8|Mux63~79_combout\,
	datac => \SRL64_A|Mux4|Mux63~138_combout\,
	datad => \SRL64_A|Mux8|Mux30~2_combout\,
	combout => \SRL64_A|Mux4|Mux63~242_combout\);

-- Location: LCCOMB_X53_Y39_N14
\SRL64_A|Mux4|Mux63~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~243_combout\ = (\SRL64_A|Mux4|Mux63~242_combout\) # ((\SRL64_A|Mux8|Mux63~21_combout\ & (!\B[5]~input_o\ & \SRL64_A|Mux4|Mux63~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~21_combout\,
	datab => \B[5]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~242_combout\,
	datad => \SRL64_A|Mux4|Mux63~73_combout\,
	combout => \SRL64_A|Mux4|Mux63~243_combout\);

-- Location: LCCOMB_X50_Y41_N30
\Selector481~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector481~3_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~239_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRL64_A|Mux4|Mux63~260_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~260_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~239_combout\,
	combout => \Selector481~3_combout\);

-- Location: LCCOMB_X53_Y39_N26
\Selector481~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector481~4_combout\ = (\B[0]~input_o\ & ((\Selector481~3_combout\ & (\SRL64_A|Mux4|Mux63~261_combout\)) # (!\Selector481~3_combout\ & ((\SRL64_A|Mux4|Mux63~243_combout\))))) # (!\B[0]~input_o\ & (((\Selector481~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~261_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~243_combout\,
	datad => \Selector481~3_combout\,
	combout => \Selector481~4_combout\);

-- Location: LCCOMB_X48_Y41_N14
\Selector65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~1_combout\ = (\ShiftFN[0]~input_o\ & (((\SRA64_A|Mux8|Mux1~0_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\SLL64_A|Mux8|Mux63~0_combout\ & (\Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~0_combout\,
	datab => \Selector1~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64_A|Mux8|Mux1~0_combout\,
	combout => \Selector65~1_combout\);

-- Location: LCCOMB_X48_Y41_N20
\Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\B[1]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\ShiftFN[0]~input_o\) # (!\SLL64_A|Mux8|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~0_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Selector65~0_combout\);

-- Location: LCCOMB_X48_Y41_N24
\Selector65~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~2_combout\ = (\Selector0~0_combout\ & ((\Selector65~0_combout\) # ((\Selector65~1_combout\ & \Selector64~0_combout\)))) # (!\Selector0~0_combout\ & (\Selector65~1_combout\ & (\Selector64~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector65~1_combout\,
	datac => \Selector64~0_combout\,
	datad => \Selector65~0_combout\,
	combout => \Selector65~2_combout\);

-- Location: LCCOMB_X50_Y43_N24
\Selector481~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector481~5_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector481~0_combout\ & (\Selector481~4_combout\)) # (!\Selector481~0_combout\ & ((\Selector65~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~4_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector481~0_combout\,
	datad => \Selector65~2_combout\,
	combout => \Selector481~5_combout\);

-- Location: LCCOMB_X50_Y43_N10
\Selector481~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector481~8_combout\ = (\Selector481~5_combout\) # ((\Selector481~7_combout\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector481~7_combout\,
	datab => \ShiftFN[1]~input_o\,
	datad => \Selector481~5_combout\,
	combout => \Selector481~8_combout\);

-- Location: IOIBUF_X29_Y0_N22
\C[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(63),
	o => \C[63]~input_o\);

-- Location: LCCOMB_X53_Y36_N10
\Selector128~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector128~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector16~0_combout\)) # (!\B[4]~input_o\ & ((\Selector0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \B[5]~input_o\,
	datac => \Selector0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Selector128~0_combout\);

-- Location: LCCOMB_X53_Y38_N24
\Selector128~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector128~1_combout\ = (!\B[3]~input_o\ & ((\Selector128~0_combout\) # ((\B[5]~input_o\ & \SLL64_A|Mux32|Mux31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector128~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux32|Mux31~12_combout\,
	combout => \Selector128~1_combout\);

-- Location: LCCOMB_X52_Y38_N28
\Selector128~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector128~2_combout\ = (\SLL64_A|Mux4|Mux31~11_combout\ & ((\Selector128~1_combout\) # ((\SLL64_A|Mux32|Mux8~1_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector128~1_combout\,
	datab => \SLL64_A|Mux32|Mux8~1_combout\,
	datac => \SLL64_A|Mux4|Mux31~11_combout\,
	datad => \B[3]~input_o\,
	combout => \Selector128~2_combout\);

-- Location: LCCOMB_X54_Y38_N2
\Selector128~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector128~3_combout\ = (\B[1]~input_o\ & ((\B[2]~input_o\ & ((\SLL64_A|Mux8|Mux34~4_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux8|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux8|Mux2~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux34~4_combout\,
	combout => \Selector128~3_combout\);

-- Location: LCCOMB_X54_Y38_N28
\Selector128~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector128~4_combout\ = (\Selector128~2_combout\) # ((\Selector128~3_combout\) # ((\SLL64_A|Mux4|Mux31~65_combout\ & \SLL64_A|Mux8|Mux32~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector128~2_combout\,
	datab => \SLL64_A|Mux4|Mux31~65_combout\,
	datac => \SLL64_A|Mux8|Mux32~4_combout\,
	datad => \Selector128~3_combout\,
	combout => \Selector128~4_combout\);

-- Location: LCCOMB_X54_Y38_N14
\Selector128~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector128~5_combout\ = (\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & (\SLL64_A|Mux4|Mux31~66_combout\)) # (!\B[0]~input_o\ & ((\Selector128~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SLL64_A|Mux4|Mux31~66_combout\,
	datad => \Selector128~4_combout\,
	combout => \Selector128~5_combout\);

-- Location: LCCOMB_X55_Y40_N26
\Selector128~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector128~6_combout\ = (\Selector128~5_combout\) # ((\C[63]~input_o\ & !\ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[63]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Selector128~5_combout\,
	combout => \Selector128~6_combout\);

-- Location: LCCOMB_X48_Y41_N18
\Selector64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~1_combout\ = (\Selector0~0_combout\ & ((\ShiftFN[0]~input_o\) # ((\Selector64~0_combout\ & !\SLL64_A|Mux8|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Selector64~0_combout\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \Selector64~1_combout\);

-- Location: LCCOMB_X53_Y40_N28
\Selector160~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector160~0_combout\ = (\B[0]~input_o\ & ((\SLL64_A|Mux8|Mux35~3_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\SLL64_A|Mux8|Mux34~2_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux35~3_combout\,
	datab => \SLL64_A|Mux8|Mux34~2_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Selector160~0_combout\);

-- Location: LCCOMB_X53_Y40_N22
\Selector160~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector160~1_combout\ = (\Selector160~0_combout\ & (((\SLL64_A|Mux8|Mux33~2_combout\) # (\B[1]~input_o\)))) # (!\Selector160~0_combout\ & (\SLL64_A|Mux8|Mux32~2_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux32~2_combout\,
	datab => \Selector160~0_combout\,
	datac => \SLL64_A|Mux8|Mux33~2_combout\,
	datad => \B[1]~input_o\,
	combout => \Selector160~1_combout\);

-- Location: IOIBUF_X115_Y44_N8
\C[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(31),
	o => \C[31]~input_o\);

-- Location: LCCOMB_X55_Y40_N16
\Selector160~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector160~2_combout\ = (\ShiftFN[0]~input_o\ & (!\B[5]~input_o\ & (\Selector160~1_combout\))) # (!\ShiftFN[0]~input_o\ & (((\C[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Selector160~1_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \C[31]~input_o\,
	combout => \Selector160~2_combout\);

-- Location: LCCOMB_X55_Y40_N28
\Selector480~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector480~1_combout\ = (\bitShift~0_combout\ & (((\ShiftFN[1]~input_o\)))) # (!\bitShift~0_combout\ & ((\ShiftFN[1]~input_o\ & (\Selector64~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector160~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitShift~0_combout\,
	datab => \Selector64~1_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector160~2_combout\,
	combout => \Selector480~1_combout\);

-- Location: LCCOMB_X52_Y39_N14
\Selector96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\B[0]~input_o\ & ((\SRL64_A|Mux4|Mux63~246_combout\) # ((\SRL64_A|Mux4|Mux63~54_combout\ & \ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~54_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~246_combout\,
	combout => \Selector96~0_combout\);

-- Location: LCCOMB_X53_Y39_N4
\Selector96~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector96~1_combout\ = (\B[0]~input_o\ & (((\Selector96~0_combout\)))) # (!\B[0]~input_o\ & ((\Selector96~0_combout\ & (\SRL64_A|Mux4|Mux63~261_combout\)) # (!\Selector96~0_combout\ & ((\SRL64_A|Mux4|Mux63~243_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~261_combout\,
	datab => \SRL64_A|Mux4|Mux63~243_combout\,
	datac => \B[0]~input_o\,
	datad => \Selector96~0_combout\,
	combout => \Selector96~1_combout\);

-- Location: LCCOMB_X55_Y40_N22
\Selector480~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector480~2_combout\ = (\Selector480~1_combout\ & (((\Selector96~1_combout\) # (!\bitShift~0_combout\)))) # (!\Selector480~1_combout\ & (\Selector128~6_combout\ & ((\bitShift~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector128~6_combout\,
	datab => \Selector480~1_combout\,
	datac => \Selector96~1_combout\,
	datad => \bitShift~0_combout\,
	combout => \Selector480~2_combout\);

-- Location: LCCOMB_X50_Y43_N4
\Selector480~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector480~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Selector96~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector160~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector96~1_combout\,
	datab => \Selector160~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector480~0_combout\);

-- Location: LCCOMB_X50_Y43_N14
\Selector480~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector480~3_combout\ = (\Selector480~0_combout\) # ((\ExtWord~input_o\ & \Selector480~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Selector480~2_combout\,
	datac => \Selector480~0_combout\,
	combout => \Selector480~3_combout\);

-- Location: LCCOMB_X55_Y40_N8
\Selector479~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector479~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Selector95~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector159~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector95~1_combout\,
	datad => \Selector159~3_combout\,
	combout => \Selector479~0_combout\);

-- Location: LCCOMB_X55_Y40_N18
\Selector479~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector479~1_combout\ = (\Selector479~0_combout\) # ((\Selector480~2_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector480~2_combout\,
	datab => \Selector479~0_combout\,
	datac => \ExtWord~input_o\,
	combout => \Selector479~1_combout\);

-- Location: LCCOMB_X58_Y39_N10
\Selector478~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector478~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Selector94~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector158~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Selector94~1_combout\,
	datad => \Selector158~2_combout\,
	combout => \Selector478~0_combout\);

-- Location: LCCOMB_X58_Y39_N20
\Selector478~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector478~1_combout\ = (\Selector478~0_combout\) # ((\Selector480~2_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector480~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector478~0_combout\,
	combout => \Selector478~1_combout\);

-- Location: LCCOMB_X58_Y39_N30
\Selector477~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector477~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Selector93~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector157~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector157~5_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector93~1_combout\,
	combout => \Selector477~0_combout\);

-- Location: LCCOMB_X58_Y39_N0
\Selector477~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector477~1_combout\ = (\Selector477~0_combout\) # ((\Selector480~2_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector477~0_combout\,
	datab => \Selector480~2_combout\,
	datac => \ExtWord~input_o\,
	combout => \Selector477~1_combout\);

-- Location: LCCOMB_X58_Y42_N0
\Selector476~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector476~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Selector92~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector156~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Selector156~2_combout\,
	datad => \Selector92~1_combout\,
	combout => \Selector476~0_combout\);

-- Location: LCCOMB_X58_Y42_N18
\Selector476~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector476~1_combout\ = (\Selector476~0_combout\) # ((\Selector480~2_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector480~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector476~0_combout\,
	combout => \Selector476~1_combout\);

-- Location: LCCOMB_X58_Y42_N20
\Selector475~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector475~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Selector91~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector155~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector91~1_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector155~2_combout\,
	combout => \Selector475~0_combout\);

-- Location: LCCOMB_X58_Y42_N14
\Selector475~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector475~1_combout\ = (\Selector475~0_combout\) # ((\Selector480~2_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector480~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector475~0_combout\,
	combout => \Selector475~1_combout\);

-- Location: LCCOMB_X58_Y42_N16
\Selector474~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector474~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Selector90~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector154~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector90~1_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector154~2_combout\,
	combout => \Selector474~0_combout\);

-- Location: LCCOMB_X58_Y42_N10
\Selector474~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector474~1_combout\ = (\Selector474~0_combout\) # ((\Selector480~2_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector480~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector474~0_combout\,
	combout => \Selector474~1_combout\);

-- Location: LCCOMB_X58_Y42_N28
\Selector473~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector473~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Selector89~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector153~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Selector153~2_combout\,
	datad => \Selector89~1_combout\,
	combout => \Selector473~0_combout\);

-- Location: LCCOMB_X58_Y42_N30
\Selector473~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector473~1_combout\ = (\Selector473~0_combout\) # ((\Selector480~2_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector480~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector473~0_combout\,
	combout => \Selector473~1_combout\);

-- Location: LCCOMB_X50_Y43_N16
\Selector472~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector472~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Selector88~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector152~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector152~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Selector88~1_combout\,
	combout => \Selector472~0_combout\);

-- Location: LCCOMB_X50_Y43_N26
\Selector472~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector472~1_combout\ = (\Selector472~0_combout\) # ((\Selector480~2_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector480~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector472~0_combout\,
	combout => \Selector472~1_combout\);

-- Location: LCCOMB_X50_Y43_N20
\Selector471~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector471~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Selector87~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector151~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Selector87~1_combout\,
	combout => \Selector471~0_combout\);

-- Location: LCCOMB_X50_Y43_N6
\Selector471~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector471~1_combout\ = (\Selector471~0_combout\) # ((\Selector480~2_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector480~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector471~0_combout\,
	combout => \Selector471~1_combout\);

-- Location: LCCOMB_X55_Y39_N24
\Selector470~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector470~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Selector86~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector150~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector150~2_combout\,
	datac => \Selector86~1_combout\,
	datad => \ExtWord~input_o\,
	combout => \Selector470~0_combout\);

-- Location: LCCOMB_X55_Y39_N18
\Selector470~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector470~1_combout\ = (\Selector470~0_combout\) # ((\ExtWord~input_o\ & \Selector480~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Selector480~2_combout\,
	datad => \Selector470~0_combout\,
	combout => \Selector470~1_combout\);

-- Location: LCCOMB_X55_Y39_N20
\Selector469~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector469~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Selector85~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector149~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector149~2_combout\,
	datab => \Selector85~1_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Selector469~0_combout\);

-- Location: LCCOMB_X55_Y39_N6
\Selector469~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector469~1_combout\ = (\Selector469~0_combout\) # ((\ExtWord~input_o\ & \Selector480~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Selector480~2_combout\,
	datad => \Selector469~0_combout\,
	combout => \Selector469~1_combout\);

-- Location: LCCOMB_X48_Y37_N10
\Selector468~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector468~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Selector84~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector148~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector148~2_combout\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector84~1_combout\,
	combout => \Selector468~0_combout\);

-- Location: LCCOMB_X48_Y37_N28
\Selector468~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector468~1_combout\ = (\Selector468~0_combout\) # ((\ExtWord~input_o\ & \Selector480~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Selector480~2_combout\,
	datad => \Selector468~0_combout\,
	combout => \Selector468~1_combout\);

-- Location: LCCOMB_X56_Y37_N14
\Selector467~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector467~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Selector83~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector147~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector147~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector83~1_combout\,
	datad => \ExtWord~input_o\,
	combout => \Selector467~0_combout\);

-- Location: LCCOMB_X56_Y37_N16
\Selector467~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector467~1_combout\ = (\Selector467~0_combout\) # ((\Selector480~2_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector480~2_combout\,
	datab => \ExtWord~input_o\,
	datac => \Selector467~0_combout\,
	combout => \Selector467~1_combout\);

-- Location: LCCOMB_X56_Y37_N10
\Selector466~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector466~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Selector82~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector146~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector82~1_combout\,
	datad => \Selector146~2_combout\,
	combout => \Selector466~0_combout\);

-- Location: LCCOMB_X56_Y37_N28
\Selector466~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector466~1_combout\ = (\Selector466~0_combout\) # ((\ExtWord~input_o\ & \Selector480~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Selector480~2_combout\,
	datad => \Selector466~0_combout\,
	combout => \Selector466~1_combout\);

-- Location: LCCOMB_X56_Y37_N22
\Selector465~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector465~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Selector81~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector145~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector81~1_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Selector145~2_combout\,
	combout => \Selector465~0_combout\);

-- Location: LCCOMB_X49_Y37_N30
\Selector465~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector465~1_combout\ = (\Selector465~0_combout\) # ((\ExtWord~input_o\ & \Selector480~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector465~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \Selector480~2_combout\,
	combout => \Selector465~1_combout\);

-- Location: LCCOMB_X49_Y37_N24
\Selector464~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector464~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Selector80~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector144~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector80~1_combout\,
	datab => \Selector144~2_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Selector464~0_combout\);

-- Location: LCCOMB_X49_Y37_N2
\Selector464~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector464~1_combout\ = (\Selector464~0_combout\) # ((\ExtWord~input_o\ & \Selector480~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Selector480~2_combout\,
	datad => \Selector464~0_combout\,
	combout => \Selector464~1_combout\);

-- Location: LCCOMB_X49_Y37_N12
\Selector463~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector463~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Selector79~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector143~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Selector143~2_combout\,
	datad => \Selector79~1_combout\,
	combout => \Selector463~0_combout\);

-- Location: LCCOMB_X49_Y37_N14
\Selector463~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector463~1_combout\ = (\Selector463~0_combout\) # ((\ExtWord~input_o\ & \Selector480~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Selector480~2_combout\,
	datad => \Selector463~0_combout\,
	combout => \Selector463~1_combout\);

-- Location: LCCOMB_X47_Y40_N24
\Selector462~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector462~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Selector78~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector142~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Selector78~1_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector142~2_combout\,
	combout => \Selector462~0_combout\);

-- Location: LCCOMB_X47_Y40_N10
\Selector462~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector462~1_combout\ = (\Selector462~0_combout\) # ((\Selector480~2_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector480~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector462~0_combout\,
	combout => \Selector462~1_combout\);

-- Location: LCCOMB_X47_Y40_N20
\Selector461~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector461~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Selector77~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector141~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Selector77~1_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector141~2_combout\,
	combout => \Selector461~0_combout\);

-- Location: LCCOMB_X47_Y40_N30
\Selector461~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector461~1_combout\ = (\Selector461~0_combout\) # ((\Selector480~2_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector480~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector461~0_combout\,
	combout => \Selector461~1_combout\);

-- Location: LCCOMB_X48_Y38_N24
\Selector460~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector460~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Selector76~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector140~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector140~2_combout\,
	datab => \Selector76~1_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Selector460~0_combout\);

-- Location: LCCOMB_X48_Y38_N18
\Selector460~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector460~1_combout\ = (\Selector460~0_combout\) # ((\ExtWord~input_o\ & \Selector480~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Selector480~2_combout\,
	datad => \Selector460~0_combout\,
	combout => \Selector460~1_combout\);

-- Location: LCCOMB_X48_Y38_N28
\Selector459~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector459~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Selector75~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector139~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector75~1_combout\,
	datac => \Selector139~2_combout\,
	datad => \ExtWord~input_o\,
	combout => \Selector459~0_combout\);

-- Location: LCCOMB_X48_Y38_N22
\Selector459~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector459~1_combout\ = (\Selector459~0_combout\) # ((\ExtWord~input_o\ & \Selector480~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Selector480~2_combout\,
	datad => \Selector459~0_combout\,
	combout => \Selector459~1_combout\);

-- Location: LCCOMB_X48_Y42_N0
\Selector458~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector458~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Selector74~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector138~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Selector138~2_combout\,
	datad => \Selector74~1_combout\,
	combout => \Selector458~0_combout\);

-- Location: LCCOMB_X48_Y42_N10
\Selector458~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector458~1_combout\ = (\Selector458~0_combout\) # ((\ExtWord~input_o\ & \Selector480~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Selector480~2_combout\,
	datad => \Selector458~0_combout\,
	combout => \Selector458~1_combout\);

-- Location: LCCOMB_X45_Y44_N30
\Selector457~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector457~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Selector73~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector137~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector137~2_combout\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector73~1_combout\,
	combout => \Selector457~0_combout\);

-- Location: LCCOMB_X45_Y44_N16
\Selector457~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector457~1_combout\ = (\Selector457~0_combout\) # ((\ExtWord~input_o\ & \Selector480~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector457~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \Selector480~2_combout\,
	combout => \Selector457~1_combout\);

-- Location: LCCOMB_X45_Y44_N10
\Selector456~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector456~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Selector72~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector136~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector72~1_combout\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector136~2_combout\,
	combout => \Selector456~0_combout\);

-- Location: LCCOMB_X45_Y44_N4
\Selector456~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector456~1_combout\ = (\Selector456~0_combout\) # ((\ExtWord~input_o\ & \Selector480~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Selector480~2_combout\,
	datad => \Selector456~0_combout\,
	combout => \Selector456~1_combout\);

-- Location: LCCOMB_X45_Y44_N22
\Selector455~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector455~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Selector71~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector135~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector71~1_combout\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector135~2_combout\,
	combout => \Selector455~0_combout\);

-- Location: LCCOMB_X40_Y44_N0
\Selector455~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector455~1_combout\ = (\Selector455~0_combout\) # ((\ExtWord~input_o\ & \Selector480~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Selector480~2_combout\,
	datad => \Selector455~0_combout\,
	combout => \Selector455~1_combout\);

-- Location: LCCOMB_X48_Y42_N12
\Selector454~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector454~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Selector70~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector134~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Selector70~1_combout\,
	datad => \Selector134~2_combout\,
	combout => \Selector454~0_combout\);

-- Location: LCCOMB_X48_Y42_N14
\Selector454~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector454~1_combout\ = (\Selector454~0_combout\) # ((\ExtWord~input_o\ & \Selector480~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Selector480~2_combout\,
	datad => \Selector454~0_combout\,
	combout => \Selector454~1_combout\);

-- Location: LCCOMB_X47_Y41_N0
\Selector453~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector453~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Selector69~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector133~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector69~1_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector133~2_combout\,
	combout => \Selector453~0_combout\);

-- Location: LCCOMB_X47_Y41_N26
\Selector453~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector453~1_combout\ = (\Selector453~0_combout\) # ((\Selector480~2_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector480~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector453~0_combout\,
	combout => \Selector453~1_combout\);

-- Location: LCCOMB_X47_Y41_N12
\Selector452~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector452~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Selector68~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector132~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector68~1_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector132~2_combout\,
	combout => \Selector452~0_combout\);

-- Location: LCCOMB_X47_Y41_N22
\Selector452~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector452~1_combout\ = (\Selector452~0_combout\) # ((\Selector480~2_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector480~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector452~0_combout\,
	combout => \Selector452~1_combout\);

-- Location: LCCOMB_X50_Y43_N0
\Selector451~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector451~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Selector67~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector131~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector131~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Selector67~1_combout\,
	combout => \Selector451~0_combout\);

-- Location: LCCOMB_X50_Y43_N18
\Selector451~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector451~1_combout\ = (\Selector451~0_combout\) # ((\Selector480~2_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector480~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector451~0_combout\,
	combout => \Selector451~1_combout\);

-- Location: LCCOMB_X48_Y41_N28
\Selector450~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector450~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Selector66~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Selector130~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector66~1_combout\,
	datab => \Selector130~2_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Selector450~0_combout\);

-- Location: LCCOMB_X48_Y41_N22
\Selector450~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector450~1_combout\ = (\Selector450~0_combout\) # ((\ExtWord~input_o\ & \Selector480~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \Selector480~2_combout\,
	datad => \Selector450~0_combout\,
	combout => \Selector450~1_combout\);

-- Location: LCCOMB_X50_Y43_N12
\Selector449~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector449~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Selector65~2_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector129~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector129~2_combout\,
	datad => \Selector65~2_combout\,
	combout => \Selector449~0_combout\);

-- Location: LCCOMB_X50_Y43_N22
\Selector449~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector449~1_combout\ = (\Selector449~0_combout\) # ((\Selector480~2_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector480~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector449~0_combout\,
	combout => \Selector449~1_combout\);

-- Location: LCCOMB_X55_Y40_N20
\Selector448~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector448~0_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Selector64~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector128~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector128~6_combout\,
	datad => \Selector64~1_combout\,
	combout => \Selector448~0_combout\);

-- Location: LCCOMB_X55_Y40_N30
\Selector448~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector448~1_combout\ = (\Selector448~0_combout\) # ((\Selector480~2_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector480~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector448~0_combout\,
	combout => \Selector448~1_combout\);

-- Location: IOIBUF_X85_Y0_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X100_Y0_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X100_Y0_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X0_Y68_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X111_Y0_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X115_Y63_N8
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X115_Y24_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X1_Y73_N1
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X98_Y0_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X0_Y67_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X20_Y73_N8
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X1_Y73_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X98_Y73_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X96_Y0_N8
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X115_Y32_N1
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X113_Y73_N8
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X100_Y73_N15
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X115_Y47_N22
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X115_Y30_N8
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X107_Y73_N1
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X1_Y73_N22
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X115_Y24_N8
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X102_Y0_N15
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X115_Y16_N1
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X83_Y0_N22
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;

ww_Y(9) <= \Y[9]~output_o\;

ww_Y(10) <= \Y[10]~output_o\;

ww_Y(11) <= \Y[11]~output_o\;

ww_Y(12) <= \Y[12]~output_o\;

ww_Y(13) <= \Y[13]~output_o\;

ww_Y(14) <= \Y[14]~output_o\;

ww_Y(15) <= \Y[15]~output_o\;

ww_Y(16) <= \Y[16]~output_o\;

ww_Y(17) <= \Y[17]~output_o\;

ww_Y(18) <= \Y[18]~output_o\;

ww_Y(19) <= \Y[19]~output_o\;

ww_Y(20) <= \Y[20]~output_o\;

ww_Y(21) <= \Y[21]~output_o\;

ww_Y(22) <= \Y[22]~output_o\;

ww_Y(23) <= \Y[23]~output_o\;

ww_Y(24) <= \Y[24]~output_o\;

ww_Y(25) <= \Y[25]~output_o\;

ww_Y(26) <= \Y[26]~output_o\;

ww_Y(27) <= \Y[27]~output_o\;

ww_Y(28) <= \Y[28]~output_o\;

ww_Y(29) <= \Y[29]~output_o\;

ww_Y(30) <= \Y[30]~output_o\;

ww_Y(31) <= \Y[31]~output_o\;

ww_Y(32) <= \Y[32]~output_o\;

ww_Y(33) <= \Y[33]~output_o\;

ww_Y(34) <= \Y[34]~output_o\;

ww_Y(35) <= \Y[35]~output_o\;

ww_Y(36) <= \Y[36]~output_o\;

ww_Y(37) <= \Y[37]~output_o\;

ww_Y(38) <= \Y[38]~output_o\;

ww_Y(39) <= \Y[39]~output_o\;

ww_Y(40) <= \Y[40]~output_o\;

ww_Y(41) <= \Y[41]~output_o\;

ww_Y(42) <= \Y[42]~output_o\;

ww_Y(43) <= \Y[43]~output_o\;

ww_Y(44) <= \Y[44]~output_o\;

ww_Y(45) <= \Y[45]~output_o\;

ww_Y(46) <= \Y[46]~output_o\;

ww_Y(47) <= \Y[47]~output_o\;

ww_Y(48) <= \Y[48]~output_o\;

ww_Y(49) <= \Y[49]~output_o\;

ww_Y(50) <= \Y[50]~output_o\;

ww_Y(51) <= \Y[51]~output_o\;

ww_Y(52) <= \Y[52]~output_o\;

ww_Y(53) <= \Y[53]~output_o\;

ww_Y(54) <= \Y[54]~output_o\;

ww_Y(55) <= \Y[55]~output_o\;

ww_Y(56) <= \Y[56]~output_o\;

ww_Y(57) <= \Y[57]~output_o\;

ww_Y(58) <= \Y[58]~output_o\;

ww_Y(59) <= \Y[59]~output_o\;

ww_Y(60) <= \Y[60]~output_o\;

ww_Y(61) <= \Y[61]~output_o\;

ww_Y(62) <= \Y[62]~output_o\;

ww_Y(63) <= \Y[63]~output_o\;
END structure;


