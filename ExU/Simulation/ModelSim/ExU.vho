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

-- DATE "04/12/2020 20:22:36"

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
	Y : BUFFER std_logic_vector(63 DOWNTO 0)
	);
END ShiftUnit;

-- Design Ports Information
-- B[6]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[8]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[9]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[10]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[11]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[12]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[13]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[14]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[15]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[16]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[17]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[18]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[19]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[20]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[21]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[22]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[23]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[24]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[25]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[26]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[27]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[28]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[29]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[30]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[31]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[32]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[33]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[34]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[35]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[36]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[37]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[38]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[39]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[40]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[41]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[42]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[43]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[44]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[45]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[46]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[47]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[48]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[49]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[50]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[51]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[52]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[53]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[54]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[55]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[56]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[57]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[58]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[59]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[60]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[61]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[62]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[63]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux63~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux16~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux4|Mux1~7_combout\ : std_logic;
SIGNAL \Selector383~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \tempA~0_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~2_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~1_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~1_combout\ : std_logic;
SIGNAL \Selector383~1_combout\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux63~1_combout\ : std_logic;
SIGNAL \Selector382~0_combout\ : std_logic;
SIGNAL \Selector382~1_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~3_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux62~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux62~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux62~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux62~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux62~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux62~1_combout\ : std_logic;
SIGNAL \Selector382~2_combout\ : std_logic;
SIGNAL \C[2]~input_o\ : std_logic;
SIGNAL \Selector381~0_combout\ : std_logic;
SIGNAL \Selector381~1_combout\ : std_logic;
SIGNAL \Selector381~2_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux61~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux61~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux61~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux61~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux61~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux61~1_combout\ : std_logic;
SIGNAL \Selector381~3_combout\ : std_logic;
SIGNAL \C[3]~input_o\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux60~4_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux60~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux60~1_combout\ : std_logic;
SIGNAL \Selector380~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux60~0_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux60~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux60~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux60~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux60~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux60~1_combout\ : std_logic;
SIGNAL \Selector380~1_combout\ : std_logic;
SIGNAL \Selector371~2_combout\ : std_logic;
SIGNAL \Selector371~3_combout\ : std_logic;
SIGNAL \Selector371~20_combout\ : std_logic;
SIGNAL \Selector379~7_combout\ : std_logic;
SIGNAL \Selector379~8_combout\ : std_logic;
SIGNAL \Selector379~9_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector379~1_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~6_combout\ : std_logic;
SIGNAL \Selector379~2_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector379~3_combout\ : std_logic;
SIGNAL \Selector379~4_combout\ : std_logic;
SIGNAL \Selector379~5_combout\ : std_logic;
SIGNAL \Selector379~6_combout\ : std_logic;
SIGNAL \Selector379~0_combout\ : std_logic;
SIGNAL \Selector379~10_combout\ : std_logic;
SIGNAL \C[4]~input_o\ : std_logic;
SIGNAL \Selector379~11_combout\ : std_logic;
SIGNAL \Selector379~12_combout\ : std_logic;
SIGNAL \C[5]~input_o\ : std_logic;
SIGNAL \Selector378~4_combout\ : std_logic;
SIGNAL \Selector378~5_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~7_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector378~0_combout\ : std_logic;
SIGNAL \Selector378~1_combout\ : std_logic;
SIGNAL \Selector378~2_combout\ : std_logic;
SIGNAL \Selector378~3_combout\ : std_logic;
SIGNAL \Selector378~6_combout\ : std_logic;
SIGNAL \Selector378~7_combout\ : std_logic;
SIGNAL \Selector378~8_combout\ : std_logic;
SIGNAL \Selector377~4_combout\ : std_logic;
SIGNAL \Selector377~5_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~8_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Selector377~0_combout\ : std_logic;
SIGNAL \Selector377~1_combout\ : std_logic;
SIGNAL \Selector377~2_combout\ : std_logic;
SIGNAL \Selector377~3_combout\ : std_logic;
SIGNAL \Selector377~6_combout\ : std_logic;
SIGNAL \C[6]~input_o\ : std_logic;
SIGNAL \Selector377~7_combout\ : std_logic;
SIGNAL \Selector377~8_combout\ : std_logic;
SIGNAL \C[7]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Selector376~0_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~9_combout\ : std_logic;
SIGNAL \Selector376~1_combout\ : std_logic;
SIGNAL \Selector376~2_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector376~3_combout\ : std_logic;
SIGNAL \Selector376~4_combout\ : std_logic;
SIGNAL \Selector376~5_combout\ : std_logic;
SIGNAL \Selector376~6_combout\ : std_logic;
SIGNAL \Selector376~7_combout\ : std_logic;
SIGNAL \Selector376~8_combout\ : std_logic;
SIGNAL \Selector375~4_combout\ : std_logic;
SIGNAL \C[8]~input_o\ : std_logic;
SIGNAL \Selector375~10_combout\ : std_logic;
SIGNAL \Selector375~7_combout\ : std_logic;
SIGNAL \Selector375~8_combout\ : std_logic;
SIGNAL \Selector375~6_combout\ : std_logic;
SIGNAL \Selector375~5_combout\ : std_logic;
SIGNAL \Selector375~9_combout\ : std_logic;
SIGNAL \Selector375~11_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~10_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector375~0_combout\ : std_logic;
SIGNAL \Selector375~1_combout\ : std_logic;
SIGNAL \Selector375~2_combout\ : std_logic;
SIGNAL \Selector375~3_combout\ : std_logic;
SIGNAL \Selector375~12_combout\ : std_logic;
SIGNAL \Selector375~13_combout\ : std_logic;
SIGNAL \Selector375~14_combout\ : std_logic;
SIGNAL \Selector375~15_combout\ : std_logic;
SIGNAL \C[9]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~11_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector374~3_combout\ : std_logic;
SIGNAL \Selector374~4_combout\ : std_logic;
SIGNAL \Selector374~5_combout\ : std_logic;
SIGNAL \Selector374~6_combout\ : std_logic;
SIGNAL \Selector374~7_combout\ : std_logic;
SIGNAL \Selector374~0_combout\ : std_logic;
SIGNAL \Selector374~1_combout\ : std_logic;
SIGNAL \Selector374~2_combout\ : std_logic;
SIGNAL \Selector374~8_combout\ : std_logic;
SIGNAL \Selector374~9_combout\ : std_logic;
SIGNAL \Selector374~10_combout\ : std_logic;
SIGNAL \Selector373~4_combout\ : std_logic;
SIGNAL \Selector373~5_combout\ : std_logic;
SIGNAL \Selector373~6_combout\ : std_logic;
SIGNAL \C[10]~input_o\ : std_logic;
SIGNAL \Selector373~7_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~12_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Selector373~0_combout\ : std_logic;
SIGNAL \Selector373~1_combout\ : std_logic;
SIGNAL \Selector373~2_combout\ : std_logic;
SIGNAL \Selector373~3_combout\ : std_logic;
SIGNAL \Selector373~8_combout\ : std_logic;
SIGNAL \Selector373~9_combout\ : std_logic;
SIGNAL \Selector373~10_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~13_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector372~3_combout\ : std_logic;
SIGNAL \Selector372~4_combout\ : std_logic;
SIGNAL \Selector372~5_combout\ : std_logic;
SIGNAL \Selector372~6_combout\ : std_logic;
SIGNAL \C[11]~input_o\ : std_logic;
SIGNAL \Selector372~7_combout\ : std_logic;
SIGNAL \Selector372~0_combout\ : std_logic;
SIGNAL \Selector372~1_combout\ : std_logic;
SIGNAL \Selector372~2_combout\ : std_logic;
SIGNAL \Selector372~8_combout\ : std_logic;
SIGNAL \Selector372~9_combout\ : std_logic;
SIGNAL \Selector372~10_combout\ : std_logic;
SIGNAL \Selector379~13_combout\ : std_logic;
SIGNAL \Selector329~0_combout\ : std_logic;
SIGNAL \Selector371~8_combout\ : std_logic;
SIGNAL \Selector371~10_combout\ : std_logic;
SIGNAL \C[12]~input_o\ : std_logic;
SIGNAL \Selector371~11_combout\ : std_logic;
SIGNAL \Selector371~12_combout\ : std_logic;
SIGNAL \Selector371~13_combout\ : std_logic;
SIGNAL \Selector371~14_combout\ : std_logic;
SIGNAL \Selector375~16_combout\ : std_logic;
SIGNAL \Selector371~15_combout\ : std_logic;
SIGNAL \Selector371~16_combout\ : std_logic;
SIGNAL \Selector371~17_combout\ : std_logic;
SIGNAL \Selector371~9_combout\ : std_logic;
SIGNAL \Selector371~18_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~14_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector371~4_combout\ : std_logic;
SIGNAL \Selector371~5_combout\ : std_logic;
SIGNAL \Selector371~6_combout\ : std_logic;
SIGNAL \Selector371~7_combout\ : std_logic;
SIGNAL \Selector371~19_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~15_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector370~0_combout\ : std_logic;
SIGNAL \Selector370~1_combout\ : std_logic;
SIGNAL \Selector370~2_combout\ : std_logic;
SIGNAL \Selector370~3_combout\ : std_logic;
SIGNAL \C[13]~input_o\ : std_logic;
SIGNAL \Selector370~4_combout\ : std_logic;
SIGNAL \Selector370~5_combout\ : std_logic;
SIGNAL \Selector370~6_combout\ : std_logic;
SIGNAL \Selector370~7_combout\ : std_logic;
SIGNAL \Selector370~8_combout\ : std_logic;
SIGNAL \Selector370~9_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~16_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector369~0_combout\ : std_logic;
SIGNAL \Selector369~1_combout\ : std_logic;
SIGNAL \Selector369~2_combout\ : std_logic;
SIGNAL \Selector369~3_combout\ : std_logic;
SIGNAL \C[14]~input_o\ : std_logic;
SIGNAL \Selector369~4_combout\ : std_logic;
SIGNAL \Selector369~5_combout\ : std_logic;
SIGNAL \Selector369~6_combout\ : std_logic;
SIGNAL \Selector369~7_combout\ : std_logic;
SIGNAL \Selector369~8_combout\ : std_logic;
SIGNAL \Selector369~9_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~17_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector368~0_combout\ : std_logic;
SIGNAL \Selector368~1_combout\ : std_logic;
SIGNAL \Selector368~2_combout\ : std_logic;
SIGNAL \Selector368~3_combout\ : std_logic;
SIGNAL \Selector368~4_combout\ : std_logic;
SIGNAL \Selector368~5_combout\ : std_logic;
SIGNAL \C[15]~input_o\ : std_logic;
SIGNAL \Selector368~6_combout\ : std_logic;
SIGNAL \Selector368~7_combout\ : std_logic;
SIGNAL \Selector368~8_combout\ : std_logic;
SIGNAL \Selector368~9_combout\ : std_logic;
SIGNAL \Selector361~7_combout\ : std_logic;
SIGNAL \Selector361~9_combout\ : std_logic;
SIGNAL \Selector361~8_combout\ : std_logic;
SIGNAL \Selector367~5_combout\ : std_logic;
SIGNAL \Selector367~6_combout\ : std_logic;
SIGNAL \Selector361~6_combout\ : std_logic;
SIGNAL \Selector367~7_combout\ : std_logic;
SIGNAL \Selector367~8_combout\ : std_logic;
SIGNAL \Selector361~22_combout\ : std_logic;
SIGNAL \Selector361~4_combout\ : std_logic;
SIGNAL \Selector361~5_combout\ : std_logic;
SIGNAL \Selector367~9_combout\ : std_logic;
SIGNAL \Selector367~10_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~18_combout\ : std_logic;
SIGNAL \Selector367~0_combout\ : std_logic;
SIGNAL \Selector367~1_combout\ : std_logic;
SIGNAL \Selector367~2_combout\ : std_logic;
SIGNAL \Selector367~3_combout\ : std_logic;
SIGNAL \C[16]~input_o\ : std_logic;
SIGNAL \Selector367~4_combout\ : std_logic;
SIGNAL \Selector367~11_combout\ : std_logic;
SIGNAL \Selector366~9_combout\ : std_logic;
SIGNAL \Selector366~5_combout\ : std_logic;
SIGNAL \Selector366~6_combout\ : std_logic;
SIGNAL \Selector366~7_combout\ : std_logic;
SIGNAL \Selector366~8_combout\ : std_logic;
SIGNAL \Selector366~10_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~19_combout\ : std_logic;
SIGNAL \Selector366~0_combout\ : std_logic;
SIGNAL \Selector366~1_combout\ : std_logic;
SIGNAL \Selector366~2_combout\ : std_logic;
SIGNAL \Selector366~3_combout\ : std_logic;
SIGNAL \C[17]~input_o\ : std_logic;
SIGNAL \Selector366~4_combout\ : std_logic;
SIGNAL \Selector366~11_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~20_combout\ : std_logic;
SIGNAL \Selector365~0_combout\ : std_logic;
SIGNAL \Selector365~1_combout\ : std_logic;
SIGNAL \Selector365~2_combout\ : std_logic;
SIGNAL \Selector365~3_combout\ : std_logic;
SIGNAL \C[18]~input_o\ : std_logic;
SIGNAL \Selector365~4_combout\ : std_logic;
SIGNAL \Selector365~5_combout\ : std_logic;
SIGNAL \Selector365~6_combout\ : std_logic;
SIGNAL \Selector365~7_combout\ : std_logic;
SIGNAL \Selector365~8_combout\ : std_logic;
SIGNAL \Selector365~9_combout\ : std_logic;
SIGNAL \Selector365~10_combout\ : std_logic;
SIGNAL \Selector365~11_combout\ : std_logic;
SIGNAL \Selector364~5_combout\ : std_logic;
SIGNAL \Selector364~6_combout\ : std_logic;
SIGNAL \Selector364~7_combout\ : std_logic;
SIGNAL \Selector364~8_combout\ : std_logic;
SIGNAL \Selector364~9_combout\ : std_logic;
SIGNAL \Selector364~10_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~21_combout\ : std_logic;
SIGNAL \Selector364~0_combout\ : std_logic;
SIGNAL \Selector364~1_combout\ : std_logic;
SIGNAL \Selector364~2_combout\ : std_logic;
SIGNAL \Selector364~3_combout\ : std_logic;
SIGNAL \C[19]~input_o\ : std_logic;
SIGNAL \Selector364~4_combout\ : std_logic;
SIGNAL \Selector364~11_combout\ : std_logic;
SIGNAL \Selector363~5_combout\ : std_logic;
SIGNAL \Selector363~6_combout\ : std_logic;
SIGNAL \Selector363~7_combout\ : std_logic;
SIGNAL \Selector363~8_combout\ : std_logic;
SIGNAL \Selector363~9_combout\ : std_logic;
SIGNAL \Selector363~10_combout\ : std_logic;
SIGNAL \C[20]~input_o\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~22_combout\ : std_logic;
SIGNAL \Selector363~0_combout\ : std_logic;
SIGNAL \Selector363~1_combout\ : std_logic;
SIGNAL \Selector363~2_combout\ : std_logic;
SIGNAL \Selector363~3_combout\ : std_logic;
SIGNAL \Selector363~4_combout\ : std_logic;
SIGNAL \Selector363~11_combout\ : std_logic;
SIGNAL \Selector362~9_combout\ : std_logic;
SIGNAL \Selector362~5_combout\ : std_logic;
SIGNAL \Selector362~6_combout\ : std_logic;
SIGNAL \Selector362~7_combout\ : std_logic;
SIGNAL \Selector362~8_combout\ : std_logic;
SIGNAL \Selector362~10_combout\ : std_logic;
SIGNAL \C[21]~input_o\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~23_combout\ : std_logic;
SIGNAL \Selector362~0_combout\ : std_logic;
SIGNAL \Selector362~1_combout\ : std_logic;
SIGNAL \Selector362~2_combout\ : std_logic;
SIGNAL \Selector362~3_combout\ : std_logic;
SIGNAL \Selector362~4_combout\ : std_logic;
SIGNAL \Selector362~11_combout\ : std_logic;
SIGNAL \C[22]~input_o\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~24_combout\ : std_logic;
SIGNAL \Selector361~10_combout\ : std_logic;
SIGNAL \Selector361~11_combout\ : std_logic;
SIGNAL \Selector361~12_combout\ : std_logic;
SIGNAL \Selector361~13_combout\ : std_logic;
SIGNAL \Selector361~14_combout\ : std_logic;
SIGNAL \Selector361~15_combout\ : std_logic;
SIGNAL \Selector361~16_combout\ : std_logic;
SIGNAL \Selector361~17_combout\ : std_logic;
SIGNAL \Selector361~18_combout\ : std_logic;
SIGNAL \Selector361~19_combout\ : std_logic;
SIGNAL \Selector361~20_combout\ : std_logic;
SIGNAL \Selector361~21_combout\ : std_logic;
SIGNAL \Selector360~5_combout\ : std_logic;
SIGNAL \Selector360~6_combout\ : std_logic;
SIGNAL \Selector360~7_combout\ : std_logic;
SIGNAL \Selector360~8_combout\ : std_logic;
SIGNAL \Selector360~9_combout\ : std_logic;
SIGNAL \Selector360~10_combout\ : std_logic;
SIGNAL \C[23]~input_o\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~25_combout\ : std_logic;
SIGNAL \Selector360~0_combout\ : std_logic;
SIGNAL \Selector360~1_combout\ : std_logic;
SIGNAL \Selector360~2_combout\ : std_logic;
SIGNAL \Selector360~3_combout\ : std_logic;
SIGNAL \Selector360~4_combout\ : std_logic;
SIGNAL \Selector360~11_combout\ : std_logic;
SIGNAL \Selector359~5_combout\ : std_logic;
SIGNAL \Selector359~6_combout\ : std_logic;
SIGNAL \Selector359~7_combout\ : std_logic;
SIGNAL \Selector359~8_combout\ : std_logic;
SIGNAL \Selector359~9_combout\ : std_logic;
SIGNAL \Selector359~10_combout\ : std_logic;
SIGNAL \C[24]~input_o\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~26_combout\ : std_logic;
SIGNAL \Selector359~0_combout\ : std_logic;
SIGNAL \Selector359~1_combout\ : std_logic;
SIGNAL \Selector359~2_combout\ : std_logic;
SIGNAL \Selector359~3_combout\ : std_logic;
SIGNAL \Selector359~4_combout\ : std_logic;
SIGNAL \Selector359~11_combout\ : std_logic;
SIGNAL \C[25]~input_o\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~27_combout\ : std_logic;
SIGNAL \Selector358~0_combout\ : std_logic;
SIGNAL \Selector358~1_combout\ : std_logic;
SIGNAL \Selector358~2_combout\ : std_logic;
SIGNAL \Selector358~3_combout\ : std_logic;
SIGNAL \Selector358~4_combout\ : std_logic;
SIGNAL \Selector358~9_combout\ : std_logic;
SIGNAL \Selector358~5_combout\ : std_logic;
SIGNAL \Selector358~6_combout\ : std_logic;
SIGNAL \Selector358~7_combout\ : std_logic;
SIGNAL \Selector358~8_combout\ : std_logic;
SIGNAL \Selector358~10_combout\ : std_logic;
SIGNAL \Selector358~11_combout\ : std_logic;
SIGNAL \C[26]~input_o\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~28_combout\ : std_logic;
SIGNAL \Selector357~0_combout\ : std_logic;
SIGNAL \Selector357~1_combout\ : std_logic;
SIGNAL \Selector357~2_combout\ : std_logic;
SIGNAL \Selector357~3_combout\ : std_logic;
SIGNAL \Selector357~4_combout\ : std_logic;
SIGNAL \Selector357~5_combout\ : std_logic;
SIGNAL \Selector357~6_combout\ : std_logic;
SIGNAL \Selector357~7_combout\ : std_logic;
SIGNAL \Selector357~8_combout\ : std_logic;
SIGNAL \Selector357~9_combout\ : std_logic;
SIGNAL \Selector357~10_combout\ : std_logic;
SIGNAL \Selector357~11_combout\ : std_logic;
SIGNAL \C[27]~input_o\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~29_combout\ : std_logic;
SIGNAL \Selector356~0_combout\ : std_logic;
SIGNAL \Selector356~1_combout\ : std_logic;
SIGNAL \Selector356~2_combout\ : std_logic;
SIGNAL \Selector356~3_combout\ : std_logic;
SIGNAL \Selector356~4_combout\ : std_logic;
SIGNAL \Selector356~9_combout\ : std_logic;
SIGNAL \Selector356~5_combout\ : std_logic;
SIGNAL \Selector356~6_combout\ : std_logic;
SIGNAL \Selector356~7_combout\ : std_logic;
SIGNAL \Selector356~8_combout\ : std_logic;
SIGNAL \Selector356~10_combout\ : std_logic;
SIGNAL \Selector356~11_combout\ : std_logic;
SIGNAL \Selector355~5_combout\ : std_logic;
SIGNAL \Selector355~6_combout\ : std_logic;
SIGNAL \Selector355~7_combout\ : std_logic;
SIGNAL \Selector355~8_combout\ : std_logic;
SIGNAL \Selector355~9_combout\ : std_logic;
SIGNAL \Selector355~10_combout\ : std_logic;
SIGNAL \C[28]~input_o\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~30_combout\ : std_logic;
SIGNAL \Selector355~0_combout\ : std_logic;
SIGNAL \Selector355~1_combout\ : std_logic;
SIGNAL \Selector355~2_combout\ : std_logic;
SIGNAL \Selector355~3_combout\ : std_logic;
SIGNAL \Selector355~4_combout\ : std_logic;
SIGNAL \Selector355~11_combout\ : std_logic;
SIGNAL \C[29]~input_o\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~31_combout\ : std_logic;
SIGNAL \Selector354~0_combout\ : std_logic;
SIGNAL \Selector354~1_combout\ : std_logic;
SIGNAL \Selector354~2_combout\ : std_logic;
SIGNAL \Selector354~3_combout\ : std_logic;
SIGNAL \Selector354~4_combout\ : std_logic;
SIGNAL \Selector354~9_combout\ : std_logic;
SIGNAL \Selector354~5_combout\ : std_logic;
SIGNAL \Selector354~6_combout\ : std_logic;
SIGNAL \Selector354~7_combout\ : std_logic;
SIGNAL \Selector354~8_combout\ : std_logic;
SIGNAL \Selector354~10_combout\ : std_logic;
SIGNAL \Selector354~11_combout\ : std_logic;
SIGNAL \C[30]~input_o\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~32_combout\ : std_logic;
SIGNAL \Selector353~0_combout\ : std_logic;
SIGNAL \Selector353~1_combout\ : std_logic;
SIGNAL \Selector353~2_combout\ : std_logic;
SIGNAL \Selector353~3_combout\ : std_logic;
SIGNAL \Selector353~4_combout\ : std_logic;
SIGNAL \Selector353~5_combout\ : std_logic;
SIGNAL \Selector353~6_combout\ : std_logic;
SIGNAL \Selector353~7_combout\ : std_logic;
SIGNAL \Selector353~8_combout\ : std_logic;
SIGNAL \Selector353~9_combout\ : std_logic;
SIGNAL \Selector353~10_combout\ : std_logic;
SIGNAL \Selector353~11_combout\ : std_logic;
SIGNAL \SRL64_A|Mux32|Mux63~33_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux32~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux32~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux32~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux32~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux32~1_combout\ : std_logic;
SIGNAL \C[31]~input_o\ : std_logic;
SIGNAL \Selector352~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~2_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~3_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~2_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~3_combout\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \Selector96~1_combout\ : std_logic;
SIGNAL \Selector352~1_combout\ : std_logic;
SIGNAL \Selector350~0_combout\ : std_logic;
SIGNAL \C[32]~input_o\ : std_logic;
SIGNAL \Selector350~5_combout\ : std_logic;
SIGNAL \Selector350~6_combout\ : std_logic;
SIGNAL \Selector351~4_combout\ : std_logic;
SIGNAL \Selector351~5_combout\ : std_logic;
SIGNAL \Selector351~6_combout\ : std_logic;
SIGNAL \Selector351~7_combout\ : std_logic;
SIGNAL \Selector351~8_combout\ : std_logic;
SIGNAL \Selector351~9_combout\ : std_logic;
SIGNAL \Selector350~4_combout\ : std_logic;
SIGNAL \Selector350~1_combout\ : std_logic;
SIGNAL \Selector350~2_combout\ : std_logic;
SIGNAL \Selector350~3_combout\ : std_logic;
SIGNAL \Selector351~0_combout\ : std_logic;
SIGNAL \Selector351~1_combout\ : std_logic;
SIGNAL \Selector351~2_combout\ : std_logic;
SIGNAL \Selector351~3_combout\ : std_logic;
SIGNAL \Selector351~10_combout\ : std_logic;
SIGNAL \Selector351~11_combout\ : std_logic;
SIGNAL \C[33]~input_o\ : std_logic;
SIGNAL \Selector350~11_combout\ : std_logic;
SIGNAL \Selector350~12_combout\ : std_logic;
SIGNAL \Selector350~13_combout\ : std_logic;
SIGNAL \Selector350~14_combout\ : std_logic;
SIGNAL \Selector350~15_combout\ : std_logic;
SIGNAL \Selector350~16_combout\ : std_logic;
SIGNAL \Selector350~17_combout\ : std_logic;
SIGNAL \Selector350~7_combout\ : std_logic;
SIGNAL \Selector350~8_combout\ : std_logic;
SIGNAL \Selector350~9_combout\ : std_logic;
SIGNAL \Selector350~10_combout\ : std_logic;
SIGNAL \Selector350~18_combout\ : std_logic;
SIGNAL \Selector349~4_combout\ : std_logic;
SIGNAL \Selector349~5_combout\ : std_logic;
SIGNAL \Selector349~6_combout\ : std_logic;
SIGNAL \Selector349~7_combout\ : std_logic;
SIGNAL \Selector349~8_combout\ : std_logic;
SIGNAL \C[34]~input_o\ : std_logic;
SIGNAL \Selector349~9_combout\ : std_logic;
SIGNAL \Selector349~0_combout\ : std_logic;
SIGNAL \Selector349~1_combout\ : std_logic;
SIGNAL \Selector349~2_combout\ : std_logic;
SIGNAL \Selector349~3_combout\ : std_logic;
SIGNAL \Selector349~10_combout\ : std_logic;
SIGNAL \Selector349~11_combout\ : std_logic;
SIGNAL \Selector348~0_combout\ : std_logic;
SIGNAL \Selector348~1_combout\ : std_logic;
SIGNAL \Selector348~2_combout\ : std_logic;
SIGNAL \Selector348~3_combout\ : std_logic;
SIGNAL \C[35]~input_o\ : std_logic;
SIGNAL \Selector348~4_combout\ : std_logic;
SIGNAL \Selector348~5_combout\ : std_logic;
SIGNAL \Selector348~6_combout\ : std_logic;
SIGNAL \Selector348~7_combout\ : std_logic;
SIGNAL \Selector348~8_combout\ : std_logic;
SIGNAL \Selector348~9_combout\ : std_logic;
SIGNAL \Selector348~10_combout\ : std_logic;
SIGNAL \Selector348~11_combout\ : std_logic;
SIGNAL \Selector347~4_combout\ : std_logic;
SIGNAL \Selector347~5_combout\ : std_logic;
SIGNAL \Selector347~6_combout\ : std_logic;
SIGNAL \Selector347~7_combout\ : std_logic;
SIGNAL \Selector347~8_combout\ : std_logic;
SIGNAL \C[36]~input_o\ : std_logic;
SIGNAL \Selector347~9_combout\ : std_logic;
SIGNAL \Selector347~0_combout\ : std_logic;
SIGNAL \Selector347~1_combout\ : std_logic;
SIGNAL \Selector347~2_combout\ : std_logic;
SIGNAL \Selector347~3_combout\ : std_logic;
SIGNAL \Selector347~10_combout\ : std_logic;
SIGNAL \Selector347~11_combout\ : std_logic;
SIGNAL \Selector346~0_combout\ : std_logic;
SIGNAL \Selector346~1_combout\ : std_logic;
SIGNAL \Selector346~2_combout\ : std_logic;
SIGNAL \Selector346~3_combout\ : std_logic;
SIGNAL \Selector346~4_combout\ : std_logic;
SIGNAL \Selector346~5_combout\ : std_logic;
SIGNAL \Selector346~6_combout\ : std_logic;
SIGNAL \Selector346~7_combout\ : std_logic;
SIGNAL \C[37]~input_o\ : std_logic;
SIGNAL \Selector346~8_combout\ : std_logic;
SIGNAL \Selector346~9_combout\ : std_logic;
SIGNAL \Selector346~10_combout\ : std_logic;
SIGNAL \Selector346~11_combout\ : std_logic;
SIGNAL \Selector345~4_combout\ : std_logic;
SIGNAL \Selector345~5_combout\ : std_logic;
SIGNAL \Selector345~6_combout\ : std_logic;
SIGNAL \Selector345~7_combout\ : std_logic;
SIGNAL \Selector345~8_combout\ : std_logic;
SIGNAL \C[38]~input_o\ : std_logic;
SIGNAL \Selector345~9_combout\ : std_logic;
SIGNAL \Selector345~0_combout\ : std_logic;
SIGNAL \Selector345~1_combout\ : std_logic;
SIGNAL \Selector345~2_combout\ : std_logic;
SIGNAL \Selector345~3_combout\ : std_logic;
SIGNAL \Selector345~10_combout\ : std_logic;
SIGNAL \Selector345~11_combout\ : std_logic;
SIGNAL \Selector344~0_combout\ : std_logic;
SIGNAL \Selector344~1_combout\ : std_logic;
SIGNAL \Selector344~2_combout\ : std_logic;
SIGNAL \Selector344~3_combout\ : std_logic;
SIGNAL \Selector344~4_combout\ : std_logic;
SIGNAL \Selector344~5_combout\ : std_logic;
SIGNAL \Selector344~6_combout\ : std_logic;
SIGNAL \Selector344~7_combout\ : std_logic;
SIGNAL \C[39]~input_o\ : std_logic;
SIGNAL \Selector344~8_combout\ : std_logic;
SIGNAL \Selector344~9_combout\ : std_logic;
SIGNAL \Selector344~10_combout\ : std_logic;
SIGNAL \Selector344~11_combout\ : std_logic;
SIGNAL \C[40]~input_o\ : std_logic;
SIGNAL \Selector343~4_combout\ : std_logic;
SIGNAL \Selector343~5_combout\ : std_logic;
SIGNAL \Selector343~6_combout\ : std_logic;
SIGNAL \Selector343~7_combout\ : std_logic;
SIGNAL \Selector343~8_combout\ : std_logic;
SIGNAL \Selector343~9_combout\ : std_logic;
SIGNAL \Selector343~0_combout\ : std_logic;
SIGNAL \Selector343~1_combout\ : std_logic;
SIGNAL \Selector343~2_combout\ : std_logic;
SIGNAL \Selector343~3_combout\ : std_logic;
SIGNAL \Selector343~10_combout\ : std_logic;
SIGNAL \Selector343~11_combout\ : std_logic;
SIGNAL \Selector342~0_combout\ : std_logic;
SIGNAL \Selector342~1_combout\ : std_logic;
SIGNAL \Selector342~2_combout\ : std_logic;
SIGNAL \Selector342~3_combout\ : std_logic;
SIGNAL \Selector342~4_combout\ : std_logic;
SIGNAL \Selector342~5_combout\ : std_logic;
SIGNAL \Selector342~6_combout\ : std_logic;
SIGNAL \Selector342~7_combout\ : std_logic;
SIGNAL \C[41]~input_o\ : std_logic;
SIGNAL \Selector342~8_combout\ : std_logic;
SIGNAL \Selector342~9_combout\ : std_logic;
SIGNAL \Selector342~10_combout\ : std_logic;
SIGNAL \Selector342~11_combout\ : std_logic;
SIGNAL \Selector341~0_combout\ : std_logic;
SIGNAL \Selector341~1_combout\ : std_logic;
SIGNAL \Selector341~2_combout\ : std_logic;
SIGNAL \Selector341~3_combout\ : std_logic;
SIGNAL \Selector341~4_combout\ : std_logic;
SIGNAL \Selector341~5_combout\ : std_logic;
SIGNAL \Selector341~6_combout\ : std_logic;
SIGNAL \Selector341~7_combout\ : std_logic;
SIGNAL \Selector341~8_combout\ : std_logic;
SIGNAL \C[42]~input_o\ : std_logic;
SIGNAL \Selector341~9_combout\ : std_logic;
SIGNAL \Selector341~10_combout\ : std_logic;
SIGNAL \Selector341~11_combout\ : std_logic;
SIGNAL \Selector340~4_combout\ : std_logic;
SIGNAL \Selector340~5_combout\ : std_logic;
SIGNAL \Selector340~6_combout\ : std_logic;
SIGNAL \Selector340~7_combout\ : std_logic;
SIGNAL \C[43]~input_o\ : std_logic;
SIGNAL \Selector340~8_combout\ : std_logic;
SIGNAL \Selector340~9_combout\ : std_logic;
SIGNAL \Selector340~10_combout\ : std_logic;
SIGNAL \Selector340~0_combout\ : std_logic;
SIGNAL \Selector340~1_combout\ : std_logic;
SIGNAL \Selector340~2_combout\ : std_logic;
SIGNAL \Selector340~3_combout\ : std_logic;
SIGNAL \Selector340~11_combout\ : std_logic;
SIGNAL \Selector339~0_combout\ : std_logic;
SIGNAL \Selector339~1_combout\ : std_logic;
SIGNAL \Selector339~2_combout\ : std_logic;
SIGNAL \Selector339~3_combout\ : std_logic;
SIGNAL \Selector339~4_combout\ : std_logic;
SIGNAL \Selector339~5_combout\ : std_logic;
SIGNAL \Selector339~6_combout\ : std_logic;
SIGNAL \Selector339~7_combout\ : std_logic;
SIGNAL \Selector339~8_combout\ : std_logic;
SIGNAL \C[44]~input_o\ : std_logic;
SIGNAL \Selector339~9_combout\ : std_logic;
SIGNAL \Selector339~10_combout\ : std_logic;
SIGNAL \Selector339~11_combout\ : std_logic;
SIGNAL \Selector338~0_combout\ : std_logic;
SIGNAL \Selector338~1_combout\ : std_logic;
SIGNAL \Selector338~2_combout\ : std_logic;
SIGNAL \Selector338~3_combout\ : std_logic;
SIGNAL \C[45]~input_o\ : std_logic;
SIGNAL \Selector338~4_combout\ : std_logic;
SIGNAL \Selector338~5_combout\ : std_logic;
SIGNAL \Selector338~6_combout\ : std_logic;
SIGNAL \Selector338~7_combout\ : std_logic;
SIGNAL \Selector338~8_combout\ : std_logic;
SIGNAL \Selector338~9_combout\ : std_logic;
SIGNAL \Selector338~10_combout\ : std_logic;
SIGNAL \Selector338~11_combout\ : std_logic;
SIGNAL \Selector337~4_combout\ : std_logic;
SIGNAL \Selector337~5_combout\ : std_logic;
SIGNAL \Selector337~6_combout\ : std_logic;
SIGNAL \Selector337~7_combout\ : std_logic;
SIGNAL \Selector337~8_combout\ : std_logic;
SIGNAL \C[46]~input_o\ : std_logic;
SIGNAL \Selector337~9_combout\ : std_logic;
SIGNAL \Selector337~0_combout\ : std_logic;
SIGNAL \Selector337~1_combout\ : std_logic;
SIGNAL \Selector337~2_combout\ : std_logic;
SIGNAL \Selector337~3_combout\ : std_logic;
SIGNAL \Selector337~10_combout\ : std_logic;
SIGNAL \Selector337~11_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux16~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux16~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux16~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux16~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux16~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux16~1_combout\ : std_logic;
SIGNAL \C[47]~input_o\ : std_logic;
SIGNAL \Selector336~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~5_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~4_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~5_combout\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \Selector80~1_combout\ : std_logic;
SIGNAL \Selector336~0_combout\ : std_logic;
SIGNAL \Selector336~2_combout\ : std_logic;
SIGNAL \Selector335~4_combout\ : std_logic;
SIGNAL \Selector335~5_combout\ : std_logic;
SIGNAL \Selector335~6_combout\ : std_logic;
SIGNAL \Selector335~7_combout\ : std_logic;
SIGNAL \C[48]~input_o\ : std_logic;
SIGNAL \Selector335~8_combout\ : std_logic;
SIGNAL \Selector333~0_combout\ : std_logic;
SIGNAL \Selector333~2_combout\ : std_logic;
SIGNAL \Selector335~0_combout\ : std_logic;
SIGNAL \Selector333~1_combout\ : std_logic;
SIGNAL \Selector335~1_combout\ : std_logic;
SIGNAL \Selector335~2_combout\ : std_logic;
SIGNAL \Selector335~3_combout\ : std_logic;
SIGNAL \Selector335~9_combout\ : std_logic;
SIGNAL \Selector335~10_combout\ : std_logic;
SIGNAL \Selector335~11_combout\ : std_logic;
SIGNAL \Selector334~4_combout\ : std_logic;
SIGNAL \Selector334~5_combout\ : std_logic;
SIGNAL \Selector334~6_combout\ : std_logic;
SIGNAL \Selector334~7_combout\ : std_logic;
SIGNAL \C[49]~input_o\ : std_logic;
SIGNAL \Selector334~8_combout\ : std_logic;
SIGNAL \Selector334~0_combout\ : std_logic;
SIGNAL \Selector334~1_combout\ : std_logic;
SIGNAL \Selector334~2_combout\ : std_logic;
SIGNAL \Selector334~3_combout\ : std_logic;
SIGNAL \Selector334~9_combout\ : std_logic;
SIGNAL \Selector334~10_combout\ : std_logic;
SIGNAL \Selector334~11_combout\ : std_logic;
SIGNAL \C[50]~input_o\ : std_logic;
SIGNAL \Selector333~7_combout\ : std_logic;
SIGNAL \Selector333~8_combout\ : std_logic;
SIGNAL \Selector333~9_combout\ : std_logic;
SIGNAL \Selector333~10_combout\ : std_logic;
SIGNAL \Selector333~11_combout\ : std_logic;
SIGNAL \Selector333~3_combout\ : std_logic;
SIGNAL \Selector333~4_combout\ : std_logic;
SIGNAL \Selector333~5_combout\ : std_logic;
SIGNAL \Selector333~6_combout\ : std_logic;
SIGNAL \Selector333~12_combout\ : std_logic;
SIGNAL \Selector333~13_combout\ : std_logic;
SIGNAL \Selector333~14_combout\ : std_logic;
SIGNAL \Selector336~3_combout\ : std_logic;
SIGNAL \Selector332~2_combout\ : std_logic;
SIGNAL \Selector332~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux8|Mux63~6_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~6_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~7_combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \Selector76~1_combout\ : std_logic;
SIGNAL \C[51]~input_o\ : std_logic;
SIGNAL \Selector332~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux12~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux12~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux12~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux12~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux12~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux12~1_combout\ : std_logic;
SIGNAL \Selector332~3_combout\ : std_logic;
SIGNAL \Selector329~1_combout\ : std_logic;
SIGNAL \Selector329~2_combout\ : std_logic;
SIGNAL \Selector329~4_combout\ : std_logic;
SIGNAL \Selector331~4_combout\ : std_logic;
SIGNAL \Selector329~3_combout\ : std_logic;
SIGNAL \Selector331~5_combout\ : std_logic;
SIGNAL \Selector375~17_combout\ : std_logic;
SIGNAL \C[52]~input_o\ : std_logic;
SIGNAL \Selector329~5_combout\ : std_logic;
SIGNAL \Selector331~6_combout\ : std_logic;
SIGNAL \Selector331~7_combout\ : std_logic;
SIGNAL \Selector331~0_combout\ : std_logic;
SIGNAL \Selector331~1_combout\ : std_logic;
SIGNAL \Selector331~2_combout\ : std_logic;
SIGNAL \Selector331~3_combout\ : std_logic;
SIGNAL \Selector331~8_combout\ : std_logic;
SIGNAL \Selector331~9_combout\ : std_logic;
SIGNAL \Selector331~10_combout\ : std_logic;
SIGNAL \C[53]~input_o\ : std_logic;
SIGNAL \Selector330~6_combout\ : std_logic;
SIGNAL \Selector330~4_combout\ : std_logic;
SIGNAL \Selector330~5_combout\ : std_logic;
SIGNAL \Selector330~7_combout\ : std_logic;
SIGNAL \Selector330~8_combout\ : std_logic;
SIGNAL \Selector330~0_combout\ : std_logic;
SIGNAL \Selector330~1_combout\ : std_logic;
SIGNAL \Selector330~2_combout\ : std_logic;
SIGNAL \Selector330~3_combout\ : std_logic;
SIGNAL \Selector330~9_combout\ : std_logic;
SIGNAL \Selector330~10_combout\ : std_logic;
SIGNAL \Selector329~6_combout\ : std_logic;
SIGNAL \Selector329~7_combout\ : std_logic;
SIGNAL \Selector329~8_combout\ : std_logic;
SIGNAL \Selector329~9_combout\ : std_logic;
SIGNAL \Selector329~10_combout\ : std_logic;
SIGNAL \Selector329~11_combout\ : std_logic;
SIGNAL \C[54]~input_o\ : std_logic;
SIGNAL \Selector329~12_combout\ : std_logic;
SIGNAL \Selector329~13_combout\ : std_logic;
SIGNAL \Selector329~14_combout\ : std_logic;
SIGNAL \Selector329~15_combout\ : std_logic;
SIGNAL \Selector329~16_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~9_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~8_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~10_combout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \Selector72~1_combout\ : std_logic;
SIGNAL \C[55]~input_o\ : std_logic;
SIGNAL \Selector328~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux8~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux8~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux8~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux8~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux8~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux8~1_combout\ : std_logic;
SIGNAL \Selector328~1_combout\ : std_logic;
SIGNAL \Selector325~4_combout\ : std_logic;
SIGNAL \Selector325~3_combout\ : std_logic;
SIGNAL \Selector327~8_combout\ : std_logic;
SIGNAL \Selector327~0_combout\ : std_logic;
SIGNAL \Selector327~1_combout\ : std_logic;
SIGNAL \Selector327~2_combout\ : std_logic;
SIGNAL \Selector327~3_combout\ : std_logic;
SIGNAL \C[56]~input_o\ : std_logic;
SIGNAL \Selector325~2_combout\ : std_logic;
SIGNAL \Selector327~4_combout\ : std_logic;
SIGNAL \Selector325~15_combout\ : std_logic;
SIGNAL \Selector327~5_combout\ : std_logic;
SIGNAL \Selector327~6_combout\ : std_logic;
SIGNAL \Selector327~7_combout\ : std_logic;
SIGNAL \Selector327~9_combout\ : std_logic;
SIGNAL \Selector326~0_combout\ : std_logic;
SIGNAL \Selector326~1_combout\ : std_logic;
SIGNAL \Selector326~2_combout\ : std_logic;
SIGNAL \Selector326~3_combout\ : std_logic;
SIGNAL \Selector326~4_combout\ : std_logic;
SIGNAL \Selector326~5_combout\ : std_logic;
SIGNAL \C[57]~input_o\ : std_logic;
SIGNAL \Selector326~6_combout\ : std_logic;
SIGNAL \Selector326~7_combout\ : std_logic;
SIGNAL \Selector326~8_combout\ : std_logic;
SIGNAL \Selector326~9_combout\ : std_logic;
SIGNAL \Selector325~13_combout\ : std_logic;
SIGNAL \Selector325~5_combout\ : std_logic;
SIGNAL \Selector325~6_combout\ : std_logic;
SIGNAL \Selector325~7_combout\ : std_logic;
SIGNAL \Selector325~8_combout\ : std_logic;
SIGNAL \Selector325~9_combout\ : std_logic;
SIGNAL \Selector325~10_combout\ : std_logic;
SIGNAL \C[58]~input_o\ : std_logic;
SIGNAL \Selector325~11_combout\ : std_logic;
SIGNAL \Selector325~12_combout\ : std_logic;
SIGNAL \Selector325~14_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux4~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux4~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux4~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux4~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux4~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux4~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~11_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~12_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~13_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \Selector68~1_combout\ : std_logic;
SIGNAL \C[59]~input_o\ : std_logic;
SIGNAL \Selector324~0_combout\ : std_logic;
SIGNAL \Selector324~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux3~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux3~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux3~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux3~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux3~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux3~1_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux63~14_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \Selector67~1_combout\ : std_logic;
SIGNAL \C[60]~input_o\ : std_logic;
SIGNAL \Selector323~0_combout\ : std_logic;
SIGNAL \Selector323~1_combout\ : std_logic;
SIGNAL \C[61]~input_o\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux2~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux2~1_combout\ : std_logic;
SIGNAL \Selector352~2_combout\ : std_logic;
SIGNAL \SRA64_A|Mux4|Mux2~1_combout\ : std_logic;
SIGNAL \SRA64_A|Mux4|Mux2~0_combout\ : std_logic;
SIGNAL \SRA64_A|Mux4|Mux2~2_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux2~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux2~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux2~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux2~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux2~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux2~1_combout\ : std_logic;
SIGNAL \Selector352~3_combout\ : std_logic;
SIGNAL \Selector322~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux1~0_combout\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux1~1_combout\ : std_logic;
SIGNAL \C[62]~input_o\ : std_logic;
SIGNAL \Selector352~4_combout\ : std_logic;
SIGNAL \SRA64_A|Mux4|Mux1~6_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux1~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux1~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux1~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux1~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux1~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux1~1_combout\ : std_logic;
SIGNAL \Selector352~5_combout\ : std_logic;
SIGNAL \Selector321~0_combout\ : std_logic;
SIGNAL \C[63]~input_o\ : std_logic;
SIGNAL \SRL64_A|Mux4|Mux0~0_combout\ : std_logic;
SIGNAL \Selector352~6_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux0~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux32|Mux0~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux0~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux8|Mux0~1_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux0~0_combout\ : std_logic;
SIGNAL \SLL64_A|Mux4|Mux0~1_combout\ : std_logic;
SIGNAL \Selector352~7_combout\ : std_logic;
SIGNAL \Selector320~0_combout\ : std_logic;

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

-- Location: IOOBUF_X33_Y73_N9
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector383~1_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector382~2_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector381~3_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector380~1_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector379~12_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector378~8_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector377~8_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector376~8_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector375~15_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector374~10_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector373~10_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector372~10_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector371~19_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector370~9_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector369~9_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector368~9_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector367~11_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector366~11_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector365~11_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector364~11_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector363~11_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector362~11_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector361~21_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector360~11_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector359~11_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector358~11_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector357~11_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector356~11_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector355~11_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector354~11_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector353~11_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector352~1_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector351~11_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector350~18_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector349~11_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector348~11_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector347~11_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector346~11_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector345~11_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector344~11_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector343~11_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector342~11_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector341~11_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector340~11_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector339~11_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector338~11_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector337~11_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector336~2_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector335~11_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector334~11_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector333~14_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector332~3_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector331~10_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector330~10_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector329~16_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector328~1_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector327~9_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector326~9_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector325~14_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector324~1_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector323~1_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector322~0_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector321~0_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector320~0_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOIBUF_X0_Y35_N15
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\C[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X49_Y35_N26
\Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\A[0]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Selector63~0_combout\);

-- Location: IOIBUF_X0_Y35_N8
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
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X49_Y38_N16
\SLL64_A|Mux8|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux63~0_combout\ = (\B[3]~input_o\) # (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \SLL64_A|Mux8|Mux63~0_combout\);

-- Location: IOIBUF_X40_Y73_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X46_Y39_N24
\SLL64_A|Mux32|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux16~0_combout\ = (!\B[4]~input_o\ & !\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux32|Mux16~0_combout\);

-- Location: LCCOMB_X41_Y39_N28
\SRA64_A|Mux4|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux4|Mux1~7_combout\ = (!\B[1]~input_o\ & (!\SLL64_A|Mux8|Mux63~0_combout\ & (!\B[0]~input_o\ & \SLL64_A|Mux32|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64_A|Mux8|Mux63~0_combout\,
	datac => \B[0]~input_o\,
	datad => \SLL64_A|Mux32|Mux16~0_combout\,
	combout => \SRA64_A|Mux4|Mux1~7_combout\);

-- Location: LCCOMB_X41_Y39_N16
\Selector383~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector383~0_combout\ = (\ShiftFN[0]~input_o\ & (((\Selector63~0_combout\ & \SRA64_A|Mux4|Mux1~7_combout\)))) # (!\ShiftFN[0]~input_o\ & (\C[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \C[0]~input_o\,
	datac => \Selector63~0_combout\,
	datad => \SRA64_A|Mux4|Mux1~7_combout\,
	combout => \Selector383~0_combout\);

-- Location: IOIBUF_X0_Y48_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X45_Y36_N16
\Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\A[2]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \A[2]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector61~0_combout\);

-- Location: IOIBUF_X115_Y33_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X50_Y39_N8
\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\A[8]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector55~0_combout\);

-- Location: LCCOMB_X47_Y38_N24
\tempA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tempA~0_combout\ = (\ExtWord~input_o\ & \ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \tempA~0_combout\);

-- Location: IOIBUF_X58_Y0_N15
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X49_Y35_N16
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[16]~input_o\))) # (!\ExtWord~input_o\ & (\A[48]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[48]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[48]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[16]~input_o\,
	combout => \Selector15~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X49_Y35_N2
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[0]~input_o\))) # (!\ExtWord~input_o\ & (\A[32]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[32]~input_o\,
	datac => \A[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X49_Y35_N28
\SRL64_A|Mux32|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~0_combout\ = (\B[4]~input_o\ & (\Selector15~0_combout\)) # (!\B[4]~input_o\ & ((\Selector31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector15~0_combout\,
	datac => \Selector31~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~0_combout\);

-- Location: LCCOMB_X49_Y35_N14
\SRL64_A|Mux32|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~1_combout\ = (\B[4]~input_o\ & (\A[16]~input_o\)) # (!\B[4]~input_o\ & ((\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~1_combout\);

-- Location: LCCOMB_X49_Y35_N8
\SRL64_A|Mux32|Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~2_combout\ = (\B[5]~input_o\ & (((\SRL64_A|Mux32|Mux63~0_combout\)))) # (!\B[5]~input_o\ & (!\tempA~0_combout\ & ((\SRL64_A|Mux32|Mux63~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempA~0_combout\,
	datab => \SRL64_A|Mux32|Mux63~0_combout\,
	datac => \SRL64_A|Mux32|Mux63~1_combout\,
	datad => \B[5]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~2_combout\);

-- Location: IOIBUF_X23_Y73_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X48_Y35_N8
\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\A[4]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \A[4]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector59~0_combout\);

-- Location: LCCOMB_X43_Y37_N16
\SRL64_A|Mux8|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~0_combout\ = (\B[2]~input_o\ & (((\Selector59~0_combout\) # (\B[3]~input_o\)))) # (!\B[2]~input_o\ & (\SRL64_A|Mux32|Mux63~2_combout\ & ((!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~2_combout\,
	datab => \B[2]~input_o\,
	datac => \Selector59~0_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~0_combout\);

-- Location: IOIBUF_X58_Y0_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X47_Y38_N10
\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\A[12]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[12]~input_o\,
	combout => \Selector51~0_combout\);

-- Location: LCCOMB_X43_Y37_N26
\SRL64_A|Mux8|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~1_combout\ = (\SRL64_A|Mux8|Mux63~0_combout\ & (((\Selector51~0_combout\) # (!\B[3]~input_o\)))) # (!\SRL64_A|Mux8|Mux63~0_combout\ & (\Selector55~0_combout\ & ((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector55~0_combout\,
	datab => \SRL64_A|Mux8|Mux63~0_combout\,
	datac => \Selector51~0_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~1_combout\);

-- Location: IOIBUF_X45_Y0_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X45_Y35_N24
\Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\A[1]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector62~0_combout\);

-- Location: LCCOMB_X42_Y36_N16
\SRL64_A|Mux4|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~0_combout\ = (\B[0]~input_o\ & (((\B[1]~input_o\) # (\Selector62~0_combout\)))) # (!\B[0]~input_o\ & (\SRL64_A|Mux8|Mux63~1_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64_A|Mux8|Mux63~1_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector62~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~0_combout\);

-- Location: IOIBUF_X62_Y73_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X47_Y38_N4
\Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\A[3]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \A[3]~input_o\,
	combout => \Selector60~0_combout\);

-- Location: LCCOMB_X42_Y36_N18
\SRL64_A|Mux4|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~1_combout\ = (\SRL64_A|Mux4|Mux63~0_combout\ & (((\Selector60~0_combout\) # (!\B[1]~input_o\)))) # (!\SRL64_A|Mux4|Mux63~0_combout\ & (\Selector61~0_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector61~0_combout\,
	datab => \SRL64_A|Mux4|Mux63~0_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector60~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~1_combout\);

-- Location: LCCOMB_X41_Y39_N26
\Selector383~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector383~1_combout\ = (\ShiftFN[1]~input_o\ & ((\SRL64_A|Mux4|Mux63~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector383~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector383~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~1_combout\,
	combout => \Selector383~1_combout\);

-- Location: IOIBUF_X0_Y50_N22
\C[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

-- Location: LCCOMB_X47_Y39_N16
\SLL64_A|Mux8|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux63~1_combout\ = (!\B[3]~input_o\ & (!\B[5]~input_o\ & (!\B[2]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SLL64_A|Mux8|Mux63~1_combout\);

-- Location: LCCOMB_X41_Y39_N12
\Selector382~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector382~0_combout\ = (\B[0]~input_o\ & (((\Selector63~0_combout\)))) # (!\B[0]~input_o\ & (\Selector62~0_combout\ & ((\SLL64_A|Mux8|Mux63~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Selector62~0_combout\,
	datac => \Selector63~0_combout\,
	datad => \SLL64_A|Mux8|Mux63~1_combout\,
	combout => \Selector382~0_combout\);

-- Location: LCCOMB_X41_Y39_N22
\Selector382~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector382~1_combout\ = (\ShiftFN[0]~input_o\ & (((!\B[1]~input_o\ & \Selector382~0_combout\)))) # (!\ShiftFN[0]~input_o\ & (\C[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \C[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Selector382~0_combout\,
	combout => \Selector382~1_combout\);

-- Location: IOIBUF_X45_Y73_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X46_Y38_N26
\Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\A[13]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \A[13]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector50~0_combout\);

-- Location: IOIBUF_X0_Y24_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X45_Y35_N26
\Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\A[5]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector58~0_combout\);

-- Location: IOIBUF_X0_Y28_N15
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X45_Y35_N6
\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[1]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[33]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[33]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector30~0_combout\);

-- Location: IOIBUF_X38_Y0_N8
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X45_Y35_N20
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[17]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[49]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[49]~input_o\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X45_Y35_N0
\SRL64_A|Mux32|Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~3_combout\ = (\B[4]~input_o\ & ((\Selector14~0_combout\))) # (!\B[4]~input_o\ & (\Selector30~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector30~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector14~0_combout\,
	combout => \SRL64_A|Mux32|Mux63~3_combout\);

-- Location: LCCOMB_X45_Y35_N18
\SRL64_A|Mux32|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux62~0_combout\ = (\B[4]~input_o\ & (\A[17]~input_o\)) # (!\B[4]~input_o\ & ((\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[17]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[1]~input_o\,
	combout => \SRL64_A|Mux32|Mux62~0_combout\);

-- Location: LCCOMB_X45_Y36_N10
\SRL64_A|Mux32|Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux62~1_combout\ = (\B[5]~input_o\ & (\SRL64_A|Mux32|Mux63~3_combout\)) # (!\B[5]~input_o\ & (((\SRL64_A|Mux32|Mux62~0_combout\ & !\tempA~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~3_combout\,
	datab => \SRL64_A|Mux32|Mux62~0_combout\,
	datac => \tempA~0_combout\,
	datad => \B[5]~input_o\,
	combout => \SRL64_A|Mux32|Mux62~1_combout\);

-- Location: LCCOMB_X46_Y36_N0
\SRL64_A|Mux8|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux62~0_combout\ = (\B[3]~input_o\ & (((\B[2]~input_o\)))) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Selector58~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux62~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector58~0_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SRL64_A|Mux32|Mux62~1_combout\,
	combout => \SRL64_A|Mux8|Mux62~0_combout\);

-- Location: IOIBUF_X23_Y73_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X46_Y38_N16
\Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\A[9]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \A[9]~input_o\,
	combout => \Selector54~0_combout\);

-- Location: LCCOMB_X46_Y36_N18
\SRL64_A|Mux8|Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux62~1_combout\ = (\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux62~0_combout\ & (\Selector50~0_combout\)) # (!\SRL64_A|Mux8|Mux62~0_combout\ & ((\Selector54~0_combout\))))) # (!\B[3]~input_o\ & (((\SRL64_A|Mux8|Mux62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector50~0_combout\,
	datab => \B[3]~input_o\,
	datac => \SRL64_A|Mux8|Mux62~0_combout\,
	datad => \Selector54~0_combout\,
	combout => \SRL64_A|Mux8|Mux62~1_combout\);

-- Location: LCCOMB_X42_Y36_N28
\SRL64_A|Mux4|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux62~0_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\) # ((\Selector61~0_combout\)))) # (!\B[0]~input_o\ & (!\B[1]~input_o\ & ((\SRL64_A|Mux8|Mux62~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Selector61~0_combout\,
	datad => \SRL64_A|Mux8|Mux62~1_combout\,
	combout => \SRL64_A|Mux4|Mux62~0_combout\);

-- Location: LCCOMB_X42_Y36_N30
\SRL64_A|Mux4|Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux62~1_combout\ = (\SRL64_A|Mux4|Mux62~0_combout\ & (((\Selector59~0_combout\)) # (!\B[1]~input_o\))) # (!\SRL64_A|Mux4|Mux62~0_combout\ & (\B[1]~input_o\ & ((\Selector60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux62~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector59~0_combout\,
	datad => \Selector60~0_combout\,
	combout => \SRL64_A|Mux4|Mux62~1_combout\);

-- Location: LCCOMB_X41_Y39_N8
\Selector382~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector382~2_combout\ = (\ShiftFN[1]~input_o\ & ((\SRL64_A|Mux4|Mux62~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Selector382~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector382~1_combout\,
	datac => \SRL64_A|Mux4|Mux62~1_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector382~2_combout\);

-- Location: IOIBUF_X38_Y73_N15
\C[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(2),
	o => \C[2]~input_o\);

-- Location: LCCOMB_X41_Y39_N10
\Selector381~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector381~0_combout\ = (\B[1]~input_o\ & (((\Selector63~0_combout\)))) # (!\B[1]~input_o\ & (\Selector61~0_combout\ & ((\SLL64_A|Mux8|Mux63~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector61~0_combout\,
	datac => \Selector63~0_combout\,
	datad => \SLL64_A|Mux8|Mux63~1_combout\,
	combout => \Selector381~0_combout\);

-- Location: LCCOMB_X41_Y39_N4
\Selector381~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector381~1_combout\ = (\B[0]~input_o\ & (!\B[1]~input_o\ & (\Selector62~0_combout\))) # (!\B[0]~input_o\ & (((\Selector381~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector62~0_combout\,
	datac => \B[0]~input_o\,
	datad => \Selector381~0_combout\,
	combout => \Selector381~1_combout\);

-- Location: LCCOMB_X41_Y39_N30
\Selector381~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector381~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Selector381~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\C[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \C[2]~input_o\,
	datac => \Selector381~1_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector381~2_combout\);

-- Location: IOIBUF_X52_Y0_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X45_Y34_N16
\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\A[10]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \A[10]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Selector53~0_combout\);

-- Location: IOIBUF_X0_Y44_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X45_Y36_N28
\Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\A[6]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[6]~input_o\,
	combout => \Selector57~0_combout\);

-- Location: IOIBUF_X0_Y22_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X45_Y36_N30
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[18]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[50]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \A[50]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector13~0_combout\);

-- Location: IOIBUF_X0_Y25_N22
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LCCOMB_X45_Y36_N8
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[2]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[34]~input_o\)))) # (!\ExtWord~input_o\ & (\A[34]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \A[2]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X45_Y36_N18
\SRL64_A|Mux32|Mux63~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~4_combout\ = (\B[4]~input_o\ & (\Selector13~0_combout\)) # (!\B[4]~input_o\ & ((\Selector29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Selector29~0_combout\,
	datac => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~4_combout\);

-- Location: LCCOMB_X45_Y36_N12
\SRL64_A|Mux32|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux61~0_combout\ = (\B[4]~input_o\ & ((\A[18]~input_o\))) # (!\B[4]~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[18]~input_o\,
	combout => \SRL64_A|Mux32|Mux61~0_combout\);

-- Location: LCCOMB_X45_Y36_N14
\SRL64_A|Mux32|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux61~1_combout\ = (\B[5]~input_o\ & (\SRL64_A|Mux32|Mux63~4_combout\)) # (!\B[5]~input_o\ & (((!\tempA~0_combout\ & \SRL64_A|Mux32|Mux61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~4_combout\,
	datab => \B[5]~input_o\,
	datac => \tempA~0_combout\,
	datad => \SRL64_A|Mux32|Mux61~0_combout\,
	combout => \SRL64_A|Mux32|Mux61~1_combout\);

-- Location: LCCOMB_X45_Y37_N8
\SRL64_A|Mux8|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux61~0_combout\ = (\B[3]~input_o\ & (\B[2]~input_o\)) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Selector57~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux61~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Selector57~0_combout\,
	datad => \SRL64_A|Mux32|Mux61~1_combout\,
	combout => \SRL64_A|Mux8|Mux61~0_combout\);

-- Location: IOIBUF_X67_Y0_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X49_Y37_N0
\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\A[14]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[14]~input_o\,
	combout => \Selector49~0_combout\);

-- Location: LCCOMB_X45_Y37_N18
\SRL64_A|Mux8|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux61~1_combout\ = (\SRL64_A|Mux8|Mux61~0_combout\ & (((\Selector49~0_combout\) # (!\B[3]~input_o\)))) # (!\SRL64_A|Mux8|Mux61~0_combout\ & (\Selector53~0_combout\ & ((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector53~0_combout\,
	datab => \SRL64_A|Mux8|Mux61~0_combout\,
	datac => \Selector49~0_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux8|Mux61~1_combout\);

-- Location: LCCOMB_X42_Y36_N0
\SRL64_A|Mux4|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux61~0_combout\ = (\B[0]~input_o\ & (((\B[1]~input_o\) # (\Selector60~0_combout\)))) # (!\B[0]~input_o\ & (\SRL64_A|Mux8|Mux61~1_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64_A|Mux8|Mux61~1_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector60~0_combout\,
	combout => \SRL64_A|Mux4|Mux61~0_combout\);

-- Location: LCCOMB_X42_Y36_N26
\SRL64_A|Mux4|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux61~1_combout\ = (\B[1]~input_o\ & ((\SRL64_A|Mux4|Mux61~0_combout\ & (\Selector58~0_combout\)) # (!\SRL64_A|Mux4|Mux61~0_combout\ & ((\Selector59~0_combout\))))) # (!\B[1]~input_o\ & (((\SRL64_A|Mux4|Mux61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector58~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector59~0_combout\,
	datad => \SRL64_A|Mux4|Mux61~0_combout\,
	combout => \SRL64_A|Mux4|Mux61~1_combout\);

-- Location: LCCOMB_X41_Y39_N24
\Selector381~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector381~3_combout\ = (\Selector381~2_combout\) # ((\ShiftFN[1]~input_o\ & \SRL64_A|Mux4|Mux61~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \Selector381~2_combout\,
	datad => \SRL64_A|Mux4|Mux61~1_combout\,
	combout => \Selector381~3_combout\);

-- Location: IOIBUF_X31_Y73_N1
\C[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(3),
	o => \C[3]~input_o\);

-- Location: LCCOMB_X46_Y39_N6
\SLL64_A|Mux8|Mux60~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux60~4_combout\ = (\Selector60~0_combout\ & (!\B[5]~input_o\ & (!\B[4]~input_o\ & !\SLL64_A|Mux8|Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector60~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \SLL64_A|Mux8|Mux60~4_combout\);

-- Location: LCCOMB_X46_Y39_N2
\SLL64_A|Mux4|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux60~0_combout\ = (\B[0]~input_o\ & ((\Selector61~0_combout\) # ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \SLL64_A|Mux8|Mux60~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector61~0_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux60~4_combout\,
	combout => \SLL64_A|Mux4|Mux60~0_combout\);

-- Location: LCCOMB_X41_Y39_N18
\SLL64_A|Mux4|Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux60~1_combout\ = (\B[1]~input_o\ & ((\SLL64_A|Mux4|Mux60~0_combout\ & ((\Selector63~0_combout\))) # (!\SLL64_A|Mux4|Mux60~0_combout\ & (\Selector62~0_combout\)))) # (!\B[1]~input_o\ & (((\SLL64_A|Mux4|Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector62~0_combout\,
	datac => \Selector63~0_combout\,
	datad => \SLL64_A|Mux4|Mux60~0_combout\,
	combout => \SLL64_A|Mux4|Mux60~1_combout\);

-- Location: LCCOMB_X41_Y39_N20
\Selector380~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector380~0_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SLL64_A|Mux4|Mux60~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\C[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \C[3]~input_o\,
	datac => \SLL64_A|Mux4|Mux60~1_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector380~0_combout\);

-- Location: IOIBUF_X0_Y34_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X43_Y34_N16
\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\A[15]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[15]~input_o\,
	combout => \Selector48~0_combout\);

-- Location: IOIBUF_X31_Y73_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X45_Y38_N16
\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\A[11]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \Selector52~0_combout\);

-- Location: IOIBUF_X27_Y73_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X43_Y37_N12
\Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\A[7]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[7]~input_o\,
	combout => \Selector56~0_combout\);

-- Location: IOIBUF_X0_Y46_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X47_Y38_N18
\SRL64_A|Mux32|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux60~0_combout\ = (\B[4]~input_o\ & (\A[19]~input_o\)) # (!\B[4]~input_o\ & ((\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[3]~input_o\,
	combout => \SRL64_A|Mux32|Mux60~0_combout\);

-- Location: IOIBUF_X54_Y0_N15
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X47_Y38_N8
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[3]~input_o\))) # (!\ExtWord~input_o\ & (\A[35]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[35]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Selector28~0_combout\);

-- Location: IOIBUF_X0_Y50_N15
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X47_Y38_N22
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[19]~input_o\))) # (!\ExtWord~input_o\ & (\A[51]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[51]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X54_Y36_N24
\SRL64_A|Mux32|Mux63~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~5_combout\ = (\B[4]~input_o\ & ((\Selector12~0_combout\))) # (!\B[4]~input_o\ & (\Selector28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector28~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector12~0_combout\,
	combout => \SRL64_A|Mux32|Mux63~5_combout\);

-- Location: LCCOMB_X46_Y37_N24
\SRL64_A|Mux32|Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux60~1_combout\ = (\B[5]~input_o\ & (((\SRL64_A|Mux32|Mux63~5_combout\)))) # (!\B[5]~input_o\ & (\SRL64_A|Mux32|Mux60~0_combout\ & ((!\tempA~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux60~0_combout\,
	datab => \SRL64_A|Mux32|Mux63~5_combout\,
	datac => \tempA~0_combout\,
	datad => \B[5]~input_o\,
	combout => \SRL64_A|Mux32|Mux60~1_combout\);

-- Location: LCCOMB_X46_Y37_N18
\SRL64_A|Mux8|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux60~0_combout\ = (\B[3]~input_o\ & (((\B[2]~input_o\)))) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Selector56~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux60~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Selector56~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64_A|Mux32|Mux60~1_combout\,
	combout => \SRL64_A|Mux8|Mux60~0_combout\);

-- Location: LCCOMB_X46_Y37_N20
\SRL64_A|Mux8|Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux60~1_combout\ = (\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux60~0_combout\ & (\Selector48~0_combout\)) # (!\SRL64_A|Mux8|Mux60~0_combout\ & ((\Selector52~0_combout\))))) # (!\B[3]~input_o\ & (((\SRL64_A|Mux8|Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~0_combout\,
	datab => \Selector52~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64_A|Mux8|Mux60~0_combout\,
	combout => \SRL64_A|Mux8|Mux60~1_combout\);

-- Location: LCCOMB_X42_Y36_N4
\SRL64_A|Mux4|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux60~0_combout\ = (\B[0]~input_o\ & ((\Selector59~0_combout\) # ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \SRL64_A|Mux8|Mux60~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Selector59~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux8|Mux60~1_combout\,
	combout => \SRL64_A|Mux4|Mux60~0_combout\);

-- Location: LCCOMB_X42_Y36_N22
\SRL64_A|Mux4|Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux60~1_combout\ = (\SRL64_A|Mux4|Mux60~0_combout\ & (((\Selector57~0_combout\) # (!\B[1]~input_o\)))) # (!\SRL64_A|Mux4|Mux60~0_combout\ & (\Selector58~0_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector58~0_combout\,
	datab => \SRL64_A|Mux4|Mux60~0_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector57~0_combout\,
	combout => \SRL64_A|Mux4|Mux60~1_combout\);

-- Location: LCCOMB_X41_Y39_N14
\Selector380~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector380~1_combout\ = (\Selector380~0_combout\) # ((\ShiftFN[1]~input_o\ & \SRL64_A|Mux4|Mux60~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector380~0_combout\,
	datad => \SRL64_A|Mux4|Mux60~1_combout\,
	combout => \Selector380~1_combout\);

-- Location: LCCOMB_X49_Y40_N0
\Selector371~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~2_combout\ = (!\B[1]~input_o\ & !\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Selector371~2_combout\);

-- Location: LCCOMB_X47_Y39_N18
\Selector371~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~3_combout\ = (!\B[3]~input_o\ & (\Selector371~2_combout\ & ((\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Selector371~2_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector371~3_combout\);

-- Location: LCCOMB_X47_Y39_N6
\Selector371~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~20_combout\ = (\Selector371~3_combout\ & (!\B[5]~input_o\ & (!\B[2]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~3_combout\,
	datab => \B[5]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Selector371~20_combout\);

-- Location: LCCOMB_X43_Y37_N22
\Selector379~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector379~7_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\) # ((\B[2]~input_o\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Selector379~7_combout\);

-- Location: LCCOMB_X42_Y36_N24
\Selector379~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector379~8_combout\ = (\Selector379~7_combout\ & ((\B[0]~input_o\ & ((\Selector60~0_combout\))) # (!\B[0]~input_o\ & (\Selector63~0_combout\)))) # (!\Selector379~7_combout\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \Selector379~7_combout\,
	datac => \B[0]~input_o\,
	datad => \Selector60~0_combout\,
	combout => \Selector379~8_combout\);

-- Location: LCCOMB_X42_Y36_N10
\Selector379~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector379~9_combout\ = (\B[1]~input_o\ & ((\Selector379~8_combout\ & (\Selector62~0_combout\)) # (!\Selector379~8_combout\ & ((\Selector61~0_combout\))))) # (!\B[1]~input_o\ & (((\Selector379~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector62~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector61~0_combout\,
	datad => \Selector379~8_combout\,
	combout => \Selector379~9_combout\);

-- Location: LCCOMB_X49_Y35_N20
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\A[16]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[16]~input_o\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X48_Y37_N24
\Selector379~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector379~1_combout\ = (\B[1]~input_o\) # ((!\B[0]~input_o\ & (\B[3]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Selector379~1_combout\);

-- Location: IOIBUF_X0_Y35_N1
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X48_Y35_N10
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

-- Location: IOIBUF_X0_Y29_N15
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X48_Y35_N28
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[4]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[36]~input_o\)))) # (!\ExtWord~input_o\ & (\A[36]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[36]~input_o\,
	datac => \A[4]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X49_Y38_N2
\SRL64_A|Mux32|Mux63~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~6_combout\ = (\B[4]~input_o\ & (\Selector11~0_combout\)) # (!\B[4]~input_o\ & ((\Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~0_combout\,
	datac => \Selector27~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~6_combout\);

-- Location: LCCOMB_X49_Y38_N20
\Selector379~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector379~2_combout\ = (\B[3]~input_o\) # ((!\B[2]~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Selector379~2_combout\);

-- Location: LCCOMB_X48_Y35_N22
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\A[20]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X46_Y36_N20
\Selector379~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector379~3_combout\ = (\Selector379~2_combout\ & (((\SLL64_A|Mux8|Mux63~0_combout\)))) # (!\Selector379~2_combout\ & ((\SLL64_A|Mux8|Mux63~0_combout\ & (\Selector55~0_combout\)) # (!\SLL64_A|Mux8|Mux63~0_combout\ & ((\Selector43~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector55~0_combout\,
	datab => \Selector379~2_combout\,
	datac => \Selector43~0_combout\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \Selector379~3_combout\);

-- Location: LCCOMB_X46_Y36_N14
\Selector379~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector379~4_combout\ = (\Selector379~3_combout\ & (((\Selector51~0_combout\) # (!\Selector379~2_combout\)))) # (!\Selector379~3_combout\ & (\SRL64_A|Mux32|Mux63~6_combout\ & ((\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~6_combout\,
	datab => \Selector379~3_combout\,
	datac => \Selector51~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector379~4_combout\);

-- Location: LCCOMB_X46_Y36_N24
\Selector379~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector379~5_combout\ = (\Selector379~1_combout\ & (((!\Selector371~2_combout\)))) # (!\Selector379~1_combout\ & ((\Selector371~2_combout\ & ((\Selector379~4_combout\))) # (!\Selector371~2_combout\ & (\Selector58~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector58~0_combout\,
	datab => \Selector379~1_combout\,
	datac => \Selector379~4_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector379~5_combout\);

-- Location: LCCOMB_X43_Y36_N26
\Selector379~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector379~6_combout\ = (\Selector379~1_combout\ & ((\Selector379~5_combout\ & ((\Selector57~0_combout\))) # (!\Selector379~5_combout\ & (\Selector47~0_combout\)))) # (!\Selector379~1_combout\ & (((\Selector379~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~0_combout\,
	datab => \Selector57~0_combout\,
	datac => \Selector379~1_combout\,
	datad => \Selector379~5_combout\,
	combout => \Selector379~6_combout\);

-- Location: LCCOMB_X43_Y36_N0
\Selector379~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector379~0_combout\ = (\ShiftFN[1]~input_o\ & (\B[1]~input_o\ & (\B[0]~input_o\))) # (!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector379~0_combout\);

-- Location: LCCOMB_X43_Y36_N12
\Selector379~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector379~10_combout\ = (\ShiftFN[1]~input_o\ & (((\Selector379~6_combout\) # (\Selector379~0_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Selector379~9_combout\ & ((!\Selector379~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~9_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector379~6_combout\,
	datad => \Selector379~0_combout\,
	combout => \Selector379~10_combout\);

-- Location: IOIBUF_X0_Y44_N8
\C[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(4),
	o => \C[4]~input_o\);

-- Location: LCCOMB_X43_Y36_N30
\Selector379~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector379~11_combout\ = (\Selector379~10_combout\ & (((\Selector56~0_combout\)) # (!\Selector379~0_combout\))) # (!\Selector379~10_combout\ & (\Selector379~0_combout\ & (\C[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~10_combout\,
	datab => \Selector379~0_combout\,
	datac => \C[4]~input_o\,
	datad => \Selector56~0_combout\,
	combout => \Selector379~11_combout\);

-- Location: LCCOMB_X43_Y37_N24
\Selector379~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector379~12_combout\ = (\Selector371~20_combout\ & (\Selector59~0_combout\)) # (!\Selector371~20_combout\ & ((\Selector379~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector371~20_combout\,
	datac => \Selector59~0_combout\,
	datad => \Selector379~11_combout\,
	combout => \Selector379~12_combout\);

-- Location: IOIBUF_X35_Y0_N22
\C[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(5),
	o => \C[5]~input_o\);

-- Location: LCCOMB_X42_Y36_N20
\Selector378~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector378~4_combout\ = (\B[0]~input_o\ & (((\Selector59~0_combout\)) # (!\Selector379~7_combout\))) # (!\B[0]~input_o\ & (\Selector379~7_combout\ & ((\Selector62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Selector379~7_combout\,
	datac => \Selector59~0_combout\,
	datad => \Selector62~0_combout\,
	combout => \Selector378~4_combout\);

-- Location: LCCOMB_X42_Y36_N14
\Selector378~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector378~5_combout\ = (\Selector378~4_combout\ & ((\Selector61~0_combout\) # ((!\B[1]~input_o\)))) # (!\Selector378~4_combout\ & (((\B[1]~input_o\ & \Selector60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector61~0_combout\,
	datab => \Selector378~4_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector60~0_combout\,
	combout => \Selector378~5_combout\);

-- Location: LCCOMB_X45_Y35_N4
\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\A[17]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Selector46~0_combout\);

-- Location: IOIBUF_X38_Y73_N1
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LCCOMB_X45_Y35_N22
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[5]~input_o\)) # (!\ExtWord~input_o\ & ((\A[37]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[37]~input_o\,
	combout => \Selector26~0_combout\);

-- Location: IOIBUF_X115_Y28_N8
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X49_Y34_N16
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[21]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[53]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[53]~input_o\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X46_Y38_N20
\SRL64_A|Mux32|Mux63~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~7_combout\ = (\B[4]~input_o\ & ((\Selector10~0_combout\))) # (!\B[4]~input_o\ & (\Selector26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector26~0_combout\,
	datac => \Selector10~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~7_combout\);

-- Location: LCCOMB_X49_Y34_N18
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\A[21]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[21]~input_o\,
	combout => \Selector42~0_combout\);

-- Location: LCCOMB_X46_Y38_N22
\Selector378~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector378~0_combout\ = (\SLL64_A|Mux8|Mux63~0_combout\ & ((\Selector54~0_combout\) # ((\Selector379~2_combout\)))) # (!\SLL64_A|Mux8|Mux63~0_combout\ & (((\Selector42~0_combout\ & !\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~0_combout\,
	datab => \Selector54~0_combout\,
	datac => \Selector42~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector378~0_combout\);

-- Location: LCCOMB_X46_Y38_N8
\Selector378~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector378~1_combout\ = (\Selector378~0_combout\ & ((\Selector50~0_combout\) # ((!\Selector379~2_combout\)))) # (!\Selector378~0_combout\ & (((\SRL64_A|Mux32|Mux63~7_combout\ & \Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector50~0_combout\,
	datab => \SRL64_A|Mux32|Mux63~7_combout\,
	datac => \Selector378~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector378~1_combout\);

-- Location: LCCOMB_X43_Y36_N16
\Selector378~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector378~2_combout\ = (\Selector371~2_combout\ & (((!\Selector379~1_combout\ & \Selector378~1_combout\)))) # (!\Selector371~2_combout\ & ((\Selector57~0_combout\) # ((\Selector379~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~2_combout\,
	datab => \Selector57~0_combout\,
	datac => \Selector379~1_combout\,
	datad => \Selector378~1_combout\,
	combout => \Selector378~2_combout\);

-- Location: LCCOMB_X43_Y36_N2
\Selector378~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector378~3_combout\ = (\Selector378~2_combout\ & (((\Selector56~0_combout\) # (!\Selector379~1_combout\)))) # (!\Selector378~2_combout\ & (\Selector46~0_combout\ & (\Selector379~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~0_combout\,
	datab => \Selector378~2_combout\,
	datac => \Selector379~1_combout\,
	datad => \Selector56~0_combout\,
	combout => \Selector378~3_combout\);

-- Location: LCCOMB_X43_Y36_N4
\Selector378~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector378~6_combout\ = (\ShiftFN[1]~input_o\ & (((\Selector378~3_combout\) # (\Selector379~0_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Selector378~5_combout\ & ((!\Selector379~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector378~5_combout\,
	datab => \Selector378~3_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector379~0_combout\,
	combout => \Selector378~6_combout\);

-- Location: LCCOMB_X43_Y36_N14
\Selector378~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector378~7_combout\ = (\Selector379~0_combout\ & ((\Selector378~6_combout\ & ((\Selector55~0_combout\))) # (!\Selector378~6_combout\ & (\C[5]~input_o\)))) # (!\Selector379~0_combout\ & (((\Selector378~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[5]~input_o\,
	datab => \Selector379~0_combout\,
	datac => \Selector378~6_combout\,
	datad => \Selector55~0_combout\,
	combout => \Selector378~7_combout\);

-- Location: LCCOMB_X43_Y35_N8
\Selector378~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector378~8_combout\ = (\Selector371~20_combout\ & ((\Selector58~0_combout\))) # (!\Selector371~20_combout\ & (\Selector378~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector378~7_combout\,
	datac => \Selector58~0_combout\,
	datad => \Selector371~20_combout\,
	combout => \Selector378~8_combout\);

-- Location: LCCOMB_X42_Y36_N8
\Selector377~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector377~4_combout\ = (\Selector379~7_combout\ & ((\B[0]~input_o\ & (\Selector58~0_combout\)) # (!\B[0]~input_o\ & ((\Selector61~0_combout\))))) # (!\Selector379~7_combout\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector58~0_combout\,
	datab => \Selector379~7_combout\,
	datac => \Selector61~0_combout\,
	datad => \B[0]~input_o\,
	combout => \Selector377~4_combout\);

-- Location: LCCOMB_X42_Y36_N2
\Selector377~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector377~5_combout\ = (\Selector377~4_combout\ & (((\Selector60~0_combout\) # (!\B[1]~input_o\)))) # (!\Selector377~4_combout\ & (\Selector59~0_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector59~0_combout\,
	datab => \Selector377~4_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector60~0_combout\,
	combout => \Selector377~5_combout\);

-- Location: LCCOMB_X45_Y36_N24
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\A[18]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector45~0_combout\);

-- Location: IOIBUF_X23_Y73_N1
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X45_Y36_N26
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[6]~input_o\)) # (!\ExtWord~input_o\ & ((\A[38]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[38]~input_o\,
	combout => \Selector25~0_combout\);

-- Location: IOIBUF_X0_Y45_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LCCOMB_X49_Y37_N18
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[22]~input_o\)) # (!\ExtWord~input_o\ & ((\A[54]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[54]~input_o\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X45_Y34_N10
\SRL64_A|Mux32|Mux63~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~8_combout\ = (\B[4]~input_o\ & ((\Selector9~0_combout\))) # (!\B[4]~input_o\ & (\Selector25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector9~0_combout\,
	combout => \SRL64_A|Mux32|Mux63~8_combout\);

-- Location: LCCOMB_X45_Y36_N20
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\A[22]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \A[22]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector41~0_combout\);

-- Location: LCCOMB_X45_Y34_N20
\Selector377~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector377~0_combout\ = (\SLL64_A|Mux8|Mux63~0_combout\ & ((\Selector53~0_combout\) # ((\Selector379~2_combout\)))) # (!\SLL64_A|Mux8|Mux63~0_combout\ & (((\Selector41~0_combout\ & !\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~0_combout\,
	datab => \Selector53~0_combout\,
	datac => \Selector41~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector377~0_combout\);

-- Location: LCCOMB_X45_Y34_N14
\Selector377~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector377~1_combout\ = (\Selector377~0_combout\ & (((\Selector49~0_combout\) # (!\Selector379~2_combout\)))) # (!\Selector377~0_combout\ & (\SRL64_A|Mux32|Mux63~8_combout\ & ((\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~8_combout\,
	datab => \Selector377~0_combout\,
	datac => \Selector49~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector377~1_combout\);

-- Location: LCCOMB_X43_Y36_N8
\Selector377~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector377~2_combout\ = (\Selector379~1_combout\ & (((!\Selector371~2_combout\)))) # (!\Selector379~1_combout\ & ((\Selector371~2_combout\ & (\Selector377~1_combout\)) # (!\Selector371~2_combout\ & ((\Selector56~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector377~1_combout\,
	datab => \Selector56~0_combout\,
	datac => \Selector379~1_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector377~2_combout\);

-- Location: LCCOMB_X43_Y36_N18
\Selector377~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector377~3_combout\ = (\Selector377~2_combout\ & (((\Selector55~0_combout\) # (!\Selector379~1_combout\)))) # (!\Selector377~2_combout\ & (\Selector45~0_combout\ & (\Selector379~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~0_combout\,
	datab => \Selector377~2_combout\,
	datac => \Selector379~1_combout\,
	datad => \Selector55~0_combout\,
	combout => \Selector377~3_combout\);

-- Location: LCCOMB_X43_Y36_N20
\Selector377~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector377~6_combout\ = (\ShiftFN[1]~input_o\ & (((\Selector377~3_combout\) # (\Selector379~0_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Selector377~5_combout\ & ((!\Selector379~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector377~5_combout\,
	datab => \Selector377~3_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector379~0_combout\,
	combout => \Selector377~6_combout\);

-- Location: IOIBUF_X31_Y0_N8
\C[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(6),
	o => \C[6]~input_o\);

-- Location: LCCOMB_X43_Y36_N22
\Selector377~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector377~7_combout\ = (\Selector377~6_combout\ & ((\Selector54~0_combout\) # ((!\Selector379~0_combout\)))) # (!\Selector377~6_combout\ & (((\C[6]~input_o\ & \Selector379~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector54~0_combout\,
	datab => \Selector377~6_combout\,
	datac => \C[6]~input_o\,
	datad => \Selector379~0_combout\,
	combout => \Selector377~7_combout\);

-- Location: LCCOMB_X43_Y38_N24
\Selector377~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector377~8_combout\ = (\Selector371~20_combout\ & (\Selector57~0_combout\)) # (!\Selector371~20_combout\ & ((\Selector377~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector57~0_combout\,
	datab => \Selector377~7_combout\,
	datad => \Selector371~20_combout\,
	combout => \Selector377~8_combout\);

-- Location: IOIBUF_X27_Y73_N22
\C[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(7),
	o => \C[7]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X49_Y37_N8
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\A[23]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[23]~input_o\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X46_Y37_N30
\Selector376~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector376~0_combout\ = (\Selector379~2_combout\ & (((\SLL64_A|Mux8|Mux63~0_combout\)))) # (!\Selector379~2_combout\ & ((\SLL64_A|Mux8|Mux63~0_combout\ & ((\Selector52~0_combout\))) # (!\SLL64_A|Mux8|Mux63~0_combout\ & (\Selector40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector40~0_combout\,
	datab => \Selector52~0_combout\,
	datac => \Selector379~2_combout\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \Selector376~0_combout\);

-- Location: IOIBUF_X0_Y30_N8
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X43_Y37_N18
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[7]~input_o\)) # (!\ExtWord~input_o\ & ((\A[39]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[39]~input_o\,
	combout => \Selector24~0_combout\);

-- Location: IOIBUF_X72_Y73_N22
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X49_Y37_N4
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[23]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[55]~input_o\)))) # (!\ExtWord~input_o\ & (((\A[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[55]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X49_Y37_N6
\SRL64_A|Mux32|Mux63~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~9_combout\ = (\B[4]~input_o\ & ((\Selector8~0_combout\))) # (!\B[4]~input_o\ & (\Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \Selector8~0_combout\,
	datac => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~9_combout\);

-- Location: LCCOMB_X46_Y37_N8
\Selector376~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector376~1_combout\ = (\Selector379~2_combout\ & ((\Selector376~0_combout\ & (\Selector48~0_combout\)) # (!\Selector376~0_combout\ & ((\SRL64_A|Mux32|Mux63~9_combout\))))) # (!\Selector379~2_combout\ & (((\Selector376~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~0_combout\,
	datab => \Selector379~2_combout\,
	datac => \Selector376~0_combout\,
	datad => \SRL64_A|Mux32|Mux63~9_combout\,
	combout => \Selector376~1_combout\);

-- Location: LCCOMB_X43_Y36_N24
\Selector376~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector376~2_combout\ = (\Selector371~2_combout\ & (\Selector376~1_combout\ & (!\Selector379~1_combout\))) # (!\Selector371~2_combout\ & (((\Selector379~1_combout\) # (\Selector55~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~2_combout\,
	datab => \Selector376~1_combout\,
	datac => \Selector379~1_combout\,
	datad => \Selector55~0_combout\,
	combout => \Selector376~2_combout\);

-- Location: LCCOMB_X47_Y38_N28
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\A[19]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \A[19]~input_o\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X43_Y36_N10
\Selector376~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector376~3_combout\ = (\Selector376~2_combout\ & ((\Selector54~0_combout\) # ((!\Selector379~1_combout\)))) # (!\Selector376~2_combout\ & (((\Selector379~1_combout\ & \Selector44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector54~0_combout\,
	datab => \Selector376~2_combout\,
	datac => \Selector379~1_combout\,
	datad => \Selector44~0_combout\,
	combout => \Selector376~3_combout\);

-- Location: LCCOMB_X42_Y36_N12
\Selector376~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector376~4_combout\ = (\Selector379~7_combout\ & ((\B[0]~input_o\ & (\Selector57~0_combout\)) # (!\B[0]~input_o\ & ((\Selector60~0_combout\))))) # (!\Selector379~7_combout\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~7_combout\,
	datab => \Selector57~0_combout\,
	datac => \B[0]~input_o\,
	datad => \Selector60~0_combout\,
	combout => \Selector376~4_combout\);

-- Location: LCCOMB_X42_Y36_N6
\Selector376~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector376~5_combout\ = (\Selector376~4_combout\ & (((\Selector59~0_combout\)) # (!\B[1]~input_o\))) # (!\Selector376~4_combout\ & (\B[1]~input_o\ & (\Selector58~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector376~4_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector58~0_combout\,
	datad => \Selector59~0_combout\,
	combout => \Selector376~5_combout\);

-- Location: LCCOMB_X43_Y36_N28
\Selector376~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector376~6_combout\ = (\ShiftFN[1]~input_o\ & ((\Selector376~3_combout\) # ((\Selector379~0_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Selector376~5_combout\ & !\Selector379~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector376~3_combout\,
	datab => \Selector376~5_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector379~0_combout\,
	combout => \Selector376~6_combout\);

-- Location: LCCOMB_X43_Y36_N6
\Selector376~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector376~7_combout\ = (\Selector376~6_combout\ & (((\Selector53~0_combout\) # (!\Selector379~0_combout\)))) # (!\Selector376~6_combout\ & (\C[7]~input_o\ & ((\Selector379~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[7]~input_o\,
	datab => \Selector376~6_combout\,
	datac => \Selector53~0_combout\,
	datad => \Selector379~0_combout\,
	combout => \Selector376~7_combout\);

-- Location: LCCOMB_X43_Y37_N20
\Selector376~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector376~8_combout\ = (\Selector371~20_combout\ & ((\Selector56~0_combout\))) # (!\Selector371~20_combout\ & (\Selector376~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector376~7_combout\,
	datac => \Selector371~20_combout\,
	datad => \Selector56~0_combout\,
	combout => \Selector376~8_combout\);

-- Location: LCCOMB_X41_Y39_N0
\Selector375~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~4_combout\ = (\ShiftFN[1]~input_o\) # ((\B[1]~input_o\ & (\B[0]~input_o\ & \ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector375~4_combout\);

-- Location: IOIBUF_X0_Y24_N8
\C[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(8),
	o => \C[8]~input_o\);

-- Location: LCCOMB_X49_Y34_N20
\Selector375~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~10_combout\ = (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	combout => \Selector375~10_combout\);

-- Location: LCCOMB_X49_Y40_N2
\Selector375~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~7_combout\ = (\B[1]~input_o\) # ((\B[3]~input_o\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Selector375~7_combout\);

-- Location: LCCOMB_X45_Y37_N12
\Selector375~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~8_combout\ = (\Selector375~7_combout\ & (((\Selector57~0_combout\ & !\Selector371~2_combout\)))) # (!\Selector375~7_combout\ & ((\Selector56~0_combout\) # ((\Selector371~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector56~0_combout\,
	datab => \Selector375~7_combout\,
	datac => \Selector57~0_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector375~8_combout\);

-- Location: LCCOMB_X43_Y37_N6
\Selector375~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~6_combout\ = (!\B[1]~input_o\ & (!\B[0]~input_o\ & ((!\B[3]~input_o\) # (!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Selector375~6_combout\);

-- Location: LCCOMB_X45_Y38_N26
\Selector375~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~5_combout\ = (\A[4]~input_o\ & (\B[2]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[2]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector375~5_combout\);

-- Location: LCCOMB_X45_Y38_N12
\Selector375~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~9_combout\ = (\Selector375~8_combout\ & (((\Selector375~5_combout\)) # (!\Selector375~6_combout\))) # (!\Selector375~8_combout\ & (\Selector375~6_combout\ & ((\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~8_combout\,
	datab => \Selector375~6_combout\,
	datac => \Selector375~5_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector375~9_combout\);

-- Location: LCCOMB_X45_Y38_N6
\Selector375~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~11_combout\ = (\Selector375~4_combout\ & (((\Selector375~10_combout\)))) # (!\Selector375~4_combout\ & ((\Selector375~10_combout\ & ((\Selector375~9_combout\))) # (!\Selector375~10_combout\ & (\C[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~4_combout\,
	datab => \C[8]~input_o\,
	datac => \Selector375~10_combout\,
	datad => \Selector375~9_combout\,
	combout => \Selector375~11_combout\);

-- Location: IOIBUF_X65_Y73_N8
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X50_Y39_N12
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[8]~input_o\)) # (!\ExtWord~input_o\ & ((\A[40]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[40]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Selector23~0_combout\);

-- Location: IOIBUF_X81_Y73_N15
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X50_Y39_N26
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[24]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[56]~input_o\)))) # (!\ExtWord~input_o\ & (\A[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[24]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X50_Y39_N30
\SRL64_A|Mux32|Mux63~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~10_combout\ = (\B[4]~input_o\ & ((\Selector7~0_combout\))) # (!\B[4]~input_o\ & (\Selector23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datac => \Selector7~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~10_combout\);

-- Location: LCCOMB_X50_Y39_N24
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\A[24]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \A[24]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X50_Y39_N10
\Selector375~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~0_combout\ = (\Selector379~2_combout\ & ((\SRL64_A|Mux32|Mux63~10_combout\) # ((\SLL64_A|Mux8|Mux63~0_combout\)))) # (!\Selector379~2_combout\ & (((!\SLL64_A|Mux8|Mux63~0_combout\ & \Selector39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~2_combout\,
	datab => \SRL64_A|Mux32|Mux63~10_combout\,
	datac => \SLL64_A|Mux8|Mux63~0_combout\,
	datad => \Selector39~0_combout\,
	combout => \Selector375~0_combout\);

-- Location: LCCOMB_X48_Y37_N2
\Selector375~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~1_combout\ = (\SLL64_A|Mux8|Mux63~0_combout\ & ((\Selector375~0_combout\ & ((\Selector47~0_combout\))) # (!\Selector375~0_combout\ & (\Selector51~0_combout\)))) # (!\SLL64_A|Mux8|Mux63~0_combout\ & (((\Selector375~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~0_combout\,
	datab => \SLL64_A|Mux8|Mux63~0_combout\,
	datac => \Selector47~0_combout\,
	datad => \Selector375~0_combout\,
	combout => \Selector375~1_combout\);

-- Location: LCCOMB_X48_Y37_N28
\Selector375~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~2_combout\ = (\Selector379~1_combout\ & (((!\Selector371~2_combout\)))) # (!\Selector379~1_combout\ & ((\Selector371~2_combout\ & (\Selector375~1_combout\)) # (!\Selector371~2_combout\ & ((\Selector54~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~1_combout\,
	datab => \Selector375~1_combout\,
	datac => \Selector54~0_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector375~2_combout\);

-- Location: LCCOMB_X48_Y37_N30
\Selector375~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~3_combout\ = (\Selector375~2_combout\ & ((\Selector53~0_combout\) # ((!\Selector379~1_combout\)))) # (!\Selector375~2_combout\ & (((\Selector43~0_combout\ & \Selector379~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector53~0_combout\,
	datab => \Selector375~2_combout\,
	datac => \Selector43~0_combout\,
	datad => \Selector379~1_combout\,
	combout => \Selector375~3_combout\);

-- Location: LCCOMB_X45_Y38_N8
\Selector375~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~12_combout\ = (\Selector375~11_combout\ & ((\Selector58~0_combout\) # ((!\Selector375~4_combout\)))) # (!\Selector375~11_combout\ & (((\Selector375~4_combout\ & \Selector375~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~11_combout\,
	datab => \Selector58~0_combout\,
	datac => \Selector375~4_combout\,
	datad => \Selector375~3_combout\,
	combout => \Selector375~12_combout\);

-- Location: LCCOMB_X48_Y39_N24
\Selector375~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~13_combout\ = (\B[1]~input_o\ & (\ShiftFN[1]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Selector375~13_combout\);

-- Location: LCCOMB_X43_Y38_N2
\Selector375~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~14_combout\ = (!\Selector371~20_combout\ & ((\Selector375~13_combout\ & (\Selector52~0_combout\)) # (!\Selector375~13_combout\ & ((\Selector375~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~0_combout\,
	datab => \Selector375~12_combout\,
	datac => \Selector371~20_combout\,
	datad => \Selector375~13_combout\,
	combout => \Selector375~14_combout\);

-- Location: LCCOMB_X43_Y38_N20
\Selector375~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~15_combout\ = (\Selector375~14_combout\) # ((\Selector55~0_combout\ & \Selector371~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector375~14_combout\,
	datac => \Selector55~0_combout\,
	datad => \Selector371~20_combout\,
	combout => \Selector375~15_combout\);

-- Location: IOIBUF_X27_Y73_N8
\C[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(9),
	o => \C[9]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X49_Y40_N4
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[25]~input_o\)) # (!\ExtWord~input_o\ & ((\A[57]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[25]~input_o\,
	datad => \A[57]~input_o\,
	combout => \Selector6~0_combout\);

-- Location: IOIBUF_X0_Y42_N8
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X46_Y38_N10
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

-- Location: LCCOMB_X49_Y38_N6
\SRL64_A|Mux32|Mux63~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~11_combout\ = (\B[4]~input_o\ & (\Selector6~0_combout\)) # (!\B[4]~input_o\ & ((\Selector22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \Selector22~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~11_combout\);

-- Location: LCCOMB_X49_Y40_N30
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\A[25]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[25]~input_o\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X49_Y38_N0
\Selector374~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector374~3_combout\ = (\Selector379~2_combout\ & (((\SLL64_A|Mux8|Mux63~0_combout\)))) # (!\Selector379~2_combout\ & ((\SLL64_A|Mux8|Mux63~0_combout\ & (\Selector50~0_combout\)) # (!\SLL64_A|Mux8|Mux63~0_combout\ & ((\Selector38~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~2_combout\,
	datab => \Selector50~0_combout\,
	datac => \Selector38~0_combout\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \Selector374~3_combout\);

-- Location: LCCOMB_X49_Y38_N10
\Selector374~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector374~4_combout\ = (\Selector374~3_combout\ & (((\Selector46~0_combout\) # (!\Selector379~2_combout\)))) # (!\Selector374~3_combout\ & (\SRL64_A|Mux32|Mux63~11_combout\ & ((\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~11_combout\,
	datab => \Selector374~3_combout\,
	datac => \Selector46~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector374~4_combout\);

-- Location: LCCOMB_X43_Y38_N6
\Selector374~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector374~5_combout\ = (\Selector379~1_combout\ & (((!\Selector371~2_combout\)))) # (!\Selector379~1_combout\ & ((\Selector371~2_combout\ & (\Selector374~4_combout\)) # (!\Selector371~2_combout\ & ((\Selector53~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector374~4_combout\,
	datab => \Selector53~0_combout\,
	datac => \Selector379~1_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector374~5_combout\);

-- Location: LCCOMB_X43_Y38_N16
\Selector374~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector374~6_combout\ = (\Selector379~1_combout\ & ((\Selector374~5_combout\ & (\Selector52~0_combout\)) # (!\Selector374~5_combout\ & ((\Selector42~0_combout\))))) # (!\Selector379~1_combout\ & (((\Selector374~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~0_combout\,
	datab => \Selector42~0_combout\,
	datac => \Selector379~1_combout\,
	datad => \Selector374~5_combout\,
	combout => \Selector374~6_combout\);

-- Location: LCCOMB_X43_Y38_N10
\Selector374~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector374~7_combout\ = (\Selector375~10_combout\ & (\Selector375~4_combout\)) # (!\Selector375~10_combout\ & ((\Selector375~4_combout\ & ((\Selector374~6_combout\))) # (!\Selector375~4_combout\ & (\C[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~10_combout\,
	datab => \Selector375~4_combout\,
	datac => \C[9]~input_o\,
	datad => \Selector374~6_combout\,
	combout => \Selector374~7_combout\);

-- Location: LCCOMB_X43_Y37_N8
\Selector374~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector374~0_combout\ = (\B[2]~input_o\ & (\A[5]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Selector374~0_combout\);

-- Location: LCCOMB_X43_Y37_N2
\Selector374~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector374~1_combout\ = (\Selector371~2_combout\ & (((!\Selector375~7_combout\)))) # (!\Selector371~2_combout\ & ((\Selector375~7_combout\ & (\Selector56~0_combout\)) # (!\Selector375~7_combout\ & ((\Selector55~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector56~0_combout\,
	datab => \Selector371~2_combout\,
	datac => \Selector55~0_combout\,
	datad => \Selector375~7_combout\,
	combout => \Selector374~1_combout\);

-- Location: LCCOMB_X43_Y37_N28
\Selector374~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector374~2_combout\ = (\Selector375~6_combout\ & ((\Selector374~1_combout\ & (\Selector374~0_combout\)) # (!\Selector374~1_combout\ & ((\Selector62~0_combout\))))) # (!\Selector375~6_combout\ & (((\Selector374~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~6_combout\,
	datab => \Selector374~0_combout\,
	datac => \Selector62~0_combout\,
	datad => \Selector374~1_combout\,
	combout => \Selector374~2_combout\);

-- Location: LCCOMB_X43_Y38_N12
\Selector374~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector374~8_combout\ = (\Selector374~7_combout\ & ((\Selector57~0_combout\) # ((!\Selector375~10_combout\)))) # (!\Selector374~7_combout\ & (((\Selector375~10_combout\ & \Selector374~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector374~7_combout\,
	datab => \Selector57~0_combout\,
	datac => \Selector375~10_combout\,
	datad => \Selector374~2_combout\,
	combout => \Selector374~8_combout\);

-- Location: LCCOMB_X43_Y38_N30
\Selector374~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector374~9_combout\ = (!\Selector371~20_combout\ & ((\Selector375~13_combout\ & ((\Selector51~0_combout\))) # (!\Selector375~13_combout\ & (\Selector374~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector374~8_combout\,
	datab => \Selector51~0_combout\,
	datac => \Selector371~20_combout\,
	datad => \Selector375~13_combout\,
	combout => \Selector374~9_combout\);

-- Location: LCCOMB_X43_Y38_N0
\Selector374~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector374~10_combout\ = (\Selector374~9_combout\) # ((\Selector371~20_combout\ & \Selector54~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector374~9_combout\,
	datab => \Selector371~20_combout\,
	datad => \Selector54~0_combout\,
	combout => \Selector374~10_combout\);

-- Location: LCCOMB_X45_Y38_N10
\Selector373~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector373~4_combout\ = (\A[6]~input_o\ & (\B[2]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[2]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector373~4_combout\);

-- Location: LCCOMB_X47_Y38_N14
\Selector373~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector373~5_combout\ = (\Selector375~7_combout\ & (((!\Selector371~2_combout\ & \Selector55~0_combout\)))) # (!\Selector375~7_combout\ & ((\Selector54~0_combout\) # ((\Selector371~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector54~0_combout\,
	datab => \Selector375~7_combout\,
	datac => \Selector371~2_combout\,
	datad => \Selector55~0_combout\,
	combout => \Selector373~5_combout\);

-- Location: LCCOMB_X45_Y38_N28
\Selector373~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector373~6_combout\ = (\Selector375~6_combout\ & ((\Selector373~5_combout\ & (\Selector373~4_combout\)) # (!\Selector373~5_combout\ & ((\Selector61~0_combout\))))) # (!\Selector375~6_combout\ & (((\Selector373~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector373~4_combout\,
	datab => \Selector61~0_combout\,
	datac => \Selector375~6_combout\,
	datad => \Selector373~5_combout\,
	combout => \Selector373~6_combout\);

-- Location: IOIBUF_X33_Y73_N1
\C[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(10),
	o => \C[10]~input_o\);

-- Location: LCCOMB_X45_Y38_N14
\Selector373~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector373~7_combout\ = (\Selector375~4_combout\ & (((\Selector375~10_combout\)))) # (!\Selector375~4_combout\ & ((\Selector375~10_combout\ & (\Selector373~6_combout\)) # (!\Selector375~10_combout\ & ((\C[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~4_combout\,
	datab => \Selector373~6_combout\,
	datac => \Selector375~10_combout\,
	datad => \C[10]~input_o\,
	combout => \Selector373~7_combout\);

-- Location: IOIBUF_X115_Y34_N22
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X48_Y39_N18
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[26]~input_o\))) # (!\ExtWord~input_o\ & (\A[58]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \A[26]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Selector5~0_combout\);

-- Location: IOIBUF_X29_Y0_N15
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X45_Y34_N0
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[10]~input_o\))) # (!\ExtWord~input_o\ & (\A[42]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[10]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X48_Y37_N0
\SRL64_A|Mux32|Mux63~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~12_combout\ = (\B[4]~input_o\ & (\Selector5~0_combout\)) # (!\B[4]~input_o\ & ((\Selector21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector5~0_combout\,
	datac => \Selector21~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~12_combout\);

-- Location: LCCOMB_X48_Y39_N20
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\A[26]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X48_Y37_N10
\Selector373~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector373~0_combout\ = (\Selector379~2_combout\ & ((\SRL64_A|Mux32|Mux63~12_combout\) # ((\SLL64_A|Mux8|Mux63~0_combout\)))) # (!\Selector379~2_combout\ & (((\Selector37~0_combout\ & !\SLL64_A|Mux8|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~2_combout\,
	datab => \SRL64_A|Mux32|Mux63~12_combout\,
	datac => \Selector37~0_combout\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \Selector373~0_combout\);

-- Location: LCCOMB_X48_Y37_N20
\Selector373~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector373~1_combout\ = (\Selector373~0_combout\ & (((\Selector45~0_combout\)) # (!\SLL64_A|Mux8|Mux63~0_combout\))) # (!\Selector373~0_combout\ & (\SLL64_A|Mux8|Mux63~0_combout\ & (\Selector49~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector373~0_combout\,
	datab => \SLL64_A|Mux8|Mux63~0_combout\,
	datac => \Selector49~0_combout\,
	datad => \Selector45~0_combout\,
	combout => \Selector373~1_combout\);

-- Location: LCCOMB_X48_Y37_N6
\Selector373~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector373~2_combout\ = (\Selector379~1_combout\ & (((!\Selector371~2_combout\)))) # (!\Selector379~1_combout\ & ((\Selector371~2_combout\ & (\Selector373~1_combout\)) # (!\Selector371~2_combout\ & ((\Selector52~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~1_combout\,
	datab => \Selector373~1_combout\,
	datac => \Selector52~0_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector373~2_combout\);

-- Location: LCCOMB_X48_Y37_N8
\Selector373~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector373~3_combout\ = (\Selector379~1_combout\ & ((\Selector373~2_combout\ & (\Selector51~0_combout\)) # (!\Selector373~2_combout\ & ((\Selector41~0_combout\))))) # (!\Selector379~1_combout\ & (((\Selector373~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~0_combout\,
	datab => \Selector379~1_combout\,
	datac => \Selector41~0_combout\,
	datad => \Selector373~2_combout\,
	combout => \Selector373~3_combout\);

-- Location: LCCOMB_X45_Y38_N24
\Selector373~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector373~8_combout\ = (\Selector375~4_combout\ & ((\Selector373~7_combout\ & (\Selector56~0_combout\)) # (!\Selector373~7_combout\ & ((\Selector373~3_combout\))))) # (!\Selector375~4_combout\ & (((\Selector373~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~4_combout\,
	datab => \Selector56~0_combout\,
	datac => \Selector373~7_combout\,
	datad => \Selector373~3_combout\,
	combout => \Selector373~8_combout\);

-- Location: LCCOMB_X43_Y38_N26
\Selector373~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector373~9_combout\ = (!\Selector371~20_combout\ & ((\Selector375~13_combout\ & ((\Selector50~0_combout\))) # (!\Selector375~13_combout\ & (\Selector373~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector373~8_combout\,
	datab => \Selector50~0_combout\,
	datac => \Selector371~20_combout\,
	datad => \Selector375~13_combout\,
	combout => \Selector373~9_combout\);

-- Location: LCCOMB_X43_Y38_N4
\Selector373~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector373~10_combout\ = (\Selector373~9_combout\) # ((\Selector371~20_combout\ & \Selector53~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector373~9_combout\,
	datab => \Selector371~20_combout\,
	datad => \Selector53~0_combout\,
	combout => \Selector373~10_combout\);

-- Location: IOIBUF_X23_Y0_N22
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X45_Y38_N18
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[11]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[43]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[43]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector20~0_combout\);

-- Location: IOIBUF_X67_Y73_N15
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X0_Y67_N22
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X47_Y39_N28
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[27]~input_o\))) # (!\ExtWord~input_o\ & (\A[59]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[59]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[27]~input_o\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X48_Y40_N0
\SRL64_A|Mux32|Mux63~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~13_combout\ = (\B[4]~input_o\ & ((\Selector4~0_combout\))) # (!\B[4]~input_o\ & (\Selector20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector20~0_combout\,
	datac => \Selector4~0_combout\,
	combout => \SRL64_A|Mux32|Mux63~13_combout\);

-- Location: LCCOMB_X47_Y39_N30
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\A[27]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[27]~input_o\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X46_Y37_N2
\Selector372~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector372~3_combout\ = (\SLL64_A|Mux8|Mux63~0_combout\ & ((\Selector48~0_combout\) # ((\Selector379~2_combout\)))) # (!\SLL64_A|Mux8|Mux63~0_combout\ & (((!\Selector379~2_combout\ & \Selector36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~0_combout\,
	datab => \SLL64_A|Mux8|Mux63~0_combout\,
	datac => \Selector379~2_combout\,
	datad => \Selector36~0_combout\,
	combout => \Selector372~3_combout\);

-- Location: LCCOMB_X46_Y37_N28
\Selector372~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector372~4_combout\ = (\Selector372~3_combout\ & (((\Selector44~0_combout\) # (!\Selector379~2_combout\)))) # (!\Selector372~3_combout\ & (\SRL64_A|Mux32|Mux63~13_combout\ & (\Selector379~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~13_combout\,
	datab => \Selector372~3_combout\,
	datac => \Selector379~2_combout\,
	datad => \Selector44~0_combout\,
	combout => \Selector372~4_combout\);

-- Location: LCCOMB_X46_Y36_N26
\Selector372~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector372~5_combout\ = (\Selector379~1_combout\ & (((!\Selector371~2_combout\)))) # (!\Selector379~1_combout\ & ((\Selector371~2_combout\ & ((\Selector372~4_combout\))) # (!\Selector371~2_combout\ & (\Selector51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~0_combout\,
	datab => \Selector379~1_combout\,
	datac => \Selector372~4_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector372~5_combout\);

-- Location: LCCOMB_X46_Y36_N4
\Selector372~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector372~6_combout\ = (\Selector379~1_combout\ & ((\Selector372~5_combout\ & (\Selector50~0_combout\)) # (!\Selector372~5_combout\ & ((\Selector40~0_combout\))))) # (!\Selector379~1_combout\ & (((\Selector372~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector50~0_combout\,
	datab => \Selector379~1_combout\,
	datac => \Selector372~5_combout\,
	datad => \Selector40~0_combout\,
	combout => \Selector372~6_combout\);

-- Location: IOIBUF_X35_Y0_N15
\C[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(11),
	o => \C[11]~input_o\);

-- Location: LCCOMB_X43_Y38_N14
\Selector372~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector372~7_combout\ = (\Selector375~4_combout\ & ((\Selector372~6_combout\) # ((\Selector375~10_combout\)))) # (!\Selector375~4_combout\ & (((!\Selector375~10_combout\ & \C[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector372~6_combout\,
	datab => \Selector375~4_combout\,
	datac => \Selector375~10_combout\,
	datad => \C[11]~input_o\,
	combout => \Selector372~7_combout\);

-- Location: LCCOMB_X43_Y37_N30
\Selector372~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector372~0_combout\ = (\B[2]~input_o\ & (\A[7]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[7]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Selector372~0_combout\);

-- Location: LCCOMB_X47_Y41_N24
\Selector372~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector372~1_combout\ = (\Selector375~7_combout\ & (\Selector54~0_combout\ & ((!\Selector371~2_combout\)))) # (!\Selector375~7_combout\ & (((\Selector53~0_combout\) # (\Selector371~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector54~0_combout\,
	datab => \Selector53~0_combout\,
	datac => \Selector375~7_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector372~1_combout\);

-- Location: LCCOMB_X43_Y37_N0
\Selector372~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector372~2_combout\ = (\Selector375~6_combout\ & ((\Selector372~1_combout\ & ((\Selector372~0_combout\))) # (!\Selector372~1_combout\ & (\Selector60~0_combout\)))) # (!\Selector375~6_combout\ & (((\Selector372~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~6_combout\,
	datab => \Selector60~0_combout\,
	datac => \Selector372~0_combout\,
	datad => \Selector372~1_combout\,
	combout => \Selector372~2_combout\);

-- Location: LCCOMB_X43_Y38_N8
\Selector372~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector372~8_combout\ = (\Selector375~10_combout\ & ((\Selector372~7_combout\ & (\Selector55~0_combout\)) # (!\Selector372~7_combout\ & ((\Selector372~2_combout\))))) # (!\Selector375~10_combout\ & (\Selector372~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~10_combout\,
	datab => \Selector372~7_combout\,
	datac => \Selector55~0_combout\,
	datad => \Selector372~2_combout\,
	combout => \Selector372~8_combout\);

-- Location: LCCOMB_X43_Y38_N18
\Selector372~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector372~9_combout\ = (!\Selector371~20_combout\ & ((\Selector375~13_combout\ & ((\Selector49~0_combout\))) # (!\Selector375~13_combout\ & (\Selector372~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~13_combout\,
	datab => \Selector371~20_combout\,
	datac => \Selector372~8_combout\,
	datad => \Selector49~0_combout\,
	combout => \Selector372~9_combout\);

-- Location: LCCOMB_X43_Y38_N28
\Selector372~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector372~10_combout\ = (\Selector372~9_combout\) # ((\Selector52~0_combout\ & \Selector371~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~0_combout\,
	datab => \Selector372~9_combout\,
	datad => \Selector371~20_combout\,
	combout => \Selector372~10_combout\);

-- Location: LCCOMB_X47_Y39_N8
\Selector379~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector379~13_combout\ = (\B[5]~input_o\) # (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Selector379~13_combout\);

-- Location: LCCOMB_X47_Y39_N2
\Selector329~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector329~0_combout\ = (\Selector379~13_combout\) # ((\B[3]~input_o\) # ((\B[4]~input_o\) # (!\Selector371~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~13_combout\,
	datab => \B[3]~input_o\,
	datac => \Selector371~2_combout\,
	datad => \B[4]~input_o\,
	combout => \Selector329~0_combout\);

-- Location: LCCOMB_X47_Y39_N20
\Selector371~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~8_combout\ = (\ShiftFN[1]~input_o\ & \Selector329~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datad => \Selector329~0_combout\,
	combout => \Selector371~8_combout\);

-- Location: LCCOMB_X41_Y39_N2
\Selector371~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~10_combout\ = ((\B[1]~input_o\ & \B[0]~input_o\)) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector371~10_combout\);

-- Location: IOIBUF_X0_Y53_N8
\C[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(12),
	o => \C[12]~input_o\);

-- Location: LCCOMB_X46_Y39_N28
\Selector371~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~11_combout\ = (\B[1]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector371~11_combout\);

-- Location: LCCOMB_X45_Y37_N22
\Selector371~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~12_combout\ = (\B[0]~input_o\) # ((\B[2]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Selector371~12_combout\);

-- Location: LCCOMB_X52_Y37_N10
\Selector371~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~13_combout\ = (\B[0]~input_o\) # ((\B[2]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Selector371~13_combout\);

-- Location: LCCOMB_X47_Y36_N16
\Selector371~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~14_combout\ = (\Selector371~12_combout\ & ((\Selector371~13_combout\ & (\Selector52~0_combout\)) # (!\Selector371~13_combout\ & ((\Selector55~0_combout\))))) # (!\Selector371~12_combout\ & (((\Selector371~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~0_combout\,
	datab => \Selector55~0_combout\,
	datac => \Selector371~12_combout\,
	datad => \Selector371~13_combout\,
	combout => \Selector371~14_combout\);

-- Location: LCCOMB_X52_Y37_N0
\Selector375~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~16_combout\ = (!\B[0]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Selector375~16_combout\);

-- Location: LCCOMB_X47_Y36_N2
\Selector371~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~15_combout\ = (\Selector371~14_combout\ & ((\Selector63~0_combout\) # ((!\Selector375~16_combout\)))) # (!\Selector371~14_combout\ & (((\Selector59~0_combout\ & \Selector375~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~14_combout\,
	datab => \Selector63~0_combout\,
	datac => \Selector59~0_combout\,
	datad => \Selector375~16_combout\,
	combout => \Selector371~15_combout\);

-- Location: LCCOMB_X47_Y36_N12
\Selector371~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~16_combout\ = (\Selector371~10_combout\ & (\Selector371~11_combout\)) # (!\Selector371~10_combout\ & ((\Selector371~11_combout\ & (\Selector53~0_combout\)) # (!\Selector371~11_combout\ & ((\Selector371~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~10_combout\,
	datab => \Selector371~11_combout\,
	datac => \Selector53~0_combout\,
	datad => \Selector371~15_combout\,
	combout => \Selector371~16_combout\);

-- Location: LCCOMB_X47_Y36_N30
\Selector371~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~17_combout\ = (\Selector371~10_combout\ & ((\Selector371~16_combout\ & ((\Selector54~0_combout\))) # (!\Selector371~16_combout\ & (\C[12]~input_o\)))) # (!\Selector371~10_combout\ & (((\Selector371~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~10_combout\,
	datab => \C[12]~input_o\,
	datac => \Selector54~0_combout\,
	datad => \Selector371~16_combout\,
	combout => \Selector371~17_combout\);

-- Location: LCCOMB_X48_Y39_N14
\Selector371~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~9_combout\ = (\Selector371~20_combout\) # ((\ShiftFN[1]~input_o\ & (\B[1]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Selector371~20_combout\,
	datad => \B[0]~input_o\,
	combout => \Selector371~9_combout\);

-- Location: LCCOMB_X46_Y35_N4
\Selector371~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~18_combout\ = (\Selector371~8_combout\ & (((\Selector371~9_combout\)))) # (!\Selector371~8_combout\ & ((\Selector371~9_combout\ & (\Selector51~0_combout\)) # (!\Selector371~9_combout\ & ((\Selector371~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~0_combout\,
	datab => \Selector371~8_combout\,
	datac => \Selector371~17_combout\,
	datad => \Selector371~9_combout\,
	combout => \Selector371~18_combout\);

-- Location: IOIBUF_X45_Y73_N1
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X47_Y38_N2
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[12]~input_o\)) # (!\ExtWord~input_o\ & ((\A[44]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[12]~input_o\,
	datad => \A[44]~input_o\,
	combout => \Selector19~0_combout\);

-- Location: IOIBUF_X115_Y42_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X47_Y38_N16
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[28]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[60]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[60]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X49_Y35_N30
\SRL64_A|Mux32|Mux63~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~14_combout\ = (\B[4]~input_o\ & ((\Selector3~0_combout\))) # (!\B[4]~input_o\ & (\Selector19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~0_combout\,
	datab => \Selector3~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~14_combout\);

-- Location: LCCOMB_X47_Y38_N20
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\A[28]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X49_Y35_N0
\Selector371~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~4_combout\ = (\SLL64_A|Mux8|Mux63~0_combout\ & (((\Selector379~2_combout\)))) # (!\SLL64_A|Mux8|Mux63~0_combout\ & ((\Selector379~2_combout\ & (\SRL64_A|Mux32|Mux63~14_combout\)) # (!\Selector379~2_combout\ & ((\Selector35~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~14_combout\,
	datab => \SLL64_A|Mux8|Mux63~0_combout\,
	datac => \Selector35~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector371~4_combout\);

-- Location: LCCOMB_X49_Y35_N18
\Selector371~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~5_combout\ = (\Selector371~4_combout\ & ((\Selector43~0_combout\) # ((!\SLL64_A|Mux8|Mux63~0_combout\)))) # (!\Selector371~4_combout\ & (((\Selector47~0_combout\ & \SLL64_A|Mux8|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~0_combout\,
	datab => \Selector371~4_combout\,
	datac => \Selector47~0_combout\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \Selector371~5_combout\);

-- Location: LCCOMB_X46_Y35_N8
\Selector371~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~6_combout\ = (\Selector379~1_combout\ & (((!\Selector371~2_combout\)))) # (!\Selector379~1_combout\ & ((\Selector371~2_combout\ & (\Selector371~5_combout\)) # (!\Selector371~2_combout\ & ((\Selector50~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~5_combout\,
	datab => \Selector379~1_combout\,
	datac => \Selector50~0_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector371~6_combout\);

-- Location: LCCOMB_X46_Y35_N10
\Selector371~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~7_combout\ = (\Selector379~1_combout\ & ((\Selector371~6_combout\ & (\Selector49~0_combout\)) # (!\Selector371~6_combout\ & ((\Selector39~0_combout\))))) # (!\Selector379~1_combout\ & (((\Selector371~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector49~0_combout\,
	datab => \Selector379~1_combout\,
	datac => \Selector371~6_combout\,
	datad => \Selector39~0_combout\,
	combout => \Selector371~7_combout\);

-- Location: LCCOMB_X46_Y35_N14
\Selector371~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector371~19_combout\ = (\Selector371~8_combout\ & ((\Selector371~18_combout\ & (\Selector48~0_combout\)) # (!\Selector371~18_combout\ & ((\Selector371~7_combout\))))) # (!\Selector371~8_combout\ & (((\Selector371~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~0_combout\,
	datab => \Selector371~8_combout\,
	datac => \Selector371~18_combout\,
	datad => \Selector371~7_combout\,
	combout => \Selector371~19_combout\);

-- Location: IOIBUF_X0_Y24_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X0_Y20_N15
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LCCOMB_X48_Y38_N8
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[29]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[61]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[29]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Selector2~0_combout\);

-- Location: IOIBUF_X0_Y22_N15
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X46_Y38_N4
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[13]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[45]~input_o\)))) # (!\ExtWord~input_o\ & (\A[45]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[13]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X48_Y38_N10
\SRL64_A|Mux32|Mux63~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~15_combout\ = (\B[4]~input_o\ & (\Selector2~0_combout\)) # (!\B[4]~input_o\ & ((\Selector18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector2~0_combout\,
	datac => \Selector18~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~15_combout\);

-- Location: LCCOMB_X48_Y38_N4
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\A[29]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X49_Y38_N4
\Selector370~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector370~0_combout\ = (\SLL64_A|Mux8|Mux63~0_combout\ & (((\Selector46~0_combout\) # (\Selector379~2_combout\)))) # (!\SLL64_A|Mux8|Mux63~0_combout\ & (\Selector34~0_combout\ & ((!\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~0_combout\,
	datab => \Selector34~0_combout\,
	datac => \Selector46~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector370~0_combout\);

-- Location: LCCOMB_X49_Y38_N22
\Selector370~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector370~1_combout\ = (\Selector370~0_combout\ & (((\Selector42~0_combout\) # (!\Selector379~2_combout\)))) # (!\Selector370~0_combout\ & (\SRL64_A|Mux32|Mux63~15_combout\ & ((\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~15_combout\,
	datab => \Selector370~0_combout\,
	datac => \Selector42~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector370~1_combout\);

-- Location: LCCOMB_X49_Y38_N8
\Selector370~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector370~2_combout\ = (\Selector379~1_combout\ & ((\Selector38~0_combout\) # ((!\Selector371~2_combout\)))) # (!\Selector379~1_combout\ & (((\Selector370~1_combout\ & \Selector371~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~0_combout\,
	datab => \Selector379~1_combout\,
	datac => \Selector370~1_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector370~2_combout\);

-- Location: LCCOMB_X46_Y35_N24
\Selector370~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector370~3_combout\ = (\Selector371~2_combout\ & (((\Selector370~2_combout\)))) # (!\Selector371~2_combout\ & ((\Selector370~2_combout\ & (\Selector48~0_combout\)) # (!\Selector370~2_combout\ & ((\Selector49~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~0_combout\,
	datab => \Selector371~2_combout\,
	datac => \Selector49~0_combout\,
	datad => \Selector370~2_combout\,
	combout => \Selector370~3_combout\);

-- Location: IOIBUF_X58_Y73_N8
\C[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(13),
	o => \C[13]~input_o\);

-- Location: LCCOMB_X47_Y36_N0
\Selector370~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector370~4_combout\ = (\Selector371~12_combout\ & ((\Selector371~13_combout\ & (\Selector51~0_combout\)) # (!\Selector371~13_combout\ & ((\Selector54~0_combout\))))) # (!\Selector371~12_combout\ & (((\Selector371~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~0_combout\,
	datab => \Selector54~0_combout\,
	datac => \Selector371~12_combout\,
	datad => \Selector371~13_combout\,
	combout => \Selector370~4_combout\);

-- Location: LCCOMB_X47_Y36_N18
\Selector370~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector370~5_combout\ = (\Selector370~4_combout\ & (((\Selector62~0_combout\) # (!\Selector375~16_combout\)))) # (!\Selector370~4_combout\ & (\Selector58~0_combout\ & ((\Selector375~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector58~0_combout\,
	datab => \Selector370~4_combout\,
	datac => \Selector62~0_combout\,
	datad => \Selector375~16_combout\,
	combout => \Selector370~5_combout\);

-- Location: LCCOMB_X47_Y36_N28
\Selector370~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector370~6_combout\ = (\Selector371~10_combout\ & ((\Selector371~11_combout\) # ((\C[13]~input_o\)))) # (!\Selector371~10_combout\ & (!\Selector371~11_combout\ & ((\Selector370~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~10_combout\,
	datab => \Selector371~11_combout\,
	datac => \C[13]~input_o\,
	datad => \Selector370~5_combout\,
	combout => \Selector370~6_combout\);

-- Location: LCCOMB_X47_Y36_N6
\Selector370~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector370~7_combout\ = (\Selector371~11_combout\ & ((\Selector370~6_combout\ & ((\Selector53~0_combout\))) # (!\Selector370~6_combout\ & (\Selector52~0_combout\)))) # (!\Selector371~11_combout\ & (((\Selector370~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~0_combout\,
	datab => \Selector371~11_combout\,
	datac => \Selector53~0_combout\,
	datad => \Selector370~6_combout\,
	combout => \Selector370~7_combout\);

-- Location: LCCOMB_X46_Y35_N26
\Selector370~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector370~8_combout\ = (\Selector371~9_combout\ & (((\Selector371~8_combout\)))) # (!\Selector371~9_combout\ & ((\Selector371~8_combout\ & (\Selector370~3_combout\)) # (!\Selector371~8_combout\ & ((\Selector370~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~9_combout\,
	datab => \Selector370~3_combout\,
	datac => \Selector370~7_combout\,
	datad => \Selector371~8_combout\,
	combout => \Selector370~8_combout\);

-- Location: LCCOMB_X46_Y35_N12
\Selector370~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector370~9_combout\ = (\Selector371~9_combout\ & ((\Selector370~8_combout\ & ((\Selector47~0_combout\))) # (!\Selector370~8_combout\ & (\Selector50~0_combout\)))) # (!\Selector371~9_combout\ & (((\Selector370~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~9_combout\,
	datab => \Selector50~0_combout\,
	datac => \Selector370~8_combout\,
	datad => \Selector47~0_combout\,
	combout => \Selector370~9_combout\);

-- Location: IOIBUF_X54_Y0_N1
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X49_Y37_N10
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[30]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[62]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[30]~input_o\,
	datad => \A[62]~input_o\,
	combout => \Selector1~0_combout\);

-- Location: IOIBUF_X115_Y35_N15
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X49_Y37_N12
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[14]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[46]~input_o\)))) # (!\ExtWord~input_o\ & (((\A[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[46]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X49_Y37_N22
\SRL64_A|Mux32|Mux63~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~16_combout\ = (\B[4]~input_o\ & (\Selector1~0_combout\)) # (!\B[4]~input_o\ & ((\Selector17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~16_combout\);

-- Location: LCCOMB_X49_Y37_N16
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\A[30]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[30]~input_o\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X48_Y37_N18
\Selector369~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector369~0_combout\ = (\Selector379~2_combout\ & ((\SRL64_A|Mux32|Mux63~16_combout\) # ((\SLL64_A|Mux8|Mux63~0_combout\)))) # (!\Selector379~2_combout\ & (((\Selector33~0_combout\ & !\SLL64_A|Mux8|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~2_combout\,
	datab => \SRL64_A|Mux32|Mux63~16_combout\,
	datac => \Selector33~0_combout\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \Selector369~0_combout\);

-- Location: LCCOMB_X48_Y37_N12
\Selector369~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector369~1_combout\ = (\Selector369~0_combout\ & (((\Selector41~0_combout\) # (!\SLL64_A|Mux8|Mux63~0_combout\)))) # (!\Selector369~0_combout\ & (\Selector45~0_combout\ & ((\SLL64_A|Mux8|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~0_combout\,
	datab => \Selector369~0_combout\,
	datac => \Selector41~0_combout\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \Selector369~1_combout\);

-- Location: LCCOMB_X48_Y37_N14
\Selector369~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector369~2_combout\ = (\Selector379~1_combout\ & (((!\Selector371~2_combout\)))) # (!\Selector379~1_combout\ & ((\Selector371~2_combout\ & (\Selector369~1_combout\)) # (!\Selector371~2_combout\ & ((\Selector48~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector369~1_combout\,
	datab => \Selector379~1_combout\,
	datac => \Selector48~0_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector369~2_combout\);

-- Location: LCCOMB_X48_Y37_N16
\Selector369~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector369~3_combout\ = (\Selector369~2_combout\ & ((\Selector47~0_combout\) # ((!\Selector379~1_combout\)))) # (!\Selector369~2_combout\ & (((\Selector37~0_combout\ & \Selector379~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~0_combout\,
	datab => \Selector369~2_combout\,
	datac => \Selector37~0_combout\,
	datad => \Selector379~1_combout\,
	combout => \Selector369~3_combout\);

-- Location: IOIBUF_X0_Y26_N15
\C[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(14),
	o => \C[14]~input_o\);

-- Location: LCCOMB_X45_Y37_N16
\Selector369~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector369~4_combout\ = (\Selector371~12_combout\ & ((\Selector371~13_combout\ & ((\Selector50~0_combout\))) # (!\Selector371~13_combout\ & (\Selector53~0_combout\)))) # (!\Selector371~12_combout\ & (((\Selector371~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector53~0_combout\,
	datab => \Selector50~0_combout\,
	datac => \Selector371~12_combout\,
	datad => \Selector371~13_combout\,
	combout => \Selector369~4_combout\);

-- Location: LCCOMB_X45_Y37_N26
\Selector369~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector369~5_combout\ = (\Selector369~4_combout\ & ((\Selector61~0_combout\) # ((!\Selector375~16_combout\)))) # (!\Selector369~4_combout\ & (((\Selector57~0_combout\ & \Selector375~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector61~0_combout\,
	datab => \Selector369~4_combout\,
	datac => \Selector57~0_combout\,
	datad => \Selector375~16_combout\,
	combout => \Selector369~5_combout\);

-- Location: LCCOMB_X46_Y35_N30
\Selector369~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector369~6_combout\ = (\Selector371~11_combout\ & (((\Selector371~10_combout\) # (\Selector51~0_combout\)))) # (!\Selector371~11_combout\ & (\Selector369~5_combout\ & (!\Selector371~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~11_combout\,
	datab => \Selector369~5_combout\,
	datac => \Selector371~10_combout\,
	datad => \Selector51~0_combout\,
	combout => \Selector369~6_combout\);

-- Location: LCCOMB_X46_Y35_N16
\Selector369~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector369~7_combout\ = (\Selector371~10_combout\ & ((\Selector369~6_combout\ & ((\Selector52~0_combout\))) # (!\Selector369~6_combout\ & (\C[14]~input_o\)))) # (!\Selector371~10_combout\ & (((\Selector369~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[14]~input_o\,
	datab => \Selector371~10_combout\,
	datac => \Selector369~6_combout\,
	datad => \Selector52~0_combout\,
	combout => \Selector369~7_combout\);

-- Location: LCCOMB_X46_Y35_N2
\Selector369~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector369~8_combout\ = (\Selector371~9_combout\ & ((\Selector371~8_combout\) # ((\Selector49~0_combout\)))) # (!\Selector371~9_combout\ & (!\Selector371~8_combout\ & ((\Selector369~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~9_combout\,
	datab => \Selector371~8_combout\,
	datac => \Selector49~0_combout\,
	datad => \Selector369~7_combout\,
	combout => \Selector369~8_combout\);

-- Location: LCCOMB_X46_Y35_N20
\Selector369~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector369~9_combout\ = (\Selector369~8_combout\ & (((\Selector46~0_combout\) # (!\Selector371~8_combout\)))) # (!\Selector369~8_combout\ & (\Selector369~3_combout\ & ((\Selector371~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector369~3_combout\,
	datab => \Selector369~8_combout\,
	datac => \Selector46~0_combout\,
	datad => \Selector371~8_combout\,
	combout => \Selector369~9_combout\);

-- Location: IOIBUF_X0_Y27_N15
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X43_Y34_N26
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[31]~input_o\)) # (!\ExtWord~input_o\ & ((\A[63]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[31]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Selector0~0_combout\);

-- Location: IOIBUF_X0_Y36_N22
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X43_Y34_N20
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

-- Location: LCCOMB_X48_Y38_N14
\SRL64_A|Mux32|Mux63~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~17_combout\ = (\B[4]~input_o\ & (\Selector0~0_combout\)) # (!\B[4]~input_o\ & ((\Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector16~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~17_combout\);

-- Location: LCCOMB_X43_Y34_N22
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\A[31]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[31]~input_o\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X46_Y36_N30
\Selector368~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector368~0_combout\ = (\SLL64_A|Mux8|Mux63~0_combout\ & (((\Selector44~0_combout\) # (\Selector379~2_combout\)))) # (!\SLL64_A|Mux8|Mux63~0_combout\ & (\Selector32~0_combout\ & ((!\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \SLL64_A|Mux8|Mux63~0_combout\,
	datac => \Selector44~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector368~0_combout\);

-- Location: LCCOMB_X46_Y36_N16
\Selector368~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector368~1_combout\ = (\Selector368~0_combout\ & (((\Selector40~0_combout\) # (!\Selector379~2_combout\)))) # (!\Selector368~0_combout\ & (\SRL64_A|Mux32|Mux63~17_combout\ & ((\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~17_combout\,
	datab => \Selector40~0_combout\,
	datac => \Selector368~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector368~1_combout\);

-- Location: LCCOMB_X46_Y36_N2
\Selector368~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector368~2_combout\ = (\Selector379~1_combout\ & ((\Selector36~0_combout\) # ((!\Selector371~2_combout\)))) # (!\Selector379~1_combout\ & (((\Selector368~1_combout\ & \Selector371~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~0_combout\,
	datab => \Selector368~1_combout\,
	datac => \Selector379~1_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector368~2_combout\);

-- Location: LCCOMB_X46_Y35_N6
\Selector368~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector368~3_combout\ = (\Selector368~2_combout\ & (((\Selector46~0_combout\) # (\Selector371~2_combout\)))) # (!\Selector368~2_combout\ & (\Selector47~0_combout\ & ((!\Selector371~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector368~2_combout\,
	datab => \Selector47~0_combout\,
	datac => \Selector46~0_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector368~3_combout\);

-- Location: LCCOMB_X45_Y37_N28
\Selector368~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector368~4_combout\ = (\Selector371~12_combout\ & ((\Selector371~13_combout\ & ((\Selector49~0_combout\))) # (!\Selector371~13_combout\ & (\Selector52~0_combout\)))) # (!\Selector371~12_combout\ & (((\Selector371~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~12_combout\,
	datab => \Selector52~0_combout\,
	datac => \Selector49~0_combout\,
	datad => \Selector371~13_combout\,
	combout => \Selector368~4_combout\);

-- Location: LCCOMB_X45_Y37_N30
\Selector368~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector368~5_combout\ = (\Selector368~4_combout\ & (((\Selector60~0_combout\) # (!\Selector375~16_combout\)))) # (!\Selector368~4_combout\ & (\Selector56~0_combout\ & ((\Selector375~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector56~0_combout\,
	datab => \Selector368~4_combout\,
	datac => \Selector60~0_combout\,
	datad => \Selector375~16_combout\,
	combout => \Selector368~5_combout\);

-- Location: IOIBUF_X65_Y0_N1
\C[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(15),
	o => \C[15]~input_o\);

-- Location: LCCOMB_X46_Y35_N0
\Selector368~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector368~6_combout\ = (\Selector371~11_combout\ & (((\Selector371~10_combout\)))) # (!\Selector371~11_combout\ & ((\Selector371~10_combout\ & ((\C[15]~input_o\))) # (!\Selector371~10_combout\ & (\Selector368~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~11_combout\,
	datab => \Selector368~5_combout\,
	datac => \Selector371~10_combout\,
	datad => \C[15]~input_o\,
	combout => \Selector368~6_combout\);

-- Location: LCCOMB_X46_Y35_N18
\Selector368~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector368~7_combout\ = (\Selector371~11_combout\ & ((\Selector368~6_combout\ & ((\Selector51~0_combout\))) # (!\Selector368~6_combout\ & (\Selector50~0_combout\)))) # (!\Selector371~11_combout\ & (\Selector368~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~11_combout\,
	datab => \Selector368~6_combout\,
	datac => \Selector50~0_combout\,
	datad => \Selector51~0_combout\,
	combout => \Selector368~7_combout\);

-- Location: LCCOMB_X46_Y35_N28
\Selector368~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector368~8_combout\ = (\Selector371~8_combout\ & ((\Selector368~3_combout\) # ((\Selector371~9_combout\)))) # (!\Selector371~8_combout\ & (((!\Selector371~9_combout\ & \Selector368~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector368~3_combout\,
	datab => \Selector371~8_combout\,
	datac => \Selector371~9_combout\,
	datad => \Selector368~7_combout\,
	combout => \Selector368~8_combout\);

-- Location: LCCOMB_X46_Y35_N22
\Selector368~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector368~9_combout\ = (\Selector368~8_combout\ & (((\Selector45~0_combout\) # (!\Selector371~9_combout\)))) # (!\Selector368~8_combout\ & (\Selector48~0_combout\ & ((\Selector371~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~0_combout\,
	datab => \Selector368~8_combout\,
	datac => \Selector45~0_combout\,
	datad => \Selector371~9_combout\,
	combout => \Selector368~9_combout\);

-- Location: LCCOMB_X43_Y34_N24
\Selector361~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~7_combout\ = (\B[0]~input_o\) # ((!\B[2]~input_o\ & (\ShiftFN[0]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Selector361~7_combout\);

-- Location: LCCOMB_X50_Y37_N28
\Selector361~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~9_combout\ = (\B[0]~input_o\) # ((!\B[2]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Selector361~9_combout\);

-- Location: LCCOMB_X50_Y37_N2
\Selector361~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~8_combout\ = (\B[0]~input_o\) # ((!\B[2]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Selector361~8_combout\);

-- Location: LCCOMB_X50_Y36_N24
\Selector367~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector367~5_combout\ = (\Selector361~9_combout\ & (((\Selector15~0_combout\) # (\Selector361~8_combout\)))) # (!\Selector361~9_combout\ & (\Selector43~0_combout\ & ((!\Selector361~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~0_combout\,
	datab => \Selector15~0_combout\,
	datac => \Selector361~9_combout\,
	datad => \Selector361~8_combout\,
	combout => \Selector367~5_combout\);

-- Location: LCCOMB_X50_Y36_N2
\Selector367~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector367~6_combout\ = (\Selector361~7_combout\ & ((\Selector367~5_combout\ & (\Selector46~0_combout\)) # (!\Selector367~5_combout\ & ((\Selector0~0_combout\))))) # (!\Selector361~7_combout\ & (((\Selector367~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector361~7_combout\,
	datad => \Selector367~5_combout\,
	combout => \Selector367~6_combout\);

-- Location: LCCOMB_X50_Y37_N24
\Selector361~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~6_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\))) # (!\B[1]~input_o\ & (\B[3]~input_o\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Selector361~6_combout\);

-- Location: LCCOMB_X48_Y34_N26
\Selector367~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector367~7_combout\ = (\Selector361~6_combout\ & (((\B[1]~input_o\)))) # (!\Selector361~6_combout\ & ((\B[1]~input_o\ & ((\Selector45~0_combout\))) # (!\B[1]~input_o\ & (\Selector367~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector367~6_combout\,
	datab => \Selector45~0_combout\,
	datac => \Selector361~6_combout\,
	datad => \B[1]~input_o\,
	combout => \Selector367~7_combout\);

-- Location: LCCOMB_X48_Y34_N12
\Selector367~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector367~8_combout\ = (\Selector367~7_combout\ & ((\Selector44~0_combout\) # ((!\Selector361~6_combout\)))) # (!\Selector367~7_combout\ & (((\Selector361~6_combout\ & \Selector39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector367~7_combout\,
	datab => \Selector44~0_combout\,
	datac => \Selector361~6_combout\,
	datad => \Selector39~0_combout\,
	combout => \Selector367~8_combout\);

-- Location: LCCOMB_X48_Y38_N30
\Selector361~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~22_combout\ = ((\B[3]~input_o\) # ((\B[2]~input_o\) # (\B[5]~input_o\))) # (!\Selector371~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~2_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Selector361~22_combout\);

-- Location: LCCOMB_X49_Y40_N24
\Selector361~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~4_combout\ = (!\B[1]~input_o\ & (\B[3]~input_o\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Selector361~4_combout\);

-- Location: LCCOMB_X50_Y34_N24
\Selector361~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~5_combout\ = (\Selector361~22_combout\ & (\B[2]~input_o\ & (\Selector361~4_combout\))) # (!\Selector361~22_combout\ & ((\B[4]~input_o\) # ((\B[2]~input_o\ & \Selector361~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~22_combout\,
	datab => \B[2]~input_o\,
	datac => \Selector361~4_combout\,
	datad => \B[4]~input_o\,
	combout => \Selector361~5_combout\);

-- Location: LCCOMB_X48_Y34_N30
\Selector367~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector367~9_combout\ = (\Selector361~22_combout\ & ((\Selector367~8_combout\) # ((\Selector361~5_combout\)))) # (!\Selector361~22_combout\ & (((!\Selector361~5_combout\ & \Selector47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector367~8_combout\,
	datab => \Selector361~22_combout\,
	datac => \Selector361~5_combout\,
	datad => \Selector47~0_combout\,
	combout => \Selector367~9_combout\);

-- Location: LCCOMB_X48_Y34_N16
\Selector367~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector367~10_combout\ = (\Selector367~9_combout\ & ((\Selector35~0_combout\) # ((!\Selector361~5_combout\)))) # (!\Selector367~9_combout\ & (((\Selector361~5_combout\ & \Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector367~9_combout\,
	datab => \Selector35~0_combout\,
	datac => \Selector361~5_combout\,
	datad => \Selector31~0_combout\,
	combout => \Selector367~10_combout\);

-- Location: LCCOMB_X49_Y35_N4
\SRL64_A|Mux32|Mux63~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~18_combout\ = (!\tempA~0_combout\ & ((\B[4]~input_o\ & ((\A[0]~input_o\))) # (!\B[4]~input_o\ & (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempA~0_combout\,
	datab => \A[16]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~18_combout\);

-- Location: LCCOMB_X48_Y35_N0
\Selector367~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector367~0_combout\ = (\B[2]~input_o\ & ((\Selector51~0_combout\) # ((\Selector379~2_combout\)))) # (!\B[2]~input_o\ & (((\SRL64_A|Mux32|Mux63~18_combout\ & !\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~0_combout\,
	datab => \SRL64_A|Mux32|Mux63~18_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector379~2_combout\,
	combout => \Selector367~0_combout\);

-- Location: LCCOMB_X48_Y35_N2
\Selector367~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector367~1_combout\ = (\B[3]~input_o\ & ((\Selector367~0_combout\ & (\Selector59~0_combout\)) # (!\Selector367~0_combout\ & ((\Selector55~0_combout\))))) # (!\B[3]~input_o\ & (\Selector367~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Selector367~0_combout\,
	datac => \Selector59~0_combout\,
	datad => \Selector55~0_combout\,
	combout => \Selector367~1_combout\);

-- Location: LCCOMB_X42_Y34_N0
\Selector367~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector367~2_combout\ = (\B[0]~input_o\ & (((\B[1]~input_o\) # (\Selector48~0_combout\)))) # (!\B[0]~input_o\ & (\Selector367~1_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Selector367~1_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector48~0_combout\,
	combout => \Selector367~2_combout\);

-- Location: LCCOMB_X42_Y34_N2
\Selector367~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector367~3_combout\ = (\B[1]~input_o\ & ((\Selector367~2_combout\ & (\Selector50~0_combout\)) # (!\Selector367~2_combout\ & ((\Selector49~0_combout\))))) # (!\B[1]~input_o\ & (((\Selector367~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector50~0_combout\,
	datab => \Selector49~0_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector367~2_combout\,
	combout => \Selector367~3_combout\);

-- Location: IOIBUF_X115_Y34_N15
\C[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(16),
	o => \C[16]~input_o\);

-- Location: LCCOMB_X48_Y34_N24
\Selector367~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector367~4_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Selector367~3_combout\)) # (!\ShiftFN[0]~input_o\ & ((\C[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector367~3_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \C[16]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector367~4_combout\);

-- Location: LCCOMB_X47_Y34_N16
\Selector367~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector367~11_combout\ = (\Selector367~4_combout\) # ((\ShiftFN[1]~input_o\ & \Selector367~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector367~10_combout\,
	datad => \Selector367~4_combout\,
	combout => \Selector367~11_combout\);

-- Location: LCCOMB_X47_Y35_N12
\Selector366~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector366~9_combout\ = (\Selector361~5_combout\ & (((\Selector361~22_combout\) # (\Selector30~0_combout\)))) # (!\Selector361~5_combout\ & (\Selector46~0_combout\ & (!\Selector361~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~0_combout\,
	datab => \Selector361~5_combout\,
	datac => \Selector361~22_combout\,
	datad => \Selector30~0_combout\,
	combout => \Selector366~9_combout\);

-- Location: LCCOMB_X50_Y35_N24
\Selector366~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector366~5_combout\ = (\Selector361~9_combout\ & ((\Selector14~0_combout\) # ((\Selector361~8_combout\)))) # (!\Selector361~9_combout\ & (((\Selector42~0_combout\ & !\Selector361~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~0_combout\,
	datab => \Selector361~9_combout\,
	datac => \Selector42~0_combout\,
	datad => \Selector361~8_combout\,
	combout => \Selector366~5_combout\);

-- Location: LCCOMB_X50_Y35_N10
\Selector366~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector366~6_combout\ = (\Selector361~7_combout\ & ((\Selector366~5_combout\ & ((\Selector45~0_combout\))) # (!\Selector366~5_combout\ & (\Selector0~0_combout\)))) # (!\Selector361~7_combout\ & (((\Selector366~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector361~7_combout\,
	datac => \Selector45~0_combout\,
	datad => \Selector366~5_combout\,
	combout => \Selector366~6_combout\);

-- Location: LCCOMB_X47_Y35_N16
\Selector366~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector366~7_combout\ = (\B[1]~input_o\ & (((\Selector361~6_combout\)))) # (!\B[1]~input_o\ & ((\Selector361~6_combout\ & ((\Selector38~0_combout\))) # (!\Selector361~6_combout\ & (\Selector366~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector366~6_combout\,
	datab => \Selector38~0_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector361~6_combout\,
	combout => \Selector366~7_combout\);

-- Location: LCCOMB_X47_Y35_N10
\Selector366~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector366~8_combout\ = (\Selector366~7_combout\ & ((\Selector43~0_combout\) # ((!\B[1]~input_o\)))) # (!\Selector366~7_combout\ & (((\B[1]~input_o\ & \Selector44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~0_combout\,
	datab => \Selector366~7_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector44~0_combout\,
	combout => \Selector366~8_combout\);

-- Location: LCCOMB_X47_Y35_N14
\Selector366~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector366~10_combout\ = (\Selector366~9_combout\ & (((\Selector34~0_combout\) # (!\Selector361~22_combout\)))) # (!\Selector366~9_combout\ & (\Selector366~8_combout\ & (\Selector361~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector366~9_combout\,
	datab => \Selector366~8_combout\,
	datac => \Selector361~22_combout\,
	datad => \Selector34~0_combout\,
	combout => \Selector366~10_combout\);

-- Location: LCCOMB_X45_Y35_N16
\SRL64_A|Mux32|Mux63~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~19_combout\ = (!\tempA~0_combout\ & ((\B[4]~input_o\ & (\A[1]~input_o\)) # (!\B[4]~input_o\ & ((\A[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[17]~input_o\,
	datac => \B[4]~input_o\,
	datad => \tempA~0_combout\,
	combout => \SRL64_A|Mux32|Mux63~19_combout\);

-- Location: LCCOMB_X46_Y36_N28
\Selector366~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector366~0_combout\ = (\B[2]~input_o\ & (((\Selector50~0_combout\) # (\Selector379~2_combout\)))) # (!\B[2]~input_o\ & (\SRL64_A|Mux32|Mux63~19_combout\ & ((!\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~19_combout\,
	datab => \B[2]~input_o\,
	datac => \Selector50~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector366~0_combout\);

-- Location: LCCOMB_X46_Y36_N22
\Selector366~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector366~1_combout\ = (\Selector366~0_combout\ & ((\Selector58~0_combout\) # ((!\B[3]~input_o\)))) # (!\Selector366~0_combout\ & (((\B[3]~input_o\ & \Selector54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector58~0_combout\,
	datab => \Selector366~0_combout\,
	datac => \B[3]~input_o\,
	datad => \Selector54~0_combout\,
	combout => \Selector366~1_combout\);

-- Location: LCCOMB_X42_Y34_N12
\Selector366~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector366~2_combout\ = (\B[0]~input_o\ & (((\B[1]~input_o\) # (\Selector47~0_combout\)))) # (!\B[0]~input_o\ & (\Selector366~1_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Selector366~1_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector47~0_combout\,
	combout => \Selector366~2_combout\);

-- Location: LCCOMB_X42_Y34_N6
\Selector366~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector366~3_combout\ = (\Selector366~2_combout\ & ((\Selector49~0_combout\) # ((!\B[1]~input_o\)))) # (!\Selector366~2_combout\ & (((\B[1]~input_o\ & \Selector48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector366~2_combout\,
	datab => \Selector49~0_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector48~0_combout\,
	combout => \Selector366~3_combout\);

-- Location: IOIBUF_X0_Y34_N15
\C[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(17),
	o => \C[17]~input_o\);

-- Location: LCCOMB_X42_Y34_N24
\Selector366~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector366~4_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Selector366~3_combout\)) # (!\ShiftFN[0]~input_o\ & ((\C[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector366~3_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \C[17]~input_o\,
	combout => \Selector366~4_combout\);

-- Location: LCCOMB_X42_Y34_N10
\Selector366~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector366~11_combout\ = (\Selector366~4_combout\) # ((\ShiftFN[1]~input_o\ & \Selector366~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector366~10_combout\,
	datad => \Selector366~4_combout\,
	combout => \Selector366~11_combout\);

-- Location: LCCOMB_X45_Y36_N22
\SRL64_A|Mux32|Mux63~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~20_combout\ = (!\tempA~0_combout\ & ((\B[4]~input_o\ & ((\A[2]~input_o\))) # (!\B[4]~input_o\ & (\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \tempA~0_combout\,
	datac => \A[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~20_combout\);

-- Location: LCCOMB_X45_Y34_N26
\Selector365~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector365~0_combout\ = (\B[2]~input_o\ & (((\Selector49~0_combout\) # (\Selector379~2_combout\)))) # (!\B[2]~input_o\ & (\SRL64_A|Mux32|Mux63~20_combout\ & ((!\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64_A|Mux32|Mux63~20_combout\,
	datac => \Selector49~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector365~0_combout\);

-- Location: LCCOMB_X45_Y34_N4
\Selector365~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector365~1_combout\ = (\B[3]~input_o\ & ((\Selector365~0_combout\ & ((\Selector57~0_combout\))) # (!\Selector365~0_combout\ & (\Selector53~0_combout\)))) # (!\B[3]~input_o\ & (((\Selector365~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Selector53~0_combout\,
	datac => \Selector365~0_combout\,
	datad => \Selector57~0_combout\,
	combout => \Selector365~1_combout\);

-- Location: LCCOMB_X42_Y34_N4
\Selector365~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector365~2_combout\ = (\B[0]~input_o\ & (((\B[1]~input_o\) # (\Selector46~0_combout\)))) # (!\B[0]~input_o\ & (\Selector365~1_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Selector365~1_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector46~0_combout\,
	combout => \Selector365~2_combout\);

-- Location: LCCOMB_X42_Y34_N30
\Selector365~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector365~3_combout\ = (\Selector365~2_combout\ & ((\Selector48~0_combout\) # ((!\B[1]~input_o\)))) # (!\Selector365~2_combout\ & (((\B[1]~input_o\ & \Selector47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~0_combout\,
	datab => \Selector365~2_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector47~0_combout\,
	combout => \Selector365~3_combout\);

-- Location: IOIBUF_X0_Y29_N22
\C[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(18),
	o => \C[18]~input_o\);

-- Location: LCCOMB_X42_Y34_N8
\Selector365~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector365~4_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Selector365~3_combout\)) # (!\ShiftFN[0]~input_o\ & ((\C[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector365~3_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \C[18]~input_o\,
	combout => \Selector365~4_combout\);

-- Location: LCCOMB_X50_Y35_N12
\Selector365~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector365~5_combout\ = (\Selector361~9_combout\ & (((\Selector13~0_combout\) # (\Selector361~8_combout\)))) # (!\Selector361~9_combout\ & (\Selector41~0_combout\ & ((!\Selector361~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~0_combout\,
	datab => \Selector361~9_combout\,
	datac => \Selector13~0_combout\,
	datad => \Selector361~8_combout\,
	combout => \Selector365~5_combout\);

-- Location: LCCOMB_X50_Y35_N30
\Selector365~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector365~6_combout\ = (\Selector365~5_combout\ & (((\Selector44~0_combout\) # (!\Selector361~7_combout\)))) # (!\Selector365~5_combout\ & (\Selector0~0_combout\ & ((\Selector361~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector44~0_combout\,
	datac => \Selector365~5_combout\,
	datad => \Selector361~7_combout\,
	combout => \Selector365~6_combout\);

-- Location: LCCOMB_X50_Y34_N2
\Selector365~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector365~7_combout\ = (\B[1]~input_o\ & ((\Selector43~0_combout\) # ((\Selector361~6_combout\)))) # (!\B[1]~input_o\ & (((!\Selector361~6_combout\ & \Selector365~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector361~6_combout\,
	datad => \Selector365~6_combout\,
	combout => \Selector365~7_combout\);

-- Location: LCCOMB_X50_Y34_N4
\Selector365~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector365~8_combout\ = (\Selector361~6_combout\ & ((\Selector365~7_combout\ & (\Selector42~0_combout\)) # (!\Selector365~7_combout\ & ((\Selector37~0_combout\))))) # (!\Selector361~6_combout\ & (((\Selector365~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~6_combout\,
	datab => \Selector42~0_combout\,
	datac => \Selector37~0_combout\,
	datad => \Selector365~7_combout\,
	combout => \Selector365~8_combout\);

-- Location: LCCOMB_X50_Y34_N14
\Selector365~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector365~9_combout\ = (\Selector361~22_combout\ & ((\Selector365~8_combout\) # ((\Selector361~5_combout\)))) # (!\Selector361~22_combout\ & (((\Selector45~0_combout\ & !\Selector361~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~22_combout\,
	datab => \Selector365~8_combout\,
	datac => \Selector45~0_combout\,
	datad => \Selector361~5_combout\,
	combout => \Selector365~9_combout\);

-- Location: LCCOMB_X50_Y34_N8
\Selector365~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector365~10_combout\ = (\Selector365~9_combout\ & ((\Selector33~0_combout\) # ((!\Selector361~5_combout\)))) # (!\Selector365~9_combout\ & (((\Selector29~0_combout\ & \Selector361~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \Selector365~9_combout\,
	datac => \Selector29~0_combout\,
	datad => \Selector361~5_combout\,
	combout => \Selector365~10_combout\);

-- Location: LCCOMB_X42_Y34_N26
\Selector365~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector365~11_combout\ = (\Selector365~4_combout\) # ((\ShiftFN[1]~input_o\ & \Selector365~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector365~4_combout\,
	datad => \Selector365~10_combout\,
	combout => \Selector365~11_combout\);

-- Location: LCCOMB_X50_Y36_N12
\Selector364~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector364~5_combout\ = (\Selector361~9_combout\ & ((\Selector12~0_combout\) # ((\Selector361~8_combout\)))) # (!\Selector361~9_combout\ & (((\Selector40~0_combout\ & !\Selector361~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \Selector361~9_combout\,
	datac => \Selector40~0_combout\,
	datad => \Selector361~8_combout\,
	combout => \Selector364~5_combout\);

-- Location: LCCOMB_X50_Y36_N6
\Selector364~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector364~6_combout\ = (\Selector361~7_combout\ & ((\Selector364~5_combout\ & (\Selector43~0_combout\)) # (!\Selector364~5_combout\ & ((\Selector0~0_combout\))))) # (!\Selector361~7_combout\ & (((\Selector364~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector361~7_combout\,
	datad => \Selector364~5_combout\,
	combout => \Selector364~6_combout\);

-- Location: LCCOMB_X48_Y34_N20
\Selector364~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector364~7_combout\ = (\Selector361~6_combout\ & (((\Selector36~0_combout\) # (\B[1]~input_o\)))) # (!\Selector361~6_combout\ & (\Selector364~6_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector364~6_combout\,
	datab => \Selector36~0_combout\,
	datac => \Selector361~6_combout\,
	datad => \B[1]~input_o\,
	combout => \Selector364~7_combout\);

-- Location: LCCOMB_X48_Y34_N22
\Selector364~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector364~8_combout\ = (\B[1]~input_o\ & ((\Selector364~7_combout\ & ((\Selector41~0_combout\))) # (!\Selector364~7_combout\ & (\Selector42~0_combout\)))) # (!\B[1]~input_o\ & (((\Selector364~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector42~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector41~0_combout\,
	datad => \Selector364~7_combout\,
	combout => \Selector364~8_combout\);

-- Location: LCCOMB_X48_Y34_N8
\Selector364~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector364~9_combout\ = (\Selector361~22_combout\ & (((\Selector361~5_combout\)))) # (!\Selector361~22_combout\ & ((\Selector361~5_combout\ & (\Selector28~0_combout\)) # (!\Selector361~5_combout\ & ((\Selector44~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~0_combout\,
	datab => \Selector361~22_combout\,
	datac => \Selector361~5_combout\,
	datad => \Selector44~0_combout\,
	combout => \Selector364~9_combout\);

-- Location: LCCOMB_X48_Y34_N2
\Selector364~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector364~10_combout\ = (\Selector364~9_combout\ & (((\Selector32~0_combout\) # (!\Selector361~22_combout\)))) # (!\Selector364~9_combout\ & (\Selector364~8_combout\ & (\Selector361~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector364~8_combout\,
	datab => \Selector364~9_combout\,
	datac => \Selector361~22_combout\,
	datad => \Selector32~0_combout\,
	combout => \Selector364~10_combout\);

-- Location: LCCOMB_X47_Y38_N6
\SRL64_A|Mux32|Mux63~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~21_combout\ = (!\tempA~0_combout\ & ((\B[4]~input_o\ & ((\A[3]~input_o\))) # (!\B[4]~input_o\ & (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \tempA~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[3]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~21_combout\);

-- Location: LCCOMB_X46_Y37_N22
\Selector364~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector364~0_combout\ = (\Selector379~2_combout\ & (((\B[2]~input_o\)))) # (!\Selector379~2_combout\ & ((\B[2]~input_o\ & ((\Selector48~0_combout\))) # (!\B[2]~input_o\ & (\SRL64_A|Mux32|Mux63~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~21_combout\,
	datab => \Selector379~2_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector48~0_combout\,
	combout => \Selector364~0_combout\);

-- Location: LCCOMB_X45_Y37_N24
\Selector364~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector364~1_combout\ = (\B[3]~input_o\ & ((\Selector364~0_combout\ & (\Selector56~0_combout\)) # (!\Selector364~0_combout\ & ((\Selector52~0_combout\))))) # (!\B[3]~input_o\ & (((\Selector364~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector56~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Selector52~0_combout\,
	datad => \Selector364~0_combout\,
	combout => \Selector364~1_combout\);

-- Location: LCCOMB_X42_Y34_N20
\Selector364~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector364~2_combout\ = (\B[0]~input_o\ & ((\Selector45~0_combout\) # ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \Selector364~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Selector45~0_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector364~1_combout\,
	combout => \Selector364~2_combout\);

-- Location: LCCOMB_X42_Y34_N14
\Selector364~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector364~3_combout\ = (\Selector364~2_combout\ & ((\Selector47~0_combout\) # ((!\B[1]~input_o\)))) # (!\Selector364~2_combout\ & (((\B[1]~input_o\ & \Selector46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~0_combout\,
	datab => \Selector364~2_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector46~0_combout\,
	combout => \Selector364~3_combout\);

-- Location: IOIBUF_X85_Y0_N8
\C[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(19),
	o => \C[19]~input_o\);

-- Location: LCCOMB_X48_Y34_N10
\Selector364~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector364~4_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Selector364~3_combout\)) # (!\ShiftFN[0]~input_o\ & ((\C[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector364~3_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \C[19]~input_o\,
	combout => \Selector364~4_combout\);

-- Location: LCCOMB_X48_Y34_N4
\Selector364~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector364~11_combout\ = (\Selector364~4_combout\) # ((\Selector364~10_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector364~10_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector364~4_combout\,
	combout => \Selector364~11_combout\);

-- Location: LCCOMB_X50_Y35_N16
\Selector363~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector363~5_combout\ = (\Selector361~9_combout\ & ((\Selector11~0_combout\) # ((\Selector361~8_combout\)))) # (!\Selector361~9_combout\ & (((\Selector39~0_combout\ & !\Selector361~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~0_combout\,
	datab => \Selector361~9_combout\,
	datac => \Selector39~0_combout\,
	datad => \Selector361~8_combout\,
	combout => \Selector363~5_combout\);

-- Location: LCCOMB_X50_Y35_N2
\Selector363~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector363~6_combout\ = (\Selector361~7_combout\ & ((\Selector363~5_combout\ & ((\Selector42~0_combout\))) # (!\Selector363~5_combout\ & (\Selector0~0_combout\)))) # (!\Selector361~7_combout\ & (((\Selector363~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector361~7_combout\,
	datac => \Selector42~0_combout\,
	datad => \Selector363~5_combout\,
	combout => \Selector363~6_combout\);

-- Location: LCCOMB_X50_Y35_N28
\Selector363~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector363~7_combout\ = (\B[1]~input_o\ & (((\Selector41~0_combout\) # (\Selector361~6_combout\)))) # (!\B[1]~input_o\ & (\Selector363~6_combout\ & ((!\Selector361~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector363~6_combout\,
	datac => \Selector41~0_combout\,
	datad => \Selector361~6_combout\,
	combout => \Selector363~7_combout\);

-- Location: LCCOMB_X50_Y34_N10
\Selector363~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector363~8_combout\ = (\Selector363~7_combout\ & ((\Selector40~0_combout\) # ((!\Selector361~6_combout\)))) # (!\Selector363~7_combout\ & (((\Selector361~6_combout\ & \Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector40~0_combout\,
	datab => \Selector363~7_combout\,
	datac => \Selector361~6_combout\,
	datad => \Selector35~0_combout\,
	combout => \Selector363~8_combout\);

-- Location: LCCOMB_X50_Y34_N20
\Selector363~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector363~9_combout\ = (\Selector361~22_combout\ & ((\Selector361~5_combout\) # ((\Selector363~8_combout\)))) # (!\Selector361~22_combout\ & (!\Selector361~5_combout\ & (\Selector43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~22_combout\,
	datab => \Selector361~5_combout\,
	datac => \Selector43~0_combout\,
	datad => \Selector363~8_combout\,
	combout => \Selector363~9_combout\);

-- Location: LCCOMB_X47_Y34_N18
\Selector363~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector363~10_combout\ = (\Selector361~5_combout\ & ((\Selector363~9_combout\ & (\Selector31~0_combout\)) # (!\Selector363~9_combout\ & ((\Selector27~0_combout\))))) # (!\Selector361~5_combout\ & (((\Selector363~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~5_combout\,
	datab => \Selector31~0_combout\,
	datac => \Selector27~0_combout\,
	datad => \Selector363~9_combout\,
	combout => \Selector363~10_combout\);

-- Location: IOIBUF_X29_Y0_N22
\C[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(20),
	o => \C[20]~input_o\);

-- Location: LCCOMB_X48_Y35_N12
\SRL64_A|Mux32|Mux63~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~22_combout\ = (!\tempA~0_combout\ & ((\B[4]~input_o\ & (\A[4]~input_o\)) # (!\B[4]~input_o\ & ((\A[20]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempA~0_combout\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[20]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~22_combout\);

-- Location: LCCOMB_X48_Y35_N30
\Selector363~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector363~0_combout\ = (\B[2]~input_o\ & (((\Selector47~0_combout\) # (\Selector379~2_combout\)))) # (!\B[2]~input_o\ & (\SRL64_A|Mux32|Mux63~22_combout\ & ((!\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~22_combout\,
	datab => \B[2]~input_o\,
	datac => \Selector47~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector363~0_combout\);

-- Location: LCCOMB_X48_Y35_N24
\Selector363~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector363~1_combout\ = (\Selector363~0_combout\ & (((\Selector55~0_combout\)) # (!\B[3]~input_o\))) # (!\Selector363~0_combout\ & (\B[3]~input_o\ & (\Selector51~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector363~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Selector51~0_combout\,
	datad => \Selector55~0_combout\,
	combout => \Selector363~1_combout\);

-- Location: LCCOMB_X42_Y34_N16
\Selector363~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector363~2_combout\ = (\B[0]~input_o\ & ((\Selector44~0_combout\) # ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \Selector363~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Selector44~0_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector363~1_combout\,
	combout => \Selector363~2_combout\);

-- Location: LCCOMB_X42_Y34_N18
\Selector363~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector363~3_combout\ = (\B[1]~input_o\ & ((\Selector363~2_combout\ & ((\Selector46~0_combout\))) # (!\Selector363~2_combout\ & (\Selector45~0_combout\)))) # (!\B[1]~input_o\ & (\Selector363~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector363~2_combout\,
	datac => \Selector45~0_combout\,
	datad => \Selector46~0_combout\,
	combout => \Selector363~3_combout\);

-- Location: LCCOMB_X42_Y34_N28
\Selector363~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector363~4_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Selector363~3_combout\))) # (!\ShiftFN[0]~input_o\ & (\C[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[20]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Selector363~3_combout\,
	combout => \Selector363~4_combout\);

-- Location: LCCOMB_X42_Y34_N22
\Selector363~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector363~11_combout\ = (\Selector363~4_combout\) # ((\ShiftFN[1]~input_o\ & \Selector363~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector363~10_combout\,
	datad => \Selector363~4_combout\,
	combout => \Selector363~11_combout\);

-- Location: LCCOMB_X47_Y35_N4
\Selector362~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector362~9_combout\ = (\Selector361~22_combout\ & (((\Selector361~5_combout\)))) # (!\Selector361~22_combout\ & ((\Selector361~5_combout\ & ((\Selector26~0_combout\))) # (!\Selector361~5_combout\ & (\Selector42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~22_combout\,
	datab => \Selector42~0_combout\,
	datac => \Selector26~0_combout\,
	datad => \Selector361~5_combout\,
	combout => \Selector362~9_combout\);

-- Location: LCCOMB_X50_Y35_N22
\Selector362~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector362~5_combout\ = (\Selector361~9_combout\ & ((\Selector10~0_combout\) # ((\Selector361~8_combout\)))) # (!\Selector361~9_combout\ & (((\Selector38~0_combout\ & !\Selector361~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \Selector361~9_combout\,
	datac => \Selector38~0_combout\,
	datad => \Selector361~8_combout\,
	combout => \Selector362~5_combout\);

-- Location: LCCOMB_X50_Y35_N8
\Selector362~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector362~6_combout\ = (\Selector361~7_combout\ & ((\Selector362~5_combout\ & (\Selector41~0_combout\)) # (!\Selector362~5_combout\ & ((\Selector0~0_combout\))))) # (!\Selector361~7_combout\ & (((\Selector362~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~0_combout\,
	datab => \Selector361~7_combout\,
	datac => \Selector362~5_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector362~6_combout\);

-- Location: LCCOMB_X47_Y35_N24
\Selector362~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector362~7_combout\ = (\B[1]~input_o\ & (((\Selector361~6_combout\)))) # (!\B[1]~input_o\ & ((\Selector361~6_combout\ & (\Selector34~0_combout\)) # (!\Selector361~6_combout\ & ((\Selector362~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~0_combout\,
	datab => \Selector362~6_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector361~6_combout\,
	combout => \Selector362~7_combout\);

-- Location: LCCOMB_X47_Y35_N18
\Selector362~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector362~8_combout\ = (\B[1]~input_o\ & ((\Selector362~7_combout\ & (\Selector39~0_combout\)) # (!\Selector362~7_combout\ & ((\Selector40~0_combout\))))) # (!\B[1]~input_o\ & (((\Selector362~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector39~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector40~0_combout\,
	datad => \Selector362~7_combout\,
	combout => \Selector362~8_combout\);

-- Location: LCCOMB_X47_Y35_N30
\Selector362~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector362~10_combout\ = (\Selector362~9_combout\ & ((\Selector30~0_combout\) # ((!\Selector361~22_combout\)))) # (!\Selector362~9_combout\ & (((\Selector361~22_combout\ & \Selector362~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector30~0_combout\,
	datab => \Selector362~9_combout\,
	datac => \Selector361~22_combout\,
	datad => \Selector362~8_combout\,
	combout => \Selector362~10_combout\);

-- Location: IOIBUF_X47_Y0_N1
\C[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(21),
	o => \C[21]~input_o\);

-- Location: LCCOMB_X45_Y35_N10
\SRL64_A|Mux32|Mux63~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~23_combout\ = (!\tempA~0_combout\ & ((\B[4]~input_o\ & (\A[5]~input_o\)) # (!\B[4]~input_o\ & ((\A[21]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[5]~input_o\,
	datac => \A[21]~input_o\,
	datad => \tempA~0_combout\,
	combout => \SRL64_A|Mux32|Mux63~23_combout\);

-- Location: LCCOMB_X46_Y38_N6
\Selector362~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector362~0_combout\ = (\Selector379~2_combout\ & (((\B[2]~input_o\)))) # (!\Selector379~2_combout\ & ((\B[2]~input_o\ & (\Selector46~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux63~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~0_combout\,
	datab => \Selector379~2_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64_A|Mux32|Mux63~23_combout\,
	combout => \Selector362~0_combout\);

-- Location: LCCOMB_X46_Y36_N8
\Selector362~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector362~1_combout\ = (\Selector362~0_combout\ & (((\Selector54~0_combout\) # (!\B[3]~input_o\)))) # (!\Selector362~0_combout\ & (\Selector50~0_combout\ & (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector50~0_combout\,
	datab => \Selector362~0_combout\,
	datac => \B[3]~input_o\,
	datad => \Selector54~0_combout\,
	combout => \Selector362~1_combout\);

-- Location: LCCOMB_X46_Y34_N0
\Selector362~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector362~2_combout\ = (\B[0]~input_o\ & ((\Selector43~0_combout\) # ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \Selector362~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~0_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Selector362~1_combout\,
	combout => \Selector362~2_combout\);

-- Location: LCCOMB_X46_Y34_N2
\Selector362~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector362~3_combout\ = (\Selector362~2_combout\ & ((\Selector45~0_combout\) # ((!\B[1]~input_o\)))) # (!\Selector362~2_combout\ & (((\B[1]~input_o\ & \Selector44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~0_combout\,
	datab => \Selector362~2_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector44~0_combout\,
	combout => \Selector362~3_combout\);

-- Location: LCCOMB_X47_Y34_N12
\Selector362~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector362~4_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Selector362~3_combout\))) # (!\ShiftFN[0]~input_o\ & (\C[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \C[21]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Selector362~3_combout\,
	combout => \Selector362~4_combout\);

-- Location: LCCOMB_X47_Y34_N22
\Selector362~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector362~11_combout\ = (\Selector362~4_combout\) # ((\ShiftFN[1]~input_o\ & \Selector362~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \Selector362~10_combout\,
	datad => \Selector362~4_combout\,
	combout => \Selector362~11_combout\);

-- Location: IOIBUF_X49_Y0_N1
\C[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(22),
	o => \C[22]~input_o\);

-- Location: LCCOMB_X45_Y36_N0
\SRL64_A|Mux32|Mux63~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~24_combout\ = (!\tempA~0_combout\ & ((\B[4]~input_o\ & ((\A[6]~input_o\))) # (!\B[4]~input_o\ & (\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \tempA~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[6]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~24_combout\);

-- Location: LCCOMB_X45_Y34_N6
\Selector361~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~10_combout\ = (\B[2]~input_o\ & ((\Selector45~0_combout\) # ((\Selector379~2_combout\)))) # (!\B[2]~input_o\ & (((\SRL64_A|Mux32|Mux63~24_combout\ & !\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~0_combout\,
	datab => \SRL64_A|Mux32|Mux63~24_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector379~2_combout\,
	combout => \Selector361~10_combout\);

-- Location: LCCOMB_X45_Y37_N2
\Selector361~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~11_combout\ = (\B[3]~input_o\ & ((\Selector361~10_combout\ & (\Selector53~0_combout\)) # (!\Selector361~10_combout\ & ((\Selector49~0_combout\))))) # (!\B[3]~input_o\ & (((\Selector361~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector53~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Selector49~0_combout\,
	datad => \Selector361~10_combout\,
	combout => \Selector361~11_combout\);

-- Location: LCCOMB_X46_Y34_N28
\Selector361~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~12_combout\ = (\B[0]~input_o\ & (((\B[1]~input_o\) # (\Selector42~0_combout\)))) # (!\B[0]~input_o\ & (\Selector361~11_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~11_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Selector42~0_combout\,
	combout => \Selector361~12_combout\);

-- Location: LCCOMB_X46_Y34_N6
\Selector361~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~13_combout\ = (\Selector361~12_combout\ & (((\Selector44~0_combout\) # (!\B[1]~input_o\)))) # (!\Selector361~12_combout\ & (\Selector43~0_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~0_combout\,
	datab => \Selector361~12_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector44~0_combout\,
	combout => \Selector361~13_combout\);

-- Location: LCCOMB_X48_Y34_N14
\Selector361~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~14_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Selector361~13_combout\))) # (!\ShiftFN[0]~input_o\ & (\C[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[22]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector361~13_combout\,
	combout => \Selector361~14_combout\);

-- Location: LCCOMB_X50_Y35_N18
\Selector361~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~15_combout\ = (\Selector361~9_combout\ & ((\Selector9~0_combout\) # ((\Selector361~8_combout\)))) # (!\Selector361~9_combout\ & (((\Selector37~0_combout\ & !\Selector361~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~0_combout\,
	datab => \Selector361~9_combout\,
	datac => \Selector37~0_combout\,
	datad => \Selector361~8_combout\,
	combout => \Selector361~15_combout\);

-- Location: LCCOMB_X50_Y35_N4
\Selector361~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~16_combout\ = (\Selector361~7_combout\ & ((\Selector361~15_combout\ & ((\Selector40~0_combout\))) # (!\Selector361~15_combout\ & (\Selector0~0_combout\)))) # (!\Selector361~7_combout\ & (((\Selector361~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector361~7_combout\,
	datac => \Selector40~0_combout\,
	datad => \Selector361~15_combout\,
	combout => \Selector361~16_combout\);

-- Location: LCCOMB_X50_Y35_N14
\Selector361~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~17_combout\ = (\B[1]~input_o\ & (((\Selector39~0_combout\) # (\Selector361~6_combout\)))) # (!\B[1]~input_o\ & (\Selector361~16_combout\ & ((!\Selector361~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector361~16_combout\,
	datac => \Selector39~0_combout\,
	datad => \Selector361~6_combout\,
	combout => \Selector361~17_combout\);

-- Location: LCCOMB_X52_Y35_N8
\Selector361~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~18_combout\ = (\Selector361~17_combout\ & ((\Selector38~0_combout\) # ((!\Selector361~6_combout\)))) # (!\Selector361~17_combout\ & (((\Selector33~0_combout\ & \Selector361~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~17_combout\,
	datab => \Selector38~0_combout\,
	datac => \Selector33~0_combout\,
	datad => \Selector361~6_combout\,
	combout => \Selector361~18_combout\);

-- Location: LCCOMB_X48_Y34_N0
\Selector361~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~19_combout\ = (\Selector361~5_combout\ & (\Selector361~22_combout\)) # (!\Selector361~5_combout\ & ((\Selector361~22_combout\ & ((\Selector361~18_combout\))) # (!\Selector361~22_combout\ & (\Selector41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~5_combout\,
	datab => \Selector361~22_combout\,
	datac => \Selector41~0_combout\,
	datad => \Selector361~18_combout\,
	combout => \Selector361~19_combout\);

-- Location: LCCOMB_X48_Y34_N18
\Selector361~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~20_combout\ = (\Selector361~5_combout\ & ((\Selector361~19_combout\ & (\Selector29~0_combout\)) # (!\Selector361~19_combout\ & ((\Selector25~0_combout\))))) # (!\Selector361~5_combout\ & (((\Selector361~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~5_combout\,
	datab => \Selector29~0_combout\,
	datac => \Selector25~0_combout\,
	datad => \Selector361~19_combout\,
	combout => \Selector361~20_combout\);

-- Location: LCCOMB_X48_Y34_N28
\Selector361~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector361~21_combout\ = (\Selector361~14_combout\) # ((\ShiftFN[1]~input_o\ & \Selector361~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector361~14_combout\,
	datad => \Selector361~20_combout\,
	combout => \Selector361~21_combout\);

-- Location: LCCOMB_X50_Y35_N0
\Selector360~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector360~5_combout\ = (\Selector361~9_combout\ & ((\Selector8~0_combout\) # ((\Selector361~8_combout\)))) # (!\Selector361~9_combout\ & (((\Selector36~0_combout\ & !\Selector361~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \Selector361~9_combout\,
	datac => \Selector36~0_combout\,
	datad => \Selector361~8_combout\,
	combout => \Selector360~5_combout\);

-- Location: LCCOMB_X50_Y35_N26
\Selector360~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector360~6_combout\ = (\Selector361~7_combout\ & ((\Selector360~5_combout\ & ((\Selector39~0_combout\))) # (!\Selector360~5_combout\ & (\Selector0~0_combout\)))) # (!\Selector361~7_combout\ & (((\Selector360~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector361~7_combout\,
	datac => \Selector39~0_combout\,
	datad => \Selector360~5_combout\,
	combout => \Selector360~6_combout\);

-- Location: LCCOMB_X47_Y35_N0
\Selector360~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector360~7_combout\ = (\B[1]~input_o\ & (((\Selector361~6_combout\)))) # (!\B[1]~input_o\ & ((\Selector361~6_combout\ & ((\Selector32~0_combout\))) # (!\Selector361~6_combout\ & (\Selector360~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector360~6_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector32~0_combout\,
	datad => \Selector361~6_combout\,
	combout => \Selector360~7_combout\);

-- Location: LCCOMB_X47_Y35_N2
\Selector360~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector360~8_combout\ = (\B[1]~input_o\ & ((\Selector360~7_combout\ & (\Selector37~0_combout\)) # (!\Selector360~7_combout\ & ((\Selector38~0_combout\))))) # (!\B[1]~input_o\ & (((\Selector360~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector38~0_combout\,
	datad => \Selector360~7_combout\,
	combout => \Selector360~8_combout\);

-- Location: LCCOMB_X47_Y35_N20
\Selector360~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector360~9_combout\ = (\Selector361~22_combout\ & (((\Selector361~5_combout\)))) # (!\Selector361~22_combout\ & ((\Selector361~5_combout\ & (\Selector24~0_combout\)) # (!\Selector361~5_combout\ & ((\Selector40~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~22_combout\,
	datab => \Selector24~0_combout\,
	datac => \Selector40~0_combout\,
	datad => \Selector361~5_combout\,
	combout => \Selector360~9_combout\);

-- Location: LCCOMB_X47_Y35_N6
\Selector360~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector360~10_combout\ = (\Selector361~22_combout\ & ((\Selector360~9_combout\ & ((\Selector28~0_combout\))) # (!\Selector360~9_combout\ & (\Selector360~8_combout\)))) # (!\Selector361~22_combout\ & (((\Selector360~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~22_combout\,
	datab => \Selector360~8_combout\,
	datac => \Selector28~0_combout\,
	datad => \Selector360~9_combout\,
	combout => \Selector360~10_combout\);

-- Location: IOIBUF_X0_Y34_N8
\C[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(23),
	o => \C[23]~input_o\);

-- Location: LCCOMB_X49_Y37_N26
\SRL64_A|Mux32|Mux63~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~25_combout\ = (!\tempA~0_combout\ & ((\B[4]~input_o\ & (\A[7]~input_o\)) # (!\B[4]~input_o\ & ((\A[23]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[4]~input_o\,
	datac => \tempA~0_combout\,
	datad => \A[23]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~25_combout\);

-- Location: LCCOMB_X46_Y37_N16
\Selector360~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector360~0_combout\ = (\B[2]~input_o\ & (((\Selector379~2_combout\) # (\Selector44~0_combout\)))) # (!\B[2]~input_o\ & (\SRL64_A|Mux32|Mux63~25_combout\ & (!\Selector379~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~25_combout\,
	datab => \B[2]~input_o\,
	datac => \Selector379~2_combout\,
	datad => \Selector44~0_combout\,
	combout => \Selector360~0_combout\);

-- Location: LCCOMB_X46_Y37_N10
\Selector360~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector360~1_combout\ = (\B[3]~input_o\ & ((\Selector360~0_combout\ & ((\Selector52~0_combout\))) # (!\Selector360~0_combout\ & (\Selector48~0_combout\)))) # (!\B[3]~input_o\ & (((\Selector360~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~0_combout\,
	datab => \Selector52~0_combout\,
	datac => \B[3]~input_o\,
	datad => \Selector360~0_combout\,
	combout => \Selector360~1_combout\);

-- Location: LCCOMB_X46_Y34_N24
\Selector360~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector360~2_combout\ = (\B[0]~input_o\ & ((\Selector41~0_combout\) # ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\Selector360~1_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~0_combout\,
	datab => \B[0]~input_o\,
	datac => \Selector360~1_combout\,
	datad => \B[1]~input_o\,
	combout => \Selector360~2_combout\);

-- Location: LCCOMB_X46_Y34_N18
\Selector360~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector360~3_combout\ = (\Selector360~2_combout\ & ((\Selector43~0_combout\) # ((!\B[1]~input_o\)))) # (!\Selector360~2_combout\ & (((\B[1]~input_o\ & \Selector42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~0_combout\,
	datab => \Selector360~2_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector42~0_combout\,
	combout => \Selector360~3_combout\);

-- Location: LCCOMB_X46_Y34_N20
\Selector360~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector360~4_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Selector360~3_combout\))) # (!\ShiftFN[0]~input_o\ & (\C[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \C[23]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Selector360~3_combout\,
	combout => \Selector360~4_combout\);

-- Location: LCCOMB_X46_Y34_N14
\Selector360~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector360~11_combout\ = (\Selector360~4_combout\) # ((\ShiftFN[1]~input_o\ & \Selector360~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector360~10_combout\,
	datad => \Selector360~4_combout\,
	combout => \Selector360~11_combout\);

-- Location: LCCOMB_X50_Y36_N16
\Selector359~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector359~5_combout\ = (\Selector361~9_combout\ & ((\Selector7~0_combout\) # ((\Selector361~8_combout\)))) # (!\Selector361~9_combout\ & (((\Selector35~0_combout\ & !\Selector361~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \Selector35~0_combout\,
	datac => \Selector361~9_combout\,
	datad => \Selector361~8_combout\,
	combout => \Selector359~5_combout\);

-- Location: LCCOMB_X50_Y35_N20
\Selector359~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector359~6_combout\ = (\Selector361~7_combout\ & ((\Selector359~5_combout\ & ((\Selector38~0_combout\))) # (!\Selector359~5_combout\ & (\Selector0~0_combout\)))) # (!\Selector361~7_combout\ & (((\Selector359~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector361~7_combout\,
	datac => \Selector38~0_combout\,
	datad => \Selector359~5_combout\,
	combout => \Selector359~6_combout\);

-- Location: LCCOMB_X50_Y35_N6
\Selector359~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector359~7_combout\ = (\B[1]~input_o\ & (((\Selector37~0_combout\) # (\Selector361~6_combout\)))) # (!\B[1]~input_o\ & (\Selector359~6_combout\ & ((!\Selector361~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector359~6_combout\,
	datac => \Selector37~0_combout\,
	datad => \Selector361~6_combout\,
	combout => \Selector359~7_combout\);

-- Location: LCCOMB_X47_Y34_N26
\Selector359~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector359~8_combout\ = (\Selector359~7_combout\ & ((\Selector36~0_combout\) # ((!\Selector361~6_combout\)))) # (!\Selector359~7_combout\ & (((\Selector31~0_combout\ & \Selector361~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~0_combout\,
	datab => \Selector31~0_combout\,
	datac => \Selector359~7_combout\,
	datad => \Selector361~6_combout\,
	combout => \Selector359~8_combout\);

-- Location: LCCOMB_X47_Y34_N28
\Selector359~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector359~9_combout\ = (\Selector361~5_combout\ & (\Selector361~22_combout\)) # (!\Selector361~5_combout\ & ((\Selector361~22_combout\ & ((\Selector359~8_combout\))) # (!\Selector361~22_combout\ & (\Selector39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~5_combout\,
	datab => \Selector361~22_combout\,
	datac => \Selector39~0_combout\,
	datad => \Selector359~8_combout\,
	combout => \Selector359~9_combout\);

-- Location: LCCOMB_X47_Y34_N14
\Selector359~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector359~10_combout\ = (\Selector361~5_combout\ & ((\Selector359~9_combout\ & (\Selector27~0_combout\)) # (!\Selector359~9_combout\ & ((\Selector23~0_combout\))))) # (!\Selector361~5_combout\ & (\Selector359~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~5_combout\,
	datab => \Selector359~9_combout\,
	datac => \Selector27~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector359~10_combout\);

-- Location: IOIBUF_X27_Y0_N22
\C[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(24),
	o => \C[24]~input_o\);

-- Location: LCCOMB_X50_Y39_N20
\SRL64_A|Mux32|Mux63~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~26_combout\ = (!\tempA~0_combout\ & ((\B[4]~input_o\ & ((\A[8]~input_o\))) # (!\B[4]~input_o\ & (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempA~0_combout\,
	datab => \B[4]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[8]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~26_combout\);

-- Location: LCCOMB_X50_Y39_N22
\Selector359~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector359~0_combout\ = (\Selector379~2_combout\ & (((\B[2]~input_o\)))) # (!\Selector379~2_combout\ & ((\B[2]~input_o\ & (\Selector43~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux63~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~2_combout\,
	datab => \Selector43~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64_A|Mux32|Mux63~26_combout\,
	combout => \Selector359~0_combout\);

-- Location: LCCOMB_X48_Y35_N26
\Selector359~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector359~1_combout\ = (\B[3]~input_o\ & ((\Selector359~0_combout\ & ((\Selector51~0_combout\))) # (!\Selector359~0_combout\ & (\Selector47~0_combout\)))) # (!\B[3]~input_o\ & (((\Selector359~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Selector51~0_combout\,
	datad => \Selector359~0_combout\,
	combout => \Selector359~1_combout\);

-- Location: LCCOMB_X46_Y34_N16
\Selector359~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector359~2_combout\ = (\B[1]~input_o\ & (\B[0]~input_o\)) # (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\Selector40~0_combout\)) # (!\B[0]~input_o\ & ((\Selector359~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \Selector40~0_combout\,
	datad => \Selector359~1_combout\,
	combout => \Selector359~2_combout\);

-- Location: LCCOMB_X46_Y34_N26
\Selector359~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector359~3_combout\ = (\Selector359~2_combout\ & (((\Selector42~0_combout\) # (!\B[1]~input_o\)))) # (!\Selector359~2_combout\ & (\Selector41~0_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~0_combout\,
	datab => \Selector359~2_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector42~0_combout\,
	combout => \Selector359~3_combout\);

-- Location: LCCOMB_X47_Y34_N24
\Selector359~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector359~4_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Selector359~3_combout\))) # (!\ShiftFN[0]~input_o\ & (\C[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \C[24]~input_o\,
	datac => \Selector359~3_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector359~4_combout\);

-- Location: LCCOMB_X47_Y34_N8
\Selector359~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector359~11_combout\ = (\Selector359~4_combout\) # ((\ShiftFN[1]~input_o\ & \Selector359~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector359~10_combout\,
	datad => \Selector359~4_combout\,
	combout => \Selector359~11_combout\);

-- Location: IOIBUF_X42_Y0_N15
\C[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(25),
	o => \C[25]~input_o\);

-- Location: LCCOMB_X46_Y38_N24
\SRL64_A|Mux32|Mux63~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~27_combout\ = (!\tempA~0_combout\ & ((\B[4]~input_o\ & (\A[9]~input_o\)) # (!\B[4]~input_o\ & ((\A[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \A[25]~input_o\,
	datac => \tempA~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~27_combout\);

-- Location: LCCOMB_X46_Y38_N18
\Selector358~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector358~0_combout\ = (\B[2]~input_o\ & ((\Selector42~0_combout\) # ((\Selector379~2_combout\)))) # (!\B[2]~input_o\ & (((\SRL64_A|Mux32|Mux63~27_combout\ & !\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector42~0_combout\,
	datab => \SRL64_A|Mux32|Mux63~27_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector379~2_combout\,
	combout => \Selector358~0_combout\);

-- Location: LCCOMB_X46_Y38_N28
\Selector358~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector358~1_combout\ = (\B[3]~input_o\ & ((\Selector358~0_combout\ & ((\Selector50~0_combout\))) # (!\Selector358~0_combout\ & (\Selector46~0_combout\)))) # (!\B[3]~input_o\ & (((\Selector358~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Selector50~0_combout\,
	datad => \Selector358~0_combout\,
	combout => \Selector358~1_combout\);

-- Location: LCCOMB_X46_Y34_N4
\Selector358~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector358~2_combout\ = (\B[0]~input_o\ & (((\B[1]~input_o\) # (\Selector39~0_combout\)))) # (!\B[0]~input_o\ & (\Selector358~1_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector358~1_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Selector39~0_combout\,
	combout => \Selector358~2_combout\);

-- Location: LCCOMB_X46_Y34_N30
\Selector358~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector358~3_combout\ = (\Selector358~2_combout\ & ((\Selector41~0_combout\) # ((!\B[1]~input_o\)))) # (!\Selector358~2_combout\ & (((\Selector40~0_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~0_combout\,
	datab => \Selector358~2_combout\,
	datac => \Selector40~0_combout\,
	datad => \B[1]~input_o\,
	combout => \Selector358~3_combout\);

-- Location: LCCOMB_X46_Y34_N8
\Selector358~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector358~4_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Selector358~3_combout\))) # (!\ShiftFN[0]~input_o\ & (\C[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \C[25]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector358~3_combout\,
	combout => \Selector358~4_combout\);

-- Location: LCCOMB_X47_Y35_N8
\Selector358~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector358~9_combout\ = (\Selector361~22_combout\ & (((\Selector361~5_combout\)))) # (!\Selector361~22_combout\ & ((\Selector361~5_combout\ & (\Selector22~0_combout\)) # (!\Selector361~5_combout\ & ((\Selector38~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \Selector38~0_combout\,
	datac => \Selector361~22_combout\,
	datad => \Selector361~5_combout\,
	combout => \Selector358~9_combout\);

-- Location: LCCOMB_X50_Y37_N22
\Selector358~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector358~5_combout\ = (\Selector361~9_combout\ & ((\Selector6~0_combout\) # ((\Selector361~8_combout\)))) # (!\Selector361~9_combout\ & (((\Selector34~0_combout\ & !\Selector361~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \Selector361~9_combout\,
	datac => \Selector34~0_combout\,
	datad => \Selector361~8_combout\,
	combout => \Selector358~5_combout\);

-- Location: LCCOMB_X50_Y37_N0
\Selector358~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector358~6_combout\ = (\Selector361~7_combout\ & ((\Selector358~5_combout\ & (\Selector37~0_combout\)) # (!\Selector358~5_combout\ & ((\Selector0~0_combout\))))) # (!\Selector361~7_combout\ & (((\Selector358~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~7_combout\,
	datab => \Selector37~0_combout\,
	datac => \Selector358~5_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector358~6_combout\);

-- Location: LCCOMB_X50_Y37_N10
\Selector358~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector358~7_combout\ = (\B[1]~input_o\ & (((\Selector361~6_combout\)))) # (!\B[1]~input_o\ & ((\Selector361~6_combout\ & ((\Selector30~0_combout\))) # (!\Selector361~6_combout\ & (\Selector358~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector358~6_combout\,
	datac => \Selector30~0_combout\,
	datad => \Selector361~6_combout\,
	combout => \Selector358~7_combout\);

-- Location: LCCOMB_X50_Y37_N12
\Selector358~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector358~8_combout\ = (\B[1]~input_o\ & ((\Selector358~7_combout\ & ((\Selector35~0_combout\))) # (!\Selector358~7_combout\ & (\Selector36~0_combout\)))) # (!\B[1]~input_o\ & (((\Selector358~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector36~0_combout\,
	datac => \Selector35~0_combout\,
	datad => \Selector358~7_combout\,
	combout => \Selector358~8_combout\);

-- Location: LCCOMB_X47_Y35_N26
\Selector358~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector358~10_combout\ = (\Selector361~22_combout\ & ((\Selector358~9_combout\ & (\Selector26~0_combout\)) # (!\Selector358~9_combout\ & ((\Selector358~8_combout\))))) # (!\Selector361~22_combout\ & (\Selector358~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~22_combout\,
	datab => \Selector358~9_combout\,
	datac => \Selector26~0_combout\,
	datad => \Selector358~8_combout\,
	combout => \Selector358~10_combout\);

-- Location: LCCOMB_X46_Y34_N10
\Selector358~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector358~11_combout\ = (\Selector358~4_combout\) # ((\ShiftFN[1]~input_o\ & \Selector358~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector358~4_combout\,
	datac => \Selector358~10_combout\,
	combout => \Selector358~11_combout\);

-- Location: IOIBUF_X40_Y0_N15
\C[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(26),
	o => \C[26]~input_o\);

-- Location: LCCOMB_X45_Y34_N24
\SRL64_A|Mux32|Mux63~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~28_combout\ = (!\tempA~0_combout\ & ((\B[4]~input_o\ & (\A[10]~input_o\)) # (!\B[4]~input_o\ & ((\A[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempA~0_combout\,
	datab => \A[10]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[26]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~28_combout\);

-- Location: LCCOMB_X45_Y34_N2
\Selector357~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector357~0_combout\ = (\B[2]~input_o\ & (((\Selector41~0_combout\) # (\Selector379~2_combout\)))) # (!\B[2]~input_o\ & (\SRL64_A|Mux32|Mux63~28_combout\ & ((!\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64_A|Mux32|Mux63~28_combout\,
	datac => \Selector41~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector357~0_combout\);

-- Location: LCCOMB_X45_Y34_N12
\Selector357~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector357~1_combout\ = (\Selector357~0_combout\ & (((\Selector49~0_combout\) # (!\B[3]~input_o\)))) # (!\Selector357~0_combout\ & (\Selector45~0_combout\ & ((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~0_combout\,
	datab => \Selector357~0_combout\,
	datac => \Selector49~0_combout\,
	datad => \B[3]~input_o\,
	combout => \Selector357~1_combout\);

-- Location: LCCOMB_X46_Y34_N12
\Selector357~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector357~2_combout\ = (\B[0]~input_o\ & (((\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\Selector39~0_combout\))) # (!\B[1]~input_o\ & (\Selector357~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector357~1_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Selector39~0_combout\,
	combout => \Selector357~2_combout\);

-- Location: LCCOMB_X46_Y34_N22
\Selector357~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector357~3_combout\ = (\Selector357~2_combout\ & ((\Selector40~0_combout\) # ((!\B[0]~input_o\)))) # (!\Selector357~2_combout\ & (((\B[0]~input_o\ & \Selector38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector357~2_combout\,
	datab => \Selector40~0_combout\,
	datac => \B[0]~input_o\,
	datad => \Selector38~0_combout\,
	combout => \Selector357~3_combout\);

-- Location: LCCOMB_X47_Y34_N10
\Selector357~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector357~4_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Selector357~3_combout\))) # (!\ShiftFN[0]~input_o\ & (\C[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \C[26]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Selector357~3_combout\,
	combout => \Selector357~4_combout\);

-- Location: LCCOMB_X50_Y37_N30
\Selector357~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector357~5_combout\ = (\Selector361~9_combout\ & (((\Selector5~0_combout\) # (\Selector361~8_combout\)))) # (!\Selector361~9_combout\ & (\Selector33~0_combout\ & ((!\Selector361~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \Selector361~9_combout\,
	datac => \Selector5~0_combout\,
	datad => \Selector361~8_combout\,
	combout => \Selector357~5_combout\);

-- Location: LCCOMB_X50_Y37_N8
\Selector357~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector357~6_combout\ = (\Selector361~7_combout\ & ((\Selector357~5_combout\ & (\Selector36~0_combout\)) # (!\Selector357~5_combout\ & ((\Selector0~0_combout\))))) # (!\Selector361~7_combout\ & (((\Selector357~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~7_combout\,
	datab => \Selector36~0_combout\,
	datac => \Selector357~5_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector357~6_combout\);

-- Location: LCCOMB_X50_Y34_N22
\Selector357~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector357~7_combout\ = (\B[1]~input_o\ & (((\Selector361~6_combout\) # (\Selector35~0_combout\)))) # (!\B[1]~input_o\ & (\Selector357~6_combout\ & (!\Selector361~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector357~6_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector361~6_combout\,
	datad => \Selector35~0_combout\,
	combout => \Selector357~7_combout\);

-- Location: LCCOMB_X50_Y34_N16
\Selector357~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector357~8_combout\ = (\Selector357~7_combout\ & ((\Selector34~0_combout\) # ((!\Selector361~6_combout\)))) # (!\Selector357~7_combout\ & (((\Selector361~6_combout\ & \Selector29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector357~7_combout\,
	datab => \Selector34~0_combout\,
	datac => \Selector361~6_combout\,
	datad => \Selector29~0_combout\,
	combout => \Selector357~8_combout\);

-- Location: LCCOMB_X50_Y34_N18
\Selector357~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector357~9_combout\ = (\Selector361~22_combout\ & ((\Selector357~8_combout\) # ((\Selector361~5_combout\)))) # (!\Selector361~22_combout\ & (((\Selector37~0_combout\ & !\Selector361~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~22_combout\,
	datab => \Selector357~8_combout\,
	datac => \Selector37~0_combout\,
	datad => \Selector361~5_combout\,
	combout => \Selector357~9_combout\);

-- Location: LCCOMB_X50_Y34_N28
\Selector357~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector357~10_combout\ = (\Selector357~9_combout\ & ((\Selector25~0_combout\) # ((!\Selector361~5_combout\)))) # (!\Selector357~9_combout\ & (((\Selector21~0_combout\ & \Selector361~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datab => \Selector357~9_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector361~5_combout\,
	combout => \Selector357~10_combout\);

-- Location: LCCOMB_X47_Y34_N4
\Selector357~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector357~11_combout\ = (\Selector357~4_combout\) # ((\Selector357~10_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector357~4_combout\,
	datab => \Selector357~10_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector357~11_combout\);

-- Location: IOIBUF_X56_Y0_N15
\C[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(27),
	o => \C[27]~input_o\);

-- Location: LCCOMB_X47_Y39_N14
\SRL64_A|Mux32|Mux63~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~29_combout\ = (!\tempA~0_combout\ & ((\B[4]~input_o\ & ((\A[11]~input_o\))) # (!\B[4]~input_o\ & (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \A[11]~input_o\,
	datac => \tempA~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~29_combout\);

-- Location: LCCOMB_X46_Y37_N12
\Selector356~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector356~0_combout\ = (\B[2]~input_o\ & ((\Selector40~0_combout\) # ((\Selector379~2_combout\)))) # (!\B[2]~input_o\ & (((!\Selector379~2_combout\ & \SRL64_A|Mux32|Mux63~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector40~0_combout\,
	datab => \B[2]~input_o\,
	datac => \Selector379~2_combout\,
	datad => \SRL64_A|Mux32|Mux63~29_combout\,
	combout => \Selector356~0_combout\);

-- Location: LCCOMB_X46_Y37_N14
\Selector356~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector356~1_combout\ = (\Selector356~0_combout\ & (((\Selector48~0_combout\)) # (!\B[3]~input_o\))) # (!\Selector356~0_combout\ & (\B[3]~input_o\ & ((\Selector44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector356~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Selector48~0_combout\,
	datad => \Selector44~0_combout\,
	combout => \Selector356~1_combout\);

-- Location: LCCOMB_X52_Y37_N12
\Selector356~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector356~2_combout\ = (\B[0]~input_o\ & (((\Selector37~0_combout\) # (\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\Selector356~1_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector356~1_combout\,
	datab => \B[0]~input_o\,
	datac => \Selector37~0_combout\,
	datad => \B[1]~input_o\,
	combout => \Selector356~2_combout\);

-- Location: LCCOMB_X52_Y37_N30
\Selector356~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector356~3_combout\ = (\B[1]~input_o\ & ((\Selector356~2_combout\ & ((\Selector39~0_combout\))) # (!\Selector356~2_combout\ & (\Selector38~0_combout\)))) # (!\B[1]~input_o\ & (((\Selector356~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector39~0_combout\,
	datad => \Selector356~2_combout\,
	combout => \Selector356~3_combout\);

-- Location: LCCOMB_X49_Y34_N6
\Selector356~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector356~4_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Selector356~3_combout\))) # (!\ShiftFN[0]~input_o\ & (\C[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \C[27]~input_o\,
	datad => \Selector356~3_combout\,
	combout => \Selector356~4_combout\);

-- Location: LCCOMB_X49_Y34_N24
\Selector356~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector356~9_combout\ = (\Selector361~22_combout\ & (((\Selector361~5_combout\)))) # (!\Selector361~22_combout\ & ((\Selector361~5_combout\ & ((\Selector20~0_combout\))) # (!\Selector361~5_combout\ & (\Selector36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~0_combout\,
	datab => \Selector361~22_combout\,
	datac => \Selector361~5_combout\,
	datad => \Selector20~0_combout\,
	combout => \Selector356~9_combout\);

-- Location: LCCOMB_X50_Y36_N26
\Selector356~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector356~5_combout\ = (\Selector361~9_combout\ & (((\Selector4~0_combout\) # (\Selector361~8_combout\)))) # (!\Selector361~9_combout\ & (\Selector32~0_combout\ & ((!\Selector361~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Selector4~0_combout\,
	datac => \Selector361~9_combout\,
	datad => \Selector361~8_combout\,
	combout => \Selector356~5_combout\);

-- Location: LCCOMB_X50_Y36_N4
\Selector356~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector356~6_combout\ = (\Selector361~7_combout\ & ((\Selector356~5_combout\ & ((\Selector35~0_combout\))) # (!\Selector356~5_combout\ & (\Selector0~0_combout\)))) # (!\Selector361~7_combout\ & (((\Selector356~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~7_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector356~5_combout\,
	datad => \Selector35~0_combout\,
	combout => \Selector356~6_combout\);

-- Location: LCCOMB_X50_Y36_N14
\Selector356~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector356~7_combout\ = (\Selector361~6_combout\ & ((\B[1]~input_o\) # ((\Selector28~0_combout\)))) # (!\Selector361~6_combout\ & (!\B[1]~input_o\ & (\Selector356~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~6_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector356~6_combout\,
	datad => \Selector28~0_combout\,
	combout => \Selector356~7_combout\);

-- Location: LCCOMB_X50_Y36_N8
\Selector356~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector356~8_combout\ = (\Selector356~7_combout\ & (((\Selector33~0_combout\) # (!\B[1]~input_o\)))) # (!\Selector356~7_combout\ & (\Selector34~0_combout\ & ((\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~0_combout\,
	datab => \Selector33~0_combout\,
	datac => \Selector356~7_combout\,
	datad => \B[1]~input_o\,
	combout => \Selector356~8_combout\);

-- Location: LCCOMB_X49_Y34_N10
\Selector356~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector356~10_combout\ = (\Selector356~9_combout\ & ((\Selector24~0_combout\) # ((!\Selector361~22_combout\)))) # (!\Selector356~9_combout\ & (((\Selector361~22_combout\ & \Selector356~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \Selector356~9_combout\,
	datac => \Selector361~22_combout\,
	datad => \Selector356~8_combout\,
	combout => \Selector356~10_combout\);

-- Location: LCCOMB_X49_Y34_N28
\Selector356~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector356~11_combout\ = (\Selector356~4_combout\) # ((\ShiftFN[1]~input_o\ & \Selector356~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector356~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector356~10_combout\,
	combout => \Selector356~11_combout\);

-- Location: LCCOMB_X50_Y36_N10
\Selector355~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector355~5_combout\ = (\Selector361~9_combout\ & ((\Selector3~0_combout\) # ((\Selector361~8_combout\)))) # (!\Selector361~9_combout\ & (((\Selector31~0_combout\ & !\Selector361~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector31~0_combout\,
	datac => \Selector361~9_combout\,
	datad => \Selector361~8_combout\,
	combout => \Selector355~5_combout\);

-- Location: LCCOMB_X50_Y36_N20
\Selector355~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector355~6_combout\ = (\Selector361~7_combout\ & ((\Selector355~5_combout\ & (\Selector34~0_combout\)) # (!\Selector355~5_combout\ & ((\Selector0~0_combout\))))) # (!\Selector361~7_combout\ & (((\Selector355~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector361~7_combout\,
	datad => \Selector355~5_combout\,
	combout => \Selector355~6_combout\);

-- Location: LCCOMB_X50_Y36_N22
\Selector355~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector355~7_combout\ = (\Selector361~6_combout\ & (\B[1]~input_o\)) # (!\Selector361~6_combout\ & ((\B[1]~input_o\ & (\Selector33~0_combout\)) # (!\B[1]~input_o\ & ((\Selector355~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~6_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector33~0_combout\,
	datad => \Selector355~6_combout\,
	combout => \Selector355~7_combout\);

-- Location: LCCOMB_X50_Y36_N0
\Selector355~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector355~8_combout\ = (\Selector355~7_combout\ & (((\Selector32~0_combout\) # (!\Selector361~6_combout\)))) # (!\Selector355~7_combout\ & (\Selector27~0_combout\ & (\Selector361~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector355~7_combout\,
	datab => \Selector27~0_combout\,
	datac => \Selector361~6_combout\,
	datad => \Selector32~0_combout\,
	combout => \Selector355~8_combout\);

-- Location: LCCOMB_X48_Y34_N6
\Selector355~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector355~9_combout\ = (\Selector361~5_combout\ & (((\Selector361~22_combout\)))) # (!\Selector361~5_combout\ & ((\Selector361~22_combout\ & ((\Selector355~8_combout\))) # (!\Selector361~22_combout\ & (\Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~5_combout\,
	datab => \Selector35~0_combout\,
	datac => \Selector361~22_combout\,
	datad => \Selector355~8_combout\,
	combout => \Selector355~9_combout\);

-- Location: LCCOMB_X47_Y34_N0
\Selector355~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector355~10_combout\ = (\Selector361~5_combout\ & ((\Selector355~9_combout\ & ((\Selector23~0_combout\))) # (!\Selector355~9_combout\ & (\Selector19~0_combout\)))) # (!\Selector361~5_combout\ & (\Selector355~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~5_combout\,
	datab => \Selector355~9_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector355~10_combout\);

-- Location: IOIBUF_X47_Y0_N8
\C[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(28),
	o => \C[28]~input_o\);

-- Location: LCCOMB_X47_Y38_N0
\SRL64_A|Mux32|Mux63~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~30_combout\ = (!\tempA~0_combout\ & ((\B[4]~input_o\ & (\A[12]~input_o\)) # (!\B[4]~input_o\ & ((\A[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \tempA~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[28]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~30_combout\);

-- Location: LCCOMB_X48_Y38_N16
\Selector355~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector355~0_combout\ = (\Selector379~2_combout\ & (((\B[2]~input_o\)))) # (!\Selector379~2_combout\ & ((\B[2]~input_o\ & ((\Selector39~0_combout\))) # (!\B[2]~input_o\ & (\SRL64_A|Mux32|Mux63~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~30_combout\,
	datab => \Selector379~2_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector39~0_combout\,
	combout => \Selector355~0_combout\);

-- Location: LCCOMB_X49_Y40_N10
\Selector355~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector355~1_combout\ = (\Selector355~0_combout\ & (((\Selector47~0_combout\)) # (!\B[3]~input_o\))) # (!\Selector355~0_combout\ & (\B[3]~input_o\ & ((\Selector43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector355~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Selector47~0_combout\,
	datad => \Selector43~0_combout\,
	combout => \Selector355~1_combout\);

-- Location: LCCOMB_X49_Y40_N12
\Selector355~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector355~2_combout\ = (\B[0]~input_o\ & (((\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\Selector37~0_combout\)) # (!\B[1]~input_o\ & ((\Selector355~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~0_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Selector355~1_combout\,
	combout => \Selector355~2_combout\);

-- Location: LCCOMB_X49_Y40_N14
\Selector355~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector355~3_combout\ = (\B[0]~input_o\ & ((\Selector355~2_combout\ & (\Selector38~0_combout\)) # (!\Selector355~2_combout\ & ((\Selector36~0_combout\))))) # (!\B[0]~input_o\ & (((\Selector355~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~0_combout\,
	datab => \B[0]~input_o\,
	datac => \Selector36~0_combout\,
	datad => \Selector355~2_combout\,
	combout => \Selector355~3_combout\);

-- Location: LCCOMB_X47_Y34_N6
\Selector355~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector355~4_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Selector355~3_combout\))) # (!\ShiftFN[0]~input_o\ & (\C[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \C[28]~input_o\,
	datac => \Selector355~3_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector355~4_combout\);

-- Location: LCCOMB_X47_Y34_N2
\Selector355~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector355~11_combout\ = (\Selector355~4_combout\) # ((\ShiftFN[1]~input_o\ & \Selector355~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Selector355~10_combout\,
	datad => \Selector355~4_combout\,
	combout => \Selector355~11_combout\);

-- Location: IOIBUF_X20_Y0_N15
\C[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(29),
	o => \C[29]~input_o\);

-- Location: LCCOMB_X46_Y38_N14
\SRL64_A|Mux32|Mux63~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~31_combout\ = (!\tempA~0_combout\ & ((\B[4]~input_o\ & ((\A[13]~input_o\))) # (!\B[4]~input_o\ & (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempA~0_combout\,
	datab => \A[29]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~31_combout\);

-- Location: LCCOMB_X49_Y38_N18
\Selector354~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector354~0_combout\ = (\Selector379~2_combout\ & (\B[2]~input_o\)) # (!\Selector379~2_combout\ & ((\B[2]~input_o\ & (\Selector38~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64_A|Mux32|Mux63~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~2_combout\,
	datab => \B[2]~input_o\,
	datac => \Selector38~0_combout\,
	datad => \SRL64_A|Mux32|Mux63~31_combout\,
	combout => \Selector354~0_combout\);

-- Location: LCCOMB_X49_Y38_N28
\Selector354~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector354~1_combout\ = (\B[3]~input_o\ & ((\Selector354~0_combout\ & ((\Selector46~0_combout\))) # (!\Selector354~0_combout\ & (\Selector42~0_combout\)))) # (!\B[3]~input_o\ & (((\Selector354~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector42~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Selector46~0_combout\,
	datad => \Selector354~0_combout\,
	combout => \Selector354~1_combout\);

-- Location: LCCOMB_X50_Y37_N26
\Selector354~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector354~2_combout\ = (\B[1]~input_o\ & (((\B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\Selector35~0_combout\)) # (!\B[0]~input_o\ & ((\Selector354~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector35~0_combout\,
	datac => \Selector354~1_combout\,
	datad => \B[0]~input_o\,
	combout => \Selector354~2_combout\);

-- Location: LCCOMB_X50_Y37_N20
\Selector354~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector354~3_combout\ = (\B[1]~input_o\ & ((\Selector354~2_combout\ & ((\Selector37~0_combout\))) # (!\Selector354~2_combout\ & (\Selector36~0_combout\)))) # (!\B[1]~input_o\ & (((\Selector354~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector36~0_combout\,
	datac => \Selector354~2_combout\,
	datad => \Selector37~0_combout\,
	combout => \Selector354~3_combout\);

-- Location: LCCOMB_X47_Y34_N20
\Selector354~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector354~4_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Selector354~3_combout\))) # (!\ShiftFN[0]~input_o\ & (\C[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \C[29]~input_o\,
	datac => \Selector354~3_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector354~4_combout\);

-- Location: LCCOMB_X50_Y34_N30
\Selector354~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector354~9_combout\ = (\Selector361~22_combout\ & (((\Selector361~5_combout\)))) # (!\Selector361~22_combout\ & ((\Selector361~5_combout\ & (\Selector18~0_combout\)) # (!\Selector361~5_combout\ & ((\Selector34~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~22_combout\,
	datab => \Selector18~0_combout\,
	datac => \Selector34~0_combout\,
	datad => \Selector361~5_combout\,
	combout => \Selector354~9_combout\);

-- Location: LCCOMB_X50_Y37_N14
\Selector354~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector354~5_combout\ = (\Selector361~8_combout\ & (((\Selector361~9_combout\)))) # (!\Selector361~8_combout\ & ((\Selector361~9_combout\ & (\Selector2~0_combout\)) # (!\Selector361~9_combout\ & ((\Selector30~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~8_combout\,
	datab => \Selector2~0_combout\,
	datac => \Selector30~0_combout\,
	datad => \Selector361~9_combout\,
	combout => \Selector354~5_combout\);

-- Location: LCCOMB_X50_Y37_N16
\Selector354~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector354~6_combout\ = (\Selector361~7_combout\ & ((\Selector354~5_combout\ & (\Selector33~0_combout\)) # (!\Selector354~5_combout\ & ((\Selector0~0_combout\))))) # (!\Selector361~7_combout\ & (\Selector354~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~7_combout\,
	datab => \Selector354~5_combout\,
	datac => \Selector33~0_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector354~6_combout\);

-- Location: LCCOMB_X53_Y36_N24
\Selector354~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector354~7_combout\ = (\B[1]~input_o\ & (((\Selector361~6_combout\)))) # (!\B[1]~input_o\ & ((\Selector361~6_combout\ & ((\Selector26~0_combout\))) # (!\Selector361~6_combout\ & (\Selector354~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector354~6_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector26~0_combout\,
	datad => \Selector361~6_combout\,
	combout => \Selector354~7_combout\);

-- Location: LCCOMB_X52_Y36_N16
\Selector354~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector354~8_combout\ = (\B[1]~input_o\ & ((\Selector354~7_combout\ & (\Selector31~0_combout\)) # (!\Selector354~7_combout\ & ((\Selector32~0_combout\))))) # (!\B[1]~input_o\ & (\Selector354~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector354~7_combout\,
	datac => \Selector31~0_combout\,
	datad => \Selector32~0_combout\,
	combout => \Selector354~8_combout\);

-- Location: LCCOMB_X50_Y34_N0
\Selector354~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector354~10_combout\ = (\Selector361~22_combout\ & ((\Selector354~9_combout\ & (\Selector22~0_combout\)) # (!\Selector354~9_combout\ & ((\Selector354~8_combout\))))) # (!\Selector361~22_combout\ & (((\Selector354~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~22_combout\,
	datab => \Selector22~0_combout\,
	datac => \Selector354~9_combout\,
	datad => \Selector354~8_combout\,
	combout => \Selector354~10_combout\);

-- Location: LCCOMB_X47_Y34_N30
\Selector354~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector354~11_combout\ = (\Selector354~4_combout\) # ((\Selector354~10_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector354~4_combout\,
	datac => \Selector354~10_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector354~11_combout\);

-- Location: IOIBUF_X60_Y0_N1
\C[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(30),
	o => \C[30]~input_o\);

-- Location: LCCOMB_X49_Y37_N20
\SRL64_A|Mux32|Mux63~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~32_combout\ = (!\tempA~0_combout\ & ((\B[4]~input_o\ & ((\A[14]~input_o\))) # (!\B[4]~input_o\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempA~0_combout\,
	datab => \A[30]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[14]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~32_combout\);

-- Location: LCCOMB_X48_Y37_N26
\Selector353~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector353~0_combout\ = (\B[2]~input_o\ & ((\Selector37~0_combout\) # ((\Selector379~2_combout\)))) # (!\B[2]~input_o\ & (((\SRL64_A|Mux32|Mux63~32_combout\ & !\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL64_A|Mux32|Mux63~32_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector353~0_combout\);

-- Location: LCCOMB_X48_Y37_N4
\Selector353~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector353~1_combout\ = (\B[3]~input_o\ & ((\Selector353~0_combout\ & ((\Selector45~0_combout\))) # (!\Selector353~0_combout\ & (\Selector41~0_combout\)))) # (!\B[3]~input_o\ & (((\Selector353~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Selector353~0_combout\,
	datad => \Selector45~0_combout\,
	combout => \Selector353~1_combout\);

-- Location: LCCOMB_X50_Y37_N18
\Selector353~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector353~2_combout\ = (\B[1]~input_o\ & ((\Selector35~0_combout\) # ((\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((\Selector353~1_combout\ & !\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector35~0_combout\,
	datac => \Selector353~1_combout\,
	datad => \B[0]~input_o\,
	combout => \Selector353~2_combout\);

-- Location: LCCOMB_X50_Y37_N4
\Selector353~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector353~3_combout\ = (\B[0]~input_o\ & ((\Selector353~2_combout\ & (\Selector36~0_combout\)) # (!\Selector353~2_combout\ & ((\Selector34~0_combout\))))) # (!\B[0]~input_o\ & (((\Selector353~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Selector36~0_combout\,
	datac => \Selector34~0_combout\,
	datad => \Selector353~2_combout\,
	combout => \Selector353~3_combout\);

-- Location: LCCOMB_X49_Y34_N14
\Selector353~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector353~4_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Selector353~3_combout\))) # (!\ShiftFN[0]~input_o\ & (\C[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \C[30]~input_o\,
	datad => \Selector353~3_combout\,
	combout => \Selector353~4_combout\);

-- Location: LCCOMB_X50_Y36_N18
\Selector353~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector353~5_combout\ = (\Selector361~9_combout\ & (((\Selector1~0_combout\) # (\Selector361~8_combout\)))) # (!\Selector361~9_combout\ & (\Selector29~0_combout\ & ((!\Selector361~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~0_combout\,
	datab => \Selector1~0_combout\,
	datac => \Selector361~9_combout\,
	datad => \Selector361~8_combout\,
	combout => \Selector353~5_combout\);

-- Location: LCCOMB_X50_Y36_N28
\Selector353~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector353~6_combout\ = (\Selector361~7_combout\ & ((\Selector353~5_combout\ & ((\Selector32~0_combout\))) # (!\Selector353~5_combout\ & (\Selector0~0_combout\)))) # (!\Selector361~7_combout\ & (((\Selector353~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~7_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector32~0_combout\,
	datad => \Selector353~5_combout\,
	combout => \Selector353~6_combout\);

-- Location: LCCOMB_X50_Y36_N30
\Selector353~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector353~7_combout\ = (\Selector361~6_combout\ & (((\B[1]~input_o\)))) # (!\Selector361~6_combout\ & ((\B[1]~input_o\ & (\Selector31~0_combout\)) # (!\B[1]~input_o\ & ((\Selector353~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~6_combout\,
	datab => \Selector31~0_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector353~6_combout\,
	combout => \Selector353~7_combout\);

-- Location: LCCOMB_X52_Y35_N18
\Selector353~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector353~8_combout\ = (\Selector361~6_combout\ & ((\Selector353~7_combout\ & ((\Selector30~0_combout\))) # (!\Selector353~7_combout\ & (\Selector25~0_combout\)))) # (!\Selector361~6_combout\ & (((\Selector353~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datab => \Selector361~6_combout\,
	datac => \Selector30~0_combout\,
	datad => \Selector353~7_combout\,
	combout => \Selector353~8_combout\);

-- Location: LCCOMB_X50_Y34_N26
\Selector353~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector353~9_combout\ = (\Selector361~22_combout\ & ((\Selector361~5_combout\) # ((\Selector353~8_combout\)))) # (!\Selector361~22_combout\ & (!\Selector361~5_combout\ & (\Selector33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~22_combout\,
	datab => \Selector361~5_combout\,
	datac => \Selector33~0_combout\,
	datad => \Selector353~8_combout\,
	combout => \Selector353~9_combout\);

-- Location: LCCOMB_X50_Y34_N12
\Selector353~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector353~10_combout\ = (\Selector353~9_combout\ & (((\Selector21~0_combout\) # (!\Selector361~5_combout\)))) # (!\Selector353~9_combout\ & (\Selector17~0_combout\ & ((\Selector361~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector353~9_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector361~5_combout\,
	combout => \Selector353~10_combout\);

-- Location: LCCOMB_X49_Y34_N8
\Selector353~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector353~11_combout\ = (\Selector353~4_combout\) # ((\ShiftFN[1]~input_o\ & \Selector353~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector353~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector353~10_combout\,
	combout => \Selector353~11_combout\);

-- Location: LCCOMB_X43_Y34_N18
\SRL64_A|Mux32|Mux63~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux32|Mux63~33_combout\ = (\B[4]~input_o\ & ((\A[15]~input_o\))) # (!\B[4]~input_o\ & (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[15]~input_o\,
	combout => \SRL64_A|Mux32|Mux63~33_combout\);

-- Location: LCCOMB_X43_Y34_N4
\SLL64_A|Mux32|Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux32~2_combout\ = (\SRL64_A|Mux32|Mux63~33_combout\ & (!\B[5]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \SRL64_A|Mux32|Mux63~33_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux32|Mux32~2_combout\);

-- Location: LCCOMB_X46_Y37_N0
\SLL64_A|Mux8|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux32~0_combout\ = (\B[3]~input_o\ & (((\B[2]~input_o\)))) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Selector36~0_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64_A|Mux32|Mux32~2_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector36~0_combout\,
	combout => \SLL64_A|Mux8|Mux32~0_combout\);

-- Location: LCCOMB_X46_Y37_N26
\SLL64_A|Mux8|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux32~1_combout\ = (\SLL64_A|Mux8|Mux32~0_combout\ & ((\Selector44~0_combout\) # ((!\B[3]~input_o\)))) # (!\SLL64_A|Mux8|Mux32~0_combout\ & (((\B[3]~input_o\ & \Selector40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~0_combout\,
	datab => \SLL64_A|Mux8|Mux32~0_combout\,
	datac => \B[3]~input_o\,
	datad => \Selector40~0_combout\,
	combout => \SLL64_A|Mux8|Mux32~1_combout\);

-- Location: LCCOMB_X49_Y41_N16
\SLL64_A|Mux4|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux32~0_combout\ = (\B[1]~input_o\ & (\B[0]~input_o\)) # (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\Selector33~0_combout\))) # (!\B[0]~input_o\ & (\SLL64_A|Mux8|Mux32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SLL64_A|Mux8|Mux32~1_combout\,
	datad => \Selector33~0_combout\,
	combout => \SLL64_A|Mux4|Mux32~0_combout\);

-- Location: LCCOMB_X49_Y41_N10
\SLL64_A|Mux4|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux32~1_combout\ = (\B[1]~input_o\ & ((\SLL64_A|Mux4|Mux32~0_combout\ & (\Selector35~0_combout\)) # (!\SLL64_A|Mux4|Mux32~0_combout\ & ((\Selector34~0_combout\))))) # (!\B[1]~input_o\ & (\SLL64_A|Mux4|Mux32~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64_A|Mux4|Mux32~0_combout\,
	datac => \Selector35~0_combout\,
	datad => \Selector34~0_combout\,
	combout => \SLL64_A|Mux4|Mux32~1_combout\);

-- Location: IOIBUF_X49_Y73_N15
\C[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(31),
	o => \C[31]~input_o\);

-- Location: LCCOMB_X49_Y41_N28
\Selector352~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector352~0_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SLL64_A|Mux4|Mux32~1_combout\)) # (!\ShiftFN[0]~input_o\ & ((\C[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux32~1_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \C[31]~input_o\,
	combout => \Selector352~0_combout\);

-- Location: LCCOMB_X43_Y34_N28
\SRL64_A|Mux8|Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~2_combout\ = (\B[5]~input_o\ & (\Selector0~0_combout\ & ((\ShiftFN[0]~input_o\) # (!\B[4]~input_o\)))) # (!\B[5]~input_o\ & (((\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~2_combout\);

-- Location: LCCOMB_X43_Y34_N30
\SRL64_A|Mux8|Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~3_combout\ = (\SRL64_A|Mux8|Mux63~2_combout\ & (((\Selector16~0_combout\) # (\B[5]~input_o\)))) # (!\SRL64_A|Mux8|Mux63~2_combout\ & (\Selector32~0_combout\ & ((!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Selector16~0_combout\,
	datac => \SRL64_A|Mux8|Mux63~2_combout\,
	datad => \B[5]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~3_combout\);

-- Location: LCCOMB_X52_Y37_N24
\SRL64_A|Mux4|Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~2_combout\ = (\B[3]~input_o\ & (((\Selector24~0_combout\) # (\B[2]~input_o\)))) # (!\B[3]~input_o\ & (\SRL64_A|Mux8|Mux63~3_combout\ & ((!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~3_combout\,
	datab => \B[3]~input_o\,
	datac => \Selector24~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~2_combout\);

-- Location: LCCOMB_X52_Y37_N2
\SRL64_A|Mux4|Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~3_combout\ = (\B[2]~input_o\ & ((\SRL64_A|Mux4|Mux63~2_combout\ & ((\Selector20~0_combout\))) # (!\SRL64_A|Mux4|Mux63~2_combout\ & (\Selector28~0_combout\)))) # (!\B[2]~input_o\ & (((\SRL64_A|Mux4|Mux63~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Selector28~0_combout\,
	datac => \Selector20~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~2_combout\,
	combout => \SRL64_A|Mux4|Mux63~3_combout\);

-- Location: LCCOMB_X52_Y37_N4
\Selector96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\B[1]~input_o\ & ((\Selector30~0_combout\) # ((\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((!\B[0]~input_o\ & \SRL64_A|Mux4|Mux63~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector30~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~3_combout\,
	combout => \Selector96~0_combout\);

-- Location: LCCOMB_X52_Y37_N22
\Selector96~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector96~1_combout\ = (\B[0]~input_o\ & ((\Selector96~0_combout\ & ((\Selector29~0_combout\))) # (!\Selector96~0_combout\ & (\Selector31~0_combout\)))) # (!\B[0]~input_o\ & (((\Selector96~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~0_combout\,
	datab => \B[0]~input_o\,
	datac => \Selector96~0_combout\,
	datad => \Selector29~0_combout\,
	combout => \Selector96~1_combout\);

-- Location: LCCOMB_X50_Y41_N24
\Selector352~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector352~1_combout\ = (\Selector352~0_combout\) # ((\ShiftFN[1]~input_o\ & \Selector96~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector352~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector96~1_combout\,
	combout => \Selector352~1_combout\);

-- Location: LCCOMB_X50_Y39_N0
\Selector350~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~0_combout\ = (\ExtWord~input_o\) # ((\Selector361~4_combout\ & (\ShiftFN[1]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~4_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Selector350~0_combout\);

-- Location: IOIBUF_X60_Y73_N15
\C[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(32),
	o => \C[32]~input_o\);

-- Location: LCCOMB_X43_Y34_N0
\Selector350~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~5_combout\ = (\B[2]~input_o\) # ((\B[5]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Selector350~5_combout\);

-- Location: LCCOMB_X43_Y34_N10
\Selector350~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~6_combout\ = (\B[2]~input_o\) # ((!\B[5]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Selector350~6_combout\);

-- Location: LCCOMB_X49_Y35_N24
\Selector351~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector351~4_combout\ = (\Selector350~5_combout\ & ((\Selector350~6_combout\ & (\Selector35~0_combout\)) # (!\Selector350~6_combout\ & ((\Selector63~0_combout\))))) # (!\Selector350~5_combout\ & (((\Selector350~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~5_combout\,
	datab => \Selector35~0_combout\,
	datac => \Selector63~0_combout\,
	datad => \Selector350~6_combout\,
	combout => \Selector351~4_combout\);

-- Location: LCCOMB_X49_Y35_N10
\Selector351~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector351~5_combout\ = (\Selector351~4_combout\ & ((\Selector47~0_combout\) # ((\Selector379~13_combout\)))) # (!\Selector351~4_combout\ & (((!\Selector379~13_combout\ & \Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~0_combout\,
	datab => \Selector351~4_combout\,
	datac => \Selector379~13_combout\,
	datad => \Selector31~0_combout\,
	combout => \Selector351~5_combout\);

-- Location: LCCOMB_X52_Y35_N12
\Selector351~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector351~6_combout\ = (\Selector375~16_combout\ & (((\Selector39~0_combout\) # (\Selector371~13_combout\)))) # (!\Selector375~16_combout\ & (\Selector351~5_combout\ & ((!\Selector371~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~16_combout\,
	datab => \Selector351~5_combout\,
	datac => \Selector39~0_combout\,
	datad => \Selector371~13_combout\,
	combout => \Selector351~6_combout\);

-- Location: LCCOMB_X52_Y35_N6
\Selector351~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector351~7_combout\ = (\Selector351~6_combout\ & ((\Selector43~0_combout\) # ((!\Selector371~13_combout\)))) # (!\Selector351~6_combout\ & (((\Selector32~0_combout\ & \Selector371~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector351~6_combout\,
	datab => \Selector43~0_combout\,
	datac => \Selector32~0_combout\,
	datad => \Selector371~13_combout\,
	combout => \Selector351~7_combout\);

-- Location: LCCOMB_X52_Y35_N24
\Selector351~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector351~8_combout\ = (\Selector371~11_combout\ & (((\Selector33~0_combout\) # (\Selector371~10_combout\)))) # (!\Selector371~11_combout\ & (\Selector351~7_combout\ & ((!\Selector371~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector351~7_combout\,
	datab => \Selector33~0_combout\,
	datac => \Selector371~11_combout\,
	datad => \Selector371~10_combout\,
	combout => \Selector351~8_combout\);

-- Location: LCCOMB_X52_Y35_N10
\Selector351~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector351~9_combout\ = (\Selector371~10_combout\ & ((\Selector351~8_combout\ & (\Selector34~0_combout\)) # (!\Selector351~8_combout\ & ((\C[32]~input_o\))))) # (!\Selector371~10_combout\ & (((\Selector351~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~0_combout\,
	datab => \Selector371~10_combout\,
	datac => \C[32]~input_o\,
	datad => \Selector351~8_combout\,
	combout => \Selector351~9_combout\);

-- Location: LCCOMB_X45_Y38_N4
\Selector350~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~4_combout\ = (!\ExtWord~input_o\ & \ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector350~4_combout\);

-- Location: LCCOMB_X49_Y38_N14
\Selector350~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~1_combout\ = (\B[0]~input_o\) # ((\ShiftFN[0]~input_o\ & (!\B[2]~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Selector350~1_combout\);

-- Location: LCCOMB_X49_Y38_N24
\Selector350~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~2_combout\ = (\B[0]~input_o\) # ((!\B[2]~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Selector350~2_combout\);

-- Location: LCCOMB_X49_Y38_N26
\Selector350~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~3_combout\ = (\B[0]~input_o\) # ((!\B[2]~input_o\ & !\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Selector350~3_combout\);

-- Location: LCCOMB_X49_Y35_N22
\Selector351~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector351~0_combout\ = (\Selector350~2_combout\ & (((\Selector350~3_combout\)))) # (!\Selector350~2_combout\ & ((\Selector350~3_combout\ & ((\SRL64_A|Mux32|Mux63~0_combout\))) # (!\Selector350~3_combout\ & (\Selector27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~0_combout\,
	datab => \SRL64_A|Mux32|Mux63~0_combout\,
	datac => \Selector350~2_combout\,
	datad => \Selector350~3_combout\,
	combout => \Selector351~0_combout\);

-- Location: LCCOMB_X53_Y36_N10
\Selector351~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector351~1_combout\ = (\Selector350~1_combout\ & ((\Selector351~0_combout\ & (\Selector30~0_combout\)) # (!\Selector351~0_combout\ & ((\Selector0~0_combout\))))) # (!\Selector350~1_combout\ & (((\Selector351~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector30~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector350~1_combout\,
	datad => \Selector351~0_combout\,
	combout => \Selector351~1_combout\);

-- Location: LCCOMB_X53_Y36_N20
\Selector351~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector351~2_combout\ = (\Selector361~6_combout\ & (((\B[1]~input_o\) # (\Selector23~0_combout\)))) # (!\Selector361~6_combout\ & (\Selector351~1_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector351~1_combout\,
	datab => \Selector361~6_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector23~0_combout\,
	combout => \Selector351~2_combout\);

-- Location: LCCOMB_X53_Y36_N14
\Selector351~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector351~3_combout\ = (\B[1]~input_o\ & ((\Selector351~2_combout\ & (\Selector28~0_combout\)) # (!\Selector351~2_combout\ & ((\Selector29~0_combout\))))) # (!\B[1]~input_o\ & (((\Selector351~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector29~0_combout\,
	datad => \Selector351~2_combout\,
	combout => \Selector351~3_combout\);

-- Location: LCCOMB_X53_Y38_N0
\Selector351~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector351~10_combout\ = (\Selector350~0_combout\ & (((\Selector350~4_combout\)))) # (!\Selector350~0_combout\ & ((\Selector350~4_combout\ & ((\Selector351~3_combout\))) # (!\Selector350~4_combout\ & (\Selector351~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector351~9_combout\,
	datab => \Selector350~0_combout\,
	datac => \Selector350~4_combout\,
	datad => \Selector351~3_combout\,
	combout => \Selector351~10_combout\);

-- Location: LCCOMB_X53_Y38_N10
\Selector351~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector351~11_combout\ = (\Selector350~0_combout\ & ((\Selector351~10_combout\ & ((\Selector19~0_combout\))) # (!\Selector351~10_combout\ & (\Selector352~1_combout\)))) # (!\Selector350~0_combout\ & (((\Selector351~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector352~1_combout\,
	datab => \Selector350~0_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector351~10_combout\,
	combout => \Selector351~11_combout\);

-- Location: IOIBUF_X52_Y0_N1
\C[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(33),
	o => \C[33]~input_o\);

-- Location: LCCOMB_X45_Y35_N28
\Selector350~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~11_combout\ = (\Selector350~5_combout\ & ((\Selector350~6_combout\ & ((\Selector34~0_combout\))) # (!\Selector350~6_combout\ & (\Selector62~0_combout\)))) # (!\Selector350~5_combout\ & (((\Selector350~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~5_combout\,
	datab => \Selector62~0_combout\,
	datac => \Selector350~6_combout\,
	datad => \Selector34~0_combout\,
	combout => \Selector350~11_combout\);

-- Location: LCCOMB_X45_Y35_N30
\Selector350~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~12_combout\ = (\Selector379~13_combout\ & (\Selector350~11_combout\)) # (!\Selector379~13_combout\ & ((\Selector350~11_combout\ & (\Selector46~0_combout\)) # (!\Selector350~11_combout\ & ((\Selector30~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~13_combout\,
	datab => \Selector350~11_combout\,
	datac => \Selector46~0_combout\,
	datad => \Selector30~0_combout\,
	combout => \Selector350~12_combout\);

-- Location: LCCOMB_X52_Y35_N4
\Selector350~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~13_combout\ = (\Selector375~16_combout\ & (((\Selector371~13_combout\)))) # (!\Selector375~16_combout\ & ((\Selector371~13_combout\ & ((\Selector31~0_combout\))) # (!\Selector371~13_combout\ & (\Selector350~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~16_combout\,
	datab => \Selector350~12_combout\,
	datac => \Selector31~0_combout\,
	datad => \Selector371~13_combout\,
	combout => \Selector350~13_combout\);

-- Location: LCCOMB_X52_Y35_N30
\Selector350~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~14_combout\ = (\Selector350~13_combout\ & ((\Selector42~0_combout\) # ((!\Selector375~16_combout\)))) # (!\Selector350~13_combout\ & (((\Selector38~0_combout\ & \Selector375~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector42~0_combout\,
	datab => \Selector350~13_combout\,
	datac => \Selector38~0_combout\,
	datad => \Selector375~16_combout\,
	combout => \Selector350~14_combout\);

-- Location: LCCOMB_X52_Y35_N16
\Selector350~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~15_combout\ = (\Selector371~11_combout\ & (((\Selector371~10_combout\)))) # (!\Selector371~11_combout\ & ((\Selector371~10_combout\ & (\C[33]~input_o\)) # (!\Selector371~10_combout\ & ((\Selector350~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~11_combout\,
	datab => \C[33]~input_o\,
	datac => \Selector350~14_combout\,
	datad => \Selector371~10_combout\,
	combout => \Selector350~15_combout\);

-- Location: LCCOMB_X52_Y35_N26
\Selector350~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~16_combout\ = (\Selector371~11_combout\ & ((\Selector350~15_combout\ & (\Selector33~0_combout\)) # (!\Selector350~15_combout\ & ((\Selector32~0_combout\))))) # (!\Selector371~11_combout\ & (((\Selector350~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~11_combout\,
	datab => \Selector33~0_combout\,
	datac => \Selector32~0_combout\,
	datad => \Selector350~15_combout\,
	combout => \Selector350~16_combout\);

-- Location: LCCOMB_X53_Y38_N4
\Selector350~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~17_combout\ = (\Selector350~0_combout\ & ((\Selector352~1_combout\) # ((\Selector350~4_combout\)))) # (!\Selector350~0_combout\ & (((!\Selector350~4_combout\ & \Selector350~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector352~1_combout\,
	datab => \Selector350~0_combout\,
	datac => \Selector350~4_combout\,
	datad => \Selector350~16_combout\,
	combout => \Selector350~17_combout\);

-- Location: LCCOMB_X53_Y36_N16
\Selector350~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~7_combout\ = (\Selector350~3_combout\ & ((\SRL64_A|Mux32|Mux63~3_combout\) # ((\Selector350~2_combout\)))) # (!\Selector350~3_combout\ & (((\Selector26~0_combout\ & !\Selector350~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~3_combout\,
	datab => \Selector350~3_combout\,
	datac => \Selector26~0_combout\,
	datad => \Selector350~2_combout\,
	combout => \Selector350~7_combout\);

-- Location: LCCOMB_X53_Y36_N26
\Selector350~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~8_combout\ = (\Selector350~1_combout\ & ((\Selector350~7_combout\ & ((\Selector29~0_combout\))) # (!\Selector350~7_combout\ & (\Selector0~0_combout\)))) # (!\Selector350~1_combout\ & (((\Selector350~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector29~0_combout\,
	datac => \Selector350~1_combout\,
	datad => \Selector350~7_combout\,
	combout => \Selector350~8_combout\);

-- Location: LCCOMB_X53_Y36_N12
\Selector350~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~9_combout\ = (\B[1]~input_o\ & ((\Selector28~0_combout\) # ((\Selector361~6_combout\)))) # (!\B[1]~input_o\ & (((\Selector350~8_combout\ & !\Selector361~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector28~0_combout\,
	datac => \Selector350~8_combout\,
	datad => \Selector361~6_combout\,
	combout => \Selector350~9_combout\);

-- Location: LCCOMB_X52_Y36_N10
\Selector350~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~10_combout\ = (\Selector350~9_combout\ & (((\Selector27~0_combout\) # (!\Selector361~6_combout\)))) # (!\Selector350~9_combout\ & (\Selector22~0_combout\ & ((\Selector361~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \Selector27~0_combout\,
	datac => \Selector350~9_combout\,
	datad => \Selector361~6_combout\,
	combout => \Selector350~10_combout\);

-- Location: LCCOMB_X53_Y38_N14
\Selector350~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector350~18_combout\ = (\Selector350~4_combout\ & ((\Selector350~17_combout\ & (\Selector18~0_combout\)) # (!\Selector350~17_combout\ & ((\Selector350~10_combout\))))) # (!\Selector350~4_combout\ & (((\Selector350~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~4_combout\,
	datab => \Selector18~0_combout\,
	datac => \Selector350~17_combout\,
	datad => \Selector350~10_combout\,
	combout => \Selector350~18_combout\);

-- Location: LCCOMB_X45_Y36_N2
\Selector349~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector349~4_combout\ = (\Selector350~6_combout\ & (((\Selector33~0_combout\) # (!\Selector350~5_combout\)))) # (!\Selector350~6_combout\ & (\Selector61~0_combout\ & ((\Selector350~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~6_combout\,
	datab => \Selector61~0_combout\,
	datac => \Selector33~0_combout\,
	datad => \Selector350~5_combout\,
	combout => \Selector349~4_combout\);

-- Location: LCCOMB_X45_Y36_N4
\Selector349~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector349~5_combout\ = (\Selector379~13_combout\ & (((\Selector349~4_combout\)))) # (!\Selector379~13_combout\ & ((\Selector349~4_combout\ & (\Selector45~0_combout\)) # (!\Selector349~4_combout\ & ((\Selector29~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~0_combout\,
	datab => \Selector379~13_combout\,
	datac => \Selector29~0_combout\,
	datad => \Selector349~4_combout\,
	combout => \Selector349~5_combout\);

-- Location: LCCOMB_X49_Y36_N8
\Selector349~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector349~6_combout\ = (\Selector375~16_combout\ & ((\Selector37~0_combout\) # ((\Selector371~13_combout\)))) # (!\Selector375~16_combout\ & (((!\Selector371~13_combout\ & \Selector349~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~0_combout\,
	datab => \Selector375~16_combout\,
	datac => \Selector371~13_combout\,
	datad => \Selector349~5_combout\,
	combout => \Selector349~6_combout\);

-- Location: LCCOMB_X49_Y36_N26
\Selector349~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector349~7_combout\ = (\Selector349~6_combout\ & (((\Selector41~0_combout\) # (!\Selector371~13_combout\)))) # (!\Selector349~6_combout\ & (\Selector30~0_combout\ & (\Selector371~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector30~0_combout\,
	datab => \Selector349~6_combout\,
	datac => \Selector371~13_combout\,
	datad => \Selector41~0_combout\,
	combout => \Selector349~7_combout\);

-- Location: LCCOMB_X52_Y36_N24
\Selector349~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector349~8_combout\ = (\Selector371~11_combout\ & ((\Selector31~0_combout\) # ((\Selector371~10_combout\)))) # (!\Selector371~11_combout\ & (((\Selector349~7_combout\ & !\Selector371~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~0_combout\,
	datab => \Selector349~7_combout\,
	datac => \Selector371~11_combout\,
	datad => \Selector371~10_combout\,
	combout => \Selector349~8_combout\);

-- Location: IOIBUF_X115_Y36_N15
\C[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(34),
	o => \C[34]~input_o\);

-- Location: LCCOMB_X52_Y36_N26
\Selector349~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector349~9_combout\ = (\Selector349~8_combout\ & ((\Selector32~0_combout\) # ((!\Selector371~10_combout\)))) # (!\Selector349~8_combout\ & (((\C[34]~input_o\ & \Selector371~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Selector349~8_combout\,
	datac => \C[34]~input_o\,
	datad => \Selector371~10_combout\,
	combout => \Selector349~9_combout\);

-- Location: LCCOMB_X53_Y36_N22
\Selector349~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector349~0_combout\ = (\Selector350~3_combout\ & ((\SRL64_A|Mux32|Mux63~4_combout\) # ((\Selector350~2_combout\)))) # (!\Selector350~3_combout\ & (((\Selector25~0_combout\ & !\Selector350~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~4_combout\,
	datab => \Selector25~0_combout\,
	datac => \Selector350~3_combout\,
	datad => \Selector350~2_combout\,
	combout => \Selector349~0_combout\);

-- Location: LCCOMB_X53_Y36_N8
\Selector349~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector349~1_combout\ = (\Selector350~1_combout\ & ((\Selector349~0_combout\ & ((\Selector28~0_combout\))) # (!\Selector349~0_combout\ & (\Selector0~0_combout\)))) # (!\Selector350~1_combout\ & (((\Selector349~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~1_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector349~0_combout\,
	datad => \Selector28~0_combout\,
	combout => \Selector349~1_combout\);

-- Location: LCCOMB_X52_Y36_N12
\Selector349~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector349~2_combout\ = (\B[1]~input_o\ & (((\Selector361~6_combout\)))) # (!\B[1]~input_o\ & ((\Selector361~6_combout\ & (\Selector21~0_combout\)) # (!\Selector361~6_combout\ & ((\Selector349~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector21~0_combout\,
	datac => \Selector349~1_combout\,
	datad => \Selector361~6_combout\,
	combout => \Selector349~2_combout\);

-- Location: LCCOMB_X52_Y36_N22
\Selector349~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector349~3_combout\ = (\B[1]~input_o\ & ((\Selector349~2_combout\ & (\Selector26~0_combout\)) # (!\Selector349~2_combout\ & ((\Selector27~0_combout\))))) # (!\B[1]~input_o\ & (((\Selector349~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~0_combout\,
	datab => \Selector27~0_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector349~2_combout\,
	combout => \Selector349~3_combout\);

-- Location: LCCOMB_X52_Y36_N4
\Selector349~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector349~10_combout\ = (\Selector350~0_combout\ & (((\Selector350~4_combout\)))) # (!\Selector350~0_combout\ & ((\Selector350~4_combout\ & ((\Selector349~3_combout\))) # (!\Selector350~4_combout\ & (\Selector349~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector349~9_combout\,
	datab => \Selector350~0_combout\,
	datac => \Selector349~3_combout\,
	datad => \Selector350~4_combout\,
	combout => \Selector349~10_combout\);

-- Location: LCCOMB_X52_Y36_N14
\Selector349~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector349~11_combout\ = (\Selector350~0_combout\ & ((\Selector349~10_combout\ & ((\Selector17~0_combout\))) # (!\Selector349~10_combout\ & (\Selector352~1_combout\)))) # (!\Selector350~0_combout\ & (((\Selector349~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector352~1_combout\,
	datab => \Selector350~0_combout\,
	datac => \Selector349~10_combout\,
	datad => \Selector17~0_combout\,
	combout => \Selector349~11_combout\);

-- Location: LCCOMB_X52_Y38_N16
\Selector348~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector348~0_combout\ = (\Selector350~3_combout\ & ((\Selector350~2_combout\) # ((\SRL64_A|Mux32|Mux63~5_combout\)))) # (!\Selector350~3_combout\ & (!\Selector350~2_combout\ & (\Selector24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~3_combout\,
	datab => \Selector350~2_combout\,
	datac => \Selector24~0_combout\,
	datad => \SRL64_A|Mux32|Mux63~5_combout\,
	combout => \Selector348~0_combout\);

-- Location: LCCOMB_X52_Y38_N18
\Selector348~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector348~1_combout\ = (\Selector350~1_combout\ & ((\Selector348~0_combout\ & ((\Selector27~0_combout\))) # (!\Selector348~0_combout\ & (\Selector0~0_combout\)))) # (!\Selector350~1_combout\ & (((\Selector348~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~1_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector27~0_combout\,
	datad => \Selector348~0_combout\,
	combout => \Selector348~1_combout\);

-- Location: LCCOMB_X53_Y37_N0
\Selector348~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector348~2_combout\ = (\Selector361~6_combout\ & (\B[1]~input_o\)) # (!\Selector361~6_combout\ & ((\B[1]~input_o\ & (\Selector26~0_combout\)) # (!\B[1]~input_o\ & ((\Selector348~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~6_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector26~0_combout\,
	datad => \Selector348~1_combout\,
	combout => \Selector348~2_combout\);

-- Location: LCCOMB_X53_Y37_N10
\Selector348~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector348~3_combout\ = (\Selector361~6_combout\ & ((\Selector348~2_combout\ & ((\Selector25~0_combout\))) # (!\Selector348~2_combout\ & (\Selector20~0_combout\)))) # (!\Selector361~6_combout\ & (((\Selector348~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~6_combout\,
	datab => \Selector20~0_combout\,
	datac => \Selector25~0_combout\,
	datad => \Selector348~2_combout\,
	combout => \Selector348~3_combout\);

-- Location: IOIBUF_X60_Y0_N8
\C[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(35),
	o => \C[35]~input_o\);

-- Location: LCCOMB_X48_Y36_N24
\Selector348~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector348~4_combout\ = (\Selector350~6_combout\ & (((\Selector32~0_combout\) # (!\Selector350~5_combout\)))) # (!\Selector350~6_combout\ & (\Selector60~0_combout\ & ((\Selector350~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector60~0_combout\,
	datab => \Selector32~0_combout\,
	datac => \Selector350~6_combout\,
	datad => \Selector350~5_combout\,
	combout => \Selector348~4_combout\);

-- Location: LCCOMB_X48_Y36_N18
\Selector348~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector348~5_combout\ = (\Selector379~13_combout\ & (((\Selector348~4_combout\)))) # (!\Selector379~13_combout\ & ((\Selector348~4_combout\ & ((\Selector44~0_combout\))) # (!\Selector348~4_combout\ & (\Selector28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~13_combout\,
	datab => \Selector28~0_combout\,
	datac => \Selector44~0_combout\,
	datad => \Selector348~4_combout\,
	combout => \Selector348~5_combout\);

-- Location: LCCOMB_X47_Y36_N8
\Selector348~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector348~6_combout\ = (\Selector375~16_combout\ & (((\Selector371~13_combout\)))) # (!\Selector375~16_combout\ & ((\Selector371~13_combout\ & (\Selector29~0_combout\)) # (!\Selector371~13_combout\ & ((\Selector348~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~0_combout\,
	datab => \Selector375~16_combout\,
	datac => \Selector348~5_combout\,
	datad => \Selector371~13_combout\,
	combout => \Selector348~6_combout\);

-- Location: LCCOMB_X48_Y36_N12
\Selector348~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector348~7_combout\ = (\Selector348~6_combout\ & (((\Selector40~0_combout\) # (!\Selector375~16_combout\)))) # (!\Selector348~6_combout\ & (\Selector36~0_combout\ & ((\Selector375~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector348~6_combout\,
	datab => \Selector36~0_combout\,
	datac => \Selector40~0_combout\,
	datad => \Selector375~16_combout\,
	combout => \Selector348~7_combout\);

-- Location: LCCOMB_X52_Y35_N20
\Selector348~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector348~8_combout\ = (\Selector371~11_combout\ & (\Selector371~10_combout\)) # (!\Selector371~11_combout\ & ((\Selector371~10_combout\ & (\C[35]~input_o\)) # (!\Selector371~10_combout\ & ((\Selector348~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~11_combout\,
	datab => \Selector371~10_combout\,
	datac => \C[35]~input_o\,
	datad => \Selector348~7_combout\,
	combout => \Selector348~8_combout\);

-- Location: LCCOMB_X52_Y35_N14
\Selector348~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector348~9_combout\ = (\Selector371~11_combout\ & ((\Selector348~8_combout\ & ((\Selector31~0_combout\))) # (!\Selector348~8_combout\ & (\Selector30~0_combout\)))) # (!\Selector371~11_combout\ & (((\Selector348~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~11_combout\,
	datab => \Selector30~0_combout\,
	datac => \Selector31~0_combout\,
	datad => \Selector348~8_combout\,
	combout => \Selector348~9_combout\);

-- Location: LCCOMB_X53_Y37_N20
\Selector348~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector348~10_combout\ = (\Selector350~4_combout\ & (((\Selector350~0_combout\)))) # (!\Selector350~4_combout\ & ((\Selector350~0_combout\ & ((\Selector352~1_combout\))) # (!\Selector350~0_combout\ & (\Selector348~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector348~9_combout\,
	datab => \Selector350~4_combout\,
	datac => \Selector350~0_combout\,
	datad => \Selector352~1_combout\,
	combout => \Selector348~10_combout\);

-- Location: LCCOMB_X53_Y37_N30
\Selector348~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector348~11_combout\ = (\Selector350~4_combout\ & ((\Selector348~10_combout\ & ((\Selector16~0_combout\))) # (!\Selector348~10_combout\ & (\Selector348~3_combout\)))) # (!\Selector350~4_combout\ & (((\Selector348~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector348~3_combout\,
	datab => \Selector350~4_combout\,
	datac => \Selector16~0_combout\,
	datad => \Selector348~10_combout\,
	combout => \Selector348~11_combout\);

-- Location: LCCOMB_X48_Y35_N4
\Selector347~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector347~4_combout\ = (\Selector350~6_combout\ & (((\Selector31~0_combout\)) # (!\Selector350~5_combout\))) # (!\Selector350~6_combout\ & (\Selector350~5_combout\ & (\Selector59~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~6_combout\,
	datab => \Selector350~5_combout\,
	datac => \Selector59~0_combout\,
	datad => \Selector31~0_combout\,
	combout => \Selector347~4_combout\);

-- Location: LCCOMB_X48_Y35_N14
\Selector347~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector347~5_combout\ = (\Selector379~13_combout\ & (\Selector347~4_combout\)) # (!\Selector379~13_combout\ & ((\Selector347~4_combout\ & (\Selector43~0_combout\)) # (!\Selector347~4_combout\ & ((\Selector27~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~13_combout\,
	datab => \Selector347~4_combout\,
	datac => \Selector43~0_combout\,
	datad => \Selector27~0_combout\,
	combout => \Selector347~5_combout\);

-- Location: LCCOMB_X52_Y37_N8
\Selector347~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector347~6_combout\ = (\Selector371~13_combout\ & (((\Selector375~16_combout\)))) # (!\Selector371~13_combout\ & ((\Selector375~16_combout\ & ((\Selector35~0_combout\))) # (!\Selector375~16_combout\ & (\Selector347~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~13_combout\,
	datab => \Selector347~5_combout\,
	datac => \Selector35~0_combout\,
	datad => \Selector375~16_combout\,
	combout => \Selector347~6_combout\);

-- Location: LCCOMB_X52_Y37_N18
\Selector347~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector347~7_combout\ = (\Selector371~13_combout\ & ((\Selector347~6_combout\ & (\Selector39~0_combout\)) # (!\Selector347~6_combout\ & ((\Selector28~0_combout\))))) # (!\Selector371~13_combout\ & (((\Selector347~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~13_combout\,
	datab => \Selector39~0_combout\,
	datac => \Selector347~6_combout\,
	datad => \Selector28~0_combout\,
	combout => \Selector347~7_combout\);

-- Location: LCCOMB_X52_Y37_N20
\Selector347~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector347~8_combout\ = (\Selector371~11_combout\ & ((\Selector29~0_combout\) # ((\Selector371~10_combout\)))) # (!\Selector371~11_combout\ & (((!\Selector371~10_combout\ & \Selector347~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~11_combout\,
	datab => \Selector29~0_combout\,
	datac => \Selector371~10_combout\,
	datad => \Selector347~7_combout\,
	combout => \Selector347~8_combout\);

-- Location: IOIBUF_X74_Y0_N1
\C[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(36),
	o => \C[36]~input_o\);

-- Location: LCCOMB_X52_Y37_N6
\Selector347~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector347~9_combout\ = (\Selector347~8_combout\ & ((\Selector30~0_combout\) # ((!\Selector371~10_combout\)))) # (!\Selector347~8_combout\ & (((\Selector371~10_combout\ & \C[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector30~0_combout\,
	datab => \Selector347~8_combout\,
	datac => \Selector371~10_combout\,
	datad => \C[36]~input_o\,
	combout => \Selector347~9_combout\);

-- Location: LCCOMB_X53_Y36_N2
\Selector347~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector347~0_combout\ = (\Selector350~2_combout\ & (\Selector350~3_combout\)) # (!\Selector350~2_combout\ & ((\Selector350~3_combout\ & ((\SRL64_A|Mux32|Mux63~6_combout\))) # (!\Selector350~3_combout\ & (\Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~2_combout\,
	datab => \Selector350~3_combout\,
	datac => \Selector23~0_combout\,
	datad => \SRL64_A|Mux32|Mux63~6_combout\,
	combout => \Selector347~0_combout\);

-- Location: LCCOMB_X53_Y36_N4
\Selector347~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector347~1_combout\ = (\Selector350~1_combout\ & ((\Selector347~0_combout\ & (\Selector26~0_combout\)) # (!\Selector347~0_combout\ & ((\Selector0~0_combout\))))) # (!\Selector350~1_combout\ & (((\Selector347~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector350~1_combout\,
	datad => \Selector347~0_combout\,
	combout => \Selector347~1_combout\);

-- Location: LCCOMB_X53_Y37_N16
\Selector347~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector347~2_combout\ = (\B[1]~input_o\ & (((\Selector361~6_combout\)))) # (!\B[1]~input_o\ & ((\Selector361~6_combout\ & (\Selector19~0_combout\)) # (!\Selector361~6_combout\ & ((\Selector347~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector361~6_combout\,
	datad => \Selector347~1_combout\,
	combout => \Selector347~2_combout\);

-- Location: LCCOMB_X53_Y37_N18
\Selector347~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector347~3_combout\ = (\B[1]~input_o\ & ((\Selector347~2_combout\ & ((\Selector24~0_combout\))) # (!\Selector347~2_combout\ & (\Selector25~0_combout\)))) # (!\B[1]~input_o\ & (((\Selector347~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector24~0_combout\,
	datad => \Selector347~2_combout\,
	combout => \Selector347~3_combout\);

-- Location: LCCOMB_X53_Y37_N12
\Selector347~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector347~10_combout\ = (\Selector350~4_combout\ & (((\Selector350~0_combout\) # (\Selector347~3_combout\)))) # (!\Selector350~4_combout\ & (\Selector347~9_combout\ & (!\Selector350~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector347~9_combout\,
	datab => \Selector350~4_combout\,
	datac => \Selector350~0_combout\,
	datad => \Selector347~3_combout\,
	combout => \Selector347~10_combout\);

-- Location: LCCOMB_X53_Y38_N16
\Selector347~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector347~11_combout\ = (\Selector347~10_combout\ & (((\Selector15~0_combout\)) # (!\Selector350~0_combout\))) # (!\Selector347~10_combout\ & (\Selector350~0_combout\ & (\Selector352~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector347~10_combout\,
	datab => \Selector350~0_combout\,
	datac => \Selector352~1_combout\,
	datad => \Selector15~0_combout\,
	combout => \Selector347~11_combout\);

-- Location: LCCOMB_X53_Y36_N30
\Selector346~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector346~0_combout\ = (\Selector350~3_combout\ & ((\SRL64_A|Mux32|Mux63~7_combout\) # ((\Selector350~2_combout\)))) # (!\Selector350~3_combout\ & (((\Selector22~0_combout\ & !\Selector350~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~7_combout\,
	datab => \Selector350~3_combout\,
	datac => \Selector22~0_combout\,
	datad => \Selector350~2_combout\,
	combout => \Selector346~0_combout\);

-- Location: LCCOMB_X53_Y36_N0
\Selector346~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector346~1_combout\ = (\Selector346~0_combout\ & (((\Selector25~0_combout\) # (!\Selector350~1_combout\)))) # (!\Selector346~0_combout\ & (\Selector0~0_combout\ & (\Selector350~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector346~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector350~1_combout\,
	datad => \Selector25~0_combout\,
	combout => \Selector346~1_combout\);

-- Location: LCCOMB_X53_Y37_N14
\Selector346~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector346~2_combout\ = (\Selector361~6_combout\ & (\B[1]~input_o\)) # (!\Selector361~6_combout\ & ((\B[1]~input_o\ & (\Selector24~0_combout\)) # (!\B[1]~input_o\ & ((\Selector346~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~6_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector24~0_combout\,
	datad => \Selector346~1_combout\,
	combout => \Selector346~2_combout\);

-- Location: LCCOMB_X53_Y37_N24
\Selector346~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector346~3_combout\ = (\Selector346~2_combout\ & ((\Selector23~0_combout\) # ((!\Selector361~6_combout\)))) # (!\Selector346~2_combout\ & (((\Selector361~6_combout\ & \Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \Selector346~2_combout\,
	datac => \Selector361~6_combout\,
	datad => \Selector18~0_combout\,
	combout => \Selector346~3_combout\);

-- Location: LCCOMB_X47_Y35_N28
\Selector346~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector346~4_combout\ = (\Selector350~5_combout\ & ((\Selector350~6_combout\ & ((\Selector30~0_combout\))) # (!\Selector350~6_combout\ & (\Selector58~0_combout\)))) # (!\Selector350~5_combout\ & (((\Selector350~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~5_combout\,
	datab => \Selector58~0_combout\,
	datac => \Selector350~6_combout\,
	datad => \Selector30~0_combout\,
	combout => \Selector346~4_combout\);

-- Location: LCCOMB_X47_Y35_N22
\Selector346~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector346~5_combout\ = (\Selector379~13_combout\ & (\Selector346~4_combout\)) # (!\Selector379~13_combout\ & ((\Selector346~4_combout\ & ((\Selector42~0_combout\))) # (!\Selector346~4_combout\ & (\Selector26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~13_combout\,
	datab => \Selector346~4_combout\,
	datac => \Selector26~0_combout\,
	datad => \Selector42~0_combout\,
	combout => \Selector346~5_combout\);

-- Location: LCCOMB_X52_Y37_N16
\Selector346~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector346~6_combout\ = (\Selector375~16_combout\ & (((\Selector371~13_combout\)))) # (!\Selector375~16_combout\ & ((\Selector371~13_combout\ & (\Selector27~0_combout\)) # (!\Selector371~13_combout\ & ((\Selector346~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~0_combout\,
	datab => \Selector375~16_combout\,
	datac => \Selector346~5_combout\,
	datad => \Selector371~13_combout\,
	combout => \Selector346~6_combout\);

-- Location: LCCOMB_X52_Y37_N26
\Selector346~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector346~7_combout\ = (\Selector346~6_combout\ & ((\Selector38~0_combout\) # ((!\Selector375~16_combout\)))) # (!\Selector346~6_combout\ & (((\Selector34~0_combout\ & \Selector375~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~0_combout\,
	datab => \Selector346~6_combout\,
	datac => \Selector34~0_combout\,
	datad => \Selector375~16_combout\,
	combout => \Selector346~7_combout\);

-- Location: IOIBUF_X67_Y0_N22
\C[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(37),
	o => \C[37]~input_o\);

-- Location: LCCOMB_X52_Y37_N28
\Selector346~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector346~8_combout\ = (\Selector371~11_combout\ & (\Selector371~10_combout\)) # (!\Selector371~11_combout\ & ((\Selector371~10_combout\ & ((\C[37]~input_o\))) # (!\Selector371~10_combout\ & (\Selector346~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~11_combout\,
	datab => \Selector371~10_combout\,
	datac => \Selector346~7_combout\,
	datad => \C[37]~input_o\,
	combout => \Selector346~8_combout\);

-- Location: LCCOMB_X52_Y37_N14
\Selector346~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector346~9_combout\ = (\Selector371~11_combout\ & ((\Selector346~8_combout\ & ((\Selector29~0_combout\))) # (!\Selector346~8_combout\ & (\Selector28~0_combout\)))) # (!\Selector371~11_combout\ & (((\Selector346~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~11_combout\,
	datab => \Selector28~0_combout\,
	datac => \Selector29~0_combout\,
	datad => \Selector346~8_combout\,
	combout => \Selector346~9_combout\);

-- Location: LCCOMB_X53_Y37_N2
\Selector346~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector346~10_combout\ = (\Selector350~4_combout\ & (((\Selector350~0_combout\)))) # (!\Selector350~4_combout\ & ((\Selector350~0_combout\ & ((\Selector352~1_combout\))) # (!\Selector350~0_combout\ & (\Selector346~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector346~9_combout\,
	datab => \Selector350~4_combout\,
	datac => \Selector350~0_combout\,
	datad => \Selector352~1_combout\,
	combout => \Selector346~10_combout\);

-- Location: LCCOMB_X53_Y37_N4
\Selector346~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector346~11_combout\ = (\Selector346~10_combout\ & (((\Selector14~0_combout\) # (!\Selector350~4_combout\)))) # (!\Selector346~10_combout\ & (\Selector346~3_combout\ & ((\Selector350~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector346~3_combout\,
	datab => \Selector346~10_combout\,
	datac => \Selector14~0_combout\,
	datad => \Selector350~4_combout\,
	combout => \Selector346~11_combout\);

-- Location: LCCOMB_X45_Y36_N6
\Selector345~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector345~4_combout\ = (\Selector350~6_combout\ & (((\Selector29~0_combout\) # (!\Selector350~5_combout\)))) # (!\Selector350~6_combout\ & (\Selector57~0_combout\ & ((\Selector350~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~6_combout\,
	datab => \Selector57~0_combout\,
	datac => \Selector29~0_combout\,
	datad => \Selector350~5_combout\,
	combout => \Selector345~4_combout\);

-- Location: LCCOMB_X49_Y36_N12
\Selector345~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector345~5_combout\ = (\Selector379~13_combout\ & (((\Selector345~4_combout\)))) # (!\Selector379~13_combout\ & ((\Selector345~4_combout\ & (\Selector41~0_combout\)) # (!\Selector345~4_combout\ & ((\Selector25~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~0_combout\,
	datab => \Selector379~13_combout\,
	datac => \Selector345~4_combout\,
	datad => \Selector25~0_combout\,
	combout => \Selector345~5_combout\);

-- Location: LCCOMB_X49_Y36_N14
\Selector345~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector345~6_combout\ = (\Selector375~16_combout\ & ((\Selector33~0_combout\) # ((\Selector371~13_combout\)))) # (!\Selector375~16_combout\ & (((!\Selector371~13_combout\ & \Selector345~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \Selector375~16_combout\,
	datac => \Selector371~13_combout\,
	datad => \Selector345~5_combout\,
	combout => \Selector345~6_combout\);

-- Location: LCCOMB_X49_Y36_N24
\Selector345~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector345~7_combout\ = (\Selector345~6_combout\ & ((\Selector37~0_combout\) # ((!\Selector371~13_combout\)))) # (!\Selector345~6_combout\ & (((\Selector371~13_combout\ & \Selector26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~0_combout\,
	datab => \Selector345~6_combout\,
	datac => \Selector371~13_combout\,
	datad => \Selector26~0_combout\,
	combout => \Selector345~7_combout\);

-- Location: LCCOMB_X52_Y36_N20
\Selector345~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector345~8_combout\ = (\Selector371~11_combout\ & (((\Selector27~0_combout\) # (\Selector371~10_combout\)))) # (!\Selector371~11_combout\ & (\Selector345~7_combout\ & ((!\Selector371~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector345~7_combout\,
	datab => \Selector27~0_combout\,
	datac => \Selector371~11_combout\,
	datad => \Selector371~10_combout\,
	combout => \Selector345~8_combout\);

-- Location: IOIBUF_X115_Y36_N8
\C[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(38),
	o => \C[38]~input_o\);

-- Location: LCCOMB_X52_Y36_N30
\Selector345~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector345~9_combout\ = (\Selector345~8_combout\ & ((\Selector28~0_combout\) # ((!\Selector371~10_combout\)))) # (!\Selector345~8_combout\ & (((\C[38]~input_o\ & \Selector371~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~0_combout\,
	datab => \Selector345~8_combout\,
	datac => \C[38]~input_o\,
	datad => \Selector371~10_combout\,
	combout => \Selector345~9_combout\);

-- Location: LCCOMB_X52_Y38_N28
\Selector345~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector345~0_combout\ = (\Selector350~3_combout\ & ((\SRL64_A|Mux32|Mux63~8_combout\) # ((\Selector350~2_combout\)))) # (!\Selector350~3_combout\ & (((\Selector21~0_combout\ & !\Selector350~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~3_combout\,
	datab => \SRL64_A|Mux32|Mux63~8_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector350~2_combout\,
	combout => \Selector345~0_combout\);

-- Location: LCCOMB_X52_Y38_N6
\Selector345~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector345~1_combout\ = (\Selector350~1_combout\ & ((\Selector345~0_combout\ & ((\Selector24~0_combout\))) # (!\Selector345~0_combout\ & (\Selector0~0_combout\)))) # (!\Selector350~1_combout\ & (((\Selector345~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~1_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector24~0_combout\,
	datad => \Selector345~0_combout\,
	combout => \Selector345~1_combout\);

-- Location: LCCOMB_X52_Y36_N0
\Selector345~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector345~2_combout\ = (\Selector361~6_combout\ & ((\Selector17~0_combout\) # ((\B[1]~input_o\)))) # (!\Selector361~6_combout\ & (((!\B[1]~input_o\ & \Selector345~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~6_combout\,
	datab => \Selector17~0_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector345~1_combout\,
	combout => \Selector345~2_combout\);

-- Location: LCCOMB_X52_Y36_N2
\Selector345~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector345~3_combout\ = (\B[1]~input_o\ & ((\Selector345~2_combout\ & (\Selector22~0_combout\)) # (!\Selector345~2_combout\ & ((\Selector23~0_combout\))))) # (!\B[1]~input_o\ & (((\Selector345~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \Selector23~0_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector345~2_combout\,
	combout => \Selector345~3_combout\);

-- Location: LCCOMB_X52_Y36_N8
\Selector345~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector345~10_combout\ = (\Selector350~0_combout\ & (((\Selector350~4_combout\)))) # (!\Selector350~0_combout\ & ((\Selector350~4_combout\ & ((\Selector345~3_combout\))) # (!\Selector350~4_combout\ & (\Selector345~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector345~9_combout\,
	datab => \Selector350~0_combout\,
	datac => \Selector350~4_combout\,
	datad => \Selector345~3_combout\,
	combout => \Selector345~10_combout\);

-- Location: LCCOMB_X50_Y39_N18
\Selector345~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector345~11_combout\ = (\Selector350~0_combout\ & ((\Selector345~10_combout\ & ((\Selector13~0_combout\))) # (!\Selector345~10_combout\ & (\Selector352~1_combout\)))) # (!\Selector350~0_combout\ & (((\Selector345~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector352~1_combout\,
	datab => \Selector350~0_combout\,
	datac => \Selector13~0_combout\,
	datad => \Selector345~10_combout\,
	combout => \Selector345~11_combout\);

-- Location: LCCOMB_X53_Y36_N18
\Selector344~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector344~0_combout\ = (\Selector350~3_combout\ & ((\SRL64_A|Mux32|Mux63~9_combout\) # ((\Selector350~2_combout\)))) # (!\Selector350~3_combout\ & (((\Selector20~0_combout\ & !\Selector350~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~9_combout\,
	datab => \Selector350~3_combout\,
	datac => \Selector20~0_combout\,
	datad => \Selector350~2_combout\,
	combout => \Selector344~0_combout\);

-- Location: LCCOMB_X53_Y36_N28
\Selector344~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector344~1_combout\ = (\Selector350~1_combout\ & ((\Selector344~0_combout\ & (\Selector23~0_combout\)) # (!\Selector344~0_combout\ & ((\Selector0~0_combout\))))) # (!\Selector350~1_combout\ & (((\Selector344~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~1_combout\,
	datab => \Selector23~0_combout\,
	datac => \Selector0~0_combout\,
	datad => \Selector344~0_combout\,
	combout => \Selector344~1_combout\);

-- Location: LCCOMB_X53_Y36_N6
\Selector344~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector344~2_combout\ = (\B[1]~input_o\ & ((\Selector361~6_combout\) # ((\Selector22~0_combout\)))) # (!\B[1]~input_o\ & (!\Selector361~6_combout\ & ((\Selector344~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector361~6_combout\,
	datac => \Selector22~0_combout\,
	datad => \Selector344~1_combout\,
	combout => \Selector344~2_combout\);

-- Location: LCCOMB_X47_Y39_N0
\Selector344~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector344~3_combout\ = (\Selector361~6_combout\ & ((\Selector344~2_combout\ & ((\Selector21~0_combout\))) # (!\Selector344~2_combout\ & (\Selector16~0_combout\)))) # (!\Selector361~6_combout\ & (((\Selector344~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector361~6_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector344~2_combout\,
	combout => \Selector344~3_combout\);

-- Location: LCCOMB_X48_Y36_N14
\Selector344~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector344~4_combout\ = (\Selector350~5_combout\ & ((\Selector350~6_combout\ & ((\Selector28~0_combout\))) # (!\Selector350~6_combout\ & (\Selector56~0_combout\)))) # (!\Selector350~5_combout\ & (((\Selector350~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector56~0_combout\,
	datab => \Selector350~5_combout\,
	datac => \Selector350~6_combout\,
	datad => \Selector28~0_combout\,
	combout => \Selector344~4_combout\);

-- Location: LCCOMB_X48_Y36_N8
\Selector344~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector344~5_combout\ = (\Selector379~13_combout\ & (\Selector344~4_combout\)) # (!\Selector379~13_combout\ & ((\Selector344~4_combout\ & ((\Selector40~0_combout\))) # (!\Selector344~4_combout\ & (\Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~13_combout\,
	datab => \Selector344~4_combout\,
	datac => \Selector24~0_combout\,
	datad => \Selector40~0_combout\,
	combout => \Selector344~5_combout\);

-- Location: LCCOMB_X48_Y36_N10
\Selector344~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector344~6_combout\ = (\Selector371~13_combout\ & (((\Selector25~0_combout\) # (\Selector375~16_combout\)))) # (!\Selector371~13_combout\ & (\Selector344~5_combout\ & ((!\Selector375~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~13_combout\,
	datab => \Selector344~5_combout\,
	datac => \Selector25~0_combout\,
	datad => \Selector375~16_combout\,
	combout => \Selector344~6_combout\);

-- Location: LCCOMB_X48_Y36_N28
\Selector344~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector344~7_combout\ = (\Selector344~6_combout\ & ((\Selector36~0_combout\) # ((!\Selector375~16_combout\)))) # (!\Selector344~6_combout\ & (((\Selector32~0_combout\ & \Selector375~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector344~6_combout\,
	datab => \Selector36~0_combout\,
	datac => \Selector32~0_combout\,
	datad => \Selector375~16_combout\,
	combout => \Selector344~7_combout\);

-- Location: IOIBUF_X56_Y0_N22
\C[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(39),
	o => \C[39]~input_o\);

-- Location: LCCOMB_X52_Y36_N18
\Selector344~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector344~8_combout\ = (\Selector371~11_combout\ & (((\Selector371~10_combout\)))) # (!\Selector371~11_combout\ & ((\Selector371~10_combout\ & ((\C[39]~input_o\))) # (!\Selector371~10_combout\ & (\Selector344~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector344~7_combout\,
	datab => \C[39]~input_o\,
	datac => \Selector371~11_combout\,
	datad => \Selector371~10_combout\,
	combout => \Selector344~8_combout\);

-- Location: LCCOMB_X52_Y36_N28
\Selector344~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector344~9_combout\ = (\Selector371~11_combout\ & ((\Selector344~8_combout\ & ((\Selector27~0_combout\))) # (!\Selector344~8_combout\ & (\Selector26~0_combout\)))) # (!\Selector371~11_combout\ & (((\Selector344~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~0_combout\,
	datab => \Selector27~0_combout\,
	datac => \Selector371~11_combout\,
	datad => \Selector344~8_combout\,
	combout => \Selector344~9_combout\);

-- Location: LCCOMB_X52_Y36_N6
\Selector344~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector344~10_combout\ = (\Selector350~0_combout\ & ((\Selector352~1_combout\) # ((\Selector350~4_combout\)))) # (!\Selector350~0_combout\ & (((!\Selector350~4_combout\ & \Selector344~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector352~1_combout\,
	datab => \Selector350~0_combout\,
	datac => \Selector350~4_combout\,
	datad => \Selector344~9_combout\,
	combout => \Selector344~10_combout\);

-- Location: LCCOMB_X47_Y39_N26
\Selector344~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector344~11_combout\ = (\Selector350~4_combout\ & ((\Selector344~10_combout\ & (\Selector12~0_combout\)) # (!\Selector344~10_combout\ & ((\Selector344~3_combout\))))) # (!\Selector350~4_combout\ & (((\Selector344~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \Selector344~3_combout\,
	datac => \Selector350~4_combout\,
	datad => \Selector344~10_combout\,
	combout => \Selector344~11_combout\);

-- Location: IOIBUF_X81_Y0_N22
\C[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(40),
	o => \C[40]~input_o\);

-- Location: LCCOMB_X48_Y35_N16
\Selector343~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector343~4_combout\ = (\Selector350~6_combout\ & ((\Selector27~0_combout\) # ((!\Selector350~5_combout\)))) # (!\Selector350~6_combout\ & (((\Selector350~5_combout\ & \Selector55~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~6_combout\,
	datab => \Selector27~0_combout\,
	datac => \Selector350~5_combout\,
	datad => \Selector55~0_combout\,
	combout => \Selector343~4_combout\);

-- Location: LCCOMB_X48_Y35_N18
\Selector343~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector343~5_combout\ = (\Selector379~13_combout\ & (\Selector343~4_combout\)) # (!\Selector379~13_combout\ & ((\Selector343~4_combout\ & ((\Selector39~0_combout\))) # (!\Selector343~4_combout\ & (\Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~13_combout\,
	datab => \Selector343~4_combout\,
	datac => \Selector23~0_combout\,
	datad => \Selector39~0_combout\,
	combout => \Selector343~5_combout\);

-- Location: LCCOMB_X52_Y35_N0
\Selector343~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector343~6_combout\ = (\Selector375~16_combout\ & (((\Selector31~0_combout\) # (\Selector371~13_combout\)))) # (!\Selector375~16_combout\ & (\Selector343~5_combout\ & ((!\Selector371~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~16_combout\,
	datab => \Selector343~5_combout\,
	datac => \Selector31~0_combout\,
	datad => \Selector371~13_combout\,
	combout => \Selector343~6_combout\);

-- Location: LCCOMB_X52_Y35_N2
\Selector343~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector343~7_combout\ = (\Selector343~6_combout\ & (((\Selector35~0_combout\) # (!\Selector371~13_combout\)))) # (!\Selector343~6_combout\ & (\Selector24~0_combout\ & ((\Selector371~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \Selector343~6_combout\,
	datac => \Selector35~0_combout\,
	datad => \Selector371~13_combout\,
	combout => \Selector343~7_combout\);

-- Location: LCCOMB_X52_Y39_N12
\Selector343~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector343~8_combout\ = (\Selector371~10_combout\ & (((\Selector371~11_combout\)))) # (!\Selector371~10_combout\ & ((\Selector371~11_combout\ & (\Selector25~0_combout\)) # (!\Selector371~11_combout\ & ((\Selector343~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datab => \Selector371~10_combout\,
	datac => \Selector371~11_combout\,
	datad => \Selector343~7_combout\,
	combout => \Selector343~8_combout\);

-- Location: LCCOMB_X52_Y39_N14
\Selector343~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector343~9_combout\ = (\Selector371~10_combout\ & ((\Selector343~8_combout\ & (\Selector26~0_combout\)) # (!\Selector343~8_combout\ & ((\C[40]~input_o\))))) # (!\Selector371~10_combout\ & (((\Selector343~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~0_combout\,
	datab => \C[40]~input_o\,
	datac => \Selector371~10_combout\,
	datad => \Selector343~8_combout\,
	combout => \Selector343~9_combout\);

-- Location: LCCOMB_X52_Y38_N0
\Selector343~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector343~0_combout\ = (\Selector350~3_combout\ & ((\SRL64_A|Mux32|Mux63~10_combout\) # ((\Selector350~2_combout\)))) # (!\Selector350~3_combout\ & (((\Selector19~0_combout\ & !\Selector350~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~3_combout\,
	datab => \SRL64_A|Mux32|Mux63~10_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector350~2_combout\,
	combout => \Selector343~0_combout\);

-- Location: LCCOMB_X52_Y38_N10
\Selector343~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector343~1_combout\ = (\Selector350~1_combout\ & ((\Selector343~0_combout\ & ((\Selector22~0_combout\))) # (!\Selector343~0_combout\ & (\Selector0~0_combout\)))) # (!\Selector350~1_combout\ & (((\Selector343~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~1_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector22~0_combout\,
	datad => \Selector343~0_combout\,
	combout => \Selector343~1_combout\);

-- Location: LCCOMB_X52_Y39_N16
\Selector343~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector343~2_combout\ = (\B[1]~input_o\ & (((\Selector361~6_combout\)))) # (!\B[1]~input_o\ & ((\Selector361~6_combout\ & (\Selector15~0_combout\)) # (!\Selector361~6_combout\ & ((\Selector343~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector343~1_combout\,
	datad => \Selector361~6_combout\,
	combout => \Selector343~2_combout\);

-- Location: LCCOMB_X52_Y39_N10
\Selector343~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector343~3_combout\ = (\B[1]~input_o\ & ((\Selector343~2_combout\ & ((\Selector20~0_combout\))) # (!\Selector343~2_combout\ & (\Selector21~0_combout\)))) # (!\B[1]~input_o\ & (((\Selector343~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector21~0_combout\,
	datac => \Selector20~0_combout\,
	datad => \Selector343~2_combout\,
	combout => \Selector343~3_combout\);

-- Location: LCCOMB_X52_Y39_N24
\Selector343~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector343~10_combout\ = (\Selector350~0_combout\ & (((\Selector350~4_combout\)))) # (!\Selector350~0_combout\ & ((\Selector350~4_combout\ & ((\Selector343~3_combout\))) # (!\Selector350~4_combout\ & (\Selector343~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~0_combout\,
	datab => \Selector343~9_combout\,
	datac => \Selector350~4_combout\,
	datad => \Selector343~3_combout\,
	combout => \Selector343~10_combout\);

-- Location: LCCOMB_X52_Y39_N26
\Selector343~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector343~11_combout\ = (\Selector350~0_combout\ & ((\Selector343~10_combout\ & ((\Selector11~0_combout\))) # (!\Selector343~10_combout\ & (\Selector352~1_combout\)))) # (!\Selector350~0_combout\ & (\Selector343~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~0_combout\,
	datab => \Selector343~10_combout\,
	datac => \Selector352~1_combout\,
	datad => \Selector11~0_combout\,
	combout => \Selector343~11_combout\);

-- Location: LCCOMB_X52_Y38_N12
\Selector342~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector342~0_combout\ = (\Selector350~2_combout\ & (((\Selector350~3_combout\)))) # (!\Selector350~2_combout\ & ((\Selector350~3_combout\ & ((\SRL64_A|Mux32|Mux63~11_combout\))) # (!\Selector350~3_combout\ & (\Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => \Selector350~2_combout\,
	datac => \Selector350~3_combout\,
	datad => \SRL64_A|Mux32|Mux63~11_combout\,
	combout => \Selector342~0_combout\);

-- Location: LCCOMB_X52_Y38_N22
\Selector342~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector342~1_combout\ = (\Selector350~1_combout\ & ((\Selector342~0_combout\ & ((\Selector21~0_combout\))) # (!\Selector342~0_combout\ & (\Selector0~0_combout\)))) # (!\Selector350~1_combout\ & (((\Selector342~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~1_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector342~0_combout\,
	combout => \Selector342~1_combout\);

-- Location: LCCOMB_X53_Y37_N6
\Selector342~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector342~2_combout\ = (\Selector361~6_combout\ & (((\B[1]~input_o\)))) # (!\Selector361~6_combout\ & ((\B[1]~input_o\ & (\Selector20~0_combout\)) # (!\B[1]~input_o\ & ((\Selector342~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~6_combout\,
	datab => \Selector20~0_combout\,
	datac => \Selector342~1_combout\,
	datad => \B[1]~input_o\,
	combout => \Selector342~2_combout\);

-- Location: LCCOMB_X53_Y37_N8
\Selector342~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector342~3_combout\ = (\Selector361~6_combout\ & ((\Selector342~2_combout\ & (\Selector19~0_combout\)) # (!\Selector342~2_combout\ & ((\Selector14~0_combout\))))) # (!\Selector361~6_combout\ & (((\Selector342~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~0_combout\,
	datab => \Selector14~0_combout\,
	datac => \Selector361~6_combout\,
	datad => \Selector342~2_combout\,
	combout => \Selector342~3_combout\);

-- Location: LCCOMB_X48_Y36_N30
\Selector342~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector342~4_combout\ = (\Selector350~6_combout\ & (((\Selector26~0_combout\)) # (!\Selector350~5_combout\))) # (!\Selector350~6_combout\ & (\Selector350~5_combout\ & ((\Selector54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~6_combout\,
	datab => \Selector350~5_combout\,
	datac => \Selector26~0_combout\,
	datad => \Selector54~0_combout\,
	combout => \Selector342~4_combout\);

-- Location: LCCOMB_X48_Y36_N16
\Selector342~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector342~5_combout\ = (\Selector379~13_combout\ & (((\Selector342~4_combout\)))) # (!\Selector379~13_combout\ & ((\Selector342~4_combout\ & (\Selector38~0_combout\)) # (!\Selector342~4_combout\ & ((\Selector22~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~13_combout\,
	datab => \Selector38~0_combout\,
	datac => \Selector342~4_combout\,
	datad => \Selector22~0_combout\,
	combout => \Selector342~5_combout\);

-- Location: LCCOMB_X48_Y36_N2
\Selector342~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector342~6_combout\ = (\Selector375~16_combout\ & (((\Selector371~13_combout\)))) # (!\Selector375~16_combout\ & ((\Selector371~13_combout\ & (\Selector23~0_combout\)) # (!\Selector371~13_combout\ & ((\Selector342~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \Selector375~16_combout\,
	datac => \Selector342~5_combout\,
	datad => \Selector371~13_combout\,
	combout => \Selector342~6_combout\);

-- Location: LCCOMB_X52_Y35_N28
\Selector342~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector342~7_combout\ = (\Selector342~6_combout\ & ((\Selector34~0_combout\) # ((!\Selector375~16_combout\)))) # (!\Selector342~6_combout\ & (((\Selector30~0_combout\ & \Selector375~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~0_combout\,
	datab => \Selector342~6_combout\,
	datac => \Selector30~0_combout\,
	datad => \Selector375~16_combout\,
	combout => \Selector342~7_combout\);

-- Location: IOIBUF_X115_Y35_N22
\C[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(41),
	o => \C[41]~input_o\);

-- Location: LCCOMB_X52_Y35_N22
\Selector342~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector342~8_combout\ = (\Selector371~10_combout\ & (((\Selector371~11_combout\) # (\C[41]~input_o\)))) # (!\Selector371~10_combout\ & (\Selector342~7_combout\ & (!\Selector371~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~10_combout\,
	datab => \Selector342~7_combout\,
	datac => \Selector371~11_combout\,
	datad => \C[41]~input_o\,
	combout => \Selector342~8_combout\);

-- Location: LCCOMB_X53_Y37_N26
\Selector342~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector342~9_combout\ = (\Selector371~11_combout\ & ((\Selector342~8_combout\ & ((\Selector25~0_combout\))) # (!\Selector342~8_combout\ & (\Selector24~0_combout\)))) # (!\Selector371~11_combout\ & (((\Selector342~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~11_combout\,
	datab => \Selector24~0_combout\,
	datac => \Selector342~8_combout\,
	datad => \Selector25~0_combout\,
	combout => \Selector342~9_combout\);

-- Location: LCCOMB_X53_Y37_N28
\Selector342~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector342~10_combout\ = (\Selector350~4_combout\ & (((\Selector350~0_combout\)))) # (!\Selector350~4_combout\ & ((\Selector350~0_combout\ & ((\Selector352~1_combout\))) # (!\Selector350~0_combout\ & (\Selector342~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector342~9_combout\,
	datab => \Selector350~4_combout\,
	datac => \Selector350~0_combout\,
	datad => \Selector352~1_combout\,
	combout => \Selector342~10_combout\);

-- Location: LCCOMB_X53_Y37_N22
\Selector342~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector342~11_combout\ = (\Selector350~4_combout\ & ((\Selector342~10_combout\ & (\Selector10~0_combout\)) # (!\Selector342~10_combout\ & ((\Selector342~3_combout\))))) # (!\Selector350~4_combout\ & (((\Selector342~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \Selector350~4_combout\,
	datac => \Selector342~3_combout\,
	datad => \Selector342~10_combout\,
	combout => \Selector342~11_combout\);

-- Location: LCCOMB_X52_Y38_N24
\Selector341~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector341~0_combout\ = (\Selector350~3_combout\ & ((\SRL64_A|Mux32|Mux63~12_combout\) # ((\Selector350~2_combout\)))) # (!\Selector350~3_combout\ & (((\Selector17~0_combout\ & !\Selector350~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~3_combout\,
	datab => \SRL64_A|Mux32|Mux63~12_combout\,
	datac => \Selector17~0_combout\,
	datad => \Selector350~2_combout\,
	combout => \Selector341~0_combout\);

-- Location: LCCOMB_X52_Y38_N26
\Selector341~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector341~1_combout\ = (\Selector350~1_combout\ & ((\Selector341~0_combout\ & ((\Selector20~0_combout\))) # (!\Selector341~0_combout\ & (\Selector0~0_combout\)))) # (!\Selector350~1_combout\ & (((\Selector341~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~1_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector20~0_combout\,
	datad => \Selector341~0_combout\,
	combout => \Selector341~1_combout\);

-- Location: LCCOMB_X50_Y38_N24
\Selector341~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector341~2_combout\ = (\Selector361~6_combout\ & ((\B[1]~input_o\) # ((\Selector13~0_combout\)))) # (!\Selector361~6_combout\ & (!\B[1]~input_o\ & ((\Selector341~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~6_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector13~0_combout\,
	datad => \Selector341~1_combout\,
	combout => \Selector341~2_combout\);

-- Location: LCCOMB_X50_Y38_N26
\Selector341~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector341~3_combout\ = (\B[1]~input_o\ & ((\Selector341~2_combout\ & ((\Selector18~0_combout\))) # (!\Selector341~2_combout\ & (\Selector19~0_combout\)))) # (!\B[1]~input_o\ & (((\Selector341~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector18~0_combout\,
	datad => \Selector341~2_combout\,
	combout => \Selector341~3_combout\);

-- Location: LCCOMB_X49_Y36_N18
\Selector341~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector341~4_combout\ = (\Selector350~6_combout\ & (((\Selector25~0_combout\) # (!\Selector350~5_combout\)))) # (!\Selector350~6_combout\ & (\Selector53~0_combout\ & ((\Selector350~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector53~0_combout\,
	datab => \Selector25~0_combout\,
	datac => \Selector350~6_combout\,
	datad => \Selector350~5_combout\,
	combout => \Selector341~4_combout\);

-- Location: LCCOMB_X49_Y36_N4
\Selector341~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector341~5_combout\ = (\Selector379~13_combout\ & (((\Selector341~4_combout\)))) # (!\Selector379~13_combout\ & ((\Selector341~4_combout\ & (\Selector37~0_combout\)) # (!\Selector341~4_combout\ & ((\Selector21~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~0_combout\,
	datab => \Selector21~0_combout\,
	datac => \Selector379~13_combout\,
	datad => \Selector341~4_combout\,
	combout => \Selector341~5_combout\);

-- Location: LCCOMB_X47_Y36_N10
\Selector341~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector341~6_combout\ = (\Selector375~16_combout\ & ((\Selector29~0_combout\) # ((\Selector371~13_combout\)))) # (!\Selector375~16_combout\ & (((\Selector341~5_combout\ & !\Selector371~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~0_combout\,
	datab => \Selector375~16_combout\,
	datac => \Selector341~5_combout\,
	datad => \Selector371~13_combout\,
	combout => \Selector341~6_combout\);

-- Location: LCCOMB_X47_Y36_N4
\Selector341~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector341~7_combout\ = (\Selector341~6_combout\ & ((\Selector33~0_combout\) # ((!\Selector371~13_combout\)))) # (!\Selector341~6_combout\ & (((\Selector22~0_combout\ & \Selector371~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector341~6_combout\,
	datab => \Selector33~0_combout\,
	datac => \Selector22~0_combout\,
	datad => \Selector371~13_combout\,
	combout => \Selector341~7_combout\);

-- Location: LCCOMB_X47_Y36_N22
\Selector341~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector341~8_combout\ = (\Selector371~10_combout\ & (\Selector371~11_combout\)) # (!\Selector371~10_combout\ & ((\Selector371~11_combout\ & ((\Selector23~0_combout\))) # (!\Selector371~11_combout\ & (\Selector341~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~10_combout\,
	datab => \Selector371~11_combout\,
	datac => \Selector341~7_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector341~8_combout\);

-- Location: IOIBUF_X115_Y40_N8
\C[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(42),
	o => \C[42]~input_o\);

-- Location: LCCOMB_X50_Y38_N20
\Selector341~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector341~9_combout\ = (\Selector341~8_combout\ & ((\Selector24~0_combout\) # ((!\Selector371~10_combout\)))) # (!\Selector341~8_combout\ & (((\Selector371~10_combout\ & \C[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector341~8_combout\,
	datab => \Selector24~0_combout\,
	datac => \Selector371~10_combout\,
	datad => \C[42]~input_o\,
	combout => \Selector341~9_combout\);

-- Location: LCCOMB_X50_Y38_N14
\Selector341~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector341~10_combout\ = (\Selector350~0_combout\ & (((\Selector350~4_combout\)))) # (!\Selector350~0_combout\ & ((\Selector350~4_combout\ & (\Selector341~3_combout\)) # (!\Selector350~4_combout\ & ((\Selector341~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector341~3_combout\,
	datab => \Selector341~9_combout\,
	datac => \Selector350~0_combout\,
	datad => \Selector350~4_combout\,
	combout => \Selector341~10_combout\);

-- Location: LCCOMB_X50_Y38_N16
\Selector341~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector341~11_combout\ = (\Selector350~0_combout\ & ((\Selector341~10_combout\ & (\Selector9~0_combout\)) # (!\Selector341~10_combout\ & ((\Selector352~1_combout\))))) # (!\Selector350~0_combout\ & (\Selector341~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~0_combout\,
	datab => \Selector341~10_combout\,
	datac => \Selector9~0_combout\,
	datad => \Selector352~1_combout\,
	combout => \Selector341~11_combout\);

-- Location: LCCOMB_X48_Y36_N4
\Selector340~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector340~4_combout\ = (\Selector350~6_combout\ & ((\Selector24~0_combout\) # ((!\Selector350~5_combout\)))) # (!\Selector350~6_combout\ & (((\Selector52~0_combout\ & \Selector350~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~6_combout\,
	datab => \Selector24~0_combout\,
	datac => \Selector52~0_combout\,
	datad => \Selector350~5_combout\,
	combout => \Selector340~4_combout\);

-- Location: LCCOMB_X48_Y36_N6
\Selector340~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector340~5_combout\ = (\Selector379~13_combout\ & (((\Selector340~4_combout\)))) # (!\Selector379~13_combout\ & ((\Selector340~4_combout\ & (\Selector36~0_combout\)) # (!\Selector340~4_combout\ & ((\Selector20~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~13_combout\,
	datab => \Selector36~0_combout\,
	datac => \Selector340~4_combout\,
	datad => \Selector20~0_combout\,
	combout => \Selector340~5_combout\);

-- Location: LCCOMB_X48_Y36_N0
\Selector340~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector340~6_combout\ = (\Selector375~16_combout\ & (((\Selector371~13_combout\)))) # (!\Selector375~16_combout\ & ((\Selector371~13_combout\ & ((\Selector21~0_combout\))) # (!\Selector371~13_combout\ & (\Selector340~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector340~5_combout\,
	datab => \Selector375~16_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector371~13_combout\,
	combout => \Selector340~6_combout\);

-- Location: LCCOMB_X48_Y36_N26
\Selector340~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector340~7_combout\ = (\Selector340~6_combout\ & (((\Selector32~0_combout\) # (!\Selector375~16_combout\)))) # (!\Selector340~6_combout\ & (\Selector28~0_combout\ & ((\Selector375~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~0_combout\,
	datab => \Selector340~6_combout\,
	datac => \Selector32~0_combout\,
	datad => \Selector375~16_combout\,
	combout => \Selector340~7_combout\);

-- Location: IOIBUF_X40_Y0_N22
\C[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(43),
	o => \C[43]~input_o\);

-- Location: LCCOMB_X47_Y36_N24
\Selector340~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector340~8_combout\ = (\Selector371~10_combout\ & ((\Selector371~11_combout\) # ((\C[43]~input_o\)))) # (!\Selector371~10_combout\ & (!\Selector371~11_combout\ & (\Selector340~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~10_combout\,
	datab => \Selector371~11_combout\,
	datac => \Selector340~7_combout\,
	datad => \C[43]~input_o\,
	combout => \Selector340~8_combout\);

-- Location: LCCOMB_X47_Y36_N26
\Selector340~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector340~9_combout\ = (\Selector371~11_combout\ & ((\Selector340~8_combout\ & ((\Selector23~0_combout\))) # (!\Selector340~8_combout\ & (\Selector22~0_combout\)))) # (!\Selector371~11_combout\ & (\Selector340~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~11_combout\,
	datab => \Selector340~8_combout\,
	datac => \Selector22~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector340~9_combout\);

-- Location: LCCOMB_X53_Y38_N6
\Selector340~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector340~10_combout\ = (\Selector350~4_combout\ & (((\Selector350~0_combout\)))) # (!\Selector350~4_combout\ & ((\Selector350~0_combout\ & (\Selector352~1_combout\)) # (!\Selector350~0_combout\ & ((\Selector340~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector352~1_combout\,
	datab => \Selector340~9_combout\,
	datac => \Selector350~4_combout\,
	datad => \Selector350~0_combout\,
	combout => \Selector340~10_combout\);

-- Location: LCCOMB_X52_Y38_N20
\Selector340~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector340~0_combout\ = (\Selector350~3_combout\ & (((\SRL64_A|Mux32|Mux63~13_combout\) # (\Selector350~2_combout\)))) # (!\Selector350~3_combout\ & (\Selector16~0_combout\ & ((!\Selector350~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~3_combout\,
	datab => \Selector16~0_combout\,
	datac => \SRL64_A|Mux32|Mux63~13_combout\,
	datad => \Selector350~2_combout\,
	combout => \Selector340~0_combout\);

-- Location: LCCOMB_X52_Y38_N14
\Selector340~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector340~1_combout\ = (\Selector350~1_combout\ & ((\Selector340~0_combout\ & ((\Selector19~0_combout\))) # (!\Selector340~0_combout\ & (\Selector0~0_combout\)))) # (!\Selector350~1_combout\ & (((\Selector340~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~1_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector340~0_combout\,
	combout => \Selector340~1_combout\);

-- Location: LCCOMB_X53_Y38_N2
\Selector340~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector340~2_combout\ = (\Selector361~6_combout\ & (((\B[1]~input_o\)))) # (!\Selector361~6_combout\ & ((\B[1]~input_o\ & (\Selector18~0_combout\)) # (!\B[1]~input_o\ & ((\Selector340~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~6_combout\,
	datab => \Selector18~0_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector340~1_combout\,
	combout => \Selector340~2_combout\);

-- Location: LCCOMB_X53_Y38_N28
\Selector340~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector340~3_combout\ = (\Selector361~6_combout\ & ((\Selector340~2_combout\ & (\Selector17~0_combout\)) # (!\Selector340~2_combout\ & ((\Selector12~0_combout\))))) # (!\Selector361~6_combout\ & (((\Selector340~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~6_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector12~0_combout\,
	datad => \Selector340~2_combout\,
	combout => \Selector340~3_combout\);

-- Location: LCCOMB_X53_Y38_N8
\Selector340~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector340~11_combout\ = (\Selector340~10_combout\ & (((\Selector8~0_combout\) # (!\Selector350~4_combout\)))) # (!\Selector340~10_combout\ & (\Selector340~3_combout\ & (\Selector350~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector340~10_combout\,
	datab => \Selector340~3_combout\,
	datac => \Selector350~4_combout\,
	datad => \Selector8~0_combout\,
	combout => \Selector340~11_combout\);

-- Location: LCCOMB_X49_Y35_N12
\Selector339~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector339~0_combout\ = (\Selector350~2_combout\ & (((\Selector350~3_combout\)))) # (!\Selector350~2_combout\ & ((\Selector350~3_combout\ & ((\SRL64_A|Mux32|Mux63~14_combout\))) # (!\Selector350~3_combout\ & (\Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~2_combout\,
	datab => \Selector15~0_combout\,
	datac => \SRL64_A|Mux32|Mux63~14_combout\,
	datad => \Selector350~3_combout\,
	combout => \Selector339~0_combout\);

-- Location: LCCOMB_X52_Y38_N8
\Selector339~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector339~1_combout\ = (\Selector339~0_combout\ & ((\Selector18~0_combout\) # ((!\Selector350~1_combout\)))) # (!\Selector339~0_combout\ & (((\Selector0~0_combout\ & \Selector350~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector339~0_combout\,
	datad => \Selector350~1_combout\,
	combout => \Selector339~1_combout\);

-- Location: LCCOMB_X53_Y38_N18
\Selector339~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector339~2_combout\ = (\B[1]~input_o\ & (((\Selector361~6_combout\)))) # (!\B[1]~input_o\ & ((\Selector361~6_combout\ & (\Selector11~0_combout\)) # (!\Selector361~6_combout\ & ((\Selector339~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector361~6_combout\,
	datad => \Selector339~1_combout\,
	combout => \Selector339~2_combout\);

-- Location: LCCOMB_X53_Y38_N12
\Selector339~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector339~3_combout\ = (\B[1]~input_o\ & ((\Selector339~2_combout\ & (\Selector16~0_combout\)) # (!\Selector339~2_combout\ & ((\Selector17~0_combout\))))) # (!\B[1]~input_o\ & (((\Selector339~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector16~0_combout\,
	datac => \Selector17~0_combout\,
	datad => \Selector339~2_combout\,
	combout => \Selector339~3_combout\);

-- Location: LCCOMB_X48_Y36_N20
\Selector339~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector339~4_combout\ = (\Selector350~6_combout\ & (((\Selector23~0_combout\)) # (!\Selector350~5_combout\))) # (!\Selector350~6_combout\ & (\Selector350~5_combout\ & (\Selector51~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~6_combout\,
	datab => \Selector350~5_combout\,
	datac => \Selector51~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector339~4_combout\);

-- Location: LCCOMB_X48_Y36_N22
\Selector339~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector339~5_combout\ = (\Selector379~13_combout\ & (\Selector339~4_combout\)) # (!\Selector379~13_combout\ & ((\Selector339~4_combout\ & (\Selector35~0_combout\)) # (!\Selector339~4_combout\ & ((\Selector19~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~13_combout\,
	datab => \Selector339~4_combout\,
	datac => \Selector35~0_combout\,
	datad => \Selector19~0_combout\,
	combout => \Selector339~5_combout\);

-- Location: LCCOMB_X47_Y36_N20
\Selector339~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector339~6_combout\ = (\Selector371~13_combout\ & (((\Selector375~16_combout\)))) # (!\Selector371~13_combout\ & ((\Selector375~16_combout\ & ((\Selector27~0_combout\))) # (!\Selector375~16_combout\ & (\Selector339~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~13_combout\,
	datab => \Selector339~5_combout\,
	datac => \Selector27~0_combout\,
	datad => \Selector375~16_combout\,
	combout => \Selector339~6_combout\);

-- Location: LCCOMB_X52_Y39_N20
\Selector339~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector339~7_combout\ = (\Selector339~6_combout\ & ((\Selector31~0_combout\) # ((!\Selector371~13_combout\)))) # (!\Selector339~6_combout\ & (((\Selector20~0_combout\ & \Selector371~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~0_combout\,
	datab => \Selector339~6_combout\,
	datac => \Selector20~0_combout\,
	datad => \Selector371~13_combout\,
	combout => \Selector339~7_combout\);

-- Location: LCCOMB_X52_Y39_N30
\Selector339~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector339~8_combout\ = (\Selector371~11_combout\ & ((\Selector371~10_combout\) # ((\Selector21~0_combout\)))) # (!\Selector371~11_combout\ & (!\Selector371~10_combout\ & ((\Selector339~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~11_combout\,
	datab => \Selector371~10_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector339~7_combout\,
	combout => \Selector339~8_combout\);

-- Location: IOIBUF_X67_Y0_N15
\C[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(44),
	o => \C[44]~input_o\);

-- Location: LCCOMB_X52_Y39_N8
\Selector339~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector339~9_combout\ = (\Selector371~10_combout\ & ((\Selector339~8_combout\ & (\Selector22~0_combout\)) # (!\Selector339~8_combout\ & ((\C[44]~input_o\))))) # (!\Selector371~10_combout\ & (((\Selector339~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \Selector371~10_combout\,
	datac => \Selector339~8_combout\,
	datad => \C[44]~input_o\,
	combout => \Selector339~9_combout\);

-- Location: LCCOMB_X50_Y39_N4
\Selector339~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector339~10_combout\ = (\Selector350~4_combout\ & ((\Selector350~0_combout\) # ((\Selector339~3_combout\)))) # (!\Selector350~4_combout\ & (!\Selector350~0_combout\ & ((\Selector339~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~4_combout\,
	datab => \Selector350~0_combout\,
	datac => \Selector339~3_combout\,
	datad => \Selector339~9_combout\,
	combout => \Selector339~10_combout\);

-- Location: LCCOMB_X50_Y39_N6
\Selector339~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector339~11_combout\ = (\Selector339~10_combout\ & ((\Selector7~0_combout\) # ((!\Selector350~0_combout\)))) # (!\Selector339~10_combout\ & (((\Selector352~1_combout\ & \Selector350~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \Selector339~10_combout\,
	datac => \Selector352~1_combout\,
	datad => \Selector350~0_combout\,
	combout => \Selector339~11_combout\);

-- Location: LCCOMB_X52_Y38_N2
\Selector338~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector338~0_combout\ = (\Selector350~3_combout\ & ((\SRL64_A|Mux32|Mux63~15_combout\) # ((\Selector350~2_combout\)))) # (!\Selector350~3_combout\ & (((\Selector14~0_combout\ & !\Selector350~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~3_combout\,
	datab => \SRL64_A|Mux32|Mux63~15_combout\,
	datac => \Selector14~0_combout\,
	datad => \Selector350~2_combout\,
	combout => \Selector338~0_combout\);

-- Location: LCCOMB_X53_Y38_N22
\Selector338~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector338~1_combout\ = (\Selector338~0_combout\ & ((\Selector17~0_combout\) # ((!\Selector350~1_combout\)))) # (!\Selector338~0_combout\ & (((\Selector350~1_combout\ & \Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector338~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector350~1_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector338~1_combout\);

-- Location: LCCOMB_X53_Y38_N24
\Selector338~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector338~2_combout\ = (\Selector361~6_combout\ & (((\B[1]~input_o\)))) # (!\Selector361~6_combout\ & ((\B[1]~input_o\ & (\Selector16~0_combout\)) # (!\B[1]~input_o\ & ((\Selector338~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~6_combout\,
	datab => \Selector16~0_combout\,
	datac => \Selector338~1_combout\,
	datad => \B[1]~input_o\,
	combout => \Selector338~2_combout\);

-- Location: LCCOMB_X53_Y38_N26
\Selector338~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector338~3_combout\ = (\Selector361~6_combout\ & ((\Selector338~2_combout\ & (\Selector15~0_combout\)) # (!\Selector338~2_combout\ & ((\Selector10~0_combout\))))) # (!\Selector361~6_combout\ & (((\Selector338~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~6_combout\,
	datab => \Selector15~0_combout\,
	datac => \Selector10~0_combout\,
	datad => \Selector338~2_combout\,
	combout => \Selector338~3_combout\);

-- Location: IOIBUF_X60_Y73_N1
\C[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(45),
	o => \C[45]~input_o\);

-- Location: LCCOMB_X49_Y36_N22
\Selector338~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector338~4_combout\ = (\Selector350~6_combout\ & ((\Selector22~0_combout\) # ((!\Selector350~5_combout\)))) # (!\Selector350~6_combout\ & (((\Selector50~0_combout\ & \Selector350~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \Selector350~6_combout\,
	datac => \Selector50~0_combout\,
	datad => \Selector350~5_combout\,
	combout => \Selector338~4_combout\);

-- Location: LCCOMB_X49_Y36_N0
\Selector338~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector338~5_combout\ = (\Selector379~13_combout\ & (((\Selector338~4_combout\)))) # (!\Selector379~13_combout\ & ((\Selector338~4_combout\ & (\Selector34~0_combout\)) # (!\Selector338~4_combout\ & ((\Selector18~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~0_combout\,
	datab => \Selector379~13_combout\,
	datac => \Selector338~4_combout\,
	datad => \Selector18~0_combout\,
	combout => \Selector338~5_combout\);

-- Location: LCCOMB_X49_Y36_N10
\Selector338~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector338~6_combout\ = (\Selector371~13_combout\ & (((\Selector19~0_combout\) # (\Selector375~16_combout\)))) # (!\Selector371~13_combout\ & (\Selector338~5_combout\ & ((!\Selector375~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~13_combout\,
	datab => \Selector338~5_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector375~16_combout\,
	combout => \Selector338~6_combout\);

-- Location: LCCOMB_X49_Y36_N20
\Selector338~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector338~7_combout\ = (\Selector338~6_combout\ & (((\Selector30~0_combout\) # (!\Selector375~16_combout\)))) # (!\Selector338~6_combout\ & (\Selector26~0_combout\ & ((\Selector375~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector338~6_combout\,
	datab => \Selector26~0_combout\,
	datac => \Selector30~0_combout\,
	datad => \Selector375~16_combout\,
	combout => \Selector338~7_combout\);

-- Location: LCCOMB_X52_Y39_N2
\Selector338~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector338~8_combout\ = (\Selector371~11_combout\ & (\Selector371~10_combout\)) # (!\Selector371~11_combout\ & ((\Selector371~10_combout\ & (\C[45]~input_o\)) # (!\Selector371~10_combout\ & ((\Selector338~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~11_combout\,
	datab => \Selector371~10_combout\,
	datac => \C[45]~input_o\,
	datad => \Selector338~7_combout\,
	combout => \Selector338~8_combout\);

-- Location: LCCOMB_X52_Y39_N28
\Selector338~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector338~9_combout\ = (\Selector371~11_combout\ & ((\Selector338~8_combout\ & ((\Selector21~0_combout\))) # (!\Selector338~8_combout\ & (\Selector20~0_combout\)))) # (!\Selector371~11_combout\ & (((\Selector338~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~11_combout\,
	datab => \Selector20~0_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector338~8_combout\,
	combout => \Selector338~9_combout\);

-- Location: LCCOMB_X53_Y38_N20
\Selector338~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector338~10_combout\ = (\Selector350~0_combout\ & ((\Selector352~1_combout\) # ((\Selector350~4_combout\)))) # (!\Selector350~0_combout\ & (((!\Selector350~4_combout\ & \Selector338~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector352~1_combout\,
	datab => \Selector350~0_combout\,
	datac => \Selector350~4_combout\,
	datad => \Selector338~9_combout\,
	combout => \Selector338~10_combout\);

-- Location: LCCOMB_X53_Y38_N30
\Selector338~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector338~11_combout\ = (\Selector350~4_combout\ & ((\Selector338~10_combout\ & ((\Selector6~0_combout\))) # (!\Selector338~10_combout\ & (\Selector338~3_combout\)))) # (!\Selector350~4_combout\ & (((\Selector338~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector338~3_combout\,
	datab => \Selector6~0_combout\,
	datac => \Selector350~4_combout\,
	datad => \Selector338~10_combout\,
	combout => \Selector338~11_combout\);

-- Location: LCCOMB_X49_Y36_N30
\Selector337~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector337~4_combout\ = (\Selector350~6_combout\ & (((\Selector21~0_combout\)) # (!\Selector350~5_combout\))) # (!\Selector350~6_combout\ & (\Selector350~5_combout\ & (\Selector49~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~6_combout\,
	datab => \Selector350~5_combout\,
	datac => \Selector49~0_combout\,
	datad => \Selector21~0_combout\,
	combout => \Selector337~4_combout\);

-- Location: LCCOMB_X49_Y36_N16
\Selector337~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector337~5_combout\ = (\Selector337~4_combout\ & (((\Selector379~13_combout\) # (\Selector33~0_combout\)))) # (!\Selector337~4_combout\ & (\Selector17~0_combout\ & (!\Selector379~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector337~4_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector379~13_combout\,
	datad => \Selector33~0_combout\,
	combout => \Selector337~5_combout\);

-- Location: LCCOMB_X49_Y36_N2
\Selector337~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector337~6_combout\ = (\Selector371~13_combout\ & (((\Selector375~16_combout\)))) # (!\Selector371~13_combout\ & ((\Selector375~16_combout\ & ((\Selector25~0_combout\))) # (!\Selector375~16_combout\ & (\Selector337~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~13_combout\,
	datab => \Selector337~5_combout\,
	datac => \Selector25~0_combout\,
	datad => \Selector375~16_combout\,
	combout => \Selector337~6_combout\);

-- Location: LCCOMB_X49_Y36_N28
\Selector337~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector337~7_combout\ = (\Selector337~6_combout\ & ((\Selector29~0_combout\) # ((!\Selector371~13_combout\)))) # (!\Selector337~6_combout\ & (((\Selector371~13_combout\ & \Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~0_combout\,
	datab => \Selector337~6_combout\,
	datac => \Selector371~13_combout\,
	datad => \Selector18~0_combout\,
	combout => \Selector337~7_combout\);

-- Location: LCCOMB_X49_Y36_N6
\Selector337~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector337~8_combout\ = (\Selector371~10_combout\ & (\Selector371~11_combout\)) # (!\Selector371~10_combout\ & ((\Selector371~11_combout\ & (\Selector19~0_combout\)) # (!\Selector371~11_combout\ & ((\Selector337~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~10_combout\,
	datab => \Selector371~11_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector337~7_combout\,
	combout => \Selector337~8_combout\);

-- Location: IOIBUF_X60_Y73_N8
\C[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(46),
	o => \C[46]~input_o\);

-- Location: LCCOMB_X52_Y39_N0
\Selector337~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector337~9_combout\ = (\Selector337~8_combout\ & ((\Selector20~0_combout\) # ((!\Selector371~10_combout\)))) # (!\Selector337~8_combout\ & (((\Selector371~10_combout\ & \C[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~0_combout\,
	datab => \Selector337~8_combout\,
	datac => \Selector371~10_combout\,
	datad => \C[46]~input_o\,
	combout => \Selector337~9_combout\);

-- Location: LCCOMB_X52_Y38_N4
\Selector337~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector337~0_combout\ = (\Selector350~3_combout\ & ((\SRL64_A|Mux32|Mux63~16_combout\) # ((\Selector350~2_combout\)))) # (!\Selector350~3_combout\ & (((\Selector13~0_combout\ & !\Selector350~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~16_combout\,
	datab => \Selector13~0_combout\,
	datac => \Selector350~3_combout\,
	datad => \Selector350~2_combout\,
	combout => \Selector337~0_combout\);

-- Location: LCCOMB_X48_Y38_N18
\Selector337~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector337~1_combout\ = (\Selector350~1_combout\ & ((\Selector337~0_combout\ & (\Selector16~0_combout\)) # (!\Selector337~0_combout\ & ((\Selector0~0_combout\))))) # (!\Selector350~1_combout\ & (((\Selector337~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~1_combout\,
	datab => \Selector16~0_combout\,
	datac => \Selector337~0_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector337~1_combout\);

-- Location: LCCOMB_X47_Y40_N24
\Selector337~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector337~2_combout\ = (\Selector361~6_combout\ & (((\Selector9~0_combout\) # (\B[1]~input_o\)))) # (!\Selector361~6_combout\ & (\Selector337~1_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector337~1_combout\,
	datab => \Selector9~0_combout\,
	datac => \Selector361~6_combout\,
	datad => \B[1]~input_o\,
	combout => \Selector337~2_combout\);

-- Location: LCCOMB_X52_Y39_N6
\Selector337~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector337~3_combout\ = (\B[1]~input_o\ & ((\Selector337~2_combout\ & ((\Selector14~0_combout\))) # (!\Selector337~2_combout\ & (\Selector15~0_combout\)))) # (!\B[1]~input_o\ & (((\Selector337~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector14~0_combout\,
	datad => \Selector337~2_combout\,
	combout => \Selector337~3_combout\);

-- Location: LCCOMB_X52_Y39_N18
\Selector337~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector337~10_combout\ = (\Selector350~0_combout\ & (((\Selector350~4_combout\)))) # (!\Selector350~0_combout\ & ((\Selector350~4_combout\ & ((\Selector337~3_combout\))) # (!\Selector350~4_combout\ & (\Selector337~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~0_combout\,
	datab => \Selector337~9_combout\,
	datac => \Selector350~4_combout\,
	datad => \Selector337~3_combout\,
	combout => \Selector337~10_combout\);

-- Location: LCCOMB_X52_Y39_N4
\Selector337~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector337~11_combout\ = (\Selector350~0_combout\ & ((\Selector337~10_combout\ & ((\Selector5~0_combout\))) # (!\Selector337~10_combout\ & (\Selector352~1_combout\)))) # (!\Selector350~0_combout\ & (\Selector337~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector350~0_combout\,
	datab => \Selector337~10_combout\,
	datac => \Selector352~1_combout\,
	datad => \Selector5~0_combout\,
	combout => \Selector337~11_combout\);

-- Location: LCCOMB_X43_Y34_N12
\SLL64_A|Mux32|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux16~1_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector32~0_combout\)) # (!\B[4]~input_o\ & ((\Selector16~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Selector16~0_combout\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux32|Mux16~1_combout\);

-- Location: LCCOMB_X43_Y34_N6
\SLL64_A|Mux32|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux16~2_combout\ = (\SLL64_A|Mux32|Mux16~1_combout\) # ((\B[5]~input_o\ & (!\B[4]~input_o\ & \Selector48~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux16~1_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Selector48~0_combout\,
	combout => \SLL64_A|Mux32|Mux16~2_combout\);

-- Location: LCCOMB_X50_Y38_N2
\SLL64_A|Mux8|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux16~0_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\) # (\Selector20~0_combout\)))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux16~2_combout\ & (!\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux16~2_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Selector20~0_combout\,
	combout => \SLL64_A|Mux8|Mux16~0_combout\);

-- Location: LCCOMB_X50_Y38_N12
\SLL64_A|Mux8|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux16~1_combout\ = (\B[3]~input_o\ & ((\SLL64_A|Mux8|Mux16~0_combout\ & (\Selector28~0_combout\)) # (!\SLL64_A|Mux8|Mux16~0_combout\ & ((\Selector24~0_combout\))))) # (!\B[3]~input_o\ & (((\SLL64_A|Mux8|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~0_combout\,
	datab => \Selector24~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux8|Mux16~0_combout\,
	combout => \SLL64_A|Mux8|Mux16~1_combout\);

-- Location: LCCOMB_X50_Y38_N22
\SLL64_A|Mux4|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux16~0_combout\ = (\B[1]~input_o\ & ((\Selector18~0_combout\) # ((\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((!\B[0]~input_o\ & \SLL64_A|Mux8|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SLL64_A|Mux8|Mux16~1_combout\,
	combout => \SLL64_A|Mux4|Mux16~0_combout\);

-- Location: LCCOMB_X48_Y38_N26
\SLL64_A|Mux4|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux16~1_combout\ = (\B[0]~input_o\ & ((\SLL64_A|Mux4|Mux16~0_combout\ & ((\Selector19~0_combout\))) # (!\SLL64_A|Mux4|Mux16~0_combout\ & (\Selector17~0_combout\)))) # (!\B[0]~input_o\ & (((\SLL64_A|Mux4|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~0_combout\,
	datab => \B[0]~input_o\,
	datac => \Selector19~0_combout\,
	datad => \SLL64_A|Mux4|Mux16~0_combout\,
	combout => \SLL64_A|Mux4|Mux16~1_combout\);

-- Location: IOIBUF_X67_Y73_N8
\C[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(47),
	o => \C[47]~input_o\);

-- Location: LCCOMB_X48_Y38_N20
\Selector336~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector336~1_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SLL64_A|Mux4|Mux16~1_combout\)) # (!\ShiftFN[0]~input_o\ & ((\C[47]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SLL64_A|Mux4|Mux16~1_combout\,
	datad => \C[47]~input_o\,
	combout => \Selector336~1_combout\);

-- Location: LCCOMB_X48_Y38_N12
\SRL64_A|Mux8|Mux63~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~4_combout\ = (\B[4]~input_o\ & (((\Selector0~0_combout\)))) # (!\B[4]~input_o\ & ((\B[5]~input_o\ & (\Selector0~0_combout\)) # (!\B[5]~input_o\ & ((\Selector16~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Selector0~0_combout\,
	datad => \Selector16~0_combout\,
	combout => \SRL64_A|Mux8|Mux63~4_combout\);

-- Location: LCCOMB_X48_Y38_N6
\SRL64_A|Mux8|Mux63~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~5_combout\ = (\ShiftFN[0]~input_o\ & (\SRL64_A|Mux8|Mux63~4_combout\)) # (!\ShiftFN[0]~input_o\ & (((\SRL64_A|Mux32|Mux63~17_combout\ & !\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux8|Mux63~4_combout\,
	datab => \SRL64_A|Mux32|Mux63~17_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~5_combout\);

-- Location: LCCOMB_X47_Y41_N2
\SRL64_A|Mux4|Mux63~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~4_combout\ = (\B[2]~input_o\ & (\B[3]~input_o\)) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Selector8~0_combout\)) # (!\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Selector8~0_combout\,
	datad => \SRL64_A|Mux8|Mux63~5_combout\,
	combout => \SRL64_A|Mux4|Mux63~4_combout\);

-- Location: LCCOMB_X47_Y41_N4
\SRL64_A|Mux4|Mux63~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~5_combout\ = (\B[2]~input_o\ & ((\SRL64_A|Mux4|Mux63~4_combout\ & (\Selector4~0_combout\)) # (!\SRL64_A|Mux4|Mux63~4_combout\ & ((\Selector12~0_combout\))))) # (!\B[2]~input_o\ & (((\SRL64_A|Mux4|Mux63~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Selector4~0_combout\,
	datac => \Selector12~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~4_combout\,
	combout => \SRL64_A|Mux4|Mux63~5_combout\);

-- Location: LCCOMB_X48_Y39_N8
\Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (\B[0]~input_o\ & (((\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\Selector14~0_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux4|Mux63~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~0_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~5_combout\,
	combout => \Selector80~0_combout\);

-- Location: LCCOMB_X48_Y39_N26
\Selector80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~1_combout\ = (\Selector80~0_combout\ & (((\Selector13~0_combout\) # (!\B[0]~input_o\)))) # (!\Selector80~0_combout\ & (\Selector15~0_combout\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \Selector13~0_combout\,
	datac => \Selector80~0_combout\,
	datad => \B[0]~input_o\,
	combout => \Selector80~1_combout\);

-- Location: LCCOMB_X48_Y38_N0
\Selector336~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector336~0_combout\ = (\Selector80~1_combout\ & \ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector80~1_combout\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Selector336~0_combout\);

-- Location: LCCOMB_X48_Y38_N22
\Selector336~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector336~2_combout\ = (\ExtWord~input_o\ & (\Selector352~1_combout\)) # (!\ExtWord~input_o\ & (((\Selector336~1_combout\) # (\Selector336~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector352~1_combout\,
	datab => \Selector336~1_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector336~0_combout\,
	combout => \Selector336~2_combout\);

-- Location: LCCOMB_X49_Y35_N6
\Selector335~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector335~4_combout\ = (\SLL64_A|Mux8|Mux63~0_combout\ & (((\Selector379~2_combout\)))) # (!\SLL64_A|Mux8|Mux63~0_combout\ & ((\Selector379~2_combout\ & ((\SRL64_A|Mux32|Mux63~18_combout\))) # (!\Selector379~2_combout\ & (\Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~0_combout\,
	datab => \SLL64_A|Mux8|Mux63~0_combout\,
	datac => \SRL64_A|Mux32|Mux63~18_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector335~4_combout\);

-- Location: LCCOMB_X49_Y38_N12
\Selector335~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector335~5_combout\ = (\Selector335~4_combout\ & (((\Selector23~0_combout\)) # (!\SLL64_A|Mux8|Mux63~0_combout\))) # (!\Selector335~4_combout\ & (\SLL64_A|Mux8|Mux63~0_combout\ & (\Selector19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector335~4_combout\,
	datab => \SLL64_A|Mux8|Mux63~0_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector335~5_combout\);

-- Location: LCCOMB_X48_Y38_N24
\Selector335~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector335~6_combout\ = (\Selector371~2_combout\ & (!\Selector379~1_combout\ & (\Selector335~5_combout\))) # (!\Selector371~2_combout\ & ((\Selector379~1_combout\) # ((\Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~2_combout\,
	datab => \Selector379~1_combout\,
	datac => \Selector335~5_combout\,
	datad => \Selector16~0_combout\,
	combout => \Selector335~6_combout\);

-- Location: LCCOMB_X48_Y38_N2
\Selector335~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector335~7_combout\ = (\Selector379~1_combout\ & ((\Selector335~6_combout\ & (\Selector17~0_combout\)) # (!\Selector335~6_combout\ & ((\Selector27~0_combout\))))) # (!\Selector379~1_combout\ & (((\Selector335~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~0_combout\,
	datab => \Selector379~1_combout\,
	datac => \Selector27~0_combout\,
	datad => \Selector335~6_combout\,
	combout => \Selector335~7_combout\);

-- Location: IOIBUF_X0_Y45_N22
\C[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(48),
	o => \C[48]~input_o\);

-- Location: LCCOMB_X43_Y38_N22
\Selector335~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector335~8_combout\ = (\Selector375~4_combout\ & (((\Selector375~10_combout\)))) # (!\Selector375~4_combout\ & ((\Selector375~10_combout\ & (\Selector335~7_combout\)) # (!\Selector375~10_combout\ & ((\C[48]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector335~7_combout\,
	datab => \Selector375~4_combout\,
	datac => \Selector375~10_combout\,
	datad => \C[48]~input_o\,
	combout => \Selector335~8_combout\);

-- Location: LCCOMB_X46_Y40_N0
\Selector333~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector333~0_combout\ = (\B[0]~input_o\ & (((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\B[2]~input_o\ & (!\B[1]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Selector333~0_combout\);

-- Location: LCCOMB_X46_Y40_N12
\Selector333~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector333~2_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\) # (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Selector333~2_combout\);

-- Location: LCCOMB_X46_Y40_N6
\Selector335~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector335~0_combout\ = (\Selector333~2_combout\ & (((!\Selector371~2_combout\)))) # (!\Selector333~2_combout\ & ((\Selector371~2_combout\ & (\Selector11~0_combout\)) # (!\Selector371~2_combout\ & ((\Selector13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector333~2_combout\,
	datab => \Selector11~0_combout\,
	datac => \Selector371~2_combout\,
	datad => \Selector13~0_combout\,
	combout => \Selector335~0_combout\);

-- Location: LCCOMB_X46_Y40_N10
\Selector333~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector333~1_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\) # ((\ShiftFN[0]~input_o\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Selector333~1_combout\);

-- Location: LCCOMB_X46_Y40_N16
\Selector335~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector335~1_combout\ = (\Selector335~0_combout\ & ((\Selector14~0_combout\) # ((!\Selector333~1_combout\)))) # (!\Selector335~0_combout\ & (((\Selector0~0_combout\ & \Selector333~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector335~0_combout\,
	datab => \Selector14~0_combout\,
	datac => \Selector0~0_combout\,
	datad => \Selector333~1_combout\,
	combout => \Selector335~1_combout\);

-- Location: LCCOMB_X46_Y40_N18
\Selector335~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector335~2_combout\ = (\Selector333~0_combout\ & (((\Selector361~4_combout\)))) # (!\Selector333~0_combout\ & ((\Selector361~4_combout\ & (\Selector7~0_combout\)) # (!\Selector361~4_combout\ & ((\Selector335~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \Selector333~0_combout\,
	datac => \Selector361~4_combout\,
	datad => \Selector335~1_combout\,
	combout => \Selector335~2_combout\);

-- Location: LCCOMB_X46_Y40_N20
\Selector335~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector335~3_combout\ = (\Selector333~0_combout\ & ((\Selector335~2_combout\ & (\Selector3~0_combout\)) # (!\Selector335~2_combout\ & ((\Selector12~0_combout\))))) # (!\Selector333~0_combout\ & (((\Selector335~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector333~0_combout\,
	datac => \Selector12~0_combout\,
	datad => \Selector335~2_combout\,
	combout => \Selector335~3_combout\);

-- Location: LCCOMB_X46_Y40_N30
\Selector335~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector335~9_combout\ = (\Selector375~4_combout\ & ((\Selector335~8_combout\ & (\Selector18~0_combout\)) # (!\Selector335~8_combout\ & ((\Selector335~3_combout\))))) # (!\Selector375~4_combout\ & (((\Selector335~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => \Selector375~4_combout\,
	datac => \Selector335~8_combout\,
	datad => \Selector335~3_combout\,
	combout => \Selector335~9_combout\);

-- Location: LCCOMB_X45_Y40_N0
\Selector335~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector335~10_combout\ = (!\ExtWord~input_o\ & ((\Selector371~20_combout\ & ((\Selector15~0_combout\))) # (!\Selector371~20_combout\ & (\Selector335~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Selector335~9_combout\,
	datac => \Selector15~0_combout\,
	datad => \Selector371~20_combout\,
	combout => \Selector335~10_combout\);

-- Location: LCCOMB_X45_Y40_N18
\Selector335~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector335~11_combout\ = (\Selector335~10_combout\) # ((\ExtWord~input_o\ & \Selector352~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector335~10_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector352~1_combout\,
	combout => \Selector335~11_combout\);

-- Location: LCCOMB_X46_Y40_N8
\Selector334~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector334~4_combout\ = (\Selector333~2_combout\ & (((!\Selector371~2_combout\)))) # (!\Selector333~2_combout\ & ((\Selector371~2_combout\ & ((\Selector10~0_combout\))) # (!\Selector371~2_combout\ & (\Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector333~2_combout\,
	datab => \Selector12~0_combout\,
	datac => \Selector371~2_combout\,
	datad => \Selector10~0_combout\,
	combout => \Selector334~4_combout\);

-- Location: LCCOMB_X46_Y40_N26
\Selector334~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector334~5_combout\ = (\Selector333~1_combout\ & ((\Selector334~4_combout\ & (\Selector13~0_combout\)) # (!\Selector334~4_combout\ & ((\Selector0~0_combout\))))) # (!\Selector333~1_combout\ & (((\Selector334~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector333~1_combout\,
	datab => \Selector13~0_combout\,
	datac => \Selector334~4_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector334~5_combout\);

-- Location: LCCOMB_X46_Y40_N28
\Selector334~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector334~6_combout\ = (\Selector361~4_combout\ & ((\Selector333~0_combout\) # ((\Selector6~0_combout\)))) # (!\Selector361~4_combout\ & (!\Selector333~0_combout\ & ((\Selector334~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~4_combout\,
	datab => \Selector333~0_combout\,
	datac => \Selector6~0_combout\,
	datad => \Selector334~5_combout\,
	combout => \Selector334~6_combout\);

-- Location: LCCOMB_X46_Y40_N14
\Selector334~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector334~7_combout\ = (\Selector333~0_combout\ & ((\Selector334~6_combout\ & (\Selector2~0_combout\)) # (!\Selector334~6_combout\ & ((\Selector11~0_combout\))))) # (!\Selector333~0_combout\ & (((\Selector334~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \Selector333~0_combout\,
	datac => \Selector11~0_combout\,
	datad => \Selector334~6_combout\,
	combout => \Selector334~7_combout\);

-- Location: IOIBUF_X29_Y73_N1
\C[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(49),
	o => \C[49]~input_o\);

-- Location: LCCOMB_X45_Y40_N6
\Selector334~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector334~8_combout\ = (\Selector375~4_combout\ & ((\Selector375~10_combout\) # ((\Selector334~7_combout\)))) # (!\Selector375~4_combout\ & (!\Selector375~10_combout\ & ((\C[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~4_combout\,
	datab => \Selector375~10_combout\,
	datac => \Selector334~7_combout\,
	datad => \C[49]~input_o\,
	combout => \Selector334~8_combout\);

-- Location: LCCOMB_X46_Y36_N10
\Selector334~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector334~0_combout\ = (\SLL64_A|Mux8|Mux63~0_combout\ & ((\Selector18~0_combout\) # ((\Selector379~2_combout\)))) # (!\SLL64_A|Mux8|Mux63~0_combout\ & (((\Selector30~0_combout\ & !\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => \SLL64_A|Mux8|Mux63~0_combout\,
	datac => \Selector30~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector334~0_combout\);

-- Location: LCCOMB_X46_Y36_N12
\Selector334~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector334~1_combout\ = (\Selector334~0_combout\ & (((\Selector22~0_combout\)) # (!\Selector379~2_combout\))) # (!\Selector334~0_combout\ & (\Selector379~2_combout\ & ((\SRL64_A|Mux32|Mux63~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector334~0_combout\,
	datab => \Selector379~2_combout\,
	datac => \Selector22~0_combout\,
	datad => \SRL64_A|Mux32|Mux63~19_combout\,
	combout => \Selector334~1_combout\);

-- Location: LCCOMB_X46_Y36_N6
\Selector334~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector334~2_combout\ = (\Selector379~1_combout\ & (((\Selector26~0_combout\) # (!\Selector371~2_combout\)))) # (!\Selector379~1_combout\ & (\Selector334~1_combout\ & ((\Selector371~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector334~1_combout\,
	datab => \Selector26~0_combout\,
	datac => \Selector379~1_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector334~2_combout\);

-- Location: LCCOMB_X45_Y40_N20
\Selector334~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector334~3_combout\ = (\Selector371~2_combout\ & (((\Selector334~2_combout\)))) # (!\Selector371~2_combout\ & ((\Selector334~2_combout\ & ((\Selector16~0_combout\))) # (!\Selector334~2_combout\ & (\Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \Selector16~0_combout\,
	datac => \Selector371~2_combout\,
	datad => \Selector334~2_combout\,
	combout => \Selector334~3_combout\);

-- Location: LCCOMB_X45_Y40_N24
\Selector334~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector334~9_combout\ = (\Selector334~8_combout\ & (((\Selector17~0_combout\) # (!\Selector375~10_combout\)))) # (!\Selector334~8_combout\ & (\Selector334~3_combout\ & (\Selector375~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector334~8_combout\,
	datab => \Selector334~3_combout\,
	datac => \Selector375~10_combout\,
	datad => \Selector17~0_combout\,
	combout => \Selector334~9_combout\);

-- Location: LCCOMB_X45_Y40_N10
\Selector334~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector334~10_combout\ = (!\ExtWord~input_o\ & ((\Selector371~20_combout\ & (\Selector14~0_combout\)) # (!\Selector371~20_combout\ & ((\Selector334~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~0_combout\,
	datab => \Selector334~9_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector371~20_combout\,
	combout => \Selector334~10_combout\);

-- Location: LCCOMB_X45_Y40_N28
\Selector334~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector334~11_combout\ = (\Selector334~10_combout\) # ((\ExtWord~input_o\ & \Selector352~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector334~10_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector352~1_combout\,
	combout => \Selector334~11_combout\);

-- Location: IOIBUF_X38_Y73_N8
\C[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(50),
	o => \C[50]~input_o\);

-- Location: LCCOMB_X45_Y34_N22
\Selector333~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector333~7_combout\ = (\SLL64_A|Mux8|Mux63~0_combout\ & (((\Selector379~2_combout\)))) # (!\SLL64_A|Mux8|Mux63~0_combout\ & ((\Selector379~2_combout\ & (\SRL64_A|Mux32|Mux63~20_combout\)) # (!\Selector379~2_combout\ & ((\Selector29~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~0_combout\,
	datab => \SRL64_A|Mux32|Mux63~20_combout\,
	datac => \Selector29~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector333~7_combout\);

-- Location: LCCOMB_X45_Y34_N8
\Selector333~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector333~8_combout\ = (\Selector333~7_combout\ & (((\Selector21~0_combout\) # (!\SLL64_A|Mux8|Mux63~0_combout\)))) # (!\Selector333~7_combout\ & (\Selector17~0_combout\ & (\SLL64_A|Mux8|Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector333~7_combout\,
	datab => \Selector17~0_combout\,
	datac => \SLL64_A|Mux8|Mux63~0_combout\,
	datad => \Selector21~0_combout\,
	combout => \Selector333~8_combout\);

-- Location: LCCOMB_X45_Y40_N14
\Selector333~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector333~9_combout\ = (\Selector379~1_combout\ & (((!\Selector371~2_combout\)))) # (!\Selector379~1_combout\ & ((\Selector371~2_combout\ & ((\Selector333~8_combout\))) # (!\Selector371~2_combout\ & (\Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~0_combout\,
	datab => \Selector379~1_combout\,
	datac => \Selector371~2_combout\,
	datad => \Selector333~8_combout\,
	combout => \Selector333~9_combout\);

-- Location: LCCOMB_X45_Y40_N16
\Selector333~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector333~10_combout\ = (\Selector333~9_combout\ & (((\Selector15~0_combout\) # (!\Selector379~1_combout\)))) # (!\Selector333~9_combout\ & (\Selector25~0_combout\ & ((\Selector379~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datab => \Selector333~9_combout\,
	datac => \Selector15~0_combout\,
	datad => \Selector379~1_combout\,
	combout => \Selector333~10_combout\);

-- Location: LCCOMB_X45_Y40_N26
\Selector333~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector333~11_combout\ = (\Selector375~4_combout\ & (((\Selector375~10_combout\)))) # (!\Selector375~4_combout\ & ((\Selector375~10_combout\ & ((\Selector333~10_combout\))) # (!\Selector375~10_combout\ & (\C[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~4_combout\,
	datab => \C[50]~input_o\,
	datac => \Selector375~10_combout\,
	datad => \Selector333~10_combout\,
	combout => \Selector333~11_combout\);

-- Location: LCCOMB_X46_Y40_N24
\Selector333~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector333~3_combout\ = (\Selector333~2_combout\ & (((!\Selector371~2_combout\)))) # (!\Selector333~2_combout\ & ((\Selector371~2_combout\ & ((\Selector9~0_combout\))) # (!\Selector371~2_combout\ & (\Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector333~2_combout\,
	datab => \Selector11~0_combout\,
	datac => \Selector371~2_combout\,
	datad => \Selector9~0_combout\,
	combout => \Selector333~3_combout\);

-- Location: LCCOMB_X46_Y40_N2
\Selector333~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector333~4_combout\ = (\Selector333~1_combout\ & ((\Selector333~3_combout\ & (\Selector12~0_combout\)) # (!\Selector333~3_combout\ & ((\Selector0~0_combout\))))) # (!\Selector333~1_combout\ & (\Selector333~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector333~1_combout\,
	datab => \Selector333~3_combout\,
	datac => \Selector12~0_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector333~4_combout\);

-- Location: LCCOMB_X46_Y40_N4
\Selector333~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector333~5_combout\ = (\Selector361~4_combout\ & (((\Selector5~0_combout\) # (\Selector333~0_combout\)))) # (!\Selector361~4_combout\ & (\Selector333~4_combout\ & ((!\Selector333~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector361~4_combout\,
	datab => \Selector333~4_combout\,
	datac => \Selector5~0_combout\,
	datad => \Selector333~0_combout\,
	combout => \Selector333~5_combout\);

-- Location: LCCOMB_X46_Y40_N22
\Selector333~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector333~6_combout\ = (\Selector333~0_combout\ & ((\Selector333~5_combout\ & (\Selector1~0_combout\)) # (!\Selector333~5_combout\ & ((\Selector10~0_combout\))))) # (!\Selector333~0_combout\ & (((\Selector333~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector333~0_combout\,
	datac => \Selector333~5_combout\,
	datad => \Selector10~0_combout\,
	combout => \Selector333~6_combout\);

-- Location: LCCOMB_X45_Y40_N12
\Selector333~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector333~12_combout\ = (\Selector375~4_combout\ & ((\Selector333~11_combout\ & (\Selector16~0_combout\)) # (!\Selector333~11_combout\ & ((\Selector333~6_combout\))))) # (!\Selector375~4_combout\ & (((\Selector333~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~4_combout\,
	datab => \Selector16~0_combout\,
	datac => \Selector333~11_combout\,
	datad => \Selector333~6_combout\,
	combout => \Selector333~12_combout\);

-- Location: LCCOMB_X45_Y40_N30
\Selector333~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector333~13_combout\ = (!\ExtWord~input_o\ & ((\Selector371~20_combout\ & ((\Selector13~0_combout\))) # (!\Selector371~20_combout\ & (\Selector333~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector333~12_combout\,
	datab => \Selector13~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector371~20_combout\,
	combout => \Selector333~13_combout\);

-- Location: LCCOMB_X45_Y40_N8
\Selector333~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector333~14_combout\ = (\Selector333~13_combout\) # ((\ExtWord~input_o\ & \Selector352~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector333~13_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector352~1_combout\,
	combout => \Selector333~14_combout\);

-- Location: LCCOMB_X50_Y41_N10
\Selector336~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector336~3_combout\ = (\ExtWord~input_o\ & ((\Selector352~0_combout\) # ((\ShiftFN[1]~input_o\ & \Selector96~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Selector352~0_combout\,
	datad => \Selector96~1_combout\,
	combout => \Selector336~3_combout\);

-- Location: LCCOMB_X50_Y41_N20
\Selector332~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector332~2_combout\ = (\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \Selector332~2_combout\);

-- Location: LCCOMB_X50_Y41_N12
\Selector332~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector332~0_combout\ = (!\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \Selector332~0_combout\);

-- Location: LCCOMB_X47_Y41_N22
\SRL64_A|Mux8|Mux63~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux8|Mux63~6_combout\ = (\SLL64_A|Mux32|Mux16~0_combout\ & (((\Selector12~0_combout\)))) # (!\SLL64_A|Mux32|Mux16~0_combout\ & (\Selector0~0_combout\ & ((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux16~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector12~0_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SRL64_A|Mux8|Mux63~6_combout\);

-- Location: LCCOMB_X47_Y41_N0
\SRL64_A|Mux4|Mux63~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~6_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\)))) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Selector4~0_combout\)) # (!\B[3]~input_o\ & ((\SRL64_A|Mux8|Mux63~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Selector4~0_combout\,
	datac => \SRL64_A|Mux8|Mux63~6_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~6_combout\);

-- Location: LCCOMB_X47_Y41_N10
\SRL64_A|Mux4|Mux63~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~7_combout\ = (\B[2]~input_o\ & ((\SRL64_A|Mux4|Mux63~6_combout\ & (\Selector0~0_combout\)) # (!\SRL64_A|Mux4|Mux63~6_combout\ & ((\Selector8~0_combout\))))) # (!\B[2]~input_o\ & (((\SRL64_A|Mux4|Mux63~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Selector0~0_combout\,
	datac => \Selector8~0_combout\,
	datad => \SRL64_A|Mux4|Mux63~6_combout\,
	combout => \SRL64_A|Mux4|Mux63~7_combout\);

-- Location: LCCOMB_X50_Y41_N22
\Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\B[1]~input_o\ & (((\B[0]~input_o\) # (\Selector10~0_combout\)))) # (!\B[1]~input_o\ & (\SRL64_A|Mux4|Mux63~7_combout\ & (!\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~7_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Selector10~0_combout\,
	combout => \Selector76~0_combout\);

-- Location: LCCOMB_X50_Y41_N0
\Selector76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~1_combout\ = (\B[0]~input_o\ & ((\Selector76~0_combout\ & ((\Selector9~0_combout\))) # (!\Selector76~0_combout\ & (\Selector11~0_combout\)))) # (!\B[0]~input_o\ & (((\Selector76~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Selector11~0_combout\,
	datac => \Selector76~0_combout\,
	datad => \Selector9~0_combout\,
	combout => \Selector76~1_combout\);

-- Location: IOIBUF_X54_Y73_N8
\C[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(51),
	o => \C[51]~input_o\);

-- Location: LCCOMB_X50_Y41_N26
\Selector332~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector332~1_combout\ = (\Selector332~0_combout\ & ((\C[51]~input_o\) # ((\Selector76~1_combout\ & \Selector350~4_combout\)))) # (!\Selector332~0_combout\ & (\Selector76~1_combout\ & ((\Selector350~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector332~0_combout\,
	datab => \Selector76~1_combout\,
	datac => \C[51]~input_o\,
	datad => \Selector350~4_combout\,
	combout => \Selector332~1_combout\);

-- Location: LCCOMB_X47_Y38_N26
\SLL64_A|Mux32|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux12~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector28~0_combout\)) # (!\B[4]~input_o\ & ((\Selector12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Selector28~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector12~0_combout\,
	combout => \SLL64_A|Mux32|Mux12~0_combout\);

-- Location: LCCOMB_X50_Y38_N0
\SLL64_A|Mux32|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux12~1_combout\ = (\SLL64_A|Mux32|Mux12~0_combout\) # ((\SRL64_A|Mux32|Mux63~21_combout\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~21_combout\,
	datac => \SLL64_A|Mux32|Mux12~0_combout\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux32|Mux12~1_combout\);

-- Location: LCCOMB_X50_Y38_N10
\SLL64_A|Mux8|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux12~0_combout\ = (\B[2]~input_o\ & ((\Selector16~0_combout\) # ((\B[3]~input_o\)))) # (!\B[2]~input_o\ & (((!\B[3]~input_o\ & \SLL64_A|Mux32|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux32|Mux12~1_combout\,
	combout => \SLL64_A|Mux8|Mux12~0_combout\);

-- Location: LCCOMB_X50_Y38_N28
\SLL64_A|Mux8|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux12~1_combout\ = (\B[3]~input_o\ & ((\SLL64_A|Mux8|Mux12~0_combout\ & ((\Selector24~0_combout\))) # (!\SLL64_A|Mux8|Mux12~0_combout\ & (\Selector20~0_combout\)))) # (!\B[3]~input_o\ & (((\SLL64_A|Mux8|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~0_combout\,
	datab => \Selector24~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux8|Mux12~0_combout\,
	combout => \SLL64_A|Mux8|Mux12~1_combout\);

-- Location: LCCOMB_X50_Y38_N6
\SLL64_A|Mux4|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux12~0_combout\ = (\B[0]~input_o\ & (((\Selector13~0_combout\) # (\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\SLL64_A|Mux8|Mux12~1_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux12~1_combout\,
	datab => \B[0]~input_o\,
	datac => \Selector13~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL64_A|Mux4|Mux12~0_combout\);

-- Location: LCCOMB_X52_Y39_N22
\SLL64_A|Mux4|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux12~1_combout\ = (\B[1]~input_o\ & ((\SLL64_A|Mux4|Mux12~0_combout\ & (\Selector15~0_combout\)) # (!\SLL64_A|Mux4|Mux12~0_combout\ & ((\Selector14~0_combout\))))) # (!\B[1]~input_o\ & (((\SLL64_A|Mux4|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector14~0_combout\,
	datad => \SLL64_A|Mux4|Mux12~0_combout\,
	combout => \SLL64_A|Mux4|Mux12~1_combout\);

-- Location: LCCOMB_X50_Y41_N6
\Selector332~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector332~3_combout\ = (\Selector336~3_combout\) # ((\Selector332~1_combout\) # ((\Selector332~2_combout\ & \SLL64_A|Mux4|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector336~3_combout\,
	datab => \Selector332~2_combout\,
	datac => \Selector332~1_combout\,
	datad => \SLL64_A|Mux4|Mux12~1_combout\,
	combout => \Selector332~3_combout\);

-- Location: LCCOMB_X48_Y39_N12
\Selector329~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector329~1_combout\ = (\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & \Selector329~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Selector329~0_combout\,
	combout => \Selector329~1_combout\);

-- Location: LCCOMB_X48_Y39_N30
\Selector329~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector329~2_combout\ = (\Selector329~1_combout\ & (\B[1]~input_o\ & ((\B[0]~input_o\)))) # (!\Selector329~1_combout\ & (((\Selector371~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector329~1_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector371~20_combout\,
	datad => \B[0]~input_o\,
	combout => \Selector329~2_combout\);

-- Location: LCCOMB_X45_Y37_N20
\Selector329~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector329~4_combout\ = (!\B[0]~input_o\ & (\B[2]~input_o\ $ (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Selector329~4_combout\);

-- Location: LCCOMB_X45_Y37_N14
\Selector331~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector331~4_combout\ = (\Selector329~4_combout\ & ((\Selector371~12_combout\ & (\Selector7~0_combout\)) # (!\Selector371~12_combout\ & ((\Selector3~0_combout\))))) # (!\Selector329~4_combout\ & (((\Selector371~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \Selector329~4_combout\,
	datac => \Selector371~12_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector331~4_combout\);

-- Location: LCCOMB_X48_Y39_N0
\Selector329~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector329~3_combout\ = (\B[0]~input_o\) # ((\ShiftFN[0]~input_o\ & (\B[2]~input_o\ $ (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Selector329~3_combout\);

-- Location: LCCOMB_X47_Y37_N2
\Selector331~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector331~5_combout\ = (\Selector331~4_combout\ & (((\Selector10~0_combout\)) # (!\Selector329~3_combout\))) # (!\Selector331~4_combout\ & (\Selector329~3_combout\ & (\Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector331~4_combout\,
	datab => \Selector329~3_combout\,
	datac => \Selector0~0_combout\,
	datad => \Selector10~0_combout\,
	combout => \Selector331~5_combout\);

-- Location: LCCOMB_X47_Y37_N12
\Selector375~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~17_combout\ = (\B[1]~input_o\ & \ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Selector375~17_combout\);

-- Location: IOIBUF_X0_Y44_N15
\C[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(52),
	o => \C[52]~input_o\);

-- Location: LCCOMB_X50_Y37_N6
\Selector329~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector329~5_combout\ = (\ShiftFN[1]~input_o\ & ((\B[0]~input_o\) # (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Selector329~5_combout\);

-- Location: LCCOMB_X47_Y37_N30
\Selector331~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector331~6_combout\ = (\Selector375~17_combout\ & (((\Selector9~0_combout\) # (\Selector329~5_combout\)))) # (!\Selector375~17_combout\ & (\C[52]~input_o\ & ((!\Selector329~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~17_combout\,
	datab => \C[52]~input_o\,
	datac => \Selector9~0_combout\,
	datad => \Selector329~5_combout\,
	combout => \Selector331~6_combout\);

-- Location: LCCOMB_X47_Y37_N8
\Selector331~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector331~7_combout\ = (\Selector331~6_combout\ & ((\Selector8~0_combout\) # ((!\Selector329~5_combout\)))) # (!\Selector331~6_combout\ & (((\Selector331~5_combout\ & \Selector329~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \Selector331~5_combout\,
	datac => \Selector331~6_combout\,
	datad => \Selector329~5_combout\,
	combout => \Selector331~7_combout\);

-- Location: LCCOMB_X48_Y35_N20
\Selector331~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector331~0_combout\ = (\SLL64_A|Mux8|Mux63~0_combout\ & (((\Selector15~0_combout\) # (\Selector379~2_combout\)))) # (!\SLL64_A|Mux8|Mux63~0_combout\ & (\Selector27~0_combout\ & ((!\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~0_combout\,
	datab => \Selector27~0_combout\,
	datac => \Selector15~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector331~0_combout\);

-- Location: LCCOMB_X48_Y35_N6
\Selector331~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector331~1_combout\ = (\Selector331~0_combout\ & (((\Selector19~0_combout\) # (!\Selector379~2_combout\)))) # (!\Selector331~0_combout\ & (\SRL64_A|Mux32|Mux63~22_combout\ & ((\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~22_combout\,
	datab => \Selector331~0_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector331~1_combout\);

-- Location: LCCOMB_X48_Y38_N28
\Selector331~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector331~2_combout\ = (\Selector371~2_combout\ & ((\Selector379~1_combout\ & ((\Selector23~0_combout\))) # (!\Selector379~1_combout\ & (\Selector331~1_combout\)))) # (!\Selector371~2_combout\ & (\Selector379~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~2_combout\,
	datab => \Selector379~1_combout\,
	datac => \Selector331~1_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector331~2_combout\);

-- Location: LCCOMB_X47_Y37_N0
\Selector331~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector331~3_combout\ = (\Selector371~2_combout\ & (((\Selector331~2_combout\)))) # (!\Selector371~2_combout\ & ((\Selector331~2_combout\ & (\Selector13~0_combout\)) # (!\Selector331~2_combout\ & ((\Selector12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~2_combout\,
	datab => \Selector13~0_combout\,
	datac => \Selector12~0_combout\,
	datad => \Selector331~2_combout\,
	combout => \Selector331~3_combout\);

-- Location: LCCOMB_X47_Y37_N10
\Selector331~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector331~8_combout\ = (\Selector329~2_combout\ & (((\Selector329~1_combout\)))) # (!\Selector329~2_combout\ & ((\Selector329~1_combout\ & ((\Selector331~3_combout\))) # (!\Selector329~1_combout\ & (\Selector331~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector329~2_combout\,
	datab => \Selector331~7_combout\,
	datac => \Selector329~1_combout\,
	datad => \Selector331~3_combout\,
	combout => \Selector331~8_combout\);

-- Location: LCCOMB_X47_Y37_N4
\Selector331~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector331~9_combout\ = (\Selector331~8_combout\ & (((\Selector14~0_combout\) # (!\Selector329~2_combout\)))) # (!\Selector331~8_combout\ & (\Selector11~0_combout\ & (\Selector329~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector331~8_combout\,
	datab => \Selector11~0_combout\,
	datac => \Selector329~2_combout\,
	datad => \Selector14~0_combout\,
	combout => \Selector331~9_combout\);

-- Location: LCCOMB_X50_Y39_N16
\Selector331~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector331~10_combout\ = (\ExtWord~input_o\ & (\Selector352~1_combout\)) # (!\ExtWord~input_o\ & ((\Selector331~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector352~1_combout\,
	datab => \ExtWord~input_o\,
	datac => \Selector331~9_combout\,
	combout => \Selector331~10_combout\);

-- Location: IOIBUF_X67_Y0_N8
\C[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(53),
	o => \C[53]~input_o\);

-- Location: LCCOMB_X47_Y37_N16
\Selector330~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector330~6_combout\ = (\Selector329~5_combout\ & (((\Selector375~17_combout\)))) # (!\Selector329~5_combout\ & ((\Selector375~17_combout\ & (\Selector8~0_combout\)) # (!\Selector375~17_combout\ & ((\C[53]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \C[53]~input_o\,
	datac => \Selector329~5_combout\,
	datad => \Selector375~17_combout\,
	combout => \Selector330~6_combout\);

-- Location: LCCOMB_X45_Y37_N0
\Selector330~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector330~4_combout\ = (\Selector329~4_combout\ & ((\Selector371~12_combout\ & ((\Selector6~0_combout\))) # (!\Selector371~12_combout\ & (\Selector2~0_combout\)))) # (!\Selector329~4_combout\ & (((\Selector371~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \Selector329~4_combout\,
	datac => \Selector6~0_combout\,
	datad => \Selector371~12_combout\,
	combout => \Selector330~4_combout\);

-- Location: LCCOMB_X47_Y37_N22
\Selector330~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector330~5_combout\ = (\Selector329~3_combout\ & ((\Selector330~4_combout\ & (\Selector9~0_combout\)) # (!\Selector330~4_combout\ & ((\Selector0~0_combout\))))) # (!\Selector329~3_combout\ & (((\Selector330~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~0_combout\,
	datab => \Selector329~3_combout\,
	datac => \Selector0~0_combout\,
	datad => \Selector330~4_combout\,
	combout => \Selector330~5_combout\);

-- Location: LCCOMB_X47_Y37_N26
\Selector330~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector330~7_combout\ = (\Selector329~5_combout\ & ((\Selector330~6_combout\ & ((\Selector7~0_combout\))) # (!\Selector330~6_combout\ & (\Selector330~5_combout\)))) # (!\Selector329~5_combout\ & (\Selector330~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector329~5_combout\,
	datab => \Selector330~6_combout\,
	datac => \Selector330~5_combout\,
	datad => \Selector7~0_combout\,
	combout => \Selector330~7_combout\);

-- Location: LCCOMB_X48_Y39_N10
\Selector330~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector330~8_combout\ = (\Selector329~1_combout\ & (((\Selector329~2_combout\)))) # (!\Selector329~1_combout\ & ((\Selector329~2_combout\ & (\Selector10~0_combout\)) # (!\Selector329~2_combout\ & ((\Selector330~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector329~1_combout\,
	datab => \Selector10~0_combout\,
	datac => \Selector329~2_combout\,
	datad => \Selector330~7_combout\,
	combout => \Selector330~8_combout\);

-- Location: LCCOMB_X46_Y38_N0
\Selector330~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector330~0_combout\ = (\SLL64_A|Mux8|Mux63~0_combout\ & (((\Selector379~2_combout\)))) # (!\SLL64_A|Mux8|Mux63~0_combout\ & ((\Selector379~2_combout\ & (\SRL64_A|Mux32|Mux63~23_combout\)) # (!\Selector379~2_combout\ & ((\Selector26~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux32|Mux63~23_combout\,
	datab => \Selector26~0_combout\,
	datac => \SLL64_A|Mux8|Mux63~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector330~0_combout\);

-- Location: LCCOMB_X46_Y38_N2
\Selector330~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector330~1_combout\ = (\Selector330~0_combout\ & ((\Selector18~0_combout\) # ((!\SLL64_A|Mux8|Mux63~0_combout\)))) # (!\Selector330~0_combout\ & (((\Selector14~0_combout\ & \SLL64_A|Mux8|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => \Selector330~0_combout\,
	datac => \Selector14~0_combout\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \Selector330~1_combout\);

-- Location: LCCOMB_X47_Y40_N2
\Selector330~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector330~2_combout\ = (\Selector371~2_combout\ & (\Selector330~1_combout\ & ((!\Selector379~1_combout\)))) # (!\Selector371~2_combout\ & (((\Selector11~0_combout\) # (\Selector379~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector330~1_combout\,
	datab => \Selector11~0_combout\,
	datac => \Selector371~2_combout\,
	datad => \Selector379~1_combout\,
	combout => \Selector330~2_combout\);

-- Location: LCCOMB_X47_Y40_N28
\Selector330~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector330~3_combout\ = (\Selector330~2_combout\ & ((\Selector12~0_combout\) # ((!\Selector379~1_combout\)))) # (!\Selector330~2_combout\ & (((\Selector22~0_combout\ & \Selector379~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \Selector330~2_combout\,
	datac => \Selector22~0_combout\,
	datad => \Selector379~1_combout\,
	combout => \Selector330~3_combout\);

-- Location: LCCOMB_X48_Y39_N4
\Selector330~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector330~9_combout\ = (\Selector330~8_combout\ & ((\Selector13~0_combout\) # ((!\Selector329~1_combout\)))) # (!\Selector330~8_combout\ & (((\Selector330~3_combout\ & \Selector329~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector330~8_combout\,
	datab => \Selector13~0_combout\,
	datac => \Selector330~3_combout\,
	datad => \Selector329~1_combout\,
	combout => \Selector330~9_combout\);

-- Location: LCCOMB_X50_Y39_N2
\Selector330~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector330~10_combout\ = (\ExtWord~input_o\ & (\Selector352~1_combout\)) # (!\ExtWord~input_o\ & ((\Selector330~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector352~1_combout\,
	datab => \ExtWord~input_o\,
	datac => \Selector330~9_combout\,
	combout => \Selector330~10_combout\);

-- Location: LCCOMB_X45_Y34_N18
\Selector329~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector329~6_combout\ = (\SLL64_A|Mux8|Mux63~0_combout\ & (((\Selector13~0_combout\) # (\Selector379~2_combout\)))) # (!\SLL64_A|Mux8|Mux63~0_combout\ & (\Selector25~0_combout\ & ((!\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datab => \Selector13~0_combout\,
	datac => \SLL64_A|Mux8|Mux63~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector329~6_combout\);

-- Location: LCCOMB_X45_Y34_N28
\Selector329~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector329~7_combout\ = (\Selector329~6_combout\ & (((\Selector17~0_combout\) # (!\Selector379~2_combout\)))) # (!\Selector329~6_combout\ & (\SRL64_A|Mux32|Mux63~24_combout\ & ((\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector329~6_combout\,
	datab => \SRL64_A|Mux32|Mux63~24_combout\,
	datac => \Selector17~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector329~7_combout\);

-- Location: LCCOMB_X48_Y37_N22
\Selector329~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector329~8_combout\ = (\Selector379~1_combout\ & (((\Selector21~0_combout\) # (!\Selector371~2_combout\)))) # (!\Selector379~1_combout\ & (\Selector329~7_combout\ & ((\Selector371~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~1_combout\,
	datab => \Selector329~7_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector329~8_combout\);

-- Location: LCCOMB_X47_Y37_N28
\Selector329~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector329~9_combout\ = (\Selector371~2_combout\ & (\Selector329~8_combout\)) # (!\Selector371~2_combout\ & ((\Selector329~8_combout\ & (\Selector11~0_combout\)) # (!\Selector329~8_combout\ & ((\Selector10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~2_combout\,
	datab => \Selector329~8_combout\,
	datac => \Selector11~0_combout\,
	datad => \Selector10~0_combout\,
	combout => \Selector329~9_combout\);

-- Location: LCCOMB_X45_Y37_N10
\Selector329~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector329~10_combout\ = (\Selector329~4_combout\ & ((\Selector371~12_combout\ & (\Selector5~0_combout\)) # (!\Selector371~12_combout\ & ((\Selector1~0_combout\))))) # (!\Selector329~4_combout\ & (((\Selector371~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \Selector329~4_combout\,
	datac => \Selector1~0_combout\,
	datad => \Selector371~12_combout\,
	combout => \Selector329~10_combout\);

-- Location: LCCOMB_X47_Y37_N6
\Selector329~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector329~11_combout\ = (\Selector329~10_combout\ & (((\Selector8~0_combout\)) # (!\Selector329~3_combout\))) # (!\Selector329~10_combout\ & (\Selector329~3_combout\ & (\Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector329~10_combout\,
	datab => \Selector329~3_combout\,
	datac => \Selector0~0_combout\,
	datad => \Selector8~0_combout\,
	combout => \Selector329~11_combout\);

-- Location: IOIBUF_X0_Y49_N8
\C[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(54),
	o => \C[54]~input_o\);

-- Location: LCCOMB_X47_Y37_N24
\Selector329~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector329~12_combout\ = (\Selector329~5_combout\ & ((\Selector329~11_combout\) # ((\Selector375~17_combout\)))) # (!\Selector329~5_combout\ & (((\C[54]~input_o\ & !\Selector375~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector329~11_combout\,
	datab => \Selector329~5_combout\,
	datac => \C[54]~input_o\,
	datad => \Selector375~17_combout\,
	combout => \Selector329~12_combout\);

-- Location: LCCOMB_X47_Y37_N18
\Selector329~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector329~13_combout\ = (\Selector375~17_combout\ & ((\Selector329~12_combout\ & (\Selector6~0_combout\)) # (!\Selector329~12_combout\ & ((\Selector7~0_combout\))))) # (!\Selector375~17_combout\ & (\Selector329~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~17_combout\,
	datab => \Selector329~12_combout\,
	datac => \Selector6~0_combout\,
	datad => \Selector7~0_combout\,
	combout => \Selector329~13_combout\);

-- Location: LCCOMB_X47_Y37_N20
\Selector329~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector329~14_combout\ = (\Selector329~1_combout\ & ((\Selector329~9_combout\) # ((\Selector329~2_combout\)))) # (!\Selector329~1_combout\ & (((!\Selector329~2_combout\ & \Selector329~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector329~1_combout\,
	datab => \Selector329~9_combout\,
	datac => \Selector329~2_combout\,
	datad => \Selector329~13_combout\,
	combout => \Selector329~14_combout\);

-- Location: LCCOMB_X47_Y37_N14
\Selector329~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector329~15_combout\ = (\Selector329~2_combout\ & ((\Selector329~14_combout\ & (\Selector12~0_combout\)) # (!\Selector329~14_combout\ & ((\Selector9~0_combout\))))) # (!\Selector329~2_combout\ & (((\Selector329~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector329~2_combout\,
	datab => \Selector12~0_combout\,
	datac => \Selector9~0_combout\,
	datad => \Selector329~14_combout\,
	combout => \Selector329~15_combout\);

-- Location: LCCOMB_X45_Y40_N2
\Selector329~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector329~16_combout\ = (\ExtWord~input_o\ & ((\Selector352~1_combout\))) # (!\ExtWord~input_o\ & (\Selector329~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector329~15_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector352~1_combout\,
	combout => \Selector329~16_combout\);

-- Location: LCCOMB_X47_Y41_N6
\SRL64_A|Mux4|Mux63~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~9_combout\ = (\B[2]~input_o\ & (((\Selector4~0_combout\)))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux16~0_combout\ & ((\Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux16~0_combout\,
	datab => \Selector4~0_combout\,
	datac => \Selector8~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~9_combout\);

-- Location: LCCOMB_X47_Y41_N12
\SRL64_A|Mux4|Mux63~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~8_combout\ = (\ShiftFN[0]~input_o\ & ((\B[3]~input_o\) # ((!\SLL64_A|Mux32|Mux16~0_combout\ & !\B[2]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (\B[3]~input_o\ & ((!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SLL64_A|Mux32|Mux16~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~8_combout\);

-- Location: LCCOMB_X47_Y41_N8
\SRL64_A|Mux4|Mux63~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~10_combout\ = (\SRL64_A|Mux4|Mux63~9_combout\ & (((\Selector0~0_combout\ & \SRL64_A|Mux4|Mux63~8_combout\)) # (!\B[3]~input_o\))) # (!\SRL64_A|Mux4|Mux63~9_combout\ & (\Selector0~0_combout\ & (\SRL64_A|Mux4|Mux63~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~9_combout\,
	datab => \Selector0~0_combout\,
	datac => \SRL64_A|Mux4|Mux63~8_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~10_combout\);

-- Location: LCCOMB_X47_Y40_N14
\Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\B[0]~input_o\ & (((\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\Selector6~0_combout\))) # (!\B[1]~input_o\ & (\SRL64_A|Mux4|Mux63~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64_A|Mux4|Mux63~10_combout\,
	datac => \Selector6~0_combout\,
	datad => \B[1]~input_o\,
	combout => \Selector72~0_combout\);

-- Location: LCCOMB_X47_Y40_N16
\Selector72~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~1_combout\ = (\Selector72~0_combout\ & ((\Selector5~0_combout\) # ((!\B[0]~input_o\)))) # (!\Selector72~0_combout\ & (((\B[0]~input_o\ & \Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \Selector72~0_combout\,
	datac => \B[0]~input_o\,
	datad => \Selector7~0_combout\,
	combout => \Selector72~1_combout\);

-- Location: IOIBUF_X58_Y73_N1
\C[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(55),
	o => \C[55]~input_o\);

-- Location: LCCOMB_X50_Y41_N8
\Selector328~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector328~0_combout\ = (\Selector332~0_combout\ & ((\C[55]~input_o\) # ((\Selector350~4_combout\ & \Selector72~1_combout\)))) # (!\Selector332~0_combout\ & (\Selector350~4_combout\ & (\Selector72~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector332~0_combout\,
	datab => \Selector350~4_combout\,
	datac => \Selector72~1_combout\,
	datad => \C[55]~input_o\,
	combout => \Selector328~0_combout\);

-- Location: LCCOMB_X49_Y37_N30
\SLL64_A|Mux32|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux8~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector24~0_combout\)) # (!\B[4]~input_o\ & ((\Selector8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \Selector8~0_combout\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux32|Mux8~0_combout\);

-- Location: LCCOMB_X46_Y37_N4
\SLL64_A|Mux32|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux8~1_combout\ = (\SLL64_A|Mux32|Mux8~0_combout\) # ((\SRL64_A|Mux32|Mux63~25_combout\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64_A|Mux32|Mux8~0_combout\,
	datac => \SRL64_A|Mux32|Mux63~25_combout\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux32|Mux8~1_combout\);

-- Location: LCCOMB_X46_Y37_N6
\SLL64_A|Mux8|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux8~0_combout\ = (\B[3]~input_o\ & (\B[2]~input_o\)) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Selector12~0_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SLL64_A|Mux32|Mux8~1_combout\,
	datad => \Selector12~0_combout\,
	combout => \SLL64_A|Mux8|Mux8~0_combout\);

-- Location: LCCOMB_X50_Y40_N0
\SLL64_A|Mux8|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux8~1_combout\ = (\B[3]~input_o\ & ((\SLL64_A|Mux8|Mux8~0_combout\ & (\Selector20~0_combout\)) # (!\SLL64_A|Mux8|Mux8~0_combout\ & ((\Selector16~0_combout\))))) # (!\B[3]~input_o\ & (((\SLL64_A|Mux8|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~0_combout\,
	datab => \Selector16~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64_A|Mux8|Mux8~0_combout\,
	combout => \SLL64_A|Mux8|Mux8~1_combout\);

-- Location: LCCOMB_X50_Y41_N2
\SLL64_A|Mux4|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux8~0_combout\ = (\B[1]~input_o\ & ((\Selector10~0_combout\) # ((\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((!\B[0]~input_o\ & \SLL64_A|Mux8|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector10~0_combout\,
	datac => \B[0]~input_o\,
	datad => \SLL64_A|Mux8|Mux8~1_combout\,
	combout => \SLL64_A|Mux4|Mux8~0_combout\);

-- Location: LCCOMB_X50_Y41_N28
\SLL64_A|Mux4|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux8~1_combout\ = (\B[0]~input_o\ & ((\SLL64_A|Mux4|Mux8~0_combout\ & ((\Selector11~0_combout\))) # (!\SLL64_A|Mux4|Mux8~0_combout\ & (\Selector9~0_combout\)))) # (!\B[0]~input_o\ & (((\SLL64_A|Mux4|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~0_combout\,
	datab => \Selector11~0_combout\,
	datac => \B[0]~input_o\,
	datad => \SLL64_A|Mux4|Mux8~0_combout\,
	combout => \SLL64_A|Mux4|Mux8~1_combout\);

-- Location: LCCOMB_X50_Y41_N14
\Selector328~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector328~1_combout\ = (\Selector336~3_combout\) # ((\Selector328~0_combout\) # ((\Selector332~2_combout\ & \SLL64_A|Mux4|Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector336~3_combout\,
	datab => \Selector332~2_combout\,
	datac => \Selector328~0_combout\,
	datad => \SLL64_A|Mux4|Mux8~1_combout\,
	combout => \Selector328~1_combout\);

-- Location: LCCOMB_X43_Y37_N10
\Selector325~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector325~4_combout\ = (\ExtWord~input_o\) # ((\B[1]~input_o\ & (\B[0]~input_o\ & \ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Selector325~4_combout\);

-- Location: LCCOMB_X47_Y39_N12
\Selector325~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector325~3_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\) # ((!\Selector371~3_combout\) # (!\SLL64_A|Mux32|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64_A|Mux32|Mux16~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \Selector371~3_combout\,
	combout => \Selector325~3_combout\);

-- Location: LCCOMB_X48_Y40_N8
\Selector327~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector327~8_combout\ = (\Selector325~4_combout\ & (((\Selector325~3_combout\) # (\Selector352~1_combout\)))) # (!\Selector325~4_combout\ & (\Selector7~0_combout\ & (!\Selector325~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector325~4_combout\,
	datab => \Selector7~0_combout\,
	datac => \Selector325~3_combout\,
	datad => \Selector352~1_combout\,
	combout => \Selector327~8_combout\);

-- Location: LCCOMB_X50_Y39_N28
\Selector327~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector327~0_combout\ = (\Selector379~2_combout\ & ((\SRL64_A|Mux32|Mux63~26_combout\) # ((\SLL64_A|Mux8|Mux63~0_combout\)))) # (!\Selector379~2_combout\ & (((!\SLL64_A|Mux8|Mux63~0_combout\ & \Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector379~2_combout\,
	datab => \SRL64_A|Mux32|Mux63~26_combout\,
	datac => \SLL64_A|Mux8|Mux63~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector327~0_combout\);

-- Location: LCCOMB_X47_Y40_N26
\Selector327~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector327~1_combout\ = (\SLL64_A|Mux8|Mux63~0_combout\ & ((\Selector327~0_combout\ & ((\Selector15~0_combout\))) # (!\Selector327~0_combout\ & (\Selector11~0_combout\)))) # (!\SLL64_A|Mux8|Mux63~0_combout\ & (((\Selector327~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~0_combout\,
	datab => \Selector11~0_combout\,
	datac => \Selector15~0_combout\,
	datad => \Selector327~0_combout\,
	combout => \Selector327~1_combout\);

-- Location: LCCOMB_X47_Y40_N12
\Selector327~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector327~2_combout\ = (\Selector371~2_combout\ & (\Selector327~1_combout\ & ((!\Selector379~1_combout\)))) # (!\Selector371~2_combout\ & (((\Selector8~0_combout\) # (\Selector379~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector327~1_combout\,
	datab => \Selector8~0_combout\,
	datac => \Selector371~2_combout\,
	datad => \Selector379~1_combout\,
	combout => \Selector327~2_combout\);

-- Location: LCCOMB_X48_Y40_N10
\Selector327~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector327~3_combout\ = (\Selector327~2_combout\ & ((\Selector9~0_combout\) # ((!\Selector379~1_combout\)))) # (!\Selector327~2_combout\ & (((\Selector379~1_combout\ & \Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector327~2_combout\,
	datab => \Selector9~0_combout\,
	datac => \Selector379~1_combout\,
	datad => \Selector19~0_combout\,
	combout => \Selector327~3_combout\);

-- Location: IOIBUF_X47_Y73_N15
\C[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(56),
	o => \C[56]~input_o\);

-- Location: LCCOMB_X49_Y40_N16
\Selector325~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector325~2_combout\ = (!\B[1]~input_o\ & (((\B[3]~input_o\) # (\B[0]~input_o\)) # (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Selector325~2_combout\);

-- Location: LCCOMB_X49_Y40_N26
\Selector327~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector327~4_combout\ = (\Selector325~2_combout\ & (((!\Selector371~2_combout\)))) # (!\Selector325~2_combout\ & ((\Selector371~2_combout\ & ((\Selector3~0_combout\))) # (!\Selector371~2_combout\ & (\Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \Selector325~2_combout\,
	datac => \Selector3~0_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector327~4_combout\);

-- Location: LCCOMB_X49_Y40_N22
\Selector325~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector325~15_combout\ = (\Selector325~2_combout\ & ((\ShiftFN[0]~input_o\) # ((\B[0]~input_o\) # (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Selector325~2_combout\,
	combout => \Selector325~15_combout\);

-- Location: LCCOMB_X49_Y40_N28
\Selector327~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector327~5_combout\ = (\Selector327~4_combout\ & (((\Selector6~0_combout\) # (!\Selector325~15_combout\)))) # (!\Selector327~4_combout\ & (\Selector0~0_combout\ & (\Selector325~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector327~4_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector325~15_combout\,
	datad => \Selector6~0_combout\,
	combout => \Selector327~5_combout\);

-- Location: LCCOMB_X48_Y40_N20
\Selector327~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector327~6_combout\ = (\Selector375~10_combout\ & (\Selector375~4_combout\)) # (!\Selector375~10_combout\ & ((\Selector375~4_combout\ & ((\Selector327~5_combout\))) # (!\Selector375~4_combout\ & (\C[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~10_combout\,
	datab => \Selector375~4_combout\,
	datac => \C[56]~input_o\,
	datad => \Selector327~5_combout\,
	combout => \Selector327~6_combout\);

-- Location: LCCOMB_X48_Y40_N6
\Selector327~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector327~7_combout\ = (\Selector327~6_combout\ & (((\Selector10~0_combout\) # (!\Selector375~10_combout\)))) # (!\Selector327~6_combout\ & (\Selector327~3_combout\ & ((\Selector375~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector327~3_combout\,
	datab => \Selector327~6_combout\,
	datac => \Selector10~0_combout\,
	datad => \Selector375~10_combout\,
	combout => \Selector327~7_combout\);

-- Location: LCCOMB_X48_Y40_N18
\Selector327~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector327~9_combout\ = (\Selector327~8_combout\ & ((\Selector4~0_combout\) # ((!\Selector325~3_combout\)))) # (!\Selector327~8_combout\ & (((\Selector325~3_combout\ & \Selector327~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \Selector327~8_combout\,
	datac => \Selector325~3_combout\,
	datad => \Selector327~7_combout\,
	combout => \Selector327~9_combout\);

-- Location: LCCOMB_X49_Y40_N6
\Selector326~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector326~0_combout\ = (\Selector325~2_combout\ & (((!\Selector371~2_combout\)))) # (!\Selector325~2_combout\ & ((\Selector371~2_combout\ & ((\Selector2~0_combout\))) # (!\Selector371~2_combout\ & (\Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \Selector325~2_combout\,
	datac => \Selector2~0_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector326~0_combout\);

-- Location: LCCOMB_X49_Y40_N8
\Selector326~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector326~1_combout\ = (\Selector325~15_combout\ & ((\Selector326~0_combout\ & (\Selector5~0_combout\)) # (!\Selector326~0_combout\ & ((\Selector0~0_combout\))))) # (!\Selector325~15_combout\ & (((\Selector326~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector325~15_combout\,
	datad => \Selector326~0_combout\,
	combout => \Selector326~1_combout\);

-- Location: LCCOMB_X46_Y38_N12
\Selector326~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector326~2_combout\ = (\SLL64_A|Mux8|Mux63~0_combout\ & (((\Selector10~0_combout\) # (\Selector379~2_combout\)))) # (!\SLL64_A|Mux8|Mux63~0_combout\ & (\Selector22~0_combout\ & ((!\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~0_combout\,
	datab => \Selector22~0_combout\,
	datac => \Selector10~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector326~2_combout\);

-- Location: LCCOMB_X46_Y38_N30
\Selector326~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector326~3_combout\ = (\Selector326~2_combout\ & (((\Selector14~0_combout\) # (!\Selector379~2_combout\)))) # (!\Selector326~2_combout\ & (\SRL64_A|Mux32|Mux63~27_combout\ & ((\Selector379~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector326~2_combout\,
	datab => \SRL64_A|Mux32|Mux63~27_combout\,
	datac => \Selector14~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector326~3_combout\);

-- Location: LCCOMB_X47_Y40_N22
\Selector326~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector326~4_combout\ = (\Selector371~2_combout\ & ((\Selector379~1_combout\ & ((\Selector18~0_combout\))) # (!\Selector379~1_combout\ & (\Selector326~3_combout\)))) # (!\Selector371~2_combout\ & (((\Selector379~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector326~3_combout\,
	datab => \Selector18~0_combout\,
	datac => \Selector371~2_combout\,
	datad => \Selector379~1_combout\,
	combout => \Selector326~4_combout\);

-- Location: LCCOMB_X47_Y40_N8
\Selector326~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector326~5_combout\ = (\Selector326~4_combout\ & ((\Selector371~2_combout\) # ((\Selector8~0_combout\)))) # (!\Selector326~4_combout\ & (!\Selector371~2_combout\ & ((\Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector326~4_combout\,
	datab => \Selector371~2_combout\,
	datac => \Selector8~0_combout\,
	datad => \Selector7~0_combout\,
	combout => \Selector326~5_combout\);

-- Location: IOIBUF_X0_Y46_N22
\C[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(57),
	o => \C[57]~input_o\);

-- Location: LCCOMB_X48_Y40_N28
\Selector326~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector326~6_combout\ = (\Selector375~4_combout\ & (((\Selector375~10_combout\)))) # (!\Selector375~4_combout\ & ((\Selector375~10_combout\ & (\Selector326~5_combout\)) # (!\Selector375~10_combout\ & ((\C[57]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector326~5_combout\,
	datab => \Selector375~4_combout\,
	datac => \C[57]~input_o\,
	datad => \Selector375~10_combout\,
	combout => \Selector326~6_combout\);

-- Location: LCCOMB_X48_Y40_N22
\Selector326~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector326~7_combout\ = (\Selector375~4_combout\ & ((\Selector326~6_combout\ & (\Selector9~0_combout\)) # (!\Selector326~6_combout\ & ((\Selector326~1_combout\))))) # (!\Selector375~4_combout\ & (((\Selector326~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~4_combout\,
	datab => \Selector9~0_combout\,
	datac => \Selector326~1_combout\,
	datad => \Selector326~6_combout\,
	combout => \Selector326~7_combout\);

-- Location: LCCOMB_X48_Y40_N16
\Selector326~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector326~8_combout\ = (\Selector325~3_combout\ & ((\Selector326~7_combout\) # ((\Selector325~4_combout\)))) # (!\Selector325~3_combout\ & (((!\Selector325~4_combout\ & \Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector326~7_combout\,
	datab => \Selector325~3_combout\,
	datac => \Selector325~4_combout\,
	datad => \Selector6~0_combout\,
	combout => \Selector326~8_combout\);

-- Location: LCCOMB_X48_Y40_N2
\Selector326~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector326~9_combout\ = (\Selector326~8_combout\ & ((\Selector3~0_combout\) # ((!\Selector325~4_combout\)))) # (!\Selector326~8_combout\ & (((\Selector325~4_combout\ & \Selector352~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector326~8_combout\,
	datac => \Selector325~4_combout\,
	datad => \Selector352~1_combout\,
	combout => \Selector326~9_combout\);

-- Location: LCCOMB_X48_Y40_N26
\Selector325~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector325~13_combout\ = (\Selector325~4_combout\ & (((\Selector325~3_combout\) # (\Selector352~1_combout\)))) # (!\Selector325~4_combout\ & (\Selector5~0_combout\ & (!\Selector325~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector325~4_combout\,
	datab => \Selector5~0_combout\,
	datac => \Selector325~3_combout\,
	datad => \Selector352~1_combout\,
	combout => \Selector325~13_combout\);

-- Location: LCCOMB_X45_Y34_N30
\Selector325~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector325~5_combout\ = (\SLL64_A|Mux8|Mux63~0_combout\ & (((\Selector379~2_combout\)))) # (!\SLL64_A|Mux8|Mux63~0_combout\ & ((\Selector379~2_combout\ & (\SRL64_A|Mux32|Mux63~28_combout\)) # (!\Selector379~2_combout\ & ((\Selector21~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~0_combout\,
	datab => \SRL64_A|Mux32|Mux63~28_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector379~2_combout\,
	combout => \Selector325~5_combout\);

-- Location: LCCOMB_X47_Y40_N10
\Selector325~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector325~6_combout\ = (\Selector325~5_combout\ & ((\Selector13~0_combout\) # ((!\SLL64_A|Mux8|Mux63~0_combout\)))) # (!\Selector325~5_combout\ & (((\Selector9~0_combout\ & \SLL64_A|Mux8|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Selector325~5_combout\,
	datac => \Selector9~0_combout\,
	datad => \SLL64_A|Mux8|Mux63~0_combout\,
	combout => \Selector325~6_combout\);

-- Location: LCCOMB_X47_Y40_N4
\Selector325~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector325~7_combout\ = (\Selector371~2_combout\ & (\Selector325~6_combout\ & ((!\Selector379~1_combout\)))) # (!\Selector371~2_combout\ & (((\Selector6~0_combout\) # (\Selector379~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector325~6_combout\,
	datab => \Selector6~0_combout\,
	datac => \Selector371~2_combout\,
	datad => \Selector379~1_combout\,
	combout => \Selector325~7_combout\);

-- Location: LCCOMB_X48_Y40_N12
\Selector325~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector325~8_combout\ = (\Selector325~7_combout\ & (((\Selector7~0_combout\) # (!\Selector379~1_combout\)))) # (!\Selector325~7_combout\ & (\Selector17~0_combout\ & (\Selector379~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~0_combout\,
	datab => \Selector325~7_combout\,
	datac => \Selector379~1_combout\,
	datad => \Selector7~0_combout\,
	combout => \Selector325~8_combout\);

-- Location: LCCOMB_X49_Y40_N18
\Selector325~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector325~9_combout\ = (\Selector325~2_combout\ & (((!\Selector371~2_combout\)))) # (!\Selector325~2_combout\ & ((\Selector371~2_combout\ & ((\Selector1~0_combout\))) # (!\Selector371~2_combout\ & (\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector325~2_combout\,
	datac => \Selector1~0_combout\,
	datad => \Selector371~2_combout\,
	combout => \Selector325~9_combout\);

-- Location: LCCOMB_X49_Y40_N20
\Selector325~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector325~10_combout\ = (\Selector325~9_combout\ & ((\Selector4~0_combout\) # ((!\Selector325~15_combout\)))) # (!\Selector325~9_combout\ & (((\Selector325~15_combout\ & \Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector325~9_combout\,
	datab => \Selector4~0_combout\,
	datac => \Selector325~15_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector325~10_combout\);

-- Location: IOIBUF_X115_Y40_N1
\C[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(58),
	o => \C[58]~input_o\);

-- Location: LCCOMB_X48_Y40_N30
\Selector325~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector325~11_combout\ = (\Selector375~10_combout\ & (\Selector375~4_combout\)) # (!\Selector375~10_combout\ & ((\Selector375~4_combout\ & (\Selector325~10_combout\)) # (!\Selector375~4_combout\ & ((\C[58]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~10_combout\,
	datab => \Selector375~4_combout\,
	datac => \Selector325~10_combout\,
	datad => \C[58]~input_o\,
	combout => \Selector325~11_combout\);

-- Location: LCCOMB_X48_Y40_N24
\Selector325~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector325~12_combout\ = (\Selector325~11_combout\ & (((\Selector8~0_combout\) # (!\Selector375~10_combout\)))) # (!\Selector325~11_combout\ & (\Selector325~8_combout\ & ((\Selector375~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector325~8_combout\,
	datab => \Selector8~0_combout\,
	datac => \Selector325~11_combout\,
	datad => \Selector375~10_combout\,
	combout => \Selector325~12_combout\);

-- Location: LCCOMB_X48_Y40_N4
\Selector325~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector325~14_combout\ = (\Selector325~3_combout\ & ((\Selector325~13_combout\ & (\Selector2~0_combout\)) # (!\Selector325~13_combout\ & ((\Selector325~12_combout\))))) # (!\Selector325~3_combout\ & (((\Selector325~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \Selector325~3_combout\,
	datac => \Selector325~13_combout\,
	datad => \Selector325~12_combout\,
	combout => \Selector325~14_combout\);

-- Location: LCCOMB_X47_Y39_N22
\SLL64_A|Mux32|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux4~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector20~0_combout\)) # (!\B[4]~input_o\ & ((\Selector4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Selector20~0_combout\,
	datad => \Selector4~0_combout\,
	combout => \SLL64_A|Mux32|Mux4~0_combout\);

-- Location: LCCOMB_X47_Y39_N24
\SLL64_A|Mux32|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux4~1_combout\ = (\SLL64_A|Mux32|Mux4~0_combout\) # ((\SRL64_A|Mux32|Mux63~29_combout\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux4~0_combout\,
	datab => \SRL64_A|Mux32|Mux63~29_combout\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux32|Mux4~1_combout\);

-- Location: LCCOMB_X47_Y39_N10
\SLL64_A|Mux8|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux4~0_combout\ = (\B[3]~input_o\ & (((\B[2]~input_o\)))) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Selector8~0_combout\))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64_A|Mux32|Mux4~1_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector8~0_combout\,
	combout => \SLL64_A|Mux8|Mux4~0_combout\);

-- Location: LCCOMB_X47_Y39_N4
\SLL64_A|Mux8|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux4~1_combout\ = (\B[3]~input_o\ & ((\SLL64_A|Mux8|Mux4~0_combout\ & ((\Selector16~0_combout\))) # (!\SLL64_A|Mux8|Mux4~0_combout\ & (\Selector12~0_combout\)))) # (!\B[3]~input_o\ & (((\SLL64_A|Mux8|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Selector16~0_combout\,
	datad => \SLL64_A|Mux8|Mux4~0_combout\,
	combout => \SLL64_A|Mux8|Mux4~1_combout\);

-- Location: LCCOMB_X47_Y40_N6
\SLL64_A|Mux4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux4~0_combout\ = (\B[1]~input_o\ & (((\B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\Selector5~0_combout\))) # (!\B[0]~input_o\ & (\SLL64_A|Mux8|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64_A|Mux8|Mux4~1_combout\,
	datac => \B[0]~input_o\,
	datad => \Selector5~0_combout\,
	combout => \SLL64_A|Mux4|Mux4~0_combout\);

-- Location: LCCOMB_X47_Y40_N0
\SLL64_A|Mux4|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux4~1_combout\ = (\SLL64_A|Mux4|Mux4~0_combout\ & ((\Selector7~0_combout\) # ((!\B[1]~input_o\)))) # (!\SLL64_A|Mux4|Mux4~0_combout\ & (((\Selector6~0_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux4~0_combout\,
	datab => \Selector7~0_combout\,
	datac => \Selector6~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL64_A|Mux4|Mux4~1_combout\);

-- Location: LCCOMB_X47_Y41_N26
\SRL64_A|Mux4|Mux63~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~11_combout\ = (\SLL64_A|Mux8|Mux63~0_combout\ & (\Selector0~0_combout\)) # (!\SLL64_A|Mux8|Mux63~0_combout\ & ((\SLL64_A|Mux32|Mux16~0_combout\ & ((\Selector4~0_combout\))) # (!\SLL64_A|Mux32|Mux16~0_combout\ & 
-- (\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector4~0_combout\,
	datad => \SLL64_A|Mux32|Mux16~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~11_combout\);

-- Location: LCCOMB_X47_Y41_N20
\SRL64_A|Mux4|Mux63~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~12_combout\ = (\B[2]~input_o\ & (((\Selector0~0_combout\)))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux16~0_combout\ & ((\Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux16~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector4~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64_A|Mux4|Mux63~12_combout\);

-- Location: LCCOMB_X47_Y41_N14
\SRL64_A|Mux4|Mux63~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~13_combout\ = (\ShiftFN[0]~input_o\ & (\SRL64_A|Mux4|Mux63~11_combout\)) # (!\ShiftFN[0]~input_o\ & (((!\B[3]~input_o\ & \SRL64_A|Mux4|Mux63~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux63~11_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux63~12_combout\,
	combout => \SRL64_A|Mux4|Mux63~13_combout\);

-- Location: LCCOMB_X49_Y41_N6
\Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\) # ((\Selector2~0_combout\)))) # (!\B[1]~input_o\ & (!\B[0]~input_o\ & (\SRL64_A|Mux4|Mux63~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~13_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector68~0_combout\);

-- Location: LCCOMB_X49_Y41_N8
\Selector68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~1_combout\ = (\B[0]~input_o\ & ((\Selector68~0_combout\ & (\Selector1~0_combout\)) # (!\Selector68~0_combout\ & ((\Selector3~0_combout\))))) # (!\B[0]~input_o\ & (((\Selector68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \B[0]~input_o\,
	datac => \Selector3~0_combout\,
	datad => \Selector68~0_combout\,
	combout => \Selector68~1_combout\);

-- Location: IOIBUF_X58_Y73_N15
\C[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(59),
	o => \C[59]~input_o\);

-- Location: LCCOMB_X50_Y41_N16
\Selector324~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector324~0_combout\ = (\Selector68~1_combout\ & ((\Selector350~4_combout\) # ((\C[59]~input_o\ & \Selector332~0_combout\)))) # (!\Selector68~1_combout\ & (((\C[59]~input_o\ & \Selector332~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector68~1_combout\,
	datab => \Selector350~4_combout\,
	datac => \C[59]~input_o\,
	datad => \Selector332~0_combout\,
	combout => \Selector324~0_combout\);

-- Location: LCCOMB_X50_Y41_N18
\Selector324~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector324~1_combout\ = (\Selector336~3_combout\) # ((\Selector324~0_combout\) # ((\Selector332~2_combout\ & \SLL64_A|Mux4|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector336~3_combout\,
	datab => \Selector332~2_combout\,
	datac => \SLL64_A|Mux4|Mux4~1_combout\,
	datad => \Selector324~0_combout\,
	combout => \Selector324~1_combout\);

-- Location: LCCOMB_X47_Y38_N12
\SLL64_A|Mux32|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux3~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector19~0_combout\))) # (!\B[4]~input_o\ & (\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Selector3~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Selector19~0_combout\,
	combout => \SLL64_A|Mux32|Mux3~0_combout\);

-- Location: LCCOMB_X47_Y38_N30
\SLL64_A|Mux32|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux3~1_combout\ = (\SLL64_A|Mux32|Mux3~0_combout\) # ((\SRL64_A|Mux32|Mux63~30_combout\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux3~0_combout\,
	datab => \SRL64_A|Mux32|Mux63~30_combout\,
	datac => \B[5]~input_o\,
	combout => \SLL64_A|Mux32|Mux3~1_combout\);

-- Location: LCCOMB_X47_Y40_N18
\SLL64_A|Mux8|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux3~0_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\) # (\Selector7~0_combout\)))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux3~1_combout\ & (!\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux3~1_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Selector7~0_combout\,
	combout => \SLL64_A|Mux8|Mux3~0_combout\);

-- Location: LCCOMB_X47_Y40_N20
\SLL64_A|Mux8|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux3~1_combout\ = (\B[3]~input_o\ & ((\SLL64_A|Mux8|Mux3~0_combout\ & ((\Selector15~0_combout\))) # (!\SLL64_A|Mux8|Mux3~0_combout\ & (\Selector11~0_combout\)))) # (!\B[3]~input_o\ & (((\SLL64_A|Mux8|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Selector11~0_combout\,
	datac => \Selector15~0_combout\,
	datad => \SLL64_A|Mux8|Mux3~0_combout\,
	combout => \SLL64_A|Mux8|Mux3~1_combout\);

-- Location: LCCOMB_X47_Y40_N30
\SLL64_A|Mux4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux3~0_combout\ = (\B[1]~input_o\ & (((\B[0]~input_o\) # (\Selector5~0_combout\)))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux3~1_combout\ & (!\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64_A|Mux8|Mux3~1_combout\,
	datac => \B[0]~input_o\,
	datad => \Selector5~0_combout\,
	combout => \SLL64_A|Mux4|Mux3~0_combout\);

-- Location: LCCOMB_X48_Y39_N22
\SLL64_A|Mux4|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux3~1_combout\ = (\B[0]~input_o\ & ((\SLL64_A|Mux4|Mux3~0_combout\ & ((\Selector6~0_combout\))) # (!\SLL64_A|Mux4|Mux3~0_combout\ & (\Selector4~0_combout\)))) # (!\B[0]~input_o\ & (((\SLL64_A|Mux4|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \B[0]~input_o\,
	datac => \SLL64_A|Mux4|Mux3~0_combout\,
	datad => \Selector6~0_combout\,
	combout => \SLL64_A|Mux4|Mux3~1_combout\);

-- Location: LCCOMB_X49_Y41_N2
\SRL64_A|Mux4|Mux63~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux63~14_combout\ = (\SLL64_A|Mux8|Mux63~1_combout\ & (((\Selector3~0_combout\)))) # (!\SLL64_A|Mux8|Mux63~1_combout\ & (\ShiftFN[0]~input_o\ & ((\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~1_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Selector3~0_combout\,
	datad => \Selector0~0_combout\,
	combout => \SRL64_A|Mux4|Mux63~14_combout\);

-- Location: LCCOMB_X49_Y41_N4
\Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\B[0]~input_o\ & (((\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\Selector1~0_combout\)) # (!\B[1]~input_o\ & ((\SRL64_A|Mux4|Mux63~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64_A|Mux4|Mux63~14_combout\,
	datad => \B[1]~input_o\,
	combout => \Selector67~0_combout\);

-- Location: LCCOMB_X49_Y41_N14
\Selector67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~1_combout\ = (\Selector67~0_combout\ & (((\Selector0~0_combout\) # (!\B[0]~input_o\)))) # (!\Selector67~0_combout\ & (\Selector2~0_combout\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector67~0_combout\,
	datad => \B[0]~input_o\,
	combout => \Selector67~1_combout\);

-- Location: IOIBUF_X52_Y73_N1
\C[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(60),
	o => \C[60]~input_o\);

-- Location: LCCOMB_X50_Y41_N4
\Selector323~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector323~0_combout\ = (\Selector67~1_combout\ & ((\Selector350~4_combout\) # ((\C[60]~input_o\ & \Selector332~0_combout\)))) # (!\Selector67~1_combout\ & (((\C[60]~input_o\ & \Selector332~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector67~1_combout\,
	datab => \Selector350~4_combout\,
	datac => \C[60]~input_o\,
	datad => \Selector332~0_combout\,
	combout => \Selector323~0_combout\);

-- Location: LCCOMB_X50_Y41_N30
\Selector323~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector323~1_combout\ = (\Selector323~0_combout\) # ((\Selector336~3_combout\) # ((\SLL64_A|Mux4|Mux3~1_combout\ & \Selector332~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux4|Mux3~1_combout\,
	datab => \Selector332~2_combout\,
	datac => \Selector323~0_combout\,
	datad => \Selector336~3_combout\,
	combout => \Selector323~1_combout\);

-- Location: IOIBUF_X23_Y73_N15
\C[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(61),
	o => \C[61]~input_o\);

-- Location: LCCOMB_X46_Y39_N22
\SRL64_A|Mux4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux2~0_combout\ = (\B[1]~input_o\ & (((\Selector0~0_combout\)))) # (!\B[1]~input_o\ & (\SLL64_A|Mux8|Mux63~1_combout\ & ((\Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64_A|Mux8|Mux63~1_combout\,
	datac => \Selector0~0_combout\,
	datad => \Selector2~0_combout\,
	combout => \SRL64_A|Mux4|Mux2~0_combout\);

-- Location: LCCOMB_X46_Y39_N16
\SRL64_A|Mux4|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux2~1_combout\ = (\B[0]~input_o\ & (((\Selector1~0_combout\ & !\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\SRL64_A|Mux4|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux2~0_combout\,
	datab => \Selector1~0_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \SRL64_A|Mux4|Mux2~1_combout\);

-- Location: LCCOMB_X46_Y39_N18
\Selector352~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector352~2_combout\ = (\ShiftFN[0]~input_o\ & (\ShiftFN[1]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\SRL64_A|Mux4|Mux2~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\C[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \C[61]~input_o\,
	datad => \SRL64_A|Mux4|Mux2~1_combout\,
	combout => \Selector352~2_combout\);

-- Location: LCCOMB_X46_Y39_N14
\SRA64_A|Mux4|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux4|Mux2~1_combout\ = (\B[0]~input_o\ & (((\Selector1~0_combout\)))) # (!\B[0]~input_o\ & (\Selector2~0_combout\ & (\SLL64_A|Mux8|Mux63~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \SLL64_A|Mux8|Mux63~1_combout\,
	datac => \Selector1~0_combout\,
	datad => \B[0]~input_o\,
	combout => \SRA64_A|Mux4|Mux2~1_combout\);

-- Location: LCCOMB_X46_Y39_N4
\SRA64_A|Mux4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux4|Mux2~0_combout\ = (\B[1]~input_o\) # ((!\B[0]~input_o\ & ((\SLL64_A|Mux8|Mux63~0_combout\) # (!\SLL64_A|Mux32|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~0_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux32|Mux16~0_combout\,
	combout => \SRA64_A|Mux4|Mux2~0_combout\);

-- Location: LCCOMB_X46_Y39_N8
\SRA64_A|Mux4|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux4|Mux2~2_combout\ = (\B[1]~input_o\ & (((\SRA64_A|Mux4|Mux2~0_combout\ & \Selector0~0_combout\)))) # (!\B[1]~input_o\ & ((\SRA64_A|Mux4|Mux2~1_combout\) # ((\SRA64_A|Mux4|Mux2~0_combout\ & \Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64_A|Mux4|Mux2~1_combout\,
	datac => \SRA64_A|Mux4|Mux2~0_combout\,
	datad => \Selector0~0_combout\,
	combout => \SRA64_A|Mux4|Mux2~2_combout\);

-- Location: LCCOMB_X49_Y37_N24
\SLL64_A|Mux32|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux2~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Selector18~0_combout\)) # (!\B[4]~input_o\ & ((\Selector2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => \Selector2~0_combout\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux32|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y37_N2
\SLL64_A|Mux32|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux2~1_combout\ = (\SLL64_A|Mux32|Mux2~0_combout\) # ((\SRL64_A|Mux32|Mux63~31_combout\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64_A|Mux32|Mux2~0_combout\,
	datac => \SRL64_A|Mux32|Mux63~31_combout\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux32|Mux2~1_combout\);

-- Location: LCCOMB_X48_Y39_N16
\SLL64_A|Mux8|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux2~0_combout\ = (\B[3]~input_o\ & (((\B[2]~input_o\)))) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Selector6~0_combout\)) # (!\B[2]~input_o\ & ((\SLL64_A|Mux32|Mux2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Selector6~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64_A|Mux32|Mux2~1_combout\,
	combout => \SLL64_A|Mux8|Mux2~0_combout\);

-- Location: LCCOMB_X48_Y39_N2
\SLL64_A|Mux8|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux2~1_combout\ = (\B[3]~input_o\ & ((\SLL64_A|Mux8|Mux2~0_combout\ & ((\Selector14~0_combout\))) # (!\SLL64_A|Mux8|Mux2~0_combout\ & (\Selector10~0_combout\)))) # (!\B[3]~input_o\ & (\SLL64_A|Mux8|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64_A|Mux8|Mux2~0_combout\,
	datac => \Selector10~0_combout\,
	datad => \Selector14~0_combout\,
	combout => \SLL64_A|Mux8|Mux2~1_combout\);

-- Location: LCCOMB_X48_Y39_N28
\SLL64_A|Mux4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux2~0_combout\ = (\B[0]~input_o\ & ((\Selector3~0_combout\) # ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \SLL64_A|Mux8|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SLL64_A|Mux8|Mux2~1_combout\,
	combout => \SLL64_A|Mux4|Mux2~0_combout\);

-- Location: LCCOMB_X48_Y39_N6
\SLL64_A|Mux4|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux2~1_combout\ = (\B[1]~input_o\ & ((\SLL64_A|Mux4|Mux2~0_combout\ & (\Selector5~0_combout\)) # (!\SLL64_A|Mux4|Mux2~0_combout\ & ((\Selector4~0_combout\))))) # (!\B[1]~input_o\ & (((\SLL64_A|Mux4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \B[1]~input_o\,
	datac => \Selector4~0_combout\,
	datad => \SLL64_A|Mux4|Mux2~0_combout\,
	combout => \SLL64_A|Mux4|Mux2~1_combout\);

-- Location: LCCOMB_X46_Y39_N10
\Selector352~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector352~3_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector352~2_combout\ & (\SRA64_A|Mux4|Mux2~2_combout\)) # (!\Selector352~2_combout\ & ((\SLL64_A|Mux4|Mux2~1_combout\))))) # (!\ShiftFN[0]~input_o\ & (\Selector352~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Selector352~2_combout\,
	datac => \SRA64_A|Mux4|Mux2~2_combout\,
	datad => \SLL64_A|Mux4|Mux2~1_combout\,
	combout => \Selector352~3_combout\);

-- Location: LCCOMB_X50_Y39_N14
\Selector322~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector322~0_combout\ = (\ExtWord~input_o\ & ((\Selector352~1_combout\))) # (!\ExtWord~input_o\ & (\Selector352~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector352~3_combout\,
	datab => \ExtWord~input_o\,
	datac => \Selector352~1_combout\,
	combout => \Selector322~0_combout\);

-- Location: LCCOMB_X46_Y39_N12
\SRL64_A|Mux4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux1~0_combout\ = (!\SLL64_A|Mux8|Mux63~0_combout\ & (\SLL64_A|Mux32|Mux16~0_combout\ & (\Selector1~0_combout\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~0_combout\,
	datab => \SLL64_A|Mux32|Mux16~0_combout\,
	datac => \Selector1~0_combout\,
	datad => \B[0]~input_o\,
	combout => \SRL64_A|Mux4|Mux1~0_combout\);

-- Location: LCCOMB_X46_Y39_N30
\SRL64_A|Mux4|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux1~1_combout\ = (!\B[1]~input_o\ & ((\SRL64_A|Mux4|Mux1~0_combout\) # ((\B[0]~input_o\ & \Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \Selector0~0_combout\,
	datad => \SRL64_A|Mux4|Mux1~0_combout\,
	combout => \SRL64_A|Mux4|Mux1~1_combout\);

-- Location: IOIBUF_X72_Y73_N1
\C[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(62),
	o => \C[62]~input_o\);

-- Location: LCCOMB_X46_Y39_N0
\Selector352~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector352~4_combout\ = (\ShiftFN[1]~input_o\ & ((\SRL64_A|Mux4|Mux1~1_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\C[62]~input_o\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64_A|Mux4|Mux1~1_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \C[62]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Selector352~4_combout\);

-- Location: LCCOMB_X46_Y39_N26
\SRA64_A|Mux4|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64_A|Mux4|Mux1~6_combout\ = (\Selector371~2_combout\ & ((\SLL64_A|Mux8|Mux63~1_combout\ & ((\Selector1~0_combout\))) # (!\SLL64_A|Mux8|Mux63~1_combout\ & (\Selector0~0_combout\)))) # (!\Selector371~2_combout\ & (\Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector371~2_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector1~0_combout\,
	datad => \SLL64_A|Mux8|Mux63~1_combout\,
	combout => \SRA64_A|Mux4|Mux1~6_combout\);

-- Location: LCCOMB_X49_Y37_N28
\SLL64_A|Mux32|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux1~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector17~0_combout\))) # (!\B[4]~input_o\ & (\Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux32|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y37_N14
\SLL64_A|Mux32|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux1~1_combout\ = (\SLL64_A|Mux32|Mux1~0_combout\) # ((\SRL64_A|Mux32|Mux63~32_combout\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64_A|Mux32|Mux63~32_combout\,
	datac => \SLL64_A|Mux32|Mux1~0_combout\,
	datad => \B[5]~input_o\,
	combout => \SLL64_A|Mux32|Mux1~1_combout\);

-- Location: LCCOMB_X50_Y38_N8
\SLL64_A|Mux8|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux1~0_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\) # (\Selector5~0_combout\)))) # (!\B[2]~input_o\ & (\SLL64_A|Mux32|Mux1~1_combout\ & (!\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux32|Mux1~1_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Selector5~0_combout\,
	combout => \SLL64_A|Mux8|Mux1~0_combout\);

-- Location: LCCOMB_X50_Y38_N18
\SLL64_A|Mux8|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux1~1_combout\ = (\SLL64_A|Mux8|Mux1~0_combout\ & (((\Selector13~0_combout\) # (!\B[3]~input_o\)))) # (!\SLL64_A|Mux8|Mux1~0_combout\ & (\Selector9~0_combout\ & ((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~0_combout\,
	datab => \Selector13~0_combout\,
	datac => \SLL64_A|Mux8|Mux1~0_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64_A|Mux8|Mux1~1_combout\);

-- Location: LCCOMB_X50_Y38_N4
\SLL64_A|Mux4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux1~0_combout\ = (\B[1]~input_o\ & ((\Selector3~0_combout\) # ((\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((!\B[0]~input_o\ & \SLL64_A|Mux8|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SLL64_A|Mux8|Mux1~1_combout\,
	combout => \SLL64_A|Mux4|Mux1~0_combout\);

-- Location: LCCOMB_X50_Y38_N30
\SLL64_A|Mux4|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux1~1_combout\ = (\B[0]~input_o\ & ((\SLL64_A|Mux4|Mux1~0_combout\ & (\Selector4~0_combout\)) # (!\SLL64_A|Mux4|Mux1~0_combout\ & ((\Selector2~0_combout\))))) # (!\B[0]~input_o\ & (\SLL64_A|Mux4|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLL64_A|Mux4|Mux1~0_combout\,
	datac => \Selector4~0_combout\,
	datad => \Selector2~0_combout\,
	combout => \SLL64_A|Mux4|Mux1~1_combout\);

-- Location: LCCOMB_X46_Y39_N20
\Selector352~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector352~5_combout\ = (\ShiftFN[0]~input_o\ & ((\Selector352~4_combout\ & (\SRA64_A|Mux4|Mux1~6_combout\)) # (!\Selector352~4_combout\ & ((\SLL64_A|Mux4|Mux1~1_combout\))))) # (!\ShiftFN[0]~input_o\ & (\Selector352~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Selector352~4_combout\,
	datac => \SRA64_A|Mux4|Mux1~6_combout\,
	datad => \SLL64_A|Mux4|Mux1~1_combout\,
	combout => \Selector352~5_combout\);

-- Location: LCCOMB_X49_Y41_N24
\Selector321~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector321~0_combout\ = (\ExtWord~input_o\ & (\Selector352~1_combout\)) # (!\ExtWord~input_o\ & ((\Selector352~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector352~1_combout\,
	datab => \Selector352~5_combout\,
	datad => \ExtWord~input_o\,
	combout => \Selector321~0_combout\);

-- Location: IOIBUF_X115_Y44_N8
\C[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(63),
	o => \C[63]~input_o\);

-- Location: LCCOMB_X47_Y41_N28
\SRL64_A|Mux4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64_A|Mux4|Mux0~0_combout\ = (!\SLL64_A|Mux8|Mux63~0_combout\ & (\Selector0~0_combout\ & (\SLL64_A|Mux32|Mux16~0_combout\ & \Selector371~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64_A|Mux8|Mux63~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \SLL64_A|Mux32|Mux16~0_combout\,
	datad => \Selector371~2_combout\,
	combout => \SRL64_A|Mux4|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y41_N30
\Selector352~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector352~6_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRL64_A|Mux4|Mux0~0_combout\)))) # (!\ShiftFN[1]~input_o\ & (\C[63]~input_o\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[63]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64_A|Mux4|Mux0~0_combout\,
	combout => \Selector352~6_combout\);

-- Location: LCCOMB_X43_Y34_N8
\SLL64_A|Mux32|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux0~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Selector16~0_combout\))) # (!\B[4]~input_o\ & (\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Selector16~0_combout\,
	combout => \SLL64_A|Mux32|Mux0~0_combout\);

-- Location: LCCOMB_X43_Y34_N2
\SLL64_A|Mux32|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux32|Mux0~1_combout\ = (\SLL64_A|Mux32|Mux0~0_combout\) # ((!\tempA~0_combout\ & (\B[5]~input_o\ & \SRL64_A|Mux32|Mux63~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempA~0_combout\,
	datab => \B[5]~input_o\,
	datac => \SLL64_A|Mux32|Mux0~0_combout\,
	datad => \SRL64_A|Mux32|Mux63~33_combout\,
	combout => \SLL64_A|Mux32|Mux0~1_combout\);

-- Location: LCCOMB_X47_Y41_N16
\SLL64_A|Mux8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux0~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\) # ((\Selector4~0_combout\)))) # (!\B[2]~input_o\ & (!\B[3]~input_o\ & ((\SLL64_A|Mux32|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Selector4~0_combout\,
	datad => \SLL64_A|Mux32|Mux0~1_combout\,
	combout => \SLL64_A|Mux8|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y41_N18
\SLL64_A|Mux8|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux8|Mux0~1_combout\ = (\B[3]~input_o\ & ((\SLL64_A|Mux8|Mux0~0_combout\ & (\Selector12~0_combout\)) # (!\SLL64_A|Mux8|Mux0~0_combout\ & ((\Selector8~0_combout\))))) # (!\B[3]~input_o\ & (((\SLL64_A|Mux8|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Selector8~0_combout\,
	datad => \SLL64_A|Mux8|Mux0~0_combout\,
	combout => \SLL64_A|Mux8|Mux0~1_combout\);

-- Location: LCCOMB_X49_Y41_N26
\SLL64_A|Mux4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux0~0_combout\ = (\B[1]~input_o\ & (\B[0]~input_o\)) # (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\Selector1~0_combout\))) # (!\B[0]~input_o\ & (\SLL64_A|Mux8|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SLL64_A|Mux8|Mux0~1_combout\,
	datad => \Selector1~0_combout\,
	combout => \SLL64_A|Mux4|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y41_N20
\SLL64_A|Mux4|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64_A|Mux4|Mux0~1_combout\ = (\B[1]~input_o\ & ((\SLL64_A|Mux4|Mux0~0_combout\ & (\Selector3~0_combout\)) # (!\SLL64_A|Mux4|Mux0~0_combout\ & ((\Selector2~0_combout\))))) # (!\B[1]~input_o\ & (((\SLL64_A|Mux4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Selector3~0_combout\,
	datac => \SLL64_A|Mux4|Mux0~0_combout\,
	datad => \Selector2~0_combout\,
	combout => \SLL64_A|Mux4|Mux0~1_combout\);

-- Location: LCCOMB_X49_Y41_N0
\Selector352~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector352~7_combout\ = (\Selector352~6_combout\ & ((\Selector0~0_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\Selector352~6_combout\ & (((\ShiftFN[0]~input_o\ & \SLL64_A|Mux4|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector352~6_combout\,
	datab => \Selector0~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SLL64_A|Mux4|Mux0~1_combout\,
	combout => \Selector352~7_combout\);

-- Location: LCCOMB_X49_Y41_N18
\Selector320~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector320~0_combout\ = (\ExtWord~input_o\ & (\Selector352~1_combout\)) # (!\ExtWord~input_o\ & ((\Selector352~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector352~1_combout\,
	datab => \Selector352~7_combout\,
	datad => \ExtWord~input_o\,
	combout => \Selector320~0_combout\);

-- Location: IOIBUF_X81_Y73_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X109_Y73_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X115_Y21_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X115_Y47_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X115_Y45_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X107_Y73_N15
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X89_Y0_N1
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X107_Y73_N1
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X115_Y30_N1
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X79_Y0_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X100_Y0_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X7_Y73_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X98_Y0_N22
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X115_Y52_N1
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X100_Y0_N1
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X83_Y0_N15
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X89_Y0_N15
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X100_Y0_N15
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X98_Y73_N22
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X115_Y16_N1
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X18_Y73_N15
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X115_Y56_N15
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X96_Y0_N22
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X115_Y25_N15
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X0_Y57_N15
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X20_Y73_N15
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X113_Y73_N8
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
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


