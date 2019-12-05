-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "12/05/2019 19:59:26"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mips IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	saida_ULAWF : OUT std_logic_vector(31 DOWNTO 0);
	pcWF : OUT std_logic_vector(31 DOWNTO 0);
	ZWF : OUT std_logic;
	dec_RBWF : OUT std_logic_vector(31 DOWNTO 0);
	dec_RAWF : OUT std_logic_vector(31 DOWNTO 0);
	sel_mux_jumpWF : OUT std_logic;
	sel_mux_beqWF : OUT std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END mips;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[1]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[3]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[4]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[5]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[7]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[8]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[9]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[10]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[11]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[12]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[13]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[14]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[15]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[16]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[17]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[18]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[19]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[20]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[21]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[22]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[23]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[24]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[25]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[26]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[27]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[28]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[29]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[30]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[31]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[0]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[1]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[3]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[5]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[7]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[8]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[9]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[10]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[11]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[12]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[13]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[14]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[15]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[16]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[17]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[18]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[19]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[20]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[21]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[22]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[23]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[24]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[25]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[26]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[27]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[28]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[29]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[30]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[31]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZWF	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[1]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[4]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[5]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[6]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[7]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[8]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[9]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[10]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[11]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[12]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[13]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[14]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[15]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[16]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[17]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[18]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[19]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[20]	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[21]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[22]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[23]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[24]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[25]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[26]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[27]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[28]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[29]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[30]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RBWF[31]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[0]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[1]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[2]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[4]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[5]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[6]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[7]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[8]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[9]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[10]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[11]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[12]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[13]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[14]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[15]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[16]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[17]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[18]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[19]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[20]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[21]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[22]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[23]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[24]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[25]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[26]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[27]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[28]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[29]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[30]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_RAWF[31]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_mux_jumpWF	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_mux_beqWF	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF mips IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_saida_ULAWF : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_pcWF : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ZWF : std_logic;
SIGNAL ww_dec_RBWF : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_dec_RAWF : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_sel_mux_jumpWF : std_logic;
SIGNAL ww_sel_mux_beqWF : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \detector|saida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[0]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[1]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[2]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[3]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[4]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[5]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[6]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[7]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[8]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[9]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[10]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[11]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[12]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[13]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[14]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[15]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[16]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[17]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[18]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[19]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[20]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[21]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[22]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[23]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[24]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[25]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[26]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[27]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[28]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[29]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[30]~output_o\ : std_logic;
SIGNAL \saida_ULAWF[31]~output_o\ : std_logic;
SIGNAL \pcWF[0]~output_o\ : std_logic;
SIGNAL \pcWF[1]~output_o\ : std_logic;
SIGNAL \pcWF[2]~output_o\ : std_logic;
SIGNAL \pcWF[3]~output_o\ : std_logic;
SIGNAL \pcWF[4]~output_o\ : std_logic;
SIGNAL \pcWF[5]~output_o\ : std_logic;
SIGNAL \pcWF[6]~output_o\ : std_logic;
SIGNAL \pcWF[7]~output_o\ : std_logic;
SIGNAL \pcWF[8]~output_o\ : std_logic;
SIGNAL \pcWF[9]~output_o\ : std_logic;
SIGNAL \pcWF[10]~output_o\ : std_logic;
SIGNAL \pcWF[11]~output_o\ : std_logic;
SIGNAL \pcWF[12]~output_o\ : std_logic;
SIGNAL \pcWF[13]~output_o\ : std_logic;
SIGNAL \pcWF[14]~output_o\ : std_logic;
SIGNAL \pcWF[15]~output_o\ : std_logic;
SIGNAL \pcWF[16]~output_o\ : std_logic;
SIGNAL \pcWF[17]~output_o\ : std_logic;
SIGNAL \pcWF[18]~output_o\ : std_logic;
SIGNAL \pcWF[19]~output_o\ : std_logic;
SIGNAL \pcWF[20]~output_o\ : std_logic;
SIGNAL \pcWF[21]~output_o\ : std_logic;
SIGNAL \pcWF[22]~output_o\ : std_logic;
SIGNAL \pcWF[23]~output_o\ : std_logic;
SIGNAL \pcWF[24]~output_o\ : std_logic;
SIGNAL \pcWF[25]~output_o\ : std_logic;
SIGNAL \pcWF[26]~output_o\ : std_logic;
SIGNAL \pcWF[27]~output_o\ : std_logic;
SIGNAL \pcWF[28]~output_o\ : std_logic;
SIGNAL \pcWF[29]~output_o\ : std_logic;
SIGNAL \pcWF[30]~output_o\ : std_logic;
SIGNAL \pcWF[31]~output_o\ : std_logic;
SIGNAL \ZWF~output_o\ : std_logic;
SIGNAL \dec_RBWF[0]~output_o\ : std_logic;
SIGNAL \dec_RBWF[1]~output_o\ : std_logic;
SIGNAL \dec_RBWF[2]~output_o\ : std_logic;
SIGNAL \dec_RBWF[3]~output_o\ : std_logic;
SIGNAL \dec_RBWF[4]~output_o\ : std_logic;
SIGNAL \dec_RBWF[5]~output_o\ : std_logic;
SIGNAL \dec_RBWF[6]~output_o\ : std_logic;
SIGNAL \dec_RBWF[7]~output_o\ : std_logic;
SIGNAL \dec_RBWF[8]~output_o\ : std_logic;
SIGNAL \dec_RBWF[9]~output_o\ : std_logic;
SIGNAL \dec_RBWF[10]~output_o\ : std_logic;
SIGNAL \dec_RBWF[11]~output_o\ : std_logic;
SIGNAL \dec_RBWF[12]~output_o\ : std_logic;
SIGNAL \dec_RBWF[13]~output_o\ : std_logic;
SIGNAL \dec_RBWF[14]~output_o\ : std_logic;
SIGNAL \dec_RBWF[15]~output_o\ : std_logic;
SIGNAL \dec_RBWF[16]~output_o\ : std_logic;
SIGNAL \dec_RBWF[17]~output_o\ : std_logic;
SIGNAL \dec_RBWF[18]~output_o\ : std_logic;
SIGNAL \dec_RBWF[19]~output_o\ : std_logic;
SIGNAL \dec_RBWF[20]~output_o\ : std_logic;
SIGNAL \dec_RBWF[21]~output_o\ : std_logic;
SIGNAL \dec_RBWF[22]~output_o\ : std_logic;
SIGNAL \dec_RBWF[23]~output_o\ : std_logic;
SIGNAL \dec_RBWF[24]~output_o\ : std_logic;
SIGNAL \dec_RBWF[25]~output_o\ : std_logic;
SIGNAL \dec_RBWF[26]~output_o\ : std_logic;
SIGNAL \dec_RBWF[27]~output_o\ : std_logic;
SIGNAL \dec_RBWF[28]~output_o\ : std_logic;
SIGNAL \dec_RBWF[29]~output_o\ : std_logic;
SIGNAL \dec_RBWF[30]~output_o\ : std_logic;
SIGNAL \dec_RBWF[31]~output_o\ : std_logic;
SIGNAL \dec_RAWF[0]~output_o\ : std_logic;
SIGNAL \dec_RAWF[1]~output_o\ : std_logic;
SIGNAL \dec_RAWF[2]~output_o\ : std_logic;
SIGNAL \dec_RAWF[3]~output_o\ : std_logic;
SIGNAL \dec_RAWF[4]~output_o\ : std_logic;
SIGNAL \dec_RAWF[5]~output_o\ : std_logic;
SIGNAL \dec_RAWF[6]~output_o\ : std_logic;
SIGNAL \dec_RAWF[7]~output_o\ : std_logic;
SIGNAL \dec_RAWF[8]~output_o\ : std_logic;
SIGNAL \dec_RAWF[9]~output_o\ : std_logic;
SIGNAL \dec_RAWF[10]~output_o\ : std_logic;
SIGNAL \dec_RAWF[11]~output_o\ : std_logic;
SIGNAL \dec_RAWF[12]~output_o\ : std_logic;
SIGNAL \dec_RAWF[13]~output_o\ : std_logic;
SIGNAL \dec_RAWF[14]~output_o\ : std_logic;
SIGNAL \dec_RAWF[15]~output_o\ : std_logic;
SIGNAL \dec_RAWF[16]~output_o\ : std_logic;
SIGNAL \dec_RAWF[17]~output_o\ : std_logic;
SIGNAL \dec_RAWF[18]~output_o\ : std_logic;
SIGNAL \dec_RAWF[19]~output_o\ : std_logic;
SIGNAL \dec_RAWF[20]~output_o\ : std_logic;
SIGNAL \dec_RAWF[21]~output_o\ : std_logic;
SIGNAL \dec_RAWF[22]~output_o\ : std_logic;
SIGNAL \dec_RAWF[23]~output_o\ : std_logic;
SIGNAL \dec_RAWF[24]~output_o\ : std_logic;
SIGNAL \dec_RAWF[25]~output_o\ : std_logic;
SIGNAL \dec_RAWF[26]~output_o\ : std_logic;
SIGNAL \dec_RAWF[27]~output_o\ : std_logic;
SIGNAL \dec_RAWF[28]~output_o\ : std_logic;
SIGNAL \dec_RAWF[29]~output_o\ : std_logic;
SIGNAL \dec_RAWF[30]~output_o\ : std_logic;
SIGNAL \dec_RAWF[31]~output_o\ : std_logic;
SIGNAL \sel_mux_jumpWF~output_o\ : std_logic;
SIGNAL \sel_mux_beqWF~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \detector|saidaQ~0_combout\ : std_logic;
SIGNAL \detector|saidaQ~q\ : std_logic;
SIGNAL \detector|saida~combout\ : std_logic;
SIGNAL \detector|saida~clkctrl_outclk\ : std_logic;
SIGNAL \FD|Somador|saida[3]~3\ : std_logic;
SIGNAL \FD|Somador|saida[4]~5\ : std_logic;
SIGNAL \FD|Somador|saida[5]~7\ : std_logic;
SIGNAL \FD|Somador|saida[6]~8_combout\ : std_logic;
SIGNAL \FD|Somador|saida[6]~9\ : std_logic;
SIGNAL \FD|Somador|saida[7]~10_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[7]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~24_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~30_combout\ : std_logic;
SIGNAL \FD|FID|data_s[5]~feeder_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s4[1]~feeder_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[6]~feeder_combout\ : std_logic;
SIGNAL \FD|Somador|saida[5]~6_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[5]~feeder_combout\ : std_logic;
SIGNAL \FD|Somador|saida[4]~4_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[4]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~21_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~28_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[3]~feeder_combout\ : std_logic;
SIGNAL \FD|Somador|saida[2]~0_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[2]~31\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[3]~33\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[4]~35\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[5]~37\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[6]~39\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[7]~40_combout\ : std_logic;
SIGNAL \FD|PC|data_s[7]~5_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~12_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~13_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~16_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[0]~0_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~14_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~17_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~18_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[6]~38_combout\ : std_logic;
SIGNAL \FD|PC|data_s[6]~4_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~19_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~20_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[2]~30_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[2]~feeder_combout\ : std_logic;
SIGNAL \FD|PC|data_s[2]~0_combout\ : std_logic;
SIGNAL \FD|Somador|saida[2]~1\ : std_logic;
SIGNAL \FD|Somador|saida[3]~2_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[3]~32_combout\ : std_logic;
SIGNAL \FD|PC|data_s[3]~1_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~23_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~29_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[5]~36_combout\ : std_logic;
SIGNAL \FD|PC|data_s[5]~3_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~22_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[4]~34_combout\ : std_logic;
SIGNAL \FD|PC|data_s[4]~2_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~15_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[1]~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \UC|Equal4~0_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[2]~2_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s2[2]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[1]~1_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s2[1]~feeder_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s7[2]~0_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s4[1]~feeder_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s3[1]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~41_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~27_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~33_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~26_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~32_combout\ : std_logic;
SIGNAL \FD|FID|data_s[19]~feeder_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s4[3]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[3]~3_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~25_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~31_combout\ : std_logic;
SIGNAL \FD|FID|data_s[16]~feeder_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s4[0]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s2[0]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~40_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[30]~2_combout\ : std_logic;
SIGNAL \FD|BR|Equal0~0_combout\ : std_logic;
SIGNAL \UC|Equal3~0_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s4[0]~feeder_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s3[0]~feeder_combout\ : std_logic;
SIGNAL \UC|Equal2~1_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s5[2]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[4]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~38_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~39_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[0]~62_combout\ : std_logic;
SIGNAL \FD|BR|Equal1~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \UC|Equal2~0_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUop_s~29_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUop_s~30_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUop_s~31_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUop_s~32_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUop_s~33_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUop_s[0]~6_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUop_s[0]~3_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUop_s[0]~34_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUop_s[1]~20_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUop_s[1]~16_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUop_s[1]~35_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[1]~2_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[4]~54_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[6]~50_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[8]~46_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[29]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[9]~44_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[10]~42_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[12]~38_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[13]~36_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[14]~34_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[15]~32_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[43]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[16]~30_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[3]~56_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[18]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[19]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[20]~22_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[21]~20_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[53]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[23]~16_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[24]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[25]~12_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[27]~8_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[29]~4_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s3[19]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[31]~0_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[31]~1_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[31]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[31]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|BR|saidaA[31]~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[30]~2_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[71]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|BR|saidaB[30]~3_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[30]~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[29]~4_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|BR|saidaA[29]~5_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[28]~6_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[28]~7_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[27]~8_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[27]~9_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[26]~10_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[26]~11_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[26]~5_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[26]~10_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|BR|saidaA[26]~11_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[25]~12_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|BR|saidaA[25]~13_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[24]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[59]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|BR|saidaA[24]~15_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[23]~16_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|BR|saidaB[23]~17_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[23]~8_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[22]~18_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|BR|saidaB[22]~19_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[22]~9_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[21]~20_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[21]~21_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[20]~11_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[19]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|BR|saidaA[19]~25_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[18]~13_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[17]~28_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[17]~29_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[17]~28_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[17]~29_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[17]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[16]~30_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|BR|saidaA[16]~31_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[15]~32_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[15]~33_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[14]~34_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|BR|saidaB[14]~35_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[14]~17_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[13]~36_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|BR|saidaA[13]~37_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[12]~38_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[12]~39_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[11]~40_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|BR|saidaB[11]~41_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[11]~20_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[11]~40_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|BR|saidaA[11]~41_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[10]~42_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|BR|saidaA[10]~43_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[9]~44_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[9]~45_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[8]~46_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|BR|saidaA[8]~47_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[7]~48_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|BR|saidaB[7]~49_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[7]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[6]~50_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[6]~51_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[6]~25_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[5]~52_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|BR|saidaB[5]~53_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[5]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[4]~54_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|BR|saidaA[4]~55_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[3]~28_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[2]~58_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|BR|saidaA[2]~59_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[1]~30_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[0]~31_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~62_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~63_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~1\ : std_logic;
SIGNAL \FD|ULA|Add1~3\ : std_logic;
SIGNAL \FD|ULA|Add1~5\ : std_logic;
SIGNAL \FD|ULA|Add1~7\ : std_logic;
SIGNAL \FD|ULA|Add1~9\ : std_logic;
SIGNAL \FD|ULA|Add1~11\ : std_logic;
SIGNAL \FD|ULA|Add1~13\ : std_logic;
SIGNAL \FD|ULA|Add1~15\ : std_logic;
SIGNAL \FD|ULA|Add1~17\ : std_logic;
SIGNAL \FD|ULA|Add1~19\ : std_logic;
SIGNAL \FD|ULA|Add1~21\ : std_logic;
SIGNAL \FD|ULA|Add1~23\ : std_logic;
SIGNAL \FD|ULA|Add1~25\ : std_logic;
SIGNAL \FD|ULA|Add1~27\ : std_logic;
SIGNAL \FD|ULA|Add1~29\ : std_logic;
SIGNAL \FD|ULA|Add1~31\ : std_logic;
SIGNAL \FD|ULA|Add1~33\ : std_logic;
SIGNAL \FD|ULA|Add1~35\ : std_logic;
SIGNAL \FD|ULA|Add1~37\ : std_logic;
SIGNAL \FD|ULA|Add1~39\ : std_logic;
SIGNAL \FD|ULA|Add1~41\ : std_logic;
SIGNAL \FD|ULA|Add1~43\ : std_logic;
SIGNAL \FD|ULA|Add1~45\ : std_logic;
SIGNAL \FD|ULA|Add1~47\ : std_logic;
SIGNAL \FD|ULA|Add1~49\ : std_logic;
SIGNAL \FD|ULA|Add1~51\ : std_logic;
SIGNAL \FD|ULA|Add1~53\ : std_logic;
SIGNAL \FD|ULA|Add1~55\ : std_logic;
SIGNAL \FD|ULA|Add1~57\ : std_logic;
SIGNAL \FD|ULA|Add1~59\ : std_logic;
SIGNAL \FD|ULA|Add1~61\ : std_logic;
SIGNAL \FD|ULA|Add1~62_combout\ : std_logic;
SIGNAL \FD|ULA|soma[0]~1\ : std_logic;
SIGNAL \FD|ULA|soma[1]~3\ : std_logic;
SIGNAL \FD|ULA|soma[2]~5\ : std_logic;
SIGNAL \FD|ULA|soma[3]~7\ : std_logic;
SIGNAL \FD|ULA|soma[4]~9\ : std_logic;
SIGNAL \FD|ULA|soma[5]~11\ : std_logic;
SIGNAL \FD|ULA|soma[6]~13\ : std_logic;
SIGNAL \FD|ULA|soma[7]~15\ : std_logic;
SIGNAL \FD|ULA|soma[8]~17\ : std_logic;
SIGNAL \FD|ULA|soma[9]~19\ : std_logic;
SIGNAL \FD|ULA|soma[10]~21\ : std_logic;
SIGNAL \FD|ULA|soma[11]~23\ : std_logic;
SIGNAL \FD|ULA|soma[12]~25\ : std_logic;
SIGNAL \FD|ULA|soma[13]~27\ : std_logic;
SIGNAL \FD|ULA|soma[14]~29\ : std_logic;
SIGNAL \FD|ULA|soma[15]~31\ : std_logic;
SIGNAL \FD|ULA|soma[16]~33\ : std_logic;
SIGNAL \FD|ULA|soma[17]~35\ : std_logic;
SIGNAL \FD|ULA|soma[18]~37\ : std_logic;
SIGNAL \FD|ULA|soma[19]~39\ : std_logic;
SIGNAL \FD|ULA|soma[20]~41\ : std_logic;
SIGNAL \FD|ULA|soma[21]~43\ : std_logic;
SIGNAL \FD|ULA|soma[22]~45\ : std_logic;
SIGNAL \FD|ULA|soma[23]~47\ : std_logic;
SIGNAL \FD|ULA|soma[24]~49\ : std_logic;
SIGNAL \FD|ULA|soma[25]~51\ : std_logic;
SIGNAL \FD|ULA|soma[26]~53\ : std_logic;
SIGNAL \FD|ULA|soma[27]~55\ : std_logic;
SIGNAL \FD|ULA|soma[28]~57\ : std_logic;
SIGNAL \FD|ULA|soma[29]~59\ : std_logic;
SIGNAL \FD|ULA|soma[30]~61\ : std_logic;
SIGNAL \FD|ULA|soma[31]~62_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~2_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s1[31]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s3[21]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s3[26]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s3[27]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s3[29]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s3[31]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[31]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[20]~22_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[20]~23_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[0]~3_combout\ : std_logic;
SIGNAL \FD|ULA|soma[30]~60_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~2_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s1[30]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[30]~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|BR|saidaB[29]~5_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[29]~2_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~58_combout\ : std_logic;
SIGNAL \FD|ULA|soma[29]~58_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~2_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s1[29]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[29]~2_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[28]~6_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[28]~7_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[28]~3_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~56_combout\ : std_logic;
SIGNAL \FD|ULA|soma[28]~56_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[28]~3_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|BR|saidaB[27]~9_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[27]~4_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~54_combout\ : std_logic;
SIGNAL \FD|ULA|soma[27]~54_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~2_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s1[27]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[27]~4_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[18]~26_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[18]~27_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s3[18]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|ULA|Add1~52_combout\ : std_logic;
SIGNAL \FD|ULA|soma[26]~52_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~2_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s1[26]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[26]~5_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|BR|saidaB[25]~13_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[25]~6_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~50_combout\ : std_logic;
SIGNAL \FD|ULA|soma[25]~50_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~2_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s1[25]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[25]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|BR|saidaB[24]~15_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[24]~7_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~48_combout\ : std_logic;
SIGNAL \FD|ULA|soma[24]~48_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[24]~7_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|BR|saidaA[23]~17_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~46_combout\ : std_logic;
SIGNAL \FD|ULA|soma[23]~46_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~2_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s1[23]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[23]~8_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[22]~18_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[22]~19_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~44_combout\ : std_logic;
SIGNAL \FD|ULA|soma[22]~44_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[22]~9_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|BR|saidaB[21]~21_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[21]~10_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~42_combout\ : std_logic;
SIGNAL \FD|ULA|soma[21]~42_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[21]~10_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|BR|saidaA[20]~23_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~40_combout\ : std_logic;
SIGNAL \FD|ULA|soma[20]~40_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[20]~11_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|BR|saidaB[19]~25_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[19]~12_combout\ : std_logic;
SIGNAL \FD|ULA|soma[19]~38_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~38_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[19]~12_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|BR|saidaA[18]~27_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~36_combout\ : std_logic;
SIGNAL \FD|ULA|soma[18]~36_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[18]~13_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|BR|saidaB[3]~57_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s3[9]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s3[10]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s3[11]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s3[12]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s3[15]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s3[16]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s3[17]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|ULA|Add1~34_combout\ : std_logic;
SIGNAL \FD|ULA|soma[17]~34_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~2_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[17]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|BR|saidaB[16]~31_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[16]~15_combout\ : std_logic;
SIGNAL \FD|ULA|soma[16]~32_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~32_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~2_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s1[16]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[16]~15_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|BR|saidaB[15]~33_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[15]~16_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~30_combout\ : std_logic;
SIGNAL \FD|ULA|soma[15]~30_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~2_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s1[15]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[15]~16_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|BR|saidaA[14]~35_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~28_combout\ : std_logic;
SIGNAL \FD|ULA|soma[14]~28_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[14]~17_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|BR|saidaB[13]~37_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[13]~18_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~26_combout\ : std_logic;
SIGNAL \FD|ULA|soma[13]~26_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~2_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s1[13]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[13]~18_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|BR|saidaB[12]~39_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[12]~19_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~24_combout\ : std_logic;
SIGNAL \FD|ULA|soma[12]~24_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~4_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[12]~19_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[1]~60_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[1]~61_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|ULA|soma[11]~22_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~22_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~2_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[11]~20_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|BR|saidaB[10]~43_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[10]~21_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~20_combout\ : std_logic;
SIGNAL \FD|ULA|soma[10]~20_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[10]~21_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|BR|saidaB[9]~45_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[9]~22_combout\ : std_logic;
SIGNAL \FD|ULA|soma[9]~18_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~18_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[9]~22_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|BR|saidaB[8]~47_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[8]~23_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~16_combout\ : std_logic;
SIGNAL \FD|ULA|soma[8]~16_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[8]~23_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[7]~48_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[7]~49_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~14_combout\ : std_logic;
SIGNAL \FD|ULA|soma[7]~14_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~2_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s1[7]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[7]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|BR|saidaA[6]~51_combout\ : std_logic;
SIGNAL \FD|ULA|soma[6]~12_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~12_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[6]~25_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[5]~52_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[5]~53_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~10_combout\ : std_logic;
SIGNAL \FD|ULA|soma[5]~10_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[5]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|BR|saidaB[4]~55_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[4]~27_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~8_combout\ : std_logic;
SIGNAL \FD|ULA|soma[4]~8_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~2_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s1[4]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[4]~27_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[3]~56_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[3]~57_combout\ : std_logic;
SIGNAL \FD|ULA|soma[3]~6_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~6_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[3]~28_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[2]~58_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[2]~59_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[2]~29_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~4_combout\ : std_logic;
SIGNAL \FD|ULA|soma[2]~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~2_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s1[2]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[2]~29_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[1]~60_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[1]~61_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~2_combout\ : std_logic;
SIGNAL \FD|ULA|soma[1]~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~2_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s1[1]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[1]~30_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[0]~63_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s3[0]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \FD|ULA|soma[0]~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~5_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~6_combout\ : std_logic;
SIGNAL \FD|MEMWB|data_s1[0]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[0]~31_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|BR|saidaA[30]~3_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~60_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~0_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~2_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~3_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~4_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~5_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~1_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~6_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~7_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~8_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~9_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~10_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s2~q\ : std_logic;
SIGNAL \FD|sel_mux_beq~combout\ : std_logic;
SIGNAL \FD|FID|data_s1[0]~feeder_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[0]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[0]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|Somador|saida[7]~11\ : std_logic;
SIGNAL \FD|Somador|saida[8]~12_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[8]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[7]~41\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[8]~42_combout\ : std_logic;
SIGNAL \FD|PC|data_s[8]~6_combout\ : std_logic;
SIGNAL \FD|Somador|saida[8]~13\ : std_logic;
SIGNAL \FD|Somador|saida[9]~14_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[9]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[8]~43\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[9]~44_combout\ : std_logic;
SIGNAL \FD|PC|data_s[9]~7_combout\ : std_logic;
SIGNAL \FD|Somador|saida[9]~15\ : std_logic;
SIGNAL \FD|Somador|saida[10]~16_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[10]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[9]~45\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[10]~46_combout\ : std_logic;
SIGNAL \FD|PC|data_s[10]~8_combout\ : std_logic;
SIGNAL \FD|Somador|saida[10]~17\ : std_logic;
SIGNAL \FD|Somador|saida[11]~18_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[11]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[10]~47\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[11]~48_combout\ : std_logic;
SIGNAL \FD|PC|data_s[11]~9_combout\ : std_logic;
SIGNAL \FD|Somador|saida[11]~19\ : std_logic;
SIGNAL \FD|Somador|saida[12]~20_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[12]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[11]~49\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[12]~50_combout\ : std_logic;
SIGNAL \FD|PC|data_s[12]~10_combout\ : std_logic;
SIGNAL \FD|Somador|saida[12]~21\ : std_logic;
SIGNAL \FD|Somador|saida[13]~22_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[13]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[12]~51\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[13]~52_combout\ : std_logic;
SIGNAL \FD|PC|data_s[13]~11_combout\ : std_logic;
SIGNAL \FD|Somador|saida[13]~23\ : std_logic;
SIGNAL \FD|Somador|saida[14]~24_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[14]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[13]~53\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[14]~54_combout\ : std_logic;
SIGNAL \FD|PC|data_s[14]~12_combout\ : std_logic;
SIGNAL \FD|Somador|saida[14]~25\ : std_logic;
SIGNAL \FD|Somador|saida[15]~26_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[15]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[14]~55\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[15]~56_combout\ : std_logic;
SIGNAL \FD|PC|data_s[15]~13_combout\ : std_logic;
SIGNAL \FD|Somador|saida[15]~27\ : std_logic;
SIGNAL \FD|Somador|saida[16]~28_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[16]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[15]~57\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[16]~58_combout\ : std_logic;
SIGNAL \FD|PC|data_s[16]~14_combout\ : std_logic;
SIGNAL \FD|Somador|saida[16]~29\ : std_logic;
SIGNAL \FD|Somador|saida[17]~30_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[17]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[16]~59\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[17]~60_combout\ : std_logic;
SIGNAL \FD|PC|data_s[17]~15_combout\ : std_logic;
SIGNAL \FD|Somador|saida[17]~31\ : std_logic;
SIGNAL \FD|Somador|saida[18]~32_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[18]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[17]~61\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[18]~62_combout\ : std_logic;
SIGNAL \FD|PC|data_s[18]~16_combout\ : std_logic;
SIGNAL \FD|Somador|saida[18]~33\ : std_logic;
SIGNAL \FD|Somador|saida[19]~34_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[19]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[18]~63\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[19]~64_combout\ : std_logic;
SIGNAL \FD|PC|data_s[19]~17_combout\ : std_logic;
SIGNAL \FD|Somador|saida[19]~35\ : std_logic;
SIGNAL \FD|Somador|saida[20]~36_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[20]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[19]~65\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[20]~66_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[20]~1_combout\ : std_logic;
SIGNAL \FD|Somador|saida[20]~37\ : std_logic;
SIGNAL \FD|Somador|saida[21]~38_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[21]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[20]~67\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[21]~68_combout\ : std_logic;
SIGNAL \FD|PC|data_s[21]~18_combout\ : std_logic;
SIGNAL \FD|Somador|saida[21]~39\ : std_logic;
SIGNAL \FD|Somador|saida[22]~40_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[22]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[21]~69\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[22]~70_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[22]~2_combout\ : std_logic;
SIGNAL \FD|Somador|saida[22]~41\ : std_logic;
SIGNAL \FD|Somador|saida[23]~42_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[23]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[22]~71\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[23]~72_combout\ : std_logic;
SIGNAL \FD|PC|data_s[23]~19_combout\ : std_logic;
SIGNAL \FD|Somador|saida[23]~43\ : std_logic;
SIGNAL \FD|Somador|saida[24]~44_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[24]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[23]~73\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[24]~74_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[24]~3_combout\ : std_logic;
SIGNAL \FD|Somador|saida[24]~45\ : std_logic;
SIGNAL \FD|Somador|saida[25]~46_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[25]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[24]~75\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[25]~76_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[25]~4_combout\ : std_logic;
SIGNAL \FD|Somador|saida[25]~47\ : std_logic;
SIGNAL \FD|Somador|saida[26]~48_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[26]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[25]~77\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[26]~78_combout\ : std_logic;
SIGNAL \FD|PC|data_s[26]~20_combout\ : std_logic;
SIGNAL \FD|Somador|saida[26]~49\ : std_logic;
SIGNAL \FD|Somador|saida[27]~50_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[27]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[26]~79\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[27]~80_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[27]~5_combout\ : std_logic;
SIGNAL \FD|Somador|saida[27]~51\ : std_logic;
SIGNAL \FD|Somador|saida[28]~52_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[28]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[27]~81\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[28]~82_combout\ : std_logic;
SIGNAL \FD|PC|data_s[28]~21_combout\ : std_logic;
SIGNAL \FD|Somador|saida[28]~53\ : std_logic;
SIGNAL \FD|Somador|saida[29]~54_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[29]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[28]~83\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[29]~84_combout\ : std_logic;
SIGNAL \FD|PC|data_s[29]~22_combout\ : std_logic;
SIGNAL \FD|Somador|saida[29]~55\ : std_logic;
SIGNAL \FD|Somador|saida[30]~56_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[30]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[29]~85\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[30]~86_combout\ : std_logic;
SIGNAL \FD|PC|data_s[30]~23_combout\ : std_logic;
SIGNAL \FD|Somador|saida[30]~57\ : std_logic;
SIGNAL \FD|Somador|saida[31]~58_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s[31]~feeder_combout\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[30]~87\ : std_logic;
SIGNAL \FD|EXMEM|data_s6[31]~88_combout\ : std_logic;
SIGNAL \FD|PC|data_s[31]~24_combout\ : std_logic;
SIGNAL \H0|saida7seg[0]~0_combout\ : std_logic;
SIGNAL \H0|saida7seg[1]~1_combout\ : std_logic;
SIGNAL \H0|saida7seg[2]~2_combout\ : std_logic;
SIGNAL \H0|saida7seg[3]~3_combout\ : std_logic;
SIGNAL \H0|saida7seg[4]~4_combout\ : std_logic;
SIGNAL \H0|saida7seg[5]~5_combout\ : std_logic;
SIGNAL \H0|saida7seg[6]~6_combout\ : std_logic;
SIGNAL \H1|saida7seg[0]~0_combout\ : std_logic;
SIGNAL \H1|saida7seg[1]~1_combout\ : std_logic;
SIGNAL \H1|saida7seg[2]~2_combout\ : std_logic;
SIGNAL \H1|saida7seg[3]~3_combout\ : std_logic;
SIGNAL \H1|saida7seg[4]~4_combout\ : std_logic;
SIGNAL \H1|saida7seg[5]~5_combout\ : std_logic;
SIGNAL \H1|saida7seg[6]~6_combout\ : std_logic;
SIGNAL \H2|saida7seg[0]~0_combout\ : std_logic;
SIGNAL \H2|saida7seg[1]~1_combout\ : std_logic;
SIGNAL \H2|saida7seg[2]~2_combout\ : std_logic;
SIGNAL \H2|saida7seg[3]~3_combout\ : std_logic;
SIGNAL \H2|saida7seg[4]~4_combout\ : std_logic;
SIGNAL \H2|saida7seg[5]~5_combout\ : std_logic;
SIGNAL \H2|saida7seg[6]~6_combout\ : std_logic;
SIGNAL \H3|saida7seg[0]~0_combout\ : std_logic;
SIGNAL \H3|saida7seg[1]~1_combout\ : std_logic;
SIGNAL \H3|saida7seg[2]~2_combout\ : std_logic;
SIGNAL \H3|saida7seg[3]~3_combout\ : std_logic;
SIGNAL \H3|saida7seg[4]~4_combout\ : std_logic;
SIGNAL \H3|saida7seg[5]~5_combout\ : std_logic;
SIGNAL \H3|saida7seg[6]~6_combout\ : std_logic;
SIGNAL \H4|saida7seg[0]~0_combout\ : std_logic;
SIGNAL \H4|saida7seg[1]~1_combout\ : std_logic;
SIGNAL \H4|saida7seg[2]~2_combout\ : std_logic;
SIGNAL \H4|saida7seg[4]~3_combout\ : std_logic;
SIGNAL \H4|saida7seg[4]~4_combout\ : std_logic;
SIGNAL \H4|saida7seg[5]~5_combout\ : std_logic;
SIGNAL \H4|saida7seg[6]~6_combout\ : std_logic;
SIGNAL \H5|saida7seg[0]~0_combout\ : std_logic;
SIGNAL \H5|saida7seg[1]~1_combout\ : std_logic;
SIGNAL \H5|saida7seg[2]~2_combout\ : std_logic;
SIGNAL \H5|saida7seg[3]~3_combout\ : std_logic;
SIGNAL \H5|saida7seg[4]~4_combout\ : std_logic;
SIGNAL \H5|saida7seg[5]~5_combout\ : std_logic;
SIGNAL \H5|saida7seg[6]~6_combout\ : std_logic;
SIGNAL \FD|IDEX|data_s3\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \FD|PC|data_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|IDEX|data_s8\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|EXMEM|data_s6\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|IDEX|data_s4\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|IDEX|data_s7\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \FD|IDEX|data_s2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|IDEX|data_s1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|FID|data_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|EXMEM|data_s5\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \FD|FID|data_s1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|IDEX|data_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|MEMWB|data_s3\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \FD|MEMWB|data_s1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|MEMWB|data_s2\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|EXMEM|data_s4\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \FD|EXMEM|data_s3\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|EXMEM|data_s1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|EXMEM|data_s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|IDEX|data_s6\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \H5|ALT_INV_saida7seg[6]~6_combout\ : std_logic;
SIGNAL \H4|ALT_INV_saida7seg[1]~1_combout\ : std_logic;
SIGNAL \H3|ALT_INV_saida7seg[6]~6_combout\ : std_logic;
SIGNAL \H2|ALT_INV_saida7seg[6]~6_combout\ : std_logic;
SIGNAL \H1|ALT_INV_saida7seg[6]~6_combout\ : std_logic;
SIGNAL \H0|ALT_INV_saida7seg[6]~6_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
saida_ULAWF <= ww_saida_ULAWF;
pcWF <= ww_pcWF;
ZWF <= ww_ZWF;
dec_RBWF <= ww_dec_RBWF;
dec_RAWF <= ww_dec_RAWF;
sel_mux_jumpWF <= ww_sel_mux_jumpWF;
sel_mux_beqWF <= ww_sel_mux_beqWF;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|mux_Ula_Memoria|saida[31]~0_combout\ & \FD|mux_Ula_Memoria|saida[30]~1_combout\ & \FD|mux_Ula_Memoria|saida[29]~2_combout\ & 
\FD|mux_Ula_Memoria|saida[28]~3_combout\ & \FD|mux_Ula_Memoria|saida[27]~4_combout\ & \FD|mux_Ula_Memoria|saida[26]~5_combout\ & \FD|mux_Ula_Memoria|saida[25]~6_combout\ & \FD|mux_Ula_Memoria|saida[24]~7_combout\ & \FD|mux_Ula_Memoria|saida[23]~8_combout\
& \FD|mux_Ula_Memoria|saida[22]~9_combout\ & \FD|mux_Ula_Memoria|saida[21]~10_combout\ & \FD|mux_Ula_Memoria|saida[20]~11_combout\ & \FD|mux_Ula_Memoria|saida[19]~12_combout\ & \FD|mux_Ula_Memoria|saida[18]~13_combout\ & 
\FD|mux_Ula_Memoria|saida[17]~14_combout\ & \FD|mux_Ula_Memoria|saida[16]~15_combout\ & \FD|mux_Ula_Memoria|saida[15]~16_combout\ & \FD|mux_Ula_Memoria|saida[14]~17_combout\ & \FD|mux_Ula_Memoria|saida[13]~18_combout\ & 
\FD|mux_Ula_Memoria|saida[12]~19_combout\ & \FD|mux_Ula_Memoria|saida[11]~20_combout\ & \FD|mux_Ula_Memoria|saida[10]~21_combout\ & \FD|mux_Ula_Memoria|saida[9]~22_combout\ & \FD|mux_Ula_Memoria|saida[8]~23_combout\ & 
\FD|mux_Ula_Memoria|saida[7]~24_combout\ & \FD|mux_Ula_Memoria|saida[6]~25_combout\ & \FD|mux_Ula_Memoria|saida[5]~26_combout\ & \FD|mux_Ula_Memoria|saida[4]~27_combout\ & \FD|mux_Ula_Memoria|saida[3]~28_combout\ & \FD|mux_Ula_Memoria|saida[2]~29_combout\
& \FD|mux_Ula_Memoria|saida[1]~30_combout\ & \FD|mux_Ula_Memoria|saida[0]~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|MEMWB|data_s2\(2) & \FD|MEMWB|data_s2\(3) & \FD|MEMWB|data_s2\(2) & \FD|MEMWB|data_s2\(1) & \FD|MEMWB|data_s2\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|mux_Ula_Memoria|saida[31]~0_combout\ & \FD|mux_Ula_Memoria|saida[30]~1_combout\ & \FD|mux_Ula_Memoria|saida[29]~2_combout\ & 
\FD|mux_Ula_Memoria|saida[28]~3_combout\ & \FD|mux_Ula_Memoria|saida[27]~4_combout\ & \FD|mux_Ula_Memoria|saida[26]~5_combout\ & \FD|mux_Ula_Memoria|saida[25]~6_combout\ & \FD|mux_Ula_Memoria|saida[24]~7_combout\ & \FD|mux_Ula_Memoria|saida[23]~8_combout\
& \FD|mux_Ula_Memoria|saida[22]~9_combout\ & \FD|mux_Ula_Memoria|saida[21]~10_combout\ & \FD|mux_Ula_Memoria|saida[20]~11_combout\ & \FD|mux_Ula_Memoria|saida[19]~12_combout\ & \FD|mux_Ula_Memoria|saida[18]~13_combout\ & 
\FD|mux_Ula_Memoria|saida[17]~14_combout\ & \FD|mux_Ula_Memoria|saida[16]~15_combout\ & \FD|mux_Ula_Memoria|saida[15]~16_combout\ & \FD|mux_Ula_Memoria|saida[14]~17_combout\ & \FD|mux_Ula_Memoria|saida[13]~18_combout\ & 
\FD|mux_Ula_Memoria|saida[12]~19_combout\ & \FD|mux_Ula_Memoria|saida[11]~20_combout\ & \FD|mux_Ula_Memoria|saida[10]~21_combout\ & \FD|mux_Ula_Memoria|saida[9]~22_combout\ & \FD|mux_Ula_Memoria|saida[8]~23_combout\ & 
\FD|mux_Ula_Memoria|saida[7]~24_combout\ & \FD|mux_Ula_Memoria|saida[6]~25_combout\ & \FD|mux_Ula_Memoria|saida[5]~26_combout\ & \FD|mux_Ula_Memoria|saida[4]~27_combout\ & \FD|mux_Ula_Memoria|saida[3]~28_combout\ & \FD|mux_Ula_Memoria|saida[2]~29_combout\
& \FD|mux_Ula_Memoria|saida[1]~30_combout\ & \FD|mux_Ula_Memoria|saida[0]~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|MEMWB|data_s2\(2) & \FD|MEMWB|data_s2\(3) & \FD|MEMWB|data_s2\(2) & \FD|MEMWB|data_s2\(1) & \FD|MEMWB|data_s2\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|EXMEM|data_s3\(31) & \FD|EXMEM|data_s3\(30) & \FD|EXMEM|data_s3\(29) & \FD|EXMEM|data_s3\(28) & \FD|EXMEM|data_s3\(27) & \FD|EXMEM|data_s3\(26) & 
\FD|EXMEM|data_s3\(25) & \FD|EXMEM|data_s3\(24) & \FD|EXMEM|data_s3\(23) & \FD|EXMEM|data_s3\(22) & \FD|EXMEM|data_s3\(21) & \FD|EXMEM|data_s3\(20) & \FD|EXMEM|data_s3\(19) & \FD|EXMEM|data_s3\(18));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\FD|EXMEM|data_s1\(7) & \FD|EXMEM|data_s1\(6) & \FD|EXMEM|data_s1\(5) & \FD|EXMEM|data_s1\(4) & \FD|EXMEM|data_s1\(3) & \FD|EXMEM|data_s1\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(1);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(2);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(3);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(4);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(5);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(6);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(7);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(8);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(9);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(10);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(11);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(12);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(13);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\FD|EXMEM|data_s3\(17) & \FD|EXMEM|data_s3\(16) & \FD|EXMEM|data_s3\(15) & \FD|EXMEM|data_s3\(14) & \FD|EXMEM|data_s3\(13) & \FD|EXMEM|data_s3\(12) & \FD|EXMEM|data_s3\(11) & 
\FD|EXMEM|data_s3\(10) & \FD|EXMEM|data_s3\(9) & \FD|EXMEM|data_s3\(8) & \FD|EXMEM|data_s3\(7) & \FD|EXMEM|data_s3\(6) & \FD|EXMEM|data_s3\(5) & \FD|EXMEM|data_s3\(4) & \FD|EXMEM|data_s3\(3) & \FD|EXMEM|data_s3\(2) & 
\FD|EXMEM|data_s3\(1) & \FD|EXMEM|data_s3\(0));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|EXMEM|data_s1\(7) & \FD|EXMEM|data_s1\(6) & \FD|EXMEM|data_s1\(5) & \FD|EXMEM|data_s1\(4) & \FD|EXMEM|data_s1\(3) & \FD|EXMEM|data_s1\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\detector|saida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \detector|saida~combout\);
\H5|ALT_INV_saida7seg[6]~6_combout\ <= NOT \H5|saida7seg[6]~6_combout\;
\H4|ALT_INV_saida7seg[1]~1_combout\ <= NOT \H4|saida7seg[1]~1_combout\;
\H3|ALT_INV_saida7seg[6]~6_combout\ <= NOT \H3|saida7seg[6]~6_combout\;
\H2|ALT_INV_saida7seg[6]~6_combout\ <= NOT \H2|saida7seg[6]~6_combout\;
\H1|ALT_INV_saida7seg[6]~6_combout\ <= NOT \H1|saida7seg[6]~6_combout\;
\H0|ALT_INV_saida7seg[6]~6_combout\ <= NOT \H0|saida7seg[6]~6_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(0),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(8),
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(9),
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(10),
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(11),
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(12),
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(13),
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(14),
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(15),
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(16),
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(17),
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\saida_ULAWF[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux31~6_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[0]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\saida_ULAWF[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux30~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[1]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\saida_ULAWF[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux29~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[2]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\saida_ULAWF[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux28~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[3]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\saida_ULAWF[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux27~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[4]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\saida_ULAWF[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux26~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[5]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\saida_ULAWF[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux25~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[6]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\saida_ULAWF[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux24~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[7]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\saida_ULAWF[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux23~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[8]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\saida_ULAWF[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux22~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[9]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\saida_ULAWF[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux21~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[10]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\saida_ULAWF[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux20~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[11]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\saida_ULAWF[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux19~4_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[12]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\saida_ULAWF[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux18~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[13]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\saida_ULAWF[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux17~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[14]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\saida_ULAWF[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux16~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[15]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\saida_ULAWF[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux15~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[16]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\saida_ULAWF[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux14~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[17]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\saida_ULAWF[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux13~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[18]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\saida_ULAWF[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux12~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[19]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\saida_ULAWF[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux11~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[20]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\saida_ULAWF[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux10~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[21]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\saida_ULAWF[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux9~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[22]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\saida_ULAWF[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux8~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[23]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\saida_ULAWF[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[24]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\saida_ULAWF[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[25]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\saida_ULAWF[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[26]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\saida_ULAWF[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux4~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[27]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\saida_ULAWF[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[28]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\saida_ULAWF[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[29]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\saida_ULAWF[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[30]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\saida_ULAWF[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \saida_ULAWF[31]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\pcWF[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(0),
	devoe => ww_devoe,
	o => \pcWF[0]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\pcWF[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(0),
	devoe => ww_devoe,
	o => \pcWF[1]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\pcWF[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(2),
	devoe => ww_devoe,
	o => \pcWF[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\pcWF[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(3),
	devoe => ww_devoe,
	o => \pcWF[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\pcWF[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(4),
	devoe => ww_devoe,
	o => \pcWF[4]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\pcWF[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(5),
	devoe => ww_devoe,
	o => \pcWF[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\pcWF[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(6),
	devoe => ww_devoe,
	o => \pcWF[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\pcWF[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(7),
	devoe => ww_devoe,
	o => \pcWF[7]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\pcWF[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(8),
	devoe => ww_devoe,
	o => \pcWF[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\pcWF[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(9),
	devoe => ww_devoe,
	o => \pcWF[9]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\pcWF[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(10),
	devoe => ww_devoe,
	o => \pcWF[10]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\pcWF[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(11),
	devoe => ww_devoe,
	o => \pcWF[11]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\pcWF[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(12),
	devoe => ww_devoe,
	o => \pcWF[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\pcWF[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(13),
	devoe => ww_devoe,
	o => \pcWF[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\pcWF[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(14),
	devoe => ww_devoe,
	o => \pcWF[14]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\pcWF[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(15),
	devoe => ww_devoe,
	o => \pcWF[15]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\pcWF[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(16),
	devoe => ww_devoe,
	o => \pcWF[16]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\pcWF[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(17),
	devoe => ww_devoe,
	o => \pcWF[17]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\pcWF[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(18),
	devoe => ww_devoe,
	o => \pcWF[18]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\pcWF[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(19),
	devoe => ww_devoe,
	o => \pcWF[19]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\pcWF[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(20),
	devoe => ww_devoe,
	o => \pcWF[20]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\pcWF[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(21),
	devoe => ww_devoe,
	o => \pcWF[21]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\pcWF[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(22),
	devoe => ww_devoe,
	o => \pcWF[22]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\pcWF[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(23),
	devoe => ww_devoe,
	o => \pcWF[23]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\pcWF[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(24),
	devoe => ww_devoe,
	o => \pcWF[24]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\pcWF[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(25),
	devoe => ww_devoe,
	o => \pcWF[25]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\pcWF[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(26),
	devoe => ww_devoe,
	o => \pcWF[26]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\pcWF[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(27),
	devoe => ww_devoe,
	o => \pcWF[27]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\pcWF[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(28),
	devoe => ww_devoe,
	o => \pcWF[28]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\pcWF[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(29),
	devoe => ww_devoe,
	o => \pcWF[29]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\pcWF[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(30),
	devoe => ww_devoe,
	o => \pcWF[30]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\pcWF[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(31),
	devoe => ww_devoe,
	o => \pcWF[31]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\ZWF~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|EXMEM|data_s2~q\,
	devoe => ww_devoe,
	o => \ZWF~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\dec_RBWF[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[0]~31_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[0]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\dec_RBWF[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[1]~30_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[1]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\dec_RBWF[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[2]~29_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[2]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\dec_RBWF[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[3]~28_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[3]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\dec_RBWF[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[4]~27_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\dec_RBWF[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[5]~26_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[5]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\dec_RBWF[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[6]~25_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[6]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\dec_RBWF[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[7]~24_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[7]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\dec_RBWF[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[8]~23_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[8]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\dec_RBWF[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[9]~22_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[9]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\dec_RBWF[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[10]~21_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[10]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\dec_RBWF[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[11]~20_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[11]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\dec_RBWF[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[12]~19_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[12]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\dec_RBWF[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[13]~18_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[13]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\dec_RBWF[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[14]~17_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[14]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\dec_RBWF[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[15]~16_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[15]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\dec_RBWF[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[16]~15_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[16]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\dec_RBWF[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[17]~14_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[17]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\dec_RBWF[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[18]~13_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[18]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\dec_RBWF[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[19]~12_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[19]~output_o\);

-- Location: IOOBUF_X115_Y43_N9
\dec_RBWF[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[20]~11_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[20]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\dec_RBWF[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[21]~10_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[21]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\dec_RBWF[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[22]~9_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[22]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\dec_RBWF[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[23]~8_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[23]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\dec_RBWF[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[24]~7_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[24]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\dec_RBWF[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[25]~6_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[25]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\dec_RBWF[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[26]~5_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[26]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\dec_RBWF[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[27]~4_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[27]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\dec_RBWF[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[28]~3_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[28]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\dec_RBWF[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[29]~2_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[29]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\dec_RBWF[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[30]~1_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[30]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\dec_RBWF[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|mux_Banco_Ula|saida[31]~0_combout\,
	devoe => ww_devoe,
	o => \dec_RBWF[31]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\dec_RAWF[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(0),
	devoe => ww_devoe,
	o => \dec_RAWF[0]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\dec_RAWF[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(1),
	devoe => ww_devoe,
	o => \dec_RAWF[1]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\dec_RAWF[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(2),
	devoe => ww_devoe,
	o => \dec_RAWF[2]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\dec_RAWF[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(3),
	devoe => ww_devoe,
	o => \dec_RAWF[3]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\dec_RAWF[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(4),
	devoe => ww_devoe,
	o => \dec_RAWF[4]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\dec_RAWF[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(5),
	devoe => ww_devoe,
	o => \dec_RAWF[5]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\dec_RAWF[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(6),
	devoe => ww_devoe,
	o => \dec_RAWF[6]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\dec_RAWF[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(7),
	devoe => ww_devoe,
	o => \dec_RAWF[7]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\dec_RAWF[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(8),
	devoe => ww_devoe,
	o => \dec_RAWF[8]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\dec_RAWF[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(9),
	devoe => ww_devoe,
	o => \dec_RAWF[9]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\dec_RAWF[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(10),
	devoe => ww_devoe,
	o => \dec_RAWF[10]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\dec_RAWF[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(11),
	devoe => ww_devoe,
	o => \dec_RAWF[11]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\dec_RAWF[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(12),
	devoe => ww_devoe,
	o => \dec_RAWF[12]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\dec_RAWF[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(13),
	devoe => ww_devoe,
	o => \dec_RAWF[13]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\dec_RAWF[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(14),
	devoe => ww_devoe,
	o => \dec_RAWF[14]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\dec_RAWF[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(15),
	devoe => ww_devoe,
	o => \dec_RAWF[15]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\dec_RAWF[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(16),
	devoe => ww_devoe,
	o => \dec_RAWF[16]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\dec_RAWF[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(17),
	devoe => ww_devoe,
	o => \dec_RAWF[17]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\dec_RAWF[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(18),
	devoe => ww_devoe,
	o => \dec_RAWF[18]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\dec_RAWF[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(19),
	devoe => ww_devoe,
	o => \dec_RAWF[19]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\dec_RAWF[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(20),
	devoe => ww_devoe,
	o => \dec_RAWF[20]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\dec_RAWF[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(21),
	devoe => ww_devoe,
	o => \dec_RAWF[21]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\dec_RAWF[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(22),
	devoe => ww_devoe,
	o => \dec_RAWF[22]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\dec_RAWF[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(23),
	devoe => ww_devoe,
	o => \dec_RAWF[23]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\dec_RAWF[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(24),
	devoe => ww_devoe,
	o => \dec_RAWF[24]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\dec_RAWF[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(25),
	devoe => ww_devoe,
	o => \dec_RAWF[25]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\dec_RAWF[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(26),
	devoe => ww_devoe,
	o => \dec_RAWF[26]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\dec_RAWF[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(27),
	devoe => ww_devoe,
	o => \dec_RAWF[27]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\dec_RAWF[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(28),
	devoe => ww_devoe,
	o => \dec_RAWF[28]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\dec_RAWF[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(29),
	devoe => ww_devoe,
	o => \dec_RAWF[29]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\dec_RAWF[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(30),
	devoe => ww_devoe,
	o => \dec_RAWF[30]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\dec_RAWF[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|IDEX|data_s1\(31),
	devoe => ww_devoe,
	o => \dec_RAWF[31]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\sel_mux_jumpWF~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|pontosDeControle[0]~0_combout\,
	devoe => ww_devoe,
	o => \sel_mux_jumpWF~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\sel_mux_beqWF~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|sel_mux_beq~combout\,
	devoe => ww_devoe,
	o => \sel_mux_beqWF~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|saida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|saida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|saida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|saida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|saida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|saida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|ALT_INV_saida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|saida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|saida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|saida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|saida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|saida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|saida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|ALT_INV_saida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|saida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|saida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|saida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|saida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|saida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|saida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|ALT_INV_saida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|saida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|saida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|saida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|saida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|saida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|saida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|ALT_INV_saida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|saida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|ALT_INV_saida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|saida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|saida7seg[4]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|saida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|saida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|saida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H5|saida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H5|saida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H5|saida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H5|saida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H5|saida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H5|saida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H5|ALT_INV_saida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X114_Y40_N24
\detector|saidaQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \detector|saidaQ~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \detector|saidaQ~0_combout\);

-- Location: FF_X114_Y40_N15
\detector|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \detector|saidaQ~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detector|saidaQ~q\);

-- Location: LCCOMB_X114_Y40_N14
\detector|saida\ : cycloneive_lcell_comb
-- Equation(s):
-- \detector|saida~combout\ = LCELL((\detector|saidaQ~q\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \detector|saidaQ~q\,
	datad => \KEY[0]~input_o\,
	combout => \detector|saida~combout\);

-- Location: CLKCTRL_G9
\detector|saida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \detector|saida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \detector|saida~clkctrl_outclk\);

-- Location: LCCOMB_X75_Y59_N4
\FD|Somador|saida[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[3]~2_combout\ = (\FD|PC|data_s\(3) & (!\FD|Somador|saida[2]~1\)) # (!\FD|PC|data_s\(3) & ((\FD|Somador|saida[2]~1\) # (GND)))
-- \FD|Somador|saida[3]~3\ = CARRY((!\FD|Somador|saida[2]~1\) # (!\FD|PC|data_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(3),
	datad => VCC,
	cin => \FD|Somador|saida[2]~1\,
	combout => \FD|Somador|saida[3]~2_combout\,
	cout => \FD|Somador|saida[3]~3\);

-- Location: LCCOMB_X75_Y59_N6
\FD|Somador|saida[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[4]~4_combout\ = (\FD|PC|data_s\(4) & (\FD|Somador|saida[3]~3\ $ (GND))) # (!\FD|PC|data_s\(4) & (!\FD|Somador|saida[3]~3\ & VCC))
-- \FD|Somador|saida[4]~5\ = CARRY((\FD|PC|data_s\(4) & !\FD|Somador|saida[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datad => VCC,
	cin => \FD|Somador|saida[3]~3\,
	combout => \FD|Somador|saida[4]~4_combout\,
	cout => \FD|Somador|saida[4]~5\);

-- Location: LCCOMB_X75_Y59_N8
\FD|Somador|saida[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[5]~6_combout\ = (\FD|PC|data_s\(5) & (!\FD|Somador|saida[4]~5\)) # (!\FD|PC|data_s\(5) & ((\FD|Somador|saida[4]~5\) # (GND)))
-- \FD|Somador|saida[5]~7\ = CARRY((!\FD|Somador|saida[4]~5\) # (!\FD|PC|data_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datad => VCC,
	cin => \FD|Somador|saida[4]~5\,
	combout => \FD|Somador|saida[5]~6_combout\,
	cout => \FD|Somador|saida[5]~7\);

-- Location: LCCOMB_X75_Y59_N10
\FD|Somador|saida[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[6]~8_combout\ = (\FD|PC|data_s\(6) & (\FD|Somador|saida[5]~7\ $ (GND))) # (!\FD|PC|data_s\(6) & (!\FD|Somador|saida[5]~7\ & VCC))
-- \FD|Somador|saida[6]~9\ = CARRY((\FD|PC|data_s\(6) & !\FD|Somador|saida[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(6),
	datad => VCC,
	cin => \FD|Somador|saida[5]~7\,
	combout => \FD|Somador|saida[6]~8_combout\,
	cout => \FD|Somador|saida[6]~9\);

-- Location: LCCOMB_X75_Y59_N12
\FD|Somador|saida[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[7]~10_combout\ = (\FD|PC|data_s\(7) & (!\FD|Somador|saida[6]~9\)) # (!\FD|PC|data_s\(7) & ((\FD|Somador|saida[6]~9\) # (GND)))
-- \FD|Somador|saida[7]~11\ = CARRY((!\FD|Somador|saida[6]~9\) # (!\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(7),
	datad => VCC,
	cin => \FD|Somador|saida[6]~9\,
	combout => \FD|Somador|saida[7]~10_combout\,
	cout => \FD|Somador|saida[7]~11\);

-- Location: FF_X75_Y59_N13
\FD|FID|data_s1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(7));

-- Location: LCCOMB_X75_Y57_N8
\FD|IDEX|data_s[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[7]~feeder_combout\ = \FD|FID|data_s1\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s1\(7),
	combout => \FD|IDEX|data_s[7]~feeder_combout\);

-- Location: FF_X75_Y57_N9
\FD|IDEX|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(7));

-- Location: LCCOMB_X75_Y54_N16
\FD|ROM|memROM~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~24_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) $ (((\FD|PC|data_s\(4)) # (\FD|PC|data_s\(5)))))) # (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(4) & (!\FD|PC|data_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~24_combout\);

-- Location: LCCOMB_X75_Y54_N14
\FD|ROM|memROM~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~30_combout\ = (\FD|ROM|memROM~24_combout\ & (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|memROM~24_combout\,
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~30_combout\);

-- Location: LCCOMB_X77_Y54_N4
\FD|FID|data_s[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|FID|data_s[5]~feeder_combout\ = \FD|ROM|memROM~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|memROM~30_combout\,
	combout => \FD|FID|data_s[5]~feeder_combout\);

-- Location: FF_X77_Y54_N5
\FD|FID|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|FID|data_s[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s\(5));

-- Location: LCCOMB_X81_Y54_N6
\FD|IDEX|data_s4[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s4[1]~feeder_combout\ = \FD|FID|data_s\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s\(5),
	combout => \FD|IDEX|data_s4[1]~feeder_combout\);

-- Location: FF_X81_Y54_N7
\FD|IDEX|data_s4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s4[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s4\(1));

-- Location: FF_X75_Y59_N11
\FD|FID|data_s1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(6));

-- Location: LCCOMB_X75_Y57_N6
\FD|IDEX|data_s[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[6]~feeder_combout\ = \FD|FID|data_s1\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s1\(6),
	combout => \FD|IDEX|data_s[6]~feeder_combout\);

-- Location: FF_X75_Y57_N7
\FD|IDEX|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(6));

-- Location: FF_X75_Y59_N9
\FD|FID|data_s1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(5));

-- Location: LCCOMB_X75_Y57_N24
\FD|IDEX|data_s[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[5]~feeder_combout\ = \FD|FID|data_s1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|FID|data_s1\(5),
	combout => \FD|IDEX|data_s[5]~feeder_combout\);

-- Location: FF_X75_Y57_N25
\FD|IDEX|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(5));

-- Location: FF_X75_Y59_N7
\FD|FID|data_s1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(4));

-- Location: LCCOMB_X75_Y57_N26
\FD|IDEX|data_s[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[4]~feeder_combout\ = \FD|FID|data_s1\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s1\(4),
	combout => \FD|IDEX|data_s[4]~feeder_combout\);

-- Location: FF_X75_Y57_N27
\FD|IDEX|data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(4));

-- Location: LCCOMB_X76_Y55_N18
\FD|ROM|memROM~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~21_combout\ = (\FD|PC|data_s\(3) & ((\FD|PC|data_s\(4) & ((!\FD|PC|data_s\(2)))) # (!\FD|PC|data_s\(4) & (!\FD|PC|data_s\(5) & \FD|PC|data_s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(5),
	datac => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~21_combout\);

-- Location: LCCOMB_X76_Y55_N14
\FD|ROM|memROM~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~28_combout\ = (\FD|ROM|memROM~21_combout\ & (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|memROM~21_combout\,
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~28_combout\);

-- Location: FF_X76_Y55_N15
\FD|FID|data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s\(1));

-- Location: FF_X81_Y52_N21
\FD|IDEX|data_s3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|FID|data_s\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s3\(1));

-- Location: FF_X75_Y59_N5
\FD|FID|data_s1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(3));

-- Location: LCCOMB_X75_Y57_N20
\FD|IDEX|data_s[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[3]~feeder_combout\ = \FD|FID|data_s1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s1\(3),
	combout => \FD|IDEX|data_s[3]~feeder_combout\);

-- Location: FF_X75_Y57_N21
\FD|IDEX|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(3));

-- Location: LCCOMB_X75_Y59_N2
\FD|Somador|saida[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[2]~0_combout\ = \FD|PC|data_s\(2) $ (VCC)
-- \FD|Somador|saida[2]~1\ = CARRY(\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(2),
	datad => VCC,
	combout => \FD|Somador|saida[2]~0_combout\,
	cout => \FD|Somador|saida[2]~1\);

-- Location: FF_X75_Y59_N3
\FD|FID|data_s1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(2));

-- Location: FF_X76_Y57_N3
\FD|IDEX|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|FID|data_s1\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(2));

-- Location: LCCOMB_X76_Y57_N2
\FD|EXMEM|data_s6[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[2]~30_combout\ = (\FD|IDEX|data_s3\(0) & (\FD|IDEX|data_s\(2) $ (VCC))) # (!\FD|IDEX|data_s3\(0) & (\FD|IDEX|data_s\(2) & VCC))
-- \FD|EXMEM|data_s6[2]~31\ = CARRY((\FD|IDEX|data_s3\(0) & \FD|IDEX|data_s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(0),
	datab => \FD|IDEX|data_s\(2),
	datad => VCC,
	combout => \FD|EXMEM|data_s6[2]~30_combout\,
	cout => \FD|EXMEM|data_s6[2]~31\);

-- Location: LCCOMB_X76_Y57_N4
\FD|EXMEM|data_s6[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[3]~32_combout\ = (\FD|IDEX|data_s3\(1) & ((\FD|IDEX|data_s\(3) & (\FD|EXMEM|data_s6[2]~31\ & VCC)) # (!\FD|IDEX|data_s\(3) & (!\FD|EXMEM|data_s6[2]~31\)))) # (!\FD|IDEX|data_s3\(1) & ((\FD|IDEX|data_s\(3) & (!\FD|EXMEM|data_s6[2]~31\)) # 
-- (!\FD|IDEX|data_s\(3) & ((\FD|EXMEM|data_s6[2]~31\) # (GND)))))
-- \FD|EXMEM|data_s6[3]~33\ = CARRY((\FD|IDEX|data_s3\(1) & (!\FD|IDEX|data_s\(3) & !\FD|EXMEM|data_s6[2]~31\)) # (!\FD|IDEX|data_s3\(1) & ((!\FD|EXMEM|data_s6[2]~31\) # (!\FD|IDEX|data_s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(1),
	datab => \FD|IDEX|data_s\(3),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[2]~31\,
	combout => \FD|EXMEM|data_s6[3]~32_combout\,
	cout => \FD|EXMEM|data_s6[3]~33\);

-- Location: LCCOMB_X76_Y57_N6
\FD|EXMEM|data_s6[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[4]~34_combout\ = ((\FD|IDEX|data_s3\(2) $ (\FD|IDEX|data_s\(4) $ (!\FD|EXMEM|data_s6[3]~33\)))) # (GND)
-- \FD|EXMEM|data_s6[4]~35\ = CARRY((\FD|IDEX|data_s3\(2) & ((\FD|IDEX|data_s\(4)) # (!\FD|EXMEM|data_s6[3]~33\))) # (!\FD|IDEX|data_s3\(2) & (\FD|IDEX|data_s\(4) & !\FD|EXMEM|data_s6[3]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(2),
	datab => \FD|IDEX|data_s\(4),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[3]~33\,
	combout => \FD|EXMEM|data_s6[4]~34_combout\,
	cout => \FD|EXMEM|data_s6[4]~35\);

-- Location: LCCOMB_X76_Y57_N8
\FD|EXMEM|data_s6[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[5]~36_combout\ = (\FD|IDEX|data_s3\(3) & ((\FD|IDEX|data_s\(5) & (\FD|EXMEM|data_s6[4]~35\ & VCC)) # (!\FD|IDEX|data_s\(5) & (!\FD|EXMEM|data_s6[4]~35\)))) # (!\FD|IDEX|data_s3\(3) & ((\FD|IDEX|data_s\(5) & (!\FD|EXMEM|data_s6[4]~35\)) # 
-- (!\FD|IDEX|data_s\(5) & ((\FD|EXMEM|data_s6[4]~35\) # (GND)))))
-- \FD|EXMEM|data_s6[5]~37\ = CARRY((\FD|IDEX|data_s3\(3) & (!\FD|IDEX|data_s\(5) & !\FD|EXMEM|data_s6[4]~35\)) # (!\FD|IDEX|data_s3\(3) & ((!\FD|EXMEM|data_s6[4]~35\) # (!\FD|IDEX|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(3),
	datab => \FD|IDEX|data_s\(5),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[4]~35\,
	combout => \FD|EXMEM|data_s6[5]~36_combout\,
	cout => \FD|EXMEM|data_s6[5]~37\);

-- Location: LCCOMB_X76_Y57_N10
\FD|EXMEM|data_s6[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[6]~38_combout\ = ((\FD|IDEX|data_s3\(4) $ (\FD|IDEX|data_s\(6) $ (!\FD|EXMEM|data_s6[5]~37\)))) # (GND)
-- \FD|EXMEM|data_s6[6]~39\ = CARRY((\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(6)) # (!\FD|EXMEM|data_s6[5]~37\))) # (!\FD|IDEX|data_s3\(4) & (\FD|IDEX|data_s\(6) & !\FD|EXMEM|data_s6[5]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s\(6),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[5]~37\,
	combout => \FD|EXMEM|data_s6[6]~38_combout\,
	cout => \FD|EXMEM|data_s6[6]~39\);

-- Location: LCCOMB_X76_Y57_N12
\FD|EXMEM|data_s6[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[7]~40_combout\ = (\FD|IDEX|data_s\(7) & ((\FD|IDEX|data_s4\(1) & (\FD|EXMEM|data_s6[6]~39\ & VCC)) # (!\FD|IDEX|data_s4\(1) & (!\FD|EXMEM|data_s6[6]~39\)))) # (!\FD|IDEX|data_s\(7) & ((\FD|IDEX|data_s4\(1) & (!\FD|EXMEM|data_s6[6]~39\)) 
-- # (!\FD|IDEX|data_s4\(1) & ((\FD|EXMEM|data_s6[6]~39\) # (GND)))))
-- \FD|EXMEM|data_s6[7]~41\ = CARRY((\FD|IDEX|data_s\(7) & (!\FD|IDEX|data_s4\(1) & !\FD|EXMEM|data_s6[6]~39\)) # (!\FD|IDEX|data_s\(7) & ((!\FD|EXMEM|data_s6[6]~39\) # (!\FD|IDEX|data_s4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s\(7),
	datab => \FD|IDEX|data_s4\(1),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[6]~39\,
	combout => \FD|EXMEM|data_s6[7]~40_combout\,
	cout => \FD|EXMEM|data_s6[7]~41\);

-- Location: FF_X76_Y57_N13
\FD|EXMEM|data_s6[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(7));

-- Location: LCCOMB_X76_Y59_N10
\FD|PC|data_s[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[7]~5_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|EXMEM|data_s6\(7)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[7]~10_combout\,
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|EXMEM|data_s6\(7),
	combout => \FD|PC|data_s[7]~5_combout\);

-- Location: LCCOMB_X76_Y55_N16
\FD|ROM|memROM~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~12_combout\ = (\FD|PC|data_s\(4)) # ((\FD|PC|data_s\(3) & ((\FD|PC|data_s\(2)) # (!\FD|PC|data_s\(6)))) # (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~12_combout\);

-- Location: LCCOMB_X75_Y55_N24
\FD|ROM|memROM~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~13_combout\ = (!\FD|PC|data_s\(7) & (!\FD|PC|data_s\(5) & !\FD|ROM|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datab => \FD|PC|data_s\(5),
	datad => \FD|ROM|memROM~12_combout\,
	combout => \FD|ROM|memROM~13_combout\);

-- Location: FF_X75_Y55_N25
\FD|FID|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s\(27));

-- Location: LCCOMB_X76_Y55_N24
\FD|ROM|memROM~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~16_combout\ = (!\FD|PC|data_s\(2) & \FD|ROM|memROM~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(2),
	datad => \FD|ROM|memROM~15_combout\,
	combout => \FD|ROM|memROM~16_combout\);

-- Location: FF_X76_Y55_N25
\FD|FID|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s\(29));

-- Location: LCCOMB_X75_Y55_N8
\UC|pontosDeControle[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[0]~0_combout\ = (!\FD|FID|data_s\(31) & (\FD|FID|data_s\(27) & (!\FD|FID|data_s\(28) & !\FD|FID|data_s\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|FID|data_s\(31),
	datab => \FD|FID|data_s\(27),
	datac => \FD|FID|data_s\(28),
	datad => \FD|FID|data_s\(29),
	combout => \UC|pontosDeControle[0]~0_combout\);

-- Location: FF_X76_Y59_N11
\FD|PC|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[7]~5_combout\,
	asdata => \FD|FID|data_s\(5),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(7));

-- Location: LCCOMB_X75_Y54_N0
\FD|ROM|memROM~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~14_combout\ = (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~14_combout\);

-- Location: LCCOMB_X75_Y54_N22
\FD|ROM|memROM~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~17_combout\ = (\FD|PC|data_s\(4) & \FD|PC|data_s\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~17_combout\);

-- Location: LCCOMB_X75_Y54_N12
\FD|ROM|memROM~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~18_combout\ = (\FD|ROM|memROM~14_combout\ & (!\FD|PC|data_s\(2) & (\FD|ROM|memROM~17_combout\ & \FD|PC|data_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~14_combout\,
	datab => \FD|PC|data_s\(2),
	datac => \FD|ROM|memROM~17_combout\,
	datad => \FD|PC|data_s\(3),
	combout => \FD|ROM|memROM~18_combout\);

-- Location: FF_X75_Y54_N13
\FD|FID|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s\(28));

-- Location: FF_X81_Y52_N5
\FD|IDEX|data_s3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|FID|data_s\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s3\(4));

-- Location: FF_X76_Y57_N11
\FD|EXMEM|data_s6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[6]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(6));

-- Location: LCCOMB_X76_Y59_N16
\FD|PC|data_s[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[6]~4_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|EXMEM|data_s6\(6)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[6]~8_combout\,
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|EXMEM|data_s6\(6),
	combout => \FD|PC|data_s[6]~4_combout\);

-- Location: FF_X76_Y59_N17
\FD|PC|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[6]~4_combout\,
	asdata => \FD|FID|data_s\(28),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(6));

-- Location: LCCOMB_X76_Y55_N22
\FD|ROM|memROM~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~19_combout\ = (\FD|PC|data_s\(4) & (!\FD|PC|data_s\(3) & (!\FD|PC|data_s\(6) & \FD|PC|data_s\(2)))) # (!\FD|PC|data_s\(4) & (\FD|PC|data_s\(3) & (\FD|PC|data_s\(6) & !\FD|PC|data_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~19_combout\);

-- Location: LCCOMB_X76_Y55_N8
\FD|ROM|memROM~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~20_combout\ = (!\FD|PC|data_s\(5) & (\FD|ROM|memROM~19_combout\ & !\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(5),
	datac => \FD|ROM|memROM~19_combout\,
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~20_combout\);

-- Location: FF_X76_Y55_N9
\FD|FID|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s\(0));

-- Location: FF_X81_Y52_N19
\FD|IDEX|data_s3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|FID|data_s\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s3\(0));

-- Location: LCCOMB_X76_Y55_N12
\FD|EXMEM|data_s6[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[2]~feeder_combout\ = \FD|EXMEM|data_s6[2]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s6[2]~30_combout\,
	combout => \FD|EXMEM|data_s6[2]~feeder_combout\);

-- Location: FF_X76_Y55_N13
\FD|EXMEM|data_s6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(2));

-- Location: LCCOMB_X76_Y55_N20
\FD|PC|data_s[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[2]~0_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(2))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|EXMEM|data_s6\(2),
	datab => \FD|Somador|saida[2]~0_combout\,
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[2]~0_combout\);

-- Location: FF_X76_Y55_N21
\FD|PC|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[2]~0_combout\,
	asdata => \FD|FID|data_s\(0),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(2));

-- Location: FF_X76_Y57_N5
\FD|EXMEM|data_s6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[3]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(3));

-- Location: LCCOMB_X76_Y55_N10
\FD|PC|data_s[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[3]~1_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|EXMEM|data_s6\(3)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[3]~2_combout\,
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|EXMEM|data_s6\(3),
	combout => \FD|PC|data_s[3]~1_combout\);

-- Location: FF_X76_Y55_N11
\FD|PC|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[3]~1_combout\,
	asdata => \FD|FID|data_s\(1),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(3));

-- Location: LCCOMB_X76_Y55_N28
\FD|ROM|memROM~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~23_combout\ = (\FD|PC|data_s\(4) & (((\FD|PC|data_s\(2)) # (!\FD|PC|data_s\(3))))) # (!\FD|PC|data_s\(4) & ((\FD|PC|data_s\(5)) # ((\FD|PC|data_s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(5),
	datac => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~23_combout\);

-- Location: LCCOMB_X76_Y55_N26
\FD|ROM|memROM~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~29_combout\ = (!\FD|ROM|memROM~23_combout\ & (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|memROM~23_combout\,
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~29_combout\);

-- Location: FF_X76_Y55_N27
\FD|FID|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s\(3));

-- Location: FF_X81_Y52_N13
\FD|IDEX|data_s3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|FID|data_s\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s3\(3));

-- Location: FF_X76_Y57_N9
\FD|EXMEM|data_s6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(5));

-- Location: LCCOMB_X76_Y55_N0
\FD|PC|data_s[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[5]~3_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(5))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|EXMEM|data_s6\(5),
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[5]~6_combout\,
	combout => \FD|PC|data_s[5]~3_combout\);

-- Location: FF_X76_Y55_N1
\FD|PC|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[5]~3_combout\,
	asdata => \FD|FID|data_s\(3),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(5));

-- Location: LCCOMB_X75_Y55_N6
\FD|ROM|memROM~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~22_combout\ = (\FD|PC|data_s\(4) & (!\FD|PC|data_s\(5) & (!\FD|PC|data_s\(3) & \FD|ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(5),
	datac => \FD|PC|data_s\(3),
	datad => \FD|ROM|memROM~14_combout\,
	combout => \FD|ROM|memROM~22_combout\);

-- Location: FF_X75_Y55_N7
\FD|FID|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s\(2));

-- Location: FF_X81_Y52_N15
\FD|IDEX|data_s3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|FID|data_s\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s3\(2));

-- Location: FF_X76_Y57_N7
\FD|EXMEM|data_s6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(4));

-- Location: LCCOMB_X75_Y55_N16
\FD|PC|data_s[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[4]~2_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(4))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|EXMEM|data_s6\(4),
	datad => \FD|Somador|saida[4]~4_combout\,
	combout => \FD|PC|data_s[4]~2_combout\);

-- Location: FF_X75_Y55_N17
\FD|PC|data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[4]~2_combout\,
	asdata => \FD|FID|data_s\(2),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(4));

-- Location: LCCOMB_X75_Y55_N22
\FD|ROM|memROM~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~15_combout\ = (!\FD|PC|data_s\(4) & (!\FD|PC|data_s\(5) & (!\FD|PC|data_s\(3) & \FD|ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(5),
	datac => \FD|PC|data_s\(3),
	datad => \FD|ROM|memROM~14_combout\,
	combout => \FD|ROM|memROM~15_combout\);

-- Location: FF_X75_Y55_N23
\FD|FID|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s\(31));

-- Location: LCCOMB_X75_Y55_N4
\UC|pontosDeControle[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[1]~1_combout\ = (!\FD|FID|data_s\(31) & (!\FD|FID|data_s\(27) & (\FD|FID|data_s\(28) & !\FD|FID|data_s\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|FID|data_s\(31),
	datab => \FD|FID|data_s\(27),
	datac => \FD|FID|data_s\(28),
	datad => \FD|FID|data_s\(29),
	combout => \UC|pontosDeControle[1]~1_combout\);

-- Location: FF_X81_Y54_N15
\FD|IDEX|data_s7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \UC|pontosDeControle[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s7\(0));

-- Location: FF_X81_Y54_N1
\FD|EXMEM|data_s5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s7\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s5\(0));

-- Location: LCCOMB_X84_Y51_N18
\FD|BR|bancoReg_rtl_0_bypass[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\);

-- Location: FF_X84_Y51_N19
\FD|BR|bancoReg_rtl_0_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(72));

-- Location: LCCOMB_X75_Y55_N30
\UC|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal4~0_combout\ = (!\FD|FID|data_s\(31) & (!\FD|FID|data_s\(27) & (!\FD|FID|data_s\(28) & !\FD|FID|data_s\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|FID|data_s\(31),
	datab => \FD|FID|data_s\(27),
	datac => \FD|FID|data_s\(28),
	datad => \FD|FID|data_s\(29),
	combout => \UC|Equal4~0_combout\);

-- Location: FF_X75_Y55_N31
\FD|IDEX|data_s8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \UC|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s8\(1));

-- Location: LCCOMB_X77_Y54_N0
\FD|mux_Rd_Rt|saida[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[2]~2_combout\ = (\FD|IDEX|data_s3\(4) & \FD|IDEX|data_s8\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|IDEX|data_s3\(4),
	datad => \FD|IDEX|data_s8\(1),
	combout => \FD|mux_Rd_Rt|saida[2]~2_combout\);

-- Location: FF_X77_Y54_N1
\FD|EXMEM|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Rd_Rt|saida[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s\(2));

-- Location: LCCOMB_X77_Y54_N16
\FD|MEMWB|data_s2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s2[2]~feeder_combout\ = \FD|EXMEM|data_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s\(2),
	combout => \FD|MEMWB|data_s2[2]~feeder_combout\);

-- Location: FF_X77_Y54_N17
\FD|MEMWB|data_s2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s2[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s2\(2));

-- Location: LCCOMB_X76_Y53_N22
\FD|BR|bancoReg_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[5]~feeder_combout\ = \FD|MEMWB|data_s2\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MEMWB|data_s2\(2),
	combout => \FD|BR|bancoReg_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X76_Y53_N23
\FD|BR|bancoReg_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(5));

-- Location: LCCOMB_X76_Y53_N28
\FD|BR|bancoReg_rtl_0_bypass[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[9]~feeder_combout\ = \FD|MEMWB|data_s2\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MEMWB|data_s2\(2),
	combout => \FD|BR|bancoReg_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X76_Y53_N29
\FD|BR|bancoReg_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(9));

-- Location: LCCOMB_X77_Y54_N10
\FD|mux_Rd_Rt|saida[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[1]~1_combout\ = (\FD|IDEX|data_s8\(1) & (\FD|IDEX|data_s3\(4))) # (!\FD|IDEX|data_s8\(1) & ((\FD|IDEX|data_s4\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datac => \FD|IDEX|data_s4\(1),
	datad => \FD|IDEX|data_s8\(1),
	combout => \FD|mux_Rd_Rt|saida[1]~1_combout\);

-- Location: FF_X77_Y54_N11
\FD|EXMEM|data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Rd_Rt|saida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s\(1));

-- Location: LCCOMB_X77_Y54_N30
\FD|MEMWB|data_s2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s2[1]~feeder_combout\ = \FD|EXMEM|data_s\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s\(1),
	combout => \FD|MEMWB|data_s2[1]~feeder_combout\);

-- Location: FF_X77_Y54_N31
\FD|MEMWB|data_s2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s2[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s2\(1));

-- Location: FF_X76_Y53_N5
\FD|BR|bancoReg_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|MEMWB|data_s2\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(3));

-- Location: LCCOMB_X75_Y55_N0
\FD|IDEX|data_s7[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s7[2]~0_combout\ = (!\FD|FID|data_s\(28) & (!\FD|FID|data_s\(29) & (\FD|FID|data_s\(31) $ (!\FD|FID|data_s\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|FID|data_s\(31),
	datab => \FD|FID|data_s\(27),
	datac => \FD|FID|data_s\(28),
	datad => \FD|FID|data_s\(29),
	combout => \FD|IDEX|data_s7[2]~0_combout\);

-- Location: FF_X75_Y55_N1
\FD|IDEX|data_s6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s7[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s6\(1));

-- Location: LCCOMB_X75_Y55_N28
\FD|EXMEM|data_s4[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s4[1]~feeder_combout\ = \FD|IDEX|data_s6\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|IDEX|data_s6\(1),
	combout => \FD|EXMEM|data_s4[1]~feeder_combout\);

-- Location: FF_X75_Y55_N29
\FD|EXMEM|data_s4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s4[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s4\(1));

-- Location: LCCOMB_X75_Y55_N10
\FD|MEMWB|data_s3[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s3[1]~feeder_combout\ = \FD|EXMEM|data_s4\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s4\(1),
	combout => \FD|MEMWB|data_s3[1]~feeder_combout\);

-- Location: FF_X75_Y55_N11
\FD|MEMWB|data_s3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s3[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s3\(1));

-- Location: LCCOMB_X76_Y53_N2
\FD|BR|bancoReg_rtl_0_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[0]~feeder_combout\ = \FD|MEMWB|data_s3\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MEMWB|data_s3\(1),
	combout => \FD|BR|bancoReg_rtl_0_bypass[0]~feeder_combout\);

-- Location: FF_X76_Y53_N3
\FD|BR|bancoReg_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(0));

-- Location: LCCOMB_X76_Y53_N4
\FD|BR|bancoReg~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~41_combout\ = (!\FD|BR|bancoReg_rtl_0_bypass\(5) & (!\FD|BR|bancoReg_rtl_0_bypass\(9) & (!\FD|BR|bancoReg_rtl_0_bypass\(3) & \FD|BR|bancoReg_rtl_0_bypass\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(5),
	datab => \FD|BR|bancoReg_rtl_0_bypass\(9),
	datac => \FD|BR|bancoReg_rtl_0_bypass\(3),
	datad => \FD|BR|bancoReg_rtl_0_bypass\(0),
	combout => \FD|BR|bancoReg~41_combout\);

-- Location: LCCOMB_X75_Y54_N28
\FD|ROM|memROM~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~27_combout\ = (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(4) $ (((\FD|PC|data_s\(2) & \FD|PC|data_s\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(3),
	combout => \FD|ROM|memROM~27_combout\);

-- Location: LCCOMB_X75_Y54_N6
\FD|ROM|memROM~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~33_combout\ = (\FD|ROM|memROM~27_combout\ & (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|memROM~27_combout\,
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~33_combout\);

-- Location: LCCOMB_X76_Y54_N26
\FD|BR|bancoReg_rtl_0_bypass[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[2]~feeder_combout\ = \FD|ROM|memROM~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ROM|memROM~33_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[2]~feeder_combout\);

-- Location: FF_X76_Y54_N27
\FD|BR|bancoReg_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(2));

-- Location: LCCOMB_X75_Y54_N26
\FD|ROM|memROM~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~26_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) $ (((!\FD|PC|data_s\(4) & !\FD|PC|data_s\(5)))))) # (!\FD|PC|data_s\(3) & (((\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~26_combout\);

-- Location: LCCOMB_X75_Y54_N8
\FD|ROM|memROM~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~32_combout\ = (!\FD|ROM|memROM~26_combout\ & (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~26_combout\,
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~32_combout\);

-- Location: LCCOMB_X77_Y54_N18
\FD|FID|data_s[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|FID|data_s[19]~feeder_combout\ = \FD|ROM|memROM~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ROM|memROM~32_combout\,
	combout => \FD|FID|data_s[19]~feeder_combout\);

-- Location: FF_X77_Y54_N19
\FD|FID|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|FID|data_s[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s\(19));

-- Location: LCCOMB_X77_Y54_N2
\FD|IDEX|data_s4[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s4[3]~feeder_combout\ = \FD|FID|data_s\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s\(19),
	combout => \FD|IDEX|data_s4[3]~feeder_combout\);

-- Location: FF_X77_Y54_N3
\FD|IDEX|data_s4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s4[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s4\(3));

-- Location: LCCOMB_X77_Y54_N22
\FD|mux_Rd_Rt|saida[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[3]~3_combout\ = (\FD|IDEX|data_s8\(1) & ((\FD|IDEX|data_s4\(1)))) # (!\FD|IDEX|data_s8\(1) & (\FD|IDEX|data_s4\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s8\(1),
	datab => \FD|IDEX|data_s4\(3),
	datac => \FD|IDEX|data_s4\(1),
	combout => \FD|mux_Rd_Rt|saida[3]~3_combout\);

-- Location: FF_X77_Y54_N23
\FD|EXMEM|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Rd_Rt|saida[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s\(3));

-- Location: FF_X77_Y54_N15
\FD|MEMWB|data_s2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s2\(3));

-- Location: FF_X76_Y54_N29
\FD|BR|bancoReg_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|MEMWB|data_s2\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(7));

-- Location: LCCOMB_X76_Y55_N2
\FD|ROM|memROM~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~25_combout\ = (\FD|PC|data_s\(2)) # ((\FD|PC|data_s\(4) & ((!\FD|PC|data_s\(3)) # (!\FD|PC|data_s\(5)))) # (!\FD|PC|data_s\(4) & ((\FD|PC|data_s\(5)) # (\FD|PC|data_s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(5),
	datac => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~25_combout\);

-- Location: LCCOMB_X76_Y55_N6
\FD|ROM|memROM~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~31_combout\ = (!\FD|PC|data_s\(7) & (!\FD|PC|data_s\(6) & !\FD|ROM|memROM~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datac => \FD|PC|data_s\(6),
	datad => \FD|ROM|memROM~25_combout\,
	combout => \FD|ROM|memROM~31_combout\);

-- Location: LCCOMB_X76_Y55_N4
\FD|FID|data_s[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|FID|data_s[16]~feeder_combout\ = \FD|ROM|memROM~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|memROM~31_combout\,
	combout => \FD|FID|data_s[16]~feeder_combout\);

-- Location: FF_X76_Y55_N5
\FD|FID|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|FID|data_s[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s\(16));

-- Location: LCCOMB_X77_Y54_N20
\FD|IDEX|data_s4[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s4[0]~feeder_combout\ = \FD|FID|data_s\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s\(16),
	combout => \FD|IDEX|data_s4[0]~feeder_combout\);

-- Location: FF_X77_Y54_N21
\FD|IDEX|data_s4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s4[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s4\(0));

-- Location: LCCOMB_X77_Y54_N28
\FD|mux_Rd_Rt|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[0]~0_combout\ = (\FD|IDEX|data_s8\(1) & ((\FD|IDEX|data_s3\(4)))) # (!\FD|IDEX|data_s8\(1) & (\FD|IDEX|data_s4\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s8\(1),
	datab => \FD|IDEX|data_s4\(0),
	datac => \FD|IDEX|data_s3\(4),
	combout => \FD|mux_Rd_Rt|saida[0]~0_combout\);

-- Location: FF_X77_Y54_N29
\FD|EXMEM|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Rd_Rt|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s\(0));

-- Location: LCCOMB_X77_Y54_N24
\FD|MEMWB|data_s2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s2[0]~feeder_combout\ = \FD|EXMEM|data_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s\(0),
	combout => \FD|MEMWB|data_s2[0]~feeder_combout\);

-- Location: FF_X77_Y54_N25
\FD|MEMWB|data_s2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s2[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s2\(0));

-- Location: FF_X76_Y54_N23
\FD|BR|bancoReg_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|MEMWB|data_s2\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(1));

-- Location: LCCOMB_X77_Y54_N26
\FD|BR|bancoReg_rtl_0_bypass[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[8]~feeder_combout\ = \FD|ROM|memROM~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|memROM~30_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[8]~feeder_combout\);

-- Location: FF_X77_Y54_N27
\FD|BR|bancoReg_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(8));

-- Location: LCCOMB_X76_Y54_N22
\FD|BR|bancoReg~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~40_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(2) & (\FD|BR|bancoReg_rtl_0_bypass\(1) & (\FD|BR|bancoReg_rtl_0_bypass\(7) $ (!\FD|BR|bancoReg_rtl_0_bypass\(8))))) # (!\FD|BR|bancoReg_rtl_0_bypass\(2) & (!\FD|BR|bancoReg_rtl_0_bypass\(1) & 
-- (\FD|BR|bancoReg_rtl_0_bypass\(7) $ (!\FD|BR|bancoReg_rtl_0_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(2),
	datab => \FD|BR|bancoReg_rtl_0_bypass\(7),
	datac => \FD|BR|bancoReg_rtl_0_bypass\(1),
	datad => \FD|BR|bancoReg_rtl_0_bypass\(8),
	combout => \FD|BR|bancoReg~40_combout\);

-- Location: LCCOMB_X84_Y51_N12
\FD|BR|saidaA[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[30]~2_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(72) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(72),
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[30]~2_combout\);

-- Location: FF_X76_Y54_N5
\FD|FID|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|ROM|memROM~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s\(21));

-- Location: LCCOMB_X76_Y54_N4
\FD|BR|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|Equal0~0_combout\ = (\FD|FID|data_s\(21)) # (\FD|FID|data_s\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|FID|data_s\(21),
	datad => \FD|FID|data_s\(5),
	combout => \FD|BR|Equal0~0_combout\);

-- Location: LCCOMB_X75_Y55_N20
\UC|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal3~0_combout\ = (\FD|FID|data_s\(31) & (\FD|FID|data_s\(27) & (!\FD|FID|data_s\(28) & !\FD|FID|data_s\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|FID|data_s\(31),
	datab => \FD|FID|data_s\(27),
	datac => \FD|FID|data_s\(28),
	datad => \FD|FID|data_s\(29),
	combout => \UC|Equal3~0_combout\);

-- Location: FF_X75_Y55_N21
\FD|IDEX|data_s6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \UC|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s6\(0));

-- Location: LCCOMB_X75_Y52_N18
\FD|EXMEM|data_s4[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s4[0]~feeder_combout\ = \FD|IDEX|data_s6\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|IDEX|data_s6\(0),
	combout => \FD|EXMEM|data_s4[0]~feeder_combout\);

-- Location: FF_X75_Y52_N19
\FD|EXMEM|data_s4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s4[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s4\(0));

-- Location: LCCOMB_X75_Y52_N16
\FD|MEMWB|data_s3[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s3[0]~feeder_combout\ = \FD|EXMEM|data_s4\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s4\(0),
	combout => \FD|MEMWB|data_s3[0]~feeder_combout\);

-- Location: FF_X75_Y52_N17
\FD|MEMWB|data_s3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s3[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s3\(0));

-- Location: LCCOMB_X75_Y55_N18
\UC|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal2~1_combout\ = (\FD|FID|data_s\(31) & (\FD|FID|data_s\(27) & (!\FD|FID|data_s\(28) & \FD|FID|data_s\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|FID|data_s\(31),
	datab => \FD|FID|data_s\(27),
	datac => \FD|FID|data_s\(28),
	datad => \FD|FID|data_s\(29),
	combout => \UC|Equal2~1_combout\);

-- Location: FF_X75_Y55_N19
\FD|IDEX|data_s7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \UC|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s7\(2));

-- Location: LCCOMB_X75_Y55_N26
\FD|EXMEM|data_s5[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s5[2]~feeder_combout\ = \FD|IDEX|data_s7\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|IDEX|data_s7\(2),
	combout => \FD|EXMEM|data_s5[2]~feeder_combout\);

-- Location: FF_X75_Y55_N27
\FD|EXMEM|data_s5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s5[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s5\(2));

-- Location: LCCOMB_X76_Y53_N26
\FD|BR|bancoReg_rtl_1_bypass[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[4]~feeder_combout\ = \FD|ROM|memROM~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|memROM~30_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[4]~feeder_combout\);

-- Location: FF_X76_Y53_N27
\FD|BR|bancoReg_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(4));

-- Location: LCCOMB_X76_Y53_N24
\FD|BR|bancoReg_rtl_1_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[1]~feeder_combout\ = \FD|MEMWB|data_s2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MEMWB|data_s2\(0),
	combout => \FD|BR|bancoReg_rtl_1_bypass[1]~feeder_combout\);

-- Location: FF_X76_Y53_N25
\FD|BR|bancoReg_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(1));

-- Location: FF_X76_Y53_N1
\FD|BR|bancoReg_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|ROM|memROM~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(2));

-- Location: FF_X77_Y53_N27
\FD|BR|bancoReg_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|MEMWB|data_s2\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(3));

-- Location: LCCOMB_X76_Y53_N0
\FD|BR|bancoReg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~38_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(4) & (\FD|BR|bancoReg_rtl_1_bypass\(3) & (\FD|BR|bancoReg_rtl_1_bypass\(1) $ (!\FD|BR|bancoReg_rtl_1_bypass\(2))))) # (!\FD|BR|bancoReg_rtl_1_bypass\(4) & (!\FD|BR|bancoReg_rtl_1_bypass\(3) & 
-- (\FD|BR|bancoReg_rtl_1_bypass\(1) $ (!\FD|BR|bancoReg_rtl_1_bypass\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(4),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(1),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(2),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(3),
	combout => \FD|BR|bancoReg~38_combout\);

-- Location: LCCOMB_X82_Y54_N20
\FD|BR|bancoReg_rtl_1_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\);

-- Location: FF_X82_Y54_N21
\FD|BR|bancoReg_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(12));

-- Location: LCCOMB_X76_Y53_N12
\FD|BR|bancoReg_rtl_1_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[5]~feeder_combout\ = \FD|MEMWB|data_s2\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MEMWB|data_s2\(2),
	combout => \FD|BR|bancoReg_rtl_1_bypass[5]~feeder_combout\);

-- Location: FF_X76_Y53_N13
\FD|BR|bancoReg_rtl_1_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(5));

-- Location: LCCOMB_X76_Y53_N18
\FD|BR|bancoReg_rtl_1_bypass[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[8]~feeder_combout\ = \FD|ROM|memROM~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|memROM~32_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[8]~feeder_combout\);

-- Location: FF_X76_Y53_N19
\FD|BR|bancoReg_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(8));

-- Location: FF_X76_Y53_N21
\FD|BR|bancoReg_rtl_1_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|MEMWB|data_s2\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(7));

-- Location: LCCOMB_X76_Y53_N6
\FD|BR|bancoReg_rtl_1_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[0]~feeder_combout\ = \FD|MEMWB|data_s3\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MEMWB|data_s3\(1),
	combout => \FD|BR|bancoReg_rtl_1_bypass[0]~feeder_combout\);

-- Location: FF_X76_Y53_N7
\FD|BR|bancoReg_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(0));

-- Location: LCCOMB_X76_Y53_N20
\FD|BR|bancoReg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~39_combout\ = (!\FD|BR|bancoReg_rtl_1_bypass\(5) & (\FD|BR|bancoReg_rtl_1_bypass\(0) & (\FD|BR|bancoReg_rtl_1_bypass\(8) $ (!\FD|BR|bancoReg_rtl_1_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(5),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(8),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(7),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(0),
	combout => \FD|BR|bancoReg~39_combout\);

-- Location: FF_X77_Y52_N3
\FD|BR|bancoReg_rtl_1_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|MEMWB|data_s2\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(9));

-- Location: LCCOMB_X82_Y54_N2
\FD|BR|saidaB[0]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[0]~62_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(12) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(12),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[0]~62_combout\);

-- Location: LCCOMB_X77_Y54_N12
\FD|BR|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|Equal1~0_combout\ = (!\FD|FID|data_s\(16) & (!\FD|FID|data_s\(5) & !\FD|FID|data_s\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|FID|data_s\(16),
	datac => \FD|FID|data_s\(5),
	datad => \FD|FID|data_s\(19),
	combout => \FD|BR|Equal1~0_combout\);

-- Location: LCCOMB_X77_Y55_N28
\FD|BR|bancoReg_rtl_1_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[11]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[0]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[0]~31_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[11]~feeder_combout\);

-- Location: FF_X77_Y55_N29
\FD|BR|bancoReg_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(11));

-- Location: LCCOMB_X77_Y51_N22
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X81_Y52_N22
\UC|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal2~0_combout\ = (\FD|FID|data_s\(31) & (!\FD|FID|data_s\(28) & \FD|FID|data_s\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|FID|data_s\(31),
	datac => \FD|FID|data_s\(28),
	datad => \FD|FID|data_s\(27),
	combout => \UC|Equal2~0_combout\);

-- Location: FF_X81_Y52_N23
\FD|IDEX|data_s8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \UC|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s8\(0));

-- Location: LCCOMB_X81_Y54_N14
\FD|UCULA|ALUop_s~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUop_s~29_combout\ = (\FD|IDEX|data_s4\(1) & (!\FD|IDEX|data_s3\(4) & (!\FD|IDEX|data_s7\(0) & !\FD|IDEX|data_s8\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s4\(1),
	datab => \FD|IDEX|data_s3\(4),
	datac => \FD|IDEX|data_s7\(0),
	datad => \FD|IDEX|data_s8\(0),
	combout => \FD|UCULA|ALUop_s~29_combout\);

-- Location: LCCOMB_X81_Y54_N28
\FD|UCULA|ALUop_s~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUop_s~30_combout\ = (!\FD|IDEX|data_s3\(3) & (!\FD|IDEX|data_s3\(1) & (\FD|UCULA|ALUop_s~29_combout\ & \FD|IDEX|data_s3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(3),
	datab => \FD|IDEX|data_s3\(1),
	datac => \FD|UCULA|ALUop_s~29_combout\,
	datad => \FD|IDEX|data_s3\(2),
	combout => \FD|UCULA|ALUop_s~30_combout\);

-- Location: LCCOMB_X81_Y54_N24
\FD|UCULA|ALUop_s~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUop_s~31_combout\ = (!\FD|IDEX|data_s3\(0) & !\FD|IDEX|data_s3\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(0),
	datad => \FD|IDEX|data_s3\(2),
	combout => \FD|UCULA|ALUop_s~31_combout\);

-- Location: LCCOMB_X81_Y54_N12
\FD|UCULA|ALUop_s~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUop_s~32_combout\ = (\FD|IDEX|data_s3\(3) & (\FD|UCULA|ALUop_s~29_combout\ & (\FD|IDEX|data_s3\(1) & \FD|UCULA|ALUop_s~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(3),
	datab => \FD|UCULA|ALUop_s~29_combout\,
	datac => \FD|IDEX|data_s3\(1),
	datad => \FD|UCULA|ALUop_s~31_combout\,
	combout => \FD|UCULA|ALUop_s~32_combout\);

-- Location: LCCOMB_X81_Y51_N20
\FD|UCULA|ALUop_s~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUop_s~33_combout\ = (!\FD|UCULA|ALUop_s~32_combout\ & ((!\FD|UCULA|ALUop_s~30_combout\) # (!\FD|IDEX|data_s3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|IDEX|data_s3\(0),
	datac => \FD|UCULA|ALUop_s~30_combout\,
	datad => \FD|UCULA|ALUop_s~32_combout\,
	combout => \FD|UCULA|ALUop_s~33_combout\);

-- Location: LCCOMB_X81_Y54_N22
\FD|UCULA|ALUop_s[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUop_s[0]~6_combout\ = (\FD|IDEX|data_s3\(3) & (\FD|IDEX|data_s3\(1) & !\FD|IDEX|data_s3\(2))) # (!\FD|IDEX|data_s3\(3) & (!\FD|IDEX|data_s3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(3),
	datab => \FD|IDEX|data_s3\(1),
	datad => \FD|IDEX|data_s3\(2),
	combout => \FD|UCULA|ALUop_s[0]~6_combout\);

-- Location: LCCOMB_X81_Y54_N2
\FD|UCULA|ALUop_s[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUop_s[0]~3_combout\ = (!\FD|IDEX|data_s3\(0) & (\FD|UCULA|ALUop_s[0]~6_combout\ & !\FD|IDEX|data_s7\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(0),
	datac => \FD|UCULA|ALUop_s[0]~6_combout\,
	datad => \FD|IDEX|data_s7\(0),
	combout => \FD|UCULA|ALUop_s[0]~3_combout\);

-- Location: LCCOMB_X81_Y54_N4
\FD|UCULA|ALUop_s[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUop_s[0]~34_combout\ = (\FD|IDEX|data_s8\(0)) # ((!\FD|IDEX|data_s3\(4) & (\FD|IDEX|data_s4\(1) & \FD|UCULA|ALUop_s[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s8\(0),
	datac => \FD|IDEX|data_s4\(1),
	datad => \FD|UCULA|ALUop_s[0]~3_combout\,
	combout => \FD|UCULA|ALUop_s[0]~34_combout\);

-- Location: LCCOMB_X81_Y54_N20
\FD|UCULA|ALUop_s[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUop_s[1]~20_combout\ = \FD|IDEX|data_s3\(1) $ (\FD|IDEX|data_s3\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|IDEX|data_s3\(1),
	datad => \FD|IDEX|data_s3\(2),
	combout => \FD|UCULA|ALUop_s[1]~20_combout\);

-- Location: LCCOMB_X81_Y54_N18
\FD|UCULA|ALUop_s[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUop_s[1]~16_combout\ = (!\FD|IDEX|data_s3\(3) & (!\FD|IDEX|data_s8\(0) & (!\FD|IDEX|data_s3\(4) & \FD|UCULA|ALUop_s[1]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(3),
	datab => \FD|IDEX|data_s8\(0),
	datac => \FD|IDEX|data_s3\(4),
	datad => \FD|UCULA|ALUop_s[1]~20_combout\,
	combout => \FD|UCULA|ALUop_s[1]~16_combout\);

-- Location: LCCOMB_X81_Y54_N16
\FD|UCULA|ALUop_s[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUop_s[1]~35_combout\ = (\FD|IDEX|data_s7\(0)) # ((!\FD|IDEX|data_s3\(0) & (\FD|IDEX|data_s4\(1) & \FD|UCULA|ALUop_s[1]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(0),
	datab => \FD|IDEX|data_s4\(1),
	datac => \FD|IDEX|data_s7\(0),
	datad => \FD|UCULA|ALUop_s[1]~16_combout\,
	combout => \FD|UCULA|ALUop_s[1]~35_combout\);

-- Location: LCCOMB_X81_Y51_N14
\FD|UCULA|ALUctr[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[1]~2_combout\ = (\FD|UCULA|ALUop_s[0]~34_combout\ & ((!\FD|UCULA|ALUop_s[1]~35_combout\))) # (!\FD|UCULA|ALUop_s[0]~34_combout\ & (\FD|UCULA|ALUop_s~33_combout\ & \FD|UCULA|ALUop_s[1]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUop_s~33_combout\,
	datac => \FD|UCULA|ALUop_s[0]~34_combout\,
	datad => \FD|UCULA|ALUop_s[1]~35_combout\,
	combout => \FD|UCULA|ALUctr[1]~2_combout\);

-- Location: FF_X81_Y55_N23
\FD|BR|bancoReg_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(13));

-- Location: LCCOMB_X81_Y55_N20
\FD|BR|bancoReg_rtl_1_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[15]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[2]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[2]~29_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[15]~feeder_combout\);

-- Location: FF_X81_Y55_N21
\FD|BR|bancoReg_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(15));

-- Location: LCCOMB_X81_Y53_N6
\FD|BR|bancoReg_rtl_0_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[17]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[3]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[3]~28_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[17]~feeder_combout\);

-- Location: FF_X81_Y53_N7
\FD|BR|bancoReg_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(17));

-- Location: LCCOMB_X77_Y55_N16
\FD|BR|bancoReg_rtl_1_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[19]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[4]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[4]~27_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[19]~feeder_combout\);

-- Location: FF_X77_Y55_N17
\FD|BR|bancoReg_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(19));

-- Location: LCCOMB_X82_Y54_N0
\FD|BR|bancoReg_rtl_1_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\);

-- Location: FF_X82_Y54_N1
\FD|BR|bancoReg_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(20));

-- Location: LCCOMB_X82_Y54_N26
\FD|BR|saidaB[4]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[4]~54_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(20) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(20),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[4]~54_combout\);

-- Location: FF_X84_Y51_N1
\FD|BR|bancoReg_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(21));

-- Location: FF_X79_Y53_N1
\FD|BR|bancoReg_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[6]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(23));

-- Location: LCCOMB_X79_Y50_N20
\FD|BR|bancoReg_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X79_Y50_N21
\FD|BR|bancoReg_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(24));

-- Location: LCCOMB_X79_Y50_N30
\FD|BR|saidaA[6]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[6]~50_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(24) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(24),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[6]~50_combout\);

-- Location: FF_X79_Y49_N5
\FD|BR|bancoReg_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(25));

-- Location: FF_X79_Y50_N15
\FD|BR|bancoReg_rtl_1_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[8]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(27));

-- Location: LCCOMB_X76_Y52_N4
\FD|BR|bancoReg_rtl_1_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\);

-- Location: FF_X76_Y52_N5
\FD|BR|bancoReg_rtl_1_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(28));

-- Location: LCCOMB_X76_Y52_N22
\FD|BR|saidaB[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[8]~46_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(28) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(28),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[8]~46_combout\);

-- Location: LCCOMB_X77_Y52_N18
\FD|BR|bancoReg_rtl_1_bypass[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[29]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[9]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[9]~22_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[29]~feeder_combout\);

-- Location: FF_X77_Y52_N19
\FD|BR|bancoReg_rtl_1_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(29));

-- Location: LCCOMB_X82_Y54_N8
\FD|BR|bancoReg_rtl_1_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\);

-- Location: FF_X82_Y54_N9
\FD|BR|bancoReg_rtl_1_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(30));

-- Location: LCCOMB_X82_Y54_N14
\FD|BR|saidaB[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[9]~44_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(30) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(30),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[9]~44_combout\);

-- Location: FF_X79_Y52_N3
\FD|BR|bancoReg_rtl_1_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[10]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(31));

-- Location: LCCOMB_X80_Y54_N12
\FD|BR|bancoReg_rtl_1_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\);

-- Location: FF_X80_Y54_N13
\FD|BR|bancoReg_rtl_1_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(32));

-- Location: LCCOMB_X80_Y54_N6
\FD|BR|saidaB[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[10]~42_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(32) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(32),
	combout => \FD|BR|saidaB[10]~42_combout\);

-- Location: LCCOMB_X76_Y52_N20
\FD|BR|bancoReg_rtl_1_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\);

-- Location: FF_X76_Y52_N21
\FD|BR|bancoReg_rtl_1_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(36));

-- Location: LCCOMB_X76_Y52_N30
\FD|BR|saidaB[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[12]~38_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(36) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(36),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[12]~38_combout\);

-- Location: FF_X77_Y52_N31
\FD|BR|bancoReg_rtl_1_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[12]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(35));

-- Location: LCCOMB_X80_Y53_N24
\FD|BR|bancoReg_rtl_1_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\);

-- Location: FF_X80_Y53_N25
\FD|BR|bancoReg_rtl_1_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(38));

-- Location: LCCOMB_X80_Y53_N10
\FD|BR|saidaB[13]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[13]~36_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(38) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(38),
	combout => \FD|BR|saidaB[13]~36_combout\);

-- Location: FF_X80_Y53_N31
\FD|BR|bancoReg_rtl_1_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[13]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(37));

-- Location: LCCOMB_X82_Y53_N20
\FD|BR|bancoReg_rtl_0_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X82_Y53_N21
\FD|BR|bancoReg_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(40));

-- Location: LCCOMB_X82_Y53_N26
\FD|BR|saidaA[14]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[14]~34_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(40) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(40),
	combout => \FD|BR|saidaA[14]~34_combout\);

-- Location: FF_X82_Y53_N15
\FD|BR|bancoReg_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(39));

-- Location: FF_X79_Y50_N7
\FD|BR|bancoReg_rtl_1_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[15]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(41));

-- Location: LCCOMB_X81_Y53_N26
\FD|BR|bancoReg_rtl_1_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\);

-- Location: FF_X81_Y53_N27
\FD|BR|bancoReg_rtl_1_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(42));

-- Location: LCCOMB_X81_Y53_N4
\FD|BR|saidaB[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[15]~32_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(42) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(42),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[15]~32_combout\);

-- Location: LCCOMB_X79_Y50_N4
\FD|BR|bancoReg_rtl_1_bypass[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[43]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[16]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[16]~15_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[43]~feeder_combout\);

-- Location: FF_X79_Y50_N5
\FD|BR|bancoReg_rtl_1_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(43));

-- Location: LCCOMB_X81_Y50_N4
\FD|BR|bancoReg_rtl_1_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\);

-- Location: FF_X81_Y50_N5
\FD|BR|bancoReg_rtl_1_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(44));

-- Location: LCCOMB_X81_Y50_N30
\FD|BR|saidaB[16]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[16]~30_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(44) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(44),
	combout => \FD|BR|saidaB[16]~30_combout\);

-- Location: FF_X81_Y52_N25
\FD|EXMEM|data_s3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s2\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(2));

-- Location: LCCOMB_X82_Y54_N4
\FD|BR|bancoReg_rtl_1_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\);

-- Location: FF_X82_Y54_N5
\FD|BR|bancoReg_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(18));

-- Location: LCCOMB_X82_Y54_N22
\FD|BR|saidaB[3]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[3]~56_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(18) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(18),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[3]~56_combout\);

-- Location: LCCOMB_X79_Y51_N18
\FD|BR|bancoReg_rtl_0_bypass[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\);

-- Location: FF_X79_Y51_N19
\FD|BR|bancoReg_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(48));

-- Location: LCCOMB_X79_Y51_N28
\FD|BR|saidaA[18]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[18]~26_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(48) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(48),
	combout => \FD|BR|saidaA[18]~26_combout\);

-- Location: FF_X79_Y53_N11
\FD|BR|bancoReg_rtl_1_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[19]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(49));

-- Location: LCCOMB_X80_Y54_N0
\FD|BR|bancoReg_rtl_1_bypass[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\);

-- Location: FF_X80_Y54_N1
\FD|BR|bancoReg_rtl_1_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(50));

-- Location: LCCOMB_X80_Y54_N30
\FD|BR|saidaB[19]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[19]~24_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(50) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(50),
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[19]~24_combout\);

-- Location: FF_X79_Y49_N15
\FD|BR|bancoReg_rtl_0_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[20]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(51));

-- Location: LCCOMB_X79_Y49_N0
\FD|BR|bancoReg_rtl_0_bypass[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\);

-- Location: FF_X79_Y49_N1
\FD|BR|bancoReg_rtl_0_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(52));

-- Location: LCCOMB_X79_Y49_N8
\FD|BR|saidaA[20]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[20]~22_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(52) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(52),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[20]~22_combout\);

-- Location: LCCOMB_X81_Y49_N4
\FD|BR|bancoReg_rtl_1_bypass[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\);

-- Location: FF_X81_Y49_N5
\FD|BR|bancoReg_rtl_1_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(54));

-- Location: LCCOMB_X81_Y49_N26
\FD|BR|saidaB[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[21]~20_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(54) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(54),
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[21]~20_combout\);

-- Location: LCCOMB_X80_Y49_N24
\FD|BR|bancoReg_rtl_1_bypass[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[53]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[21]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[21]~10_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[53]~feeder_combout\);

-- Location: FF_X80_Y49_N25
\FD|BR|bancoReg_rtl_1_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[53]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(53));

-- Location: FF_X79_Y51_N1
\FD|BR|bancoReg_rtl_0_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[22]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(55));

-- Location: FF_X79_Y54_N9
\FD|BR|bancoReg_rtl_0_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(57));

-- Location: LCCOMB_X79_Y54_N6
\FD|BR|bancoReg_rtl_0_bypass[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\);

-- Location: FF_X79_Y54_N7
\FD|BR|bancoReg_rtl_0_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(58));

-- Location: LCCOMB_X79_Y54_N26
\FD|BR|saidaA[23]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[23]~16_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(58) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(58),
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[23]~16_combout\);

-- Location: LCCOMB_X81_Y50_N24
\FD|BR|bancoReg_rtl_1_bypass[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\);

-- Location: FF_X81_Y50_N25
\FD|BR|bancoReg_rtl_1_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(60));

-- Location: LCCOMB_X81_Y50_N14
\FD|BR|saidaB[24]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[24]~14_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(60) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(60),
	combout => \FD|BR|saidaB[24]~14_combout\);

-- Location: FF_X77_Y50_N29
\FD|BR|bancoReg_rtl_1_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[24]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(59));

-- Location: LCCOMB_X81_Y50_N12
\FD|BR|bancoReg_rtl_1_bypass[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\);

-- Location: FF_X81_Y50_N13
\FD|BR|bancoReg_rtl_1_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(62));

-- Location: LCCOMB_X81_Y50_N18
\FD|BR|saidaB[25]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[25]~12_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(62) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(62),
	combout => \FD|BR|saidaB[25]~12_combout\);

-- Location: FF_X77_Y51_N13
\FD|BR|bancoReg_rtl_1_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[25]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(61));

-- Location: FF_X79_Y51_N29
\FD|BR|bancoReg_rtl_1_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[18]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(47));

-- Location: LCCOMB_X80_Y53_N12
\FD|BR|bancoReg_rtl_1_bypass[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\);

-- Location: FF_X80_Y53_N13
\FD|BR|bancoReg_rtl_1_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(66));

-- Location: LCCOMB_X80_Y53_N14
\FD|BR|saidaB[27]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[27]~8_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(66) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(66),
	combout => \FD|BR|saidaB[27]~8_combout\);

-- Location: FF_X77_Y51_N1
\FD|BR|bancoReg_rtl_1_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[28]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(67));

-- Location: LCCOMB_X77_Y52_N6
\FD|BR|bancoReg_rtl_1_bypass[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\);

-- Location: FF_X77_Y52_N7
\FD|BR|bancoReg_rtl_1_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(70));

-- Location: LCCOMB_X77_Y52_N24
\FD|BR|saidaB[29]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[29]~4_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(70) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(70),
	combout => \FD|BR|saidaB[29]~4_combout\);

-- Location: FF_X77_Y53_N13
\FD|BR|bancoReg_rtl_1_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[29]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(69));

-- Location: LCCOMB_X79_Y54_N30
\FD|EXMEM|data_s3[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s3[19]~feeder_combout\ = \FD|IDEX|data_s2\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|IDEX|data_s2\(19),
	combout => \FD|EXMEM|data_s3[19]~feeder_combout\);

-- Location: FF_X79_Y54_N31
\FD|EXMEM|data_s3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s3[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(19));

-- Location: FF_X79_Y49_N9
\FD|BR|bancoReg_rtl_1_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[20]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(51));

-- Location: FF_X82_Y53_N31
\FD|BR|bancoReg_rtl_1_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[31]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(73));

-- Location: M9K_X78_Y52_N0
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E00000000D00000000C00000000B00000000A00000000900000000A000000006000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|MEMWB|data_s3\(1),
	portbre => VCC,
	clk0 => \detector|saida~clkctrl_outclk\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X76_Y52_N16
\FD|BR|bancoReg_rtl_1_bypass[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\);

-- Location: FF_X76_Y52_N17
\FD|BR|bancoReg_rtl_1_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(74));

-- Location: LCCOMB_X76_Y52_N2
\FD|BR|saidaB[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[31]~0_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(74) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(74),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[31]~0_combout\);

-- Location: LCCOMB_X77_Y52_N12
\FD|BR|saidaB[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[31]~1_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[31]~0_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\))) # (!\FD|BR|saidaB[31]~0_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(73)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(73),
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\,
	datad => \FD|BR|saidaB[31]~0_combout\,
	combout => \FD|BR|saidaB[31]~1_combout\);

-- Location: FF_X77_Y52_N13
\FD|IDEX|data_s2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(31));

-- Location: LCCOMB_X77_Y52_N0
\FD|mux_Banco_Ula|saida[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[31]~0_combout\ = (\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s3\(4))) # (!\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s2\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s8\(0),
	datad => \FD|IDEX|data_s2\(31),
	combout => \FD|mux_Banco_Ula|saida[31]~0_combout\);

-- Location: LCCOMB_X82_Y53_N6
\FD|BR|bancoReg_rtl_0_bypass[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\);

-- Location: FF_X82_Y53_N7
\FD|BR|bancoReg_rtl_0_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(74));

-- Location: LCCOMB_X82_Y53_N30
\FD|BR|saidaA[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[31]~0_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(74) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(74),
	combout => \FD|BR|saidaA[31]~0_combout\);

-- Location: FF_X82_Y53_N5
\FD|BR|bancoReg_rtl_0_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(73));

-- Location: M9K_X78_Y51_N0
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E00000000D00000000C00000000B00000000A00000000900000000A000000006000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|MEMWB|data_s3\(1),
	portbre => VCC,
	clk0 => \detector|saida~clkctrl_outclk\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X82_Y53_N16
\FD|BR|saidaA[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[31]~1_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[31]~0_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\))) # (!\FD|BR|saidaA[31]~0_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(73)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[31]~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(73),
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\,
	combout => \FD|BR|saidaA[31]~1_combout\);

-- Location: FF_X82_Y53_N17
\FD|IDEX|data_s1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(31));

-- Location: LCCOMB_X81_Y51_N22
\FD|ULA|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~0_combout\ = (\FD|UCULA|ALUop_s~33_combout\ & (\FD|UCULA|ALUop_s[1]~35_combout\ $ (\FD|UCULA|ALUop_s[0]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUop_s[1]~35_combout\,
	datac => \FD|UCULA|ALUop_s[0]~34_combout\,
	datad => \FD|UCULA|ALUop_s~33_combout\,
	combout => \FD|ULA|Mux19~0_combout\);

-- Location: LCCOMB_X81_Y51_N4
\FD|ULA|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~1_combout\ = (\FD|UCULA|ALUop_s~33_combout\ & (!\FD|UCULA|ALUop_s[0]~34_combout\ & \FD|UCULA|ALUop_s[1]~35_combout\)) # (!\FD|UCULA|ALUop_s~33_combout\ & ((!\FD|UCULA|ALUop_s[1]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUop_s~33_combout\,
	datac => \FD|UCULA|ALUop_s[0]~34_combout\,
	datad => \FD|UCULA|ALUop_s[1]~35_combout\,
	combout => \FD|ULA|Mux19~1_combout\);

-- Location: LCCOMB_X76_Y52_N12
\FD|BR|bancoReg_rtl_1_bypass[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\);

-- Location: FF_X76_Y52_N13
\FD|BR|bancoReg_rtl_1_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(72));

-- Location: LCCOMB_X76_Y52_N18
\FD|BR|saidaB[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[30]~2_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(72) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(72),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[30]~2_combout\);

-- Location: LCCOMB_X84_Y51_N30
\FD|BR|bancoReg_rtl_1_bypass[71]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[71]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[30]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[30]~1_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[71]~feeder_combout\);

-- Location: FF_X84_Y51_N31
\FD|BR|bancoReg_rtl_1_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[71]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(71));

-- Location: LCCOMB_X77_Y52_N22
\FD|BR|saidaB[30]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[30]~3_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[30]~2_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\))) # (!\FD|BR|saidaB[30]~2_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(71)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|saidaB[30]~2_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(71),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\,
	combout => \FD|BR|saidaB[30]~3_combout\);

-- Location: FF_X77_Y52_N23
\FD|IDEX|data_s2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(30));

-- Location: LCCOMB_X79_Y52_N2
\FD|mux_Banco_Ula|saida[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[30]~1_combout\ = (\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s3\(4))) # (!\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s2\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s2\(30),
	datad => \FD|IDEX|data_s8\(0),
	combout => \FD|mux_Banco_Ula|saida[30]~1_combout\);

-- Location: LCCOMB_X77_Y53_N0
\FD|BR|bancoReg_rtl_0_bypass[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\);

-- Location: FF_X77_Y53_N1
\FD|BR|bancoReg_rtl_0_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(70));

-- Location: LCCOMB_X77_Y53_N12
\FD|BR|saidaA[29]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[29]~4_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(70) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(70),
	combout => \FD|BR|saidaA[29]~4_combout\);

-- Location: FF_X77_Y53_N7
\FD|BR|bancoReg_rtl_0_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(69));

-- Location: LCCOMB_X77_Y53_N24
\FD|BR|saidaA[29]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[29]~5_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[29]~4_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\)) # (!\FD|BR|saidaA[29]~4_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(69))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[29]~4_combout\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(69),
	combout => \FD|BR|saidaA[29]~5_combout\);

-- Location: FF_X77_Y53_N25
\FD|IDEX|data_s1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[29]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(29));

-- Location: FF_X77_Y51_N9
\FD|BR|bancoReg_rtl_0_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[28]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(67));

-- Location: LCCOMB_X76_Y51_N26
\FD|BR|bancoReg_rtl_0_bypass[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\);

-- Location: FF_X76_Y51_N27
\FD|BR|bancoReg_rtl_0_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(68));

-- Location: LCCOMB_X76_Y51_N0
\FD|BR|saidaA[28]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[28]~6_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(68) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(68),
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[28]~6_combout\);

-- Location: LCCOMB_X77_Y51_N24
\FD|BR|saidaA[28]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[28]~7_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[28]~6_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\))) # (!\FD|BR|saidaA[28]~6_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(67)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(67),
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\,
	datad => \FD|BR|saidaA[28]~6_combout\,
	combout => \FD|BR|saidaA[28]~7_combout\);

-- Location: FF_X77_Y51_N25
\FD|IDEX|data_s1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[28]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(28));

-- Location: LCCOMB_X77_Y51_N2
\FD|BR|bancoReg_rtl_0_bypass[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\);

-- Location: FF_X77_Y51_N3
\FD|BR|bancoReg_rtl_0_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(66));

-- Location: LCCOMB_X77_Y51_N20
\FD|BR|saidaA[27]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[27]~8_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(66) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(66),
	combout => \FD|BR|saidaA[27]~8_combout\);

-- Location: FF_X77_Y51_N7
\FD|BR|bancoReg_rtl_0_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[27]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(65));

-- Location: LCCOMB_X77_Y51_N28
\FD|BR|saidaA[27]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[27]~9_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[27]~8_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\)) # (!\FD|BR|saidaA[27]~8_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(65))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\,
	datab => \FD|BR|saidaA[27]~8_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(65),
	combout => \FD|BR|saidaA[27]~9_combout\);

-- Location: FF_X77_Y51_N29
\FD|IDEX|data_s1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[27]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(27));

-- Location: FF_X79_Y55_N27
\FD|BR|bancoReg_rtl_1_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[26]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(63));

-- Location: LCCOMB_X80_Y53_N0
\FD|BR|bancoReg_rtl_1_bypass[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\);

-- Location: FF_X80_Y53_N1
\FD|BR|bancoReg_rtl_1_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(64));

-- Location: LCCOMB_X80_Y53_N2
\FD|BR|saidaB[26]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[26]~10_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(64) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(64),
	combout => \FD|BR|saidaB[26]~10_combout\);

-- Location: LCCOMB_X80_Y53_N4
\FD|BR|saidaB[26]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[26]~11_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[26]~10_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\))) # (!\FD|BR|saidaB[26]~10_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(63),
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\,
	datad => \FD|BR|saidaB[26]~10_combout\,
	combout => \FD|BR|saidaB[26]~11_combout\);

-- Location: FF_X80_Y53_N5
\FD|IDEX|data_s2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[26]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(26));

-- Location: LCCOMB_X80_Y53_N22
\FD|mux_Banco_Ula|saida[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[26]~5_combout\ = (\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s3\(4)))) # (!\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s2\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|IDEX|data_s2\(26),
	datac => \FD|IDEX|data_s8\(0),
	datad => \FD|IDEX|data_s3\(4),
	combout => \FD|mux_Banco_Ula|saida[26]~5_combout\);

-- Location: LCCOMB_X79_Y55_N18
\FD|BR|bancoReg_rtl_0_bypass[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\);

-- Location: FF_X79_Y55_N19
\FD|BR|bancoReg_rtl_0_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(64));

-- Location: LCCOMB_X79_Y55_N26
\FD|BR|saidaA[26]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[26]~10_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(64) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(64),
	combout => \FD|BR|saidaA[26]~10_combout\);

-- Location: FF_X79_Y55_N29
\FD|BR|bancoReg_rtl_0_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[26]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(63));

-- Location: LCCOMB_X79_Y55_N12
\FD|BR|saidaA[26]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[26]~11_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[26]~10_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\))) # (!\FD|BR|saidaA[26]~10_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[26]~10_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(63),
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\,
	combout => \FD|BR|saidaA[26]~11_combout\);

-- Location: FF_X79_Y55_N13
\FD|IDEX|data_s1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[26]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(26));

-- Location: FF_X77_Y51_N31
\FD|BR|bancoReg_rtl_0_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[25]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(61));

-- Location: LCCOMB_X76_Y51_N22
\FD|BR|bancoReg_rtl_0_bypass[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\);

-- Location: FF_X76_Y51_N23
\FD|BR|bancoReg_rtl_0_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(62));

-- Location: LCCOMB_X76_Y51_N28
\FD|BR|saidaA[25]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[25]~12_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(62) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~40_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(62),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[25]~12_combout\);

-- Location: LCCOMB_X76_Y51_N20
\FD|BR|saidaA[25]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[25]~13_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[25]~12_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\))) # (!\FD|BR|saidaA[25]~12_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(61),
	datab => \FD|BR|saidaA[25]~12_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[25]~13_combout\);

-- Location: FF_X76_Y51_N21
\FD|IDEX|data_s1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[25]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(25));

-- Location: LCCOMB_X80_Y50_N28
\FD|BR|bancoReg_rtl_0_bypass[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\);

-- Location: FF_X80_Y50_N29
\FD|BR|bancoReg_rtl_0_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(60));

-- Location: LCCOMB_X80_Y50_N30
\FD|BR|saidaA[24]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[24]~14_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(60) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(60),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[24]~14_combout\);

-- Location: LCCOMB_X77_Y50_N26
\FD|BR|bancoReg_rtl_0_bypass[59]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[59]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[24]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[24]~7_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[59]~feeder_combout\);

-- Location: FF_X77_Y50_N27
\FD|BR|bancoReg_rtl_0_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[59]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(59));

-- Location: LCCOMB_X80_Y50_N0
\FD|BR|saidaA[24]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[24]~15_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[24]~14_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\))) # (!\FD|BR|saidaA[24]~14_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[24]~14_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(59),
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\,
	combout => \FD|BR|saidaA[24]~15_combout\);

-- Location: FF_X80_Y50_N1
\FD|IDEX|data_s1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[24]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(24));

-- Location: FF_X79_Y54_N27
\FD|BR|bancoReg_rtl_1_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[23]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(57));

-- Location: LCCOMB_X81_Y53_N16
\FD|BR|bancoReg_rtl_1_bypass[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\);

-- Location: FF_X81_Y53_N17
\FD|BR|bancoReg_rtl_1_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(58));

-- Location: LCCOMB_X81_Y53_N22
\FD|BR|saidaB[23]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[23]~16_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(58) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(58),
	combout => \FD|BR|saidaB[23]~16_combout\);

-- Location: LCCOMB_X81_Y53_N30
\FD|BR|saidaB[23]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[23]~17_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[23]~16_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\))) # (!\FD|BR|saidaB[23]~16_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(57),
	datac => \FD|BR|saidaB[23]~16_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\,
	combout => \FD|BR|saidaB[23]~17_combout\);

-- Location: FF_X81_Y53_N31
\FD|IDEX|data_s2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[23]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(23));

-- Location: LCCOMB_X81_Y53_N2
\FD|mux_Banco_Ula|saida[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[23]~8_combout\ = (\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s3\(4))) # (!\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s2\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|IDEX|data_s3\(4),
	datac => \FD|IDEX|data_s2\(23),
	datad => \FD|IDEX|data_s8\(0),
	combout => \FD|mux_Banco_Ula|saida[23]~8_combout\);

-- Location: LCCOMB_X81_Y53_N20
\FD|BR|bancoReg_rtl_1_bypass[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\);

-- Location: FF_X81_Y53_N21
\FD|BR|bancoReg_rtl_1_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(56));

-- Location: LCCOMB_X81_Y53_N24
\FD|BR|saidaB[22]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[22]~18_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(56) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(56),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[22]~18_combout\);

-- Location: FF_X79_Y51_N17
\FD|BR|bancoReg_rtl_1_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[22]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(55));

-- Location: LCCOMB_X81_Y53_N14
\FD|BR|saidaB[22]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[22]~19_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[22]~18_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\))) # (!\FD|BR|saidaB[22]~18_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|saidaB[22]~18_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(55),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\,
	combout => \FD|BR|saidaB[22]~19_combout\);

-- Location: FF_X81_Y53_N15
\FD|IDEX|data_s2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[22]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(22));

-- Location: LCCOMB_X81_Y53_N0
\FD|mux_Banco_Ula|saida[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[22]~9_combout\ = (\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s3\(4))) # (!\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s2\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|IDEX|data_s3\(4),
	datac => \FD|IDEX|data_s2\(22),
	datad => \FD|IDEX|data_s8\(0),
	combout => \FD|mux_Banco_Ula|saida[22]~9_combout\);

-- Location: FF_X79_Y53_N29
\FD|BR|bancoReg_rtl_0_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(53));

-- Location: LCCOMB_X80_Y53_N16
\FD|BR|bancoReg_rtl_0_bypass[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\);

-- Location: FF_X80_Y53_N17
\FD|BR|bancoReg_rtl_0_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(54));

-- Location: LCCOMB_X79_Y53_N4
\FD|BR|saidaA[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[21]~20_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(54) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(54),
	combout => \FD|BR|saidaA[21]~20_combout\);

-- Location: LCCOMB_X79_Y53_N14
\FD|BR|saidaA[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[21]~21_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[21]~20_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\)) # (!\FD|BR|saidaA[21]~20_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(53))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(53),
	datac => \FD|BR|saidaA[21]~20_combout\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[21]~21_combout\);

-- Location: FF_X79_Y53_N15
\FD|IDEX|data_s1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(21));

-- Location: LCCOMB_X81_Y49_N10
\FD|mux_Banco_Ula|saida[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[20]~11_combout\ = (\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s3\(4)))) # (!\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s2\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|IDEX|data_s2\(20),
	datac => \FD|IDEX|data_s3\(4),
	datad => \FD|IDEX|data_s8\(0),
	combout => \FD|mux_Banco_Ula|saida[20]~11_combout\);

-- Location: LCCOMB_X80_Y53_N26
\FD|BR|bancoReg_rtl_0_bypass[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\);

-- Location: FF_X80_Y53_N27
\FD|BR|bancoReg_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(50));

-- Location: LCCOMB_X79_Y53_N10
\FD|BR|saidaA[19]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[19]~24_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(50) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(50),
	combout => \FD|BR|saidaA[19]~24_combout\);

-- Location: FF_X79_Y53_N9
\FD|BR|bancoReg_rtl_0_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[19]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(49));

-- Location: LCCOMB_X79_Y53_N24
\FD|BR|saidaA[19]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[19]~25_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[19]~24_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\))) # (!\FD|BR|saidaA[19]~24_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[19]~24_combout\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(49),
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\,
	combout => \FD|BR|saidaA[19]~25_combout\);

-- Location: FF_X79_Y53_N25
\FD|IDEX|data_s1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[19]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(19));

-- Location: LCCOMB_X81_Y49_N30
\FD|mux_Banco_Ula|saida[18]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[18]~13_combout\ = (\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s3\(4)))) # (!\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s2\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|IDEX|data_s2\(18),
	datac => \FD|IDEX|data_s3\(4),
	datad => \FD|IDEX|data_s8\(0),
	combout => \FD|mux_Banco_Ula|saida[18]~13_combout\);

-- Location: FF_X79_Y54_N17
\FD|BR|bancoReg_rtl_0_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[17]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(45));

-- Location: LCCOMB_X79_Y54_N12
\FD|BR|bancoReg_rtl_0_bypass[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\);

-- Location: FF_X79_Y54_N13
\FD|BR|bancoReg_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(46));

-- Location: LCCOMB_X79_Y54_N16
\FD|BR|saidaA[17]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[17]~28_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(46) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(46),
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[17]~28_combout\);

-- Location: LCCOMB_X79_Y54_N18
\FD|BR|saidaA[17]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[17]~29_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[17]~28_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\))) # (!\FD|BR|saidaA[17]~28_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(45),
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\,
	datad => \FD|BR|saidaA[17]~28_combout\,
	combout => \FD|BR|saidaA[17]~29_combout\);

-- Location: FF_X79_Y54_N19
\FD|IDEX|data_s1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(17));

-- Location: FF_X79_Y54_N5
\FD|BR|bancoReg_rtl_1_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(45));

-- Location: LCCOMB_X80_Y54_N20
\FD|BR|bancoReg_rtl_1_bypass[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\);

-- Location: FF_X80_Y54_N21
\FD|BR|bancoReg_rtl_1_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(46));

-- Location: LCCOMB_X80_Y54_N18
\FD|BR|saidaB[17]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[17]~28_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(46) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(46),
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[17]~28_combout\);

-- Location: LCCOMB_X80_Y54_N16
\FD|BR|saidaB[17]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[17]~29_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[17]~28_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\))) # (!\FD|BR|saidaB[17]~28_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(45),
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\,
	datad => \FD|BR|saidaB[17]~28_combout\,
	combout => \FD|BR|saidaB[17]~29_combout\);

-- Location: FF_X80_Y54_N17
\FD|IDEX|data_s2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(17));

-- Location: LCCOMB_X80_Y54_N22
\FD|mux_Banco_Ula|saida[17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[17]~14_combout\ = (\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s3\(4)))) # (!\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|IDEX|data_s2\(17),
	datac => \FD|IDEX|data_s8\(0),
	datad => \FD|IDEX|data_s3\(4),
	combout => \FD|mux_Banco_Ula|saida[17]~14_combout\);

-- Location: FF_X79_Y50_N3
\FD|BR|bancoReg_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[16]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(43));

-- Location: LCCOMB_X79_Y50_N0
\FD|BR|bancoReg_rtl_0_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\);

-- Location: FF_X79_Y50_N1
\FD|BR|bancoReg_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(44));

-- Location: LCCOMB_X79_Y51_N22
\FD|BR|saidaA[16]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[16]~30_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(44) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(44),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[16]~30_combout\);

-- Location: LCCOMB_X79_Y51_N2
\FD|BR|saidaA[16]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[16]~31_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[16]~30_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\))) # (!\FD|BR|saidaA[16]~30_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(43),
	datac => \FD|BR|saidaA[16]~30_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\,
	combout => \FD|BR|saidaA[16]~31_combout\);

-- Location: FF_X79_Y51_N3
\FD|IDEX|data_s1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(16));

-- Location: FF_X79_Y50_N9
\FD|BR|bancoReg_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(41));

-- Location: LCCOMB_X79_Y50_N18
\FD|BR|bancoReg_rtl_0_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\);

-- Location: FF_X79_Y50_N19
\FD|BR|bancoReg_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(42));

-- Location: LCCOMB_X79_Y50_N6
\FD|BR|saidaA[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[15]~32_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(42) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(42),
	combout => \FD|BR|saidaA[15]~32_combout\);

-- Location: LCCOMB_X79_Y50_N16
\FD|BR|saidaA[15]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[15]~33_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[15]~32_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\))) # (!\FD|BR|saidaA[15]~32_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(41),
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\,
	datad => \FD|BR|saidaA[15]~32_combout\,
	combout => \FD|BR|saidaA[15]~33_combout\);

-- Location: FF_X79_Y50_N17
\FD|IDEX|data_s1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[15]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(15));

-- Location: LCCOMB_X80_Y54_N28
\FD|BR|bancoReg_rtl_1_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\);

-- Location: FF_X80_Y54_N29
\FD|BR|bancoReg_rtl_1_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(40));

-- Location: LCCOMB_X80_Y54_N14
\FD|BR|saidaB[14]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[14]~34_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(40) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(40),
	combout => \FD|BR|saidaB[14]~34_combout\);

-- Location: LCCOMB_X82_Y53_N28
\FD|BR|bancoReg_rtl_1_bypass[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[14]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[14]~17_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\);

-- Location: FF_X82_Y53_N29
\FD|BR|bancoReg_rtl_1_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(39));

-- Location: LCCOMB_X81_Y54_N30
\FD|BR|saidaB[14]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[14]~35_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[14]~34_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\))) # (!\FD|BR|saidaB[14]~34_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[14]~34_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(39),
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\,
	combout => \FD|BR|saidaB[14]~35_combout\);

-- Location: FF_X81_Y54_N31
\FD|IDEX|data_s2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[14]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(14));

-- Location: LCCOMB_X81_Y54_N10
\FD|mux_Banco_Ula|saida[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[14]~17_combout\ = (\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s4\(1)))) # (!\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s2\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s2\(14),
	datab => \FD|IDEX|data_s4\(1),
	datad => \FD|IDEX|data_s8\(0),
	combout => \FD|mux_Banco_Ula|saida[14]~17_combout\);

-- Location: LCCOMB_X79_Y50_N24
\FD|BR|bancoReg_rtl_0_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X79_Y50_N25
\FD|BR|bancoReg_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(38));

-- Location: LCCOMB_X79_Y52_N22
\FD|BR|saidaA[13]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[13]~36_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(38) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(38),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[13]~36_combout\);

-- Location: FF_X79_Y52_N17
\FD|BR|bancoReg_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[13]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(37));

-- Location: LCCOMB_X79_Y52_N16
\FD|BR|saidaA[13]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[13]~37_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[13]~36_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\))) # (!\FD|BR|saidaA[13]~36_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[13]~36_combout\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(37),
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\,
	combout => \FD|BR|saidaA[13]~37_combout\);

-- Location: FF_X80_Y52_N27
\FD|IDEX|data_s1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|BR|saidaA[13]~37_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(13));

-- Location: FF_X77_Y52_N9
\FD|BR|bancoReg_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(35));

-- Location: LCCOMB_X75_Y52_N12
\FD|BR|bancoReg_rtl_0_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X75_Y52_N13
\FD|BR|bancoReg_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(36));

-- Location: LCCOMB_X75_Y52_N6
\FD|BR|saidaA[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[12]~38_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(36) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(36),
	combout => \FD|BR|saidaA[12]~38_combout\);

-- Location: LCCOMB_X77_Y52_N16
\FD|BR|saidaA[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[12]~39_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[12]~38_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\))) # (!\FD|BR|saidaA[12]~38_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(35),
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\,
	datad => \FD|BR|saidaA[12]~38_combout\,
	combout => \FD|BR|saidaA[12]~39_combout\);

-- Location: FF_X77_Y52_N17
\FD|IDEX|data_s1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(12));

-- Location: LCCOMB_X76_Y52_N28
\FD|BR|bancoReg_rtl_1_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\);

-- Location: FF_X76_Y52_N29
\FD|BR|bancoReg_rtl_1_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(34));

-- Location: LCCOMB_X76_Y52_N14
\FD|BR|saidaB[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[11]~40_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(34) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(34),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[11]~40_combout\);

-- Location: FF_X79_Y52_N21
\FD|BR|bancoReg_rtl_1_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[11]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(33));

-- Location: LCCOMB_X77_Y52_N10
\FD|BR|saidaB[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[11]~41_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[11]~40_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\))) # (!\FD|BR|saidaB[11]~40_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[11]~40_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(33),
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\,
	combout => \FD|BR|saidaB[11]~41_combout\);

-- Location: FF_X77_Y52_N11
\FD|IDEX|data_s2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(11));

-- Location: LCCOMB_X77_Y52_N14
\FD|mux_Banco_Ula|saida[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[11]~20_combout\ = (\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s3\(4)))) # (!\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s8\(0),
	datab => \FD|IDEX|data_s2\(11),
	datad => \FD|IDEX|data_s3\(4),
	combout => \FD|mux_Banco_Ula|saida[11]~20_combout\);

-- Location: FF_X79_Y52_N13
\FD|BR|bancoReg_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[11]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(33));

-- Location: LCCOMB_X79_Y55_N8
\FD|BR|bancoReg_rtl_0_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X79_Y55_N9
\FD|BR|bancoReg_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(34));

-- Location: LCCOMB_X79_Y52_N0
\FD|BR|saidaA[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[11]~40_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(34) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(34),
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[11]~40_combout\);

-- Location: LCCOMB_X79_Y52_N4
\FD|BR|saidaA[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[11]~41_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[11]~40_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\))) # (!\FD|BR|saidaA[11]~40_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(33),
	datab => \FD|BR|saidaA[11]~40_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\,
	combout => \FD|BR|saidaA[11]~41_combout\);

-- Location: FF_X80_Y52_N5
\FD|IDEX|data_s1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|BR|saidaA[11]~41_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(11));

-- Location: LCCOMB_X77_Y53_N4
\FD|BR|bancoReg_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X77_Y53_N5
\FD|BR|bancoReg_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(32));

-- Location: LCCOMB_X77_Y53_N14
\FD|BR|saidaA[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[10]~42_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(32) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(32),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[10]~42_combout\);

-- Location: FF_X79_Y52_N27
\FD|BR|bancoReg_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[10]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(31));

-- Location: LCCOMB_X79_Y52_N26
\FD|BR|saidaA[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[10]~43_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[10]~42_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\))) # (!\FD|BR|saidaA[10]~42_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[10]~42_combout\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(31),
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\,
	combout => \FD|BR|saidaA[10]~43_combout\);

-- Location: FF_X80_Y52_N19
\FD|IDEX|data_s1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|BR|saidaA[10]~43_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(10));

-- Location: FF_X77_Y52_N5
\FD|BR|bancoReg_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(29));

-- Location: LCCOMB_X75_Y52_N28
\FD|BR|bancoReg_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X75_Y52_N29
\FD|BR|bancoReg_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(30));

-- Location: LCCOMB_X75_Y52_N14
\FD|BR|saidaA[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[9]~44_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(30) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(30),
	combout => \FD|BR|saidaA[9]~44_combout\);

-- Location: LCCOMB_X77_Y52_N28
\FD|BR|saidaA[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[9]~45_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[9]~44_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\))) # (!\FD|BR|saidaA[9]~44_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(29),
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\,
	datad => \FD|BR|saidaA[9]~44_combout\,
	combout => \FD|BR|saidaA[9]~45_combout\);

-- Location: FF_X80_Y52_N1
\FD|IDEX|data_s1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|BR|saidaA[9]~45_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(9));

-- Location: FF_X79_Y50_N13
\FD|BR|bancoReg_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(27));

-- Location: LCCOMB_X79_Y50_N26
\FD|BR|bancoReg_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X79_Y50_N27
\FD|BR|bancoReg_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(28));

-- Location: LCCOMB_X79_Y50_N14
\FD|BR|saidaA[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[8]~46_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(28) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(28),
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[8]~46_combout\);

-- Location: LCCOMB_X79_Y50_N10
\FD|BR|saidaA[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[8]~47_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[8]~46_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\))) # (!\FD|BR|saidaA[8]~46_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(27),
	datab => \FD|BR|saidaA[8]~46_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\,
	combout => \FD|BR|saidaA[8]~47_combout\);

-- Location: FF_X79_Y50_N11
\FD|IDEX|data_s1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(8));

-- Location: LCCOMB_X76_Y52_N24
\FD|BR|bancoReg_rtl_1_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\);

-- Location: FF_X76_Y52_N25
\FD|BR|bancoReg_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(26));

-- Location: LCCOMB_X76_Y52_N6
\FD|BR|saidaB[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[7]~48_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(26) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(26),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[7]~48_combout\);

-- Location: FF_X79_Y49_N19
\FD|BR|bancoReg_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[7]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(25));

-- Location: LCCOMB_X79_Y52_N28
\FD|BR|saidaB[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[7]~49_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[7]~48_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\))) # (!\FD|BR|saidaB[7]~48_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|saidaB[7]~48_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(25),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\,
	combout => \FD|BR|saidaB[7]~49_combout\);

-- Location: FF_X79_Y52_N29
\FD|IDEX|data_s2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[7]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(7));

-- Location: LCCOMB_X79_Y52_N24
\FD|mux_Banco_Ula|saida[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[7]~24_combout\ = (\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s3\(4))) # (!\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s2\(7),
	datad => \FD|IDEX|data_s8\(0),
	combout => \FD|mux_Banco_Ula|saida[7]~24_combout\);

-- Location: FF_X79_Y52_N11
\FD|BR|bancoReg_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[6]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(23));

-- Location: LCCOMB_X82_Y54_N28
\FD|BR|bancoReg_rtl_1_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\);

-- Location: FF_X82_Y54_N29
\FD|BR|bancoReg_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(24));

-- Location: LCCOMB_X82_Y54_N30
\FD|BR|saidaB[6]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[6]~50_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(24) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(24),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[6]~50_combout\);

-- Location: LCCOMB_X79_Y52_N30
\FD|BR|saidaB[6]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[6]~51_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[6]~50_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\))) # (!\FD|BR|saidaB[6]~50_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(23),
	datab => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|saidaB[6]~50_combout\,
	combout => \FD|BR|saidaB[6]~51_combout\);

-- Location: FF_X79_Y52_N31
\FD|IDEX|data_s2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[6]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(6));

-- Location: LCCOMB_X79_Y52_N10
\FD|mux_Banco_Ula|saida[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[6]~25_combout\ = (\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s3\(4)))) # (!\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s2\(6),
	datab => \FD|IDEX|data_s3\(4),
	datad => \FD|IDEX|data_s8\(0),
	combout => \FD|mux_Banco_Ula|saida[6]~25_combout\);

-- Location: LCCOMB_X82_Y54_N12
\FD|BR|bancoReg_rtl_1_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\);

-- Location: FF_X82_Y54_N13
\FD|BR|bancoReg_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(22));

-- Location: LCCOMB_X82_Y54_N6
\FD|BR|saidaB[5]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[5]~52_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(22) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(22),
	combout => \FD|BR|saidaB[5]~52_combout\);

-- Location: LCCOMB_X84_Y51_N22
\FD|BR|bancoReg_rtl_1_bypass[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[21]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[5]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[5]~26_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[21]~feeder_combout\);

-- Location: FF_X84_Y51_N23
\FD|BR|bancoReg_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(21));

-- Location: LCCOMB_X81_Y54_N8
\FD|BR|saidaB[5]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[5]~53_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[5]~52_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\))) # (!\FD|BR|saidaB[5]~52_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[5]~52_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(21),
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\,
	combout => \FD|BR|saidaB[5]~53_combout\);

-- Location: FF_X81_Y54_N9
\FD|IDEX|data_s2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[5]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(5));

-- Location: LCCOMB_X81_Y54_N26
\FD|mux_Banco_Ula|saida[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[5]~26_combout\ = (\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s4\(1))) # (!\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s4\(1),
	datac => \FD|IDEX|data_s2\(5),
	datad => \FD|IDEX|data_s8\(0),
	combout => \FD|mux_Banco_Ula|saida[5]~26_combout\);

-- Location: FF_X77_Y55_N19
\FD|BR|bancoReg_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(19));

-- Location: LCCOMB_X83_Y51_N20
\FD|BR|bancoReg_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X83_Y51_N21
\FD|BR|bancoReg_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(20));

-- Location: LCCOMB_X79_Y52_N20
\FD|BR|saidaA[4]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[4]~54_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(20) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(20),
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[4]~54_combout\);

-- Location: LCCOMB_X79_Y52_N18
\FD|BR|saidaA[4]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[4]~55_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[4]~54_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\))) # (!\FD|BR|saidaA[4]~54_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(19),
	datab => \FD|BR|saidaA[4]~54_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\,
	combout => \FD|BR|saidaA[4]~55_combout\);

-- Location: FF_X80_Y52_N3
\FD|IDEX|data_s1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|BR|saidaA[4]~55_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(4));

-- Location: LCCOMB_X81_Y52_N14
\FD|mux_Banco_Ula|saida[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[3]~28_combout\ = (\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s3\(3)))) # (!\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s8\(0),
	datab => \FD|IDEX|data_s2\(3),
	datad => \FD|IDEX|data_s3\(3),
	combout => \FD|mux_Banco_Ula|saida[3]~28_combout\);

-- Location: FF_X81_Y55_N31
\FD|BR|bancoReg_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(15));

-- Location: LCCOMB_X81_Y55_N0
\FD|BR|bancoReg_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X81_Y55_N1
\FD|BR|bancoReg_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(16));

-- Location: LCCOMB_X81_Y55_N14
\FD|BR|saidaA[2]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[2]~58_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(16) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(16),
	combout => \FD|BR|saidaA[2]~58_combout\);

-- Location: LCCOMB_X81_Y55_N28
\FD|BR|saidaA[2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[2]~59_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[2]~58_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\))) # (!\FD|BR|saidaA[2]~58_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(15),
	datab => \FD|BR|saidaA[2]~58_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\,
	combout => \FD|BR|saidaA[2]~59_combout\);

-- Location: FF_X81_Y55_N29
\FD|IDEX|data_s1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(2));

-- Location: LCCOMB_X81_Y52_N6
\FD|mux_Banco_Ula|saida[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[1]~30_combout\ = (\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s3\(1))) # (!\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s8\(0),
	datab => \FD|IDEX|data_s3\(1),
	datad => \FD|IDEX|data_s2\(1),
	combout => \FD|mux_Banco_Ula|saida[1]~30_combout\);

-- Location: LCCOMB_X81_Y52_N28
\FD|mux_Banco_Ula|saida[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[0]~31_combout\ = (\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s3\(0))) # (!\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s8\(0),
	datab => \FD|IDEX|data_s3\(0),
	datad => \FD|IDEX|data_s2\(0),
	combout => \FD|mux_Banco_Ula|saida[0]~31_combout\);

-- Location: FF_X77_Y55_N15
\FD|BR|bancoReg_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(11));

-- Location: LCCOMB_X81_Y55_N4
\FD|BR|bancoReg_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X81_Y55_N5
\FD|BR|bancoReg_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(12));

-- Location: LCCOMB_X81_Y55_N6
\FD|BR|saidaA[0]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~62_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(12) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(12),
	combout => \FD|BR|saidaA[0]~62_combout\);

-- Location: LCCOMB_X81_Y55_N8
\FD|BR|saidaA[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~63_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[0]~62_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\FD|BR|saidaA[0]~62_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(11),
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \FD|BR|saidaA[0]~62_combout\,
	combout => \FD|BR|saidaA[0]~63_combout\);

-- Location: FF_X82_Y52_N1
\FD|IDEX|data_s1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|BR|saidaA[0]~63_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(0));

-- Location: LCCOMB_X82_Y52_N0
\FD|ULA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~0_combout\ = (\FD|mux_Banco_Ula|saida[0]~31_combout\ & (\FD|IDEX|data_s1\(0) $ (VCC))) # (!\FD|mux_Banco_Ula|saida[0]~31_combout\ & ((\FD|IDEX|data_s1\(0)) # (GND)))
-- \FD|ULA|Add1~1\ = CARRY((\FD|IDEX|data_s1\(0)) # (!\FD|mux_Banco_Ula|saida[0]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[0]~31_combout\,
	datab => \FD|IDEX|data_s1\(0),
	datad => VCC,
	combout => \FD|ULA|Add1~0_combout\,
	cout => \FD|ULA|Add1~1\);

-- Location: LCCOMB_X82_Y52_N2
\FD|ULA|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~2_combout\ = (\FD|mux_Banco_Ula|saida[1]~30_combout\ & ((\FD|IDEX|data_s1\(1) & (!\FD|ULA|Add1~1\)) # (!\FD|IDEX|data_s1\(1) & ((\FD|ULA|Add1~1\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[1]~30_combout\ & ((\FD|IDEX|data_s1\(1) & 
-- (\FD|ULA|Add1~1\ & VCC)) # (!\FD|IDEX|data_s1\(1) & (!\FD|ULA|Add1~1\))))
-- \FD|ULA|Add1~3\ = CARRY((\FD|mux_Banco_Ula|saida[1]~30_combout\ & ((!\FD|ULA|Add1~1\) # (!\FD|IDEX|data_s1\(1)))) # (!\FD|mux_Banco_Ula|saida[1]~30_combout\ & (!\FD|IDEX|data_s1\(1) & !\FD|ULA|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[1]~30_combout\,
	datab => \FD|IDEX|data_s1\(1),
	datad => VCC,
	cin => \FD|ULA|Add1~1\,
	combout => \FD|ULA|Add1~2_combout\,
	cout => \FD|ULA|Add1~3\);

-- Location: LCCOMB_X82_Y52_N4
\FD|ULA|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~4_combout\ = ((\FD|IDEX|data_s1\(2) $ (\FD|mux_Banco_Ula|saida[2]~29_combout\ $ (\FD|ULA|Add1~3\)))) # (GND)
-- \FD|ULA|Add1~5\ = CARRY((\FD|IDEX|data_s1\(2) & ((!\FD|ULA|Add1~3\) # (!\FD|mux_Banco_Ula|saida[2]~29_combout\))) # (!\FD|IDEX|data_s1\(2) & (!\FD|mux_Banco_Ula|saida[2]~29_combout\ & !\FD|ULA|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(2),
	datab => \FD|mux_Banco_Ula|saida[2]~29_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~3\,
	combout => \FD|ULA|Add1~4_combout\,
	cout => \FD|ULA|Add1~5\);

-- Location: LCCOMB_X82_Y52_N6
\FD|ULA|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~6_combout\ = (\FD|IDEX|data_s1\(3) & ((\FD|mux_Banco_Ula|saida[3]~28_combout\ & (!\FD|ULA|Add1~5\)) # (!\FD|mux_Banco_Ula|saida[3]~28_combout\ & (\FD|ULA|Add1~5\ & VCC)))) # (!\FD|IDEX|data_s1\(3) & ((\FD|mux_Banco_Ula|saida[3]~28_combout\ & 
-- ((\FD|ULA|Add1~5\) # (GND))) # (!\FD|mux_Banco_Ula|saida[3]~28_combout\ & (!\FD|ULA|Add1~5\))))
-- \FD|ULA|Add1~7\ = CARRY((\FD|IDEX|data_s1\(3) & (\FD|mux_Banco_Ula|saida[3]~28_combout\ & !\FD|ULA|Add1~5\)) # (!\FD|IDEX|data_s1\(3) & ((\FD|mux_Banco_Ula|saida[3]~28_combout\) # (!\FD|ULA|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(3),
	datab => \FD|mux_Banco_Ula|saida[3]~28_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~5\,
	combout => \FD|ULA|Add1~6_combout\,
	cout => \FD|ULA|Add1~7\);

-- Location: LCCOMB_X82_Y52_N8
\FD|ULA|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~8_combout\ = ((\FD|mux_Banco_Ula|saida[4]~27_combout\ $ (\FD|IDEX|data_s1\(4) $ (\FD|ULA|Add1~7\)))) # (GND)
-- \FD|ULA|Add1~9\ = CARRY((\FD|mux_Banco_Ula|saida[4]~27_combout\ & (\FD|IDEX|data_s1\(4) & !\FD|ULA|Add1~7\)) # (!\FD|mux_Banco_Ula|saida[4]~27_combout\ & ((\FD|IDEX|data_s1\(4)) # (!\FD|ULA|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[4]~27_combout\,
	datab => \FD|IDEX|data_s1\(4),
	datad => VCC,
	cin => \FD|ULA|Add1~7\,
	combout => \FD|ULA|Add1~8_combout\,
	cout => \FD|ULA|Add1~9\);

-- Location: LCCOMB_X82_Y52_N10
\FD|ULA|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~10_combout\ = (\FD|mux_Banco_Ula|saida[5]~26_combout\ & ((\FD|IDEX|data_s1\(5) & (!\FD|ULA|Add1~9\)) # (!\FD|IDEX|data_s1\(5) & ((\FD|ULA|Add1~9\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[5]~26_combout\ & ((\FD|IDEX|data_s1\(5) & 
-- (\FD|ULA|Add1~9\ & VCC)) # (!\FD|IDEX|data_s1\(5) & (!\FD|ULA|Add1~9\))))
-- \FD|ULA|Add1~11\ = CARRY((\FD|mux_Banco_Ula|saida[5]~26_combout\ & ((!\FD|ULA|Add1~9\) # (!\FD|IDEX|data_s1\(5)))) # (!\FD|mux_Banco_Ula|saida[5]~26_combout\ & (!\FD|IDEX|data_s1\(5) & !\FD|ULA|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[5]~26_combout\,
	datab => \FD|IDEX|data_s1\(5),
	datad => VCC,
	cin => \FD|ULA|Add1~9\,
	combout => \FD|ULA|Add1~10_combout\,
	cout => \FD|ULA|Add1~11\);

-- Location: LCCOMB_X82_Y52_N12
\FD|ULA|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~12_combout\ = ((\FD|IDEX|data_s1\(6) $ (\FD|mux_Banco_Ula|saida[6]~25_combout\ $ (\FD|ULA|Add1~11\)))) # (GND)
-- \FD|ULA|Add1~13\ = CARRY((\FD|IDEX|data_s1\(6) & ((!\FD|ULA|Add1~11\) # (!\FD|mux_Banco_Ula|saida[6]~25_combout\))) # (!\FD|IDEX|data_s1\(6) & (!\FD|mux_Banco_Ula|saida[6]~25_combout\ & !\FD|ULA|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(6),
	datab => \FD|mux_Banco_Ula|saida[6]~25_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~11\,
	combout => \FD|ULA|Add1~12_combout\,
	cout => \FD|ULA|Add1~13\);

-- Location: LCCOMB_X82_Y52_N14
\FD|ULA|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~14_combout\ = (\FD|IDEX|data_s1\(7) & ((\FD|mux_Banco_Ula|saida[7]~24_combout\ & (!\FD|ULA|Add1~13\)) # (!\FD|mux_Banco_Ula|saida[7]~24_combout\ & (\FD|ULA|Add1~13\ & VCC)))) # (!\FD|IDEX|data_s1\(7) & ((\FD|mux_Banco_Ula|saida[7]~24_combout\ 
-- & ((\FD|ULA|Add1~13\) # (GND))) # (!\FD|mux_Banco_Ula|saida[7]~24_combout\ & (!\FD|ULA|Add1~13\))))
-- \FD|ULA|Add1~15\ = CARRY((\FD|IDEX|data_s1\(7) & (\FD|mux_Banco_Ula|saida[7]~24_combout\ & !\FD|ULA|Add1~13\)) # (!\FD|IDEX|data_s1\(7) & ((\FD|mux_Banco_Ula|saida[7]~24_combout\) # (!\FD|ULA|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(7),
	datab => \FD|mux_Banco_Ula|saida[7]~24_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~13\,
	combout => \FD|ULA|Add1~14_combout\,
	cout => \FD|ULA|Add1~15\);

-- Location: LCCOMB_X82_Y52_N16
\FD|ULA|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~16_combout\ = ((\FD|mux_Banco_Ula|saida[8]~23_combout\ $ (\FD|IDEX|data_s1\(8) $ (\FD|ULA|Add1~15\)))) # (GND)
-- \FD|ULA|Add1~17\ = CARRY((\FD|mux_Banco_Ula|saida[8]~23_combout\ & (\FD|IDEX|data_s1\(8) & !\FD|ULA|Add1~15\)) # (!\FD|mux_Banco_Ula|saida[8]~23_combout\ & ((\FD|IDEX|data_s1\(8)) # (!\FD|ULA|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[8]~23_combout\,
	datab => \FD|IDEX|data_s1\(8),
	datad => VCC,
	cin => \FD|ULA|Add1~15\,
	combout => \FD|ULA|Add1~16_combout\,
	cout => \FD|ULA|Add1~17\);

-- Location: LCCOMB_X82_Y52_N18
\FD|ULA|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~18_combout\ = (\FD|IDEX|data_s1\(9) & ((\FD|mux_Banco_Ula|saida[9]~22_combout\ & (!\FD|ULA|Add1~17\)) # (!\FD|mux_Banco_Ula|saida[9]~22_combout\ & (\FD|ULA|Add1~17\ & VCC)))) # (!\FD|IDEX|data_s1\(9) & ((\FD|mux_Banco_Ula|saida[9]~22_combout\ 
-- & ((\FD|ULA|Add1~17\) # (GND))) # (!\FD|mux_Banco_Ula|saida[9]~22_combout\ & (!\FD|ULA|Add1~17\))))
-- \FD|ULA|Add1~19\ = CARRY((\FD|IDEX|data_s1\(9) & (\FD|mux_Banco_Ula|saida[9]~22_combout\ & !\FD|ULA|Add1~17\)) # (!\FD|IDEX|data_s1\(9) & ((\FD|mux_Banco_Ula|saida[9]~22_combout\) # (!\FD|ULA|Add1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(9),
	datab => \FD|mux_Banco_Ula|saida[9]~22_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~17\,
	combout => \FD|ULA|Add1~18_combout\,
	cout => \FD|ULA|Add1~19\);

-- Location: LCCOMB_X82_Y52_N20
\FD|ULA|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~20_combout\ = ((\FD|IDEX|data_s1\(10) $ (\FD|mux_Banco_Ula|saida[10]~21_combout\ $ (\FD|ULA|Add1~19\)))) # (GND)
-- \FD|ULA|Add1~21\ = CARRY((\FD|IDEX|data_s1\(10) & ((!\FD|ULA|Add1~19\) # (!\FD|mux_Banco_Ula|saida[10]~21_combout\))) # (!\FD|IDEX|data_s1\(10) & (!\FD|mux_Banco_Ula|saida[10]~21_combout\ & !\FD|ULA|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(10),
	datab => \FD|mux_Banco_Ula|saida[10]~21_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~19\,
	combout => \FD|ULA|Add1~20_combout\,
	cout => \FD|ULA|Add1~21\);

-- Location: LCCOMB_X82_Y52_N22
\FD|ULA|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~22_combout\ = (\FD|mux_Banco_Ula|saida[11]~20_combout\ & ((\FD|IDEX|data_s1\(11) & (!\FD|ULA|Add1~21\)) # (!\FD|IDEX|data_s1\(11) & ((\FD|ULA|Add1~21\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[11]~20_combout\ & ((\FD|IDEX|data_s1\(11) & 
-- (\FD|ULA|Add1~21\ & VCC)) # (!\FD|IDEX|data_s1\(11) & (!\FD|ULA|Add1~21\))))
-- \FD|ULA|Add1~23\ = CARRY((\FD|mux_Banco_Ula|saida[11]~20_combout\ & ((!\FD|ULA|Add1~21\) # (!\FD|IDEX|data_s1\(11)))) # (!\FD|mux_Banco_Ula|saida[11]~20_combout\ & (!\FD|IDEX|data_s1\(11) & !\FD|ULA|Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[11]~20_combout\,
	datab => \FD|IDEX|data_s1\(11),
	datad => VCC,
	cin => \FD|ULA|Add1~21\,
	combout => \FD|ULA|Add1~22_combout\,
	cout => \FD|ULA|Add1~23\);

-- Location: LCCOMB_X82_Y52_N24
\FD|ULA|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~24_combout\ = ((\FD|IDEX|data_s1\(12) $ (\FD|mux_Banco_Ula|saida[12]~19_combout\ $ (\FD|ULA|Add1~23\)))) # (GND)
-- \FD|ULA|Add1~25\ = CARRY((\FD|IDEX|data_s1\(12) & ((!\FD|ULA|Add1~23\) # (!\FD|mux_Banco_Ula|saida[12]~19_combout\))) # (!\FD|IDEX|data_s1\(12) & (!\FD|mux_Banco_Ula|saida[12]~19_combout\ & !\FD|ULA|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(12),
	datab => \FD|mux_Banco_Ula|saida[12]~19_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~23\,
	combout => \FD|ULA|Add1~24_combout\,
	cout => \FD|ULA|Add1~25\);

-- Location: LCCOMB_X82_Y52_N26
\FD|ULA|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~26_combout\ = (\FD|mux_Banco_Ula|saida[13]~18_combout\ & ((\FD|IDEX|data_s1\(13) & (!\FD|ULA|Add1~25\)) # (!\FD|IDEX|data_s1\(13) & ((\FD|ULA|Add1~25\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[13]~18_combout\ & ((\FD|IDEX|data_s1\(13) & 
-- (\FD|ULA|Add1~25\ & VCC)) # (!\FD|IDEX|data_s1\(13) & (!\FD|ULA|Add1~25\))))
-- \FD|ULA|Add1~27\ = CARRY((\FD|mux_Banco_Ula|saida[13]~18_combout\ & ((!\FD|ULA|Add1~25\) # (!\FD|IDEX|data_s1\(13)))) # (!\FD|mux_Banco_Ula|saida[13]~18_combout\ & (!\FD|IDEX|data_s1\(13) & !\FD|ULA|Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[13]~18_combout\,
	datab => \FD|IDEX|data_s1\(13),
	datad => VCC,
	cin => \FD|ULA|Add1~25\,
	combout => \FD|ULA|Add1~26_combout\,
	cout => \FD|ULA|Add1~27\);

-- Location: LCCOMB_X82_Y52_N28
\FD|ULA|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~28_combout\ = ((\FD|mux_Banco_Ula|saida[14]~17_combout\ $ (\FD|IDEX|data_s1\(14) $ (\FD|ULA|Add1~27\)))) # (GND)
-- \FD|ULA|Add1~29\ = CARRY((\FD|mux_Banco_Ula|saida[14]~17_combout\ & (\FD|IDEX|data_s1\(14) & !\FD|ULA|Add1~27\)) # (!\FD|mux_Banco_Ula|saida[14]~17_combout\ & ((\FD|IDEX|data_s1\(14)) # (!\FD|ULA|Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[14]~17_combout\,
	datab => \FD|IDEX|data_s1\(14),
	datad => VCC,
	cin => \FD|ULA|Add1~27\,
	combout => \FD|ULA|Add1~28_combout\,
	cout => \FD|ULA|Add1~29\);

-- Location: LCCOMB_X82_Y52_N30
\FD|ULA|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~30_combout\ = (\FD|IDEX|data_s1\(15) & ((\FD|mux_Banco_Ula|saida[15]~16_combout\ & (!\FD|ULA|Add1~29\)) # (!\FD|mux_Banco_Ula|saida[15]~16_combout\ & (\FD|ULA|Add1~29\ & VCC)))) # (!\FD|IDEX|data_s1\(15) & 
-- ((\FD|mux_Banco_Ula|saida[15]~16_combout\ & ((\FD|ULA|Add1~29\) # (GND))) # (!\FD|mux_Banco_Ula|saida[15]~16_combout\ & (!\FD|ULA|Add1~29\))))
-- \FD|ULA|Add1~31\ = CARRY((\FD|IDEX|data_s1\(15) & (\FD|mux_Banco_Ula|saida[15]~16_combout\ & !\FD|ULA|Add1~29\)) # (!\FD|IDEX|data_s1\(15) & ((\FD|mux_Banco_Ula|saida[15]~16_combout\) # (!\FD|ULA|Add1~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(15),
	datab => \FD|mux_Banco_Ula|saida[15]~16_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~29\,
	combout => \FD|ULA|Add1~30_combout\,
	cout => \FD|ULA|Add1~31\);

-- Location: LCCOMB_X82_Y51_N0
\FD|ULA|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~32_combout\ = ((\FD|mux_Banco_Ula|saida[16]~15_combout\ $ (\FD|IDEX|data_s1\(16) $ (\FD|ULA|Add1~31\)))) # (GND)
-- \FD|ULA|Add1~33\ = CARRY((\FD|mux_Banco_Ula|saida[16]~15_combout\ & (\FD|IDEX|data_s1\(16) & !\FD|ULA|Add1~31\)) # (!\FD|mux_Banco_Ula|saida[16]~15_combout\ & ((\FD|IDEX|data_s1\(16)) # (!\FD|ULA|Add1~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[16]~15_combout\,
	datab => \FD|IDEX|data_s1\(16),
	datad => VCC,
	cin => \FD|ULA|Add1~31\,
	combout => \FD|ULA|Add1~32_combout\,
	cout => \FD|ULA|Add1~33\);

-- Location: LCCOMB_X82_Y51_N2
\FD|ULA|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~34_combout\ = (\FD|IDEX|data_s1\(17) & ((\FD|mux_Banco_Ula|saida[17]~14_combout\ & (!\FD|ULA|Add1~33\)) # (!\FD|mux_Banco_Ula|saida[17]~14_combout\ & (\FD|ULA|Add1~33\ & VCC)))) # (!\FD|IDEX|data_s1\(17) & 
-- ((\FD|mux_Banco_Ula|saida[17]~14_combout\ & ((\FD|ULA|Add1~33\) # (GND))) # (!\FD|mux_Banco_Ula|saida[17]~14_combout\ & (!\FD|ULA|Add1~33\))))
-- \FD|ULA|Add1~35\ = CARRY((\FD|IDEX|data_s1\(17) & (\FD|mux_Banco_Ula|saida[17]~14_combout\ & !\FD|ULA|Add1~33\)) # (!\FD|IDEX|data_s1\(17) & ((\FD|mux_Banco_Ula|saida[17]~14_combout\) # (!\FD|ULA|Add1~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(17),
	datab => \FD|mux_Banco_Ula|saida[17]~14_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~33\,
	combout => \FD|ULA|Add1~34_combout\,
	cout => \FD|ULA|Add1~35\);

-- Location: LCCOMB_X82_Y51_N4
\FD|ULA|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~36_combout\ = ((\FD|IDEX|data_s1\(18) $ (\FD|mux_Banco_Ula|saida[18]~13_combout\ $ (\FD|ULA|Add1~35\)))) # (GND)
-- \FD|ULA|Add1~37\ = CARRY((\FD|IDEX|data_s1\(18) & ((!\FD|ULA|Add1~35\) # (!\FD|mux_Banco_Ula|saida[18]~13_combout\))) # (!\FD|IDEX|data_s1\(18) & (!\FD|mux_Banco_Ula|saida[18]~13_combout\ & !\FD|ULA|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(18),
	datab => \FD|mux_Banco_Ula|saida[18]~13_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~35\,
	combout => \FD|ULA|Add1~36_combout\,
	cout => \FD|ULA|Add1~37\);

-- Location: LCCOMB_X82_Y51_N6
\FD|ULA|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~38_combout\ = (\FD|IDEX|data_s1\(19) & ((\FD|mux_Banco_Ula|saida[19]~12_combout\ & (!\FD|ULA|Add1~37\)) # (!\FD|mux_Banco_Ula|saida[19]~12_combout\ & (\FD|ULA|Add1~37\ & VCC)))) # (!\FD|IDEX|data_s1\(19) & 
-- ((\FD|mux_Banco_Ula|saida[19]~12_combout\ & ((\FD|ULA|Add1~37\) # (GND))) # (!\FD|mux_Banco_Ula|saida[19]~12_combout\ & (!\FD|ULA|Add1~37\))))
-- \FD|ULA|Add1~39\ = CARRY((\FD|IDEX|data_s1\(19) & (\FD|mux_Banco_Ula|saida[19]~12_combout\ & !\FD|ULA|Add1~37\)) # (!\FD|IDEX|data_s1\(19) & ((\FD|mux_Banco_Ula|saida[19]~12_combout\) # (!\FD|ULA|Add1~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(19),
	datab => \FD|mux_Banco_Ula|saida[19]~12_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~37\,
	combout => \FD|ULA|Add1~38_combout\,
	cout => \FD|ULA|Add1~39\);

-- Location: LCCOMB_X82_Y51_N8
\FD|ULA|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~40_combout\ = ((\FD|IDEX|data_s1\(20) $ (\FD|mux_Banco_Ula|saida[20]~11_combout\ $ (\FD|ULA|Add1~39\)))) # (GND)
-- \FD|ULA|Add1~41\ = CARRY((\FD|IDEX|data_s1\(20) & ((!\FD|ULA|Add1~39\) # (!\FD|mux_Banco_Ula|saida[20]~11_combout\))) # (!\FD|IDEX|data_s1\(20) & (!\FD|mux_Banco_Ula|saida[20]~11_combout\ & !\FD|ULA|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(20),
	datab => \FD|mux_Banco_Ula|saida[20]~11_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~39\,
	combout => \FD|ULA|Add1~40_combout\,
	cout => \FD|ULA|Add1~41\);

-- Location: LCCOMB_X82_Y51_N10
\FD|ULA|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~42_combout\ = (\FD|IDEX|data_s1\(21) & ((\FD|mux_Banco_Ula|saida[21]~10_combout\ & (!\FD|ULA|Add1~41\)) # (!\FD|mux_Banco_Ula|saida[21]~10_combout\ & (\FD|ULA|Add1~41\ & VCC)))) # (!\FD|IDEX|data_s1\(21) & 
-- ((\FD|mux_Banco_Ula|saida[21]~10_combout\ & ((\FD|ULA|Add1~41\) # (GND))) # (!\FD|mux_Banco_Ula|saida[21]~10_combout\ & (!\FD|ULA|Add1~41\))))
-- \FD|ULA|Add1~43\ = CARRY((\FD|IDEX|data_s1\(21) & (\FD|mux_Banco_Ula|saida[21]~10_combout\ & !\FD|ULA|Add1~41\)) # (!\FD|IDEX|data_s1\(21) & ((\FD|mux_Banco_Ula|saida[21]~10_combout\) # (!\FD|ULA|Add1~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(21),
	datab => \FD|mux_Banco_Ula|saida[21]~10_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~41\,
	combout => \FD|ULA|Add1~42_combout\,
	cout => \FD|ULA|Add1~43\);

-- Location: LCCOMB_X82_Y51_N12
\FD|ULA|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~44_combout\ = ((\FD|IDEX|data_s1\(22) $ (\FD|mux_Banco_Ula|saida[22]~9_combout\ $ (\FD|ULA|Add1~43\)))) # (GND)
-- \FD|ULA|Add1~45\ = CARRY((\FD|IDEX|data_s1\(22) & ((!\FD|ULA|Add1~43\) # (!\FD|mux_Banco_Ula|saida[22]~9_combout\))) # (!\FD|IDEX|data_s1\(22) & (!\FD|mux_Banco_Ula|saida[22]~9_combout\ & !\FD|ULA|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(22),
	datab => \FD|mux_Banco_Ula|saida[22]~9_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~43\,
	combout => \FD|ULA|Add1~44_combout\,
	cout => \FD|ULA|Add1~45\);

-- Location: LCCOMB_X82_Y51_N14
\FD|ULA|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~46_combout\ = (\FD|mux_Banco_Ula|saida[23]~8_combout\ & ((\FD|IDEX|data_s1\(23) & (!\FD|ULA|Add1~45\)) # (!\FD|IDEX|data_s1\(23) & ((\FD|ULA|Add1~45\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[23]~8_combout\ & ((\FD|IDEX|data_s1\(23) & 
-- (\FD|ULA|Add1~45\ & VCC)) # (!\FD|IDEX|data_s1\(23) & (!\FD|ULA|Add1~45\))))
-- \FD|ULA|Add1~47\ = CARRY((\FD|mux_Banco_Ula|saida[23]~8_combout\ & ((!\FD|ULA|Add1~45\) # (!\FD|IDEX|data_s1\(23)))) # (!\FD|mux_Banco_Ula|saida[23]~8_combout\ & (!\FD|IDEX|data_s1\(23) & !\FD|ULA|Add1~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[23]~8_combout\,
	datab => \FD|IDEX|data_s1\(23),
	datad => VCC,
	cin => \FD|ULA|Add1~45\,
	combout => \FD|ULA|Add1~46_combout\,
	cout => \FD|ULA|Add1~47\);

-- Location: LCCOMB_X82_Y51_N16
\FD|ULA|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~48_combout\ = ((\FD|mux_Banco_Ula|saida[24]~7_combout\ $ (\FD|IDEX|data_s1\(24) $ (\FD|ULA|Add1~47\)))) # (GND)
-- \FD|ULA|Add1~49\ = CARRY((\FD|mux_Banco_Ula|saida[24]~7_combout\ & (\FD|IDEX|data_s1\(24) & !\FD|ULA|Add1~47\)) # (!\FD|mux_Banco_Ula|saida[24]~7_combout\ & ((\FD|IDEX|data_s1\(24)) # (!\FD|ULA|Add1~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[24]~7_combout\,
	datab => \FD|IDEX|data_s1\(24),
	datad => VCC,
	cin => \FD|ULA|Add1~47\,
	combout => \FD|ULA|Add1~48_combout\,
	cout => \FD|ULA|Add1~49\);

-- Location: LCCOMB_X82_Y51_N18
\FD|ULA|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~50_combout\ = (\FD|mux_Banco_Ula|saida[25]~6_combout\ & ((\FD|IDEX|data_s1\(25) & (!\FD|ULA|Add1~49\)) # (!\FD|IDEX|data_s1\(25) & ((\FD|ULA|Add1~49\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[25]~6_combout\ & ((\FD|IDEX|data_s1\(25) & 
-- (\FD|ULA|Add1~49\ & VCC)) # (!\FD|IDEX|data_s1\(25) & (!\FD|ULA|Add1~49\))))
-- \FD|ULA|Add1~51\ = CARRY((\FD|mux_Banco_Ula|saida[25]~6_combout\ & ((!\FD|ULA|Add1~49\) # (!\FD|IDEX|data_s1\(25)))) # (!\FD|mux_Banco_Ula|saida[25]~6_combout\ & (!\FD|IDEX|data_s1\(25) & !\FD|ULA|Add1~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[25]~6_combout\,
	datab => \FD|IDEX|data_s1\(25),
	datad => VCC,
	cin => \FD|ULA|Add1~49\,
	combout => \FD|ULA|Add1~50_combout\,
	cout => \FD|ULA|Add1~51\);

-- Location: LCCOMB_X82_Y51_N20
\FD|ULA|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~52_combout\ = ((\FD|mux_Banco_Ula|saida[26]~5_combout\ $ (\FD|IDEX|data_s1\(26) $ (\FD|ULA|Add1~51\)))) # (GND)
-- \FD|ULA|Add1~53\ = CARRY((\FD|mux_Banco_Ula|saida[26]~5_combout\ & (\FD|IDEX|data_s1\(26) & !\FD|ULA|Add1~51\)) # (!\FD|mux_Banco_Ula|saida[26]~5_combout\ & ((\FD|IDEX|data_s1\(26)) # (!\FD|ULA|Add1~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[26]~5_combout\,
	datab => \FD|IDEX|data_s1\(26),
	datad => VCC,
	cin => \FD|ULA|Add1~51\,
	combout => \FD|ULA|Add1~52_combout\,
	cout => \FD|ULA|Add1~53\);

-- Location: LCCOMB_X82_Y51_N22
\FD|ULA|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~54_combout\ = (\FD|IDEX|data_s1\(27) & ((\FD|mux_Banco_Ula|saida[27]~4_combout\ & (!\FD|ULA|Add1~53\)) # (!\FD|mux_Banco_Ula|saida[27]~4_combout\ & (\FD|ULA|Add1~53\ & VCC)))) # (!\FD|IDEX|data_s1\(27) & 
-- ((\FD|mux_Banco_Ula|saida[27]~4_combout\ & ((\FD|ULA|Add1~53\) # (GND))) # (!\FD|mux_Banco_Ula|saida[27]~4_combout\ & (!\FD|ULA|Add1~53\))))
-- \FD|ULA|Add1~55\ = CARRY((\FD|IDEX|data_s1\(27) & (\FD|mux_Banco_Ula|saida[27]~4_combout\ & !\FD|ULA|Add1~53\)) # (!\FD|IDEX|data_s1\(27) & ((\FD|mux_Banco_Ula|saida[27]~4_combout\) # (!\FD|ULA|Add1~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(27),
	datab => \FD|mux_Banco_Ula|saida[27]~4_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~53\,
	combout => \FD|ULA|Add1~54_combout\,
	cout => \FD|ULA|Add1~55\);

-- Location: LCCOMB_X82_Y51_N24
\FD|ULA|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~56_combout\ = ((\FD|mux_Banco_Ula|saida[28]~3_combout\ $ (\FD|IDEX|data_s1\(28) $ (\FD|ULA|Add1~55\)))) # (GND)
-- \FD|ULA|Add1~57\ = CARRY((\FD|mux_Banco_Ula|saida[28]~3_combout\ & (\FD|IDEX|data_s1\(28) & !\FD|ULA|Add1~55\)) # (!\FD|mux_Banco_Ula|saida[28]~3_combout\ & ((\FD|IDEX|data_s1\(28)) # (!\FD|ULA|Add1~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[28]~3_combout\,
	datab => \FD|IDEX|data_s1\(28),
	datad => VCC,
	cin => \FD|ULA|Add1~55\,
	combout => \FD|ULA|Add1~56_combout\,
	cout => \FD|ULA|Add1~57\);

-- Location: LCCOMB_X82_Y51_N26
\FD|ULA|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~58_combout\ = (\FD|IDEX|data_s1\(29) & ((\FD|mux_Banco_Ula|saida[29]~2_combout\ & (!\FD|ULA|Add1~57\)) # (!\FD|mux_Banco_Ula|saida[29]~2_combout\ & (\FD|ULA|Add1~57\ & VCC)))) # (!\FD|IDEX|data_s1\(29) & 
-- ((\FD|mux_Banco_Ula|saida[29]~2_combout\ & ((\FD|ULA|Add1~57\) # (GND))) # (!\FD|mux_Banco_Ula|saida[29]~2_combout\ & (!\FD|ULA|Add1~57\))))
-- \FD|ULA|Add1~59\ = CARRY((\FD|IDEX|data_s1\(29) & (\FD|mux_Banco_Ula|saida[29]~2_combout\ & !\FD|ULA|Add1~57\)) # (!\FD|IDEX|data_s1\(29) & ((\FD|mux_Banco_Ula|saida[29]~2_combout\) # (!\FD|ULA|Add1~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(29),
	datab => \FD|mux_Banco_Ula|saida[29]~2_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~57\,
	combout => \FD|ULA|Add1~58_combout\,
	cout => \FD|ULA|Add1~59\);

-- Location: LCCOMB_X82_Y51_N28
\FD|ULA|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~60_combout\ = ((\FD|IDEX|data_s1\(30) $ (\FD|mux_Banco_Ula|saida[30]~1_combout\ $ (\FD|ULA|Add1~59\)))) # (GND)
-- \FD|ULA|Add1~61\ = CARRY((\FD|IDEX|data_s1\(30) & ((!\FD|ULA|Add1~59\) # (!\FD|mux_Banco_Ula|saida[30]~1_combout\))) # (!\FD|IDEX|data_s1\(30) & (!\FD|mux_Banco_Ula|saida[30]~1_combout\ & !\FD|ULA|Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(30),
	datab => \FD|mux_Banco_Ula|saida[30]~1_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~59\,
	combout => \FD|ULA|Add1~60_combout\,
	cout => \FD|ULA|Add1~61\);

-- Location: LCCOMB_X82_Y51_N30
\FD|ULA|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~62_combout\ = \FD|IDEX|data_s1\(31) $ (\FD|ULA|Add1~61\ $ (!\FD|mux_Banco_Ula|saida[31]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(31),
	datad => \FD|mux_Banco_Ula|saida[31]~0_combout\,
	cin => \FD|ULA|Add1~61\,
	combout => \FD|ULA|Add1~62_combout\);

-- Location: LCCOMB_X80_Y52_N0
\FD|ULA|soma[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[0]~0_combout\ = (\FD|IDEX|data_s1\(0) & (\FD|mux_Banco_Ula|saida[0]~31_combout\ $ (VCC))) # (!\FD|IDEX|data_s1\(0) & (\FD|mux_Banco_Ula|saida[0]~31_combout\ & VCC))
-- \FD|ULA|soma[0]~1\ = CARRY((\FD|IDEX|data_s1\(0) & \FD|mux_Banco_Ula|saida[0]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(0),
	datab => \FD|mux_Banco_Ula|saida[0]~31_combout\,
	datad => VCC,
	combout => \FD|ULA|soma[0]~0_combout\,
	cout => \FD|ULA|soma[0]~1\);

-- Location: LCCOMB_X80_Y52_N2
\FD|ULA|soma[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[1]~2_combout\ = (\FD|mux_Banco_Ula|saida[1]~30_combout\ & ((\FD|IDEX|data_s1\(1) & (\FD|ULA|soma[0]~1\ & VCC)) # (!\FD|IDEX|data_s1\(1) & (!\FD|ULA|soma[0]~1\)))) # (!\FD|mux_Banco_Ula|saida[1]~30_combout\ & ((\FD|IDEX|data_s1\(1) & 
-- (!\FD|ULA|soma[0]~1\)) # (!\FD|IDEX|data_s1\(1) & ((\FD|ULA|soma[0]~1\) # (GND)))))
-- \FD|ULA|soma[1]~3\ = CARRY((\FD|mux_Banco_Ula|saida[1]~30_combout\ & (!\FD|IDEX|data_s1\(1) & !\FD|ULA|soma[0]~1\)) # (!\FD|mux_Banco_Ula|saida[1]~30_combout\ & ((!\FD|ULA|soma[0]~1\) # (!\FD|IDEX|data_s1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[1]~30_combout\,
	datab => \FD|IDEX|data_s1\(1),
	datad => VCC,
	cin => \FD|ULA|soma[0]~1\,
	combout => \FD|ULA|soma[1]~2_combout\,
	cout => \FD|ULA|soma[1]~3\);

-- Location: LCCOMB_X80_Y52_N4
\FD|ULA|soma[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[2]~4_combout\ = ((\FD|IDEX|data_s1\(2) $ (\FD|mux_Banco_Ula|saida[2]~29_combout\ $ (!\FD|ULA|soma[1]~3\)))) # (GND)
-- \FD|ULA|soma[2]~5\ = CARRY((\FD|IDEX|data_s1\(2) & ((\FD|mux_Banco_Ula|saida[2]~29_combout\) # (!\FD|ULA|soma[1]~3\))) # (!\FD|IDEX|data_s1\(2) & (\FD|mux_Banco_Ula|saida[2]~29_combout\ & !\FD|ULA|soma[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(2),
	datab => \FD|mux_Banco_Ula|saida[2]~29_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[1]~3\,
	combout => \FD|ULA|soma[2]~4_combout\,
	cout => \FD|ULA|soma[2]~5\);

-- Location: LCCOMB_X80_Y52_N6
\FD|ULA|soma[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[3]~6_combout\ = (\FD|mux_Banco_Ula|saida[3]~28_combout\ & ((\FD|IDEX|data_s1\(3) & (\FD|ULA|soma[2]~5\ & VCC)) # (!\FD|IDEX|data_s1\(3) & (!\FD|ULA|soma[2]~5\)))) # (!\FD|mux_Banco_Ula|saida[3]~28_combout\ & ((\FD|IDEX|data_s1\(3) & 
-- (!\FD|ULA|soma[2]~5\)) # (!\FD|IDEX|data_s1\(3) & ((\FD|ULA|soma[2]~5\) # (GND)))))
-- \FD|ULA|soma[3]~7\ = CARRY((\FD|mux_Banco_Ula|saida[3]~28_combout\ & (!\FD|IDEX|data_s1\(3) & !\FD|ULA|soma[2]~5\)) # (!\FD|mux_Banco_Ula|saida[3]~28_combout\ & ((!\FD|ULA|soma[2]~5\) # (!\FD|IDEX|data_s1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[3]~28_combout\,
	datab => \FD|IDEX|data_s1\(3),
	datad => VCC,
	cin => \FD|ULA|soma[2]~5\,
	combout => \FD|ULA|soma[3]~6_combout\,
	cout => \FD|ULA|soma[3]~7\);

-- Location: LCCOMB_X80_Y52_N8
\FD|ULA|soma[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[4]~8_combout\ = ((\FD|IDEX|data_s1\(4) $ (\FD|mux_Banco_Ula|saida[4]~27_combout\ $ (!\FD|ULA|soma[3]~7\)))) # (GND)
-- \FD|ULA|soma[4]~9\ = CARRY((\FD|IDEX|data_s1\(4) & ((\FD|mux_Banco_Ula|saida[4]~27_combout\) # (!\FD|ULA|soma[3]~7\))) # (!\FD|IDEX|data_s1\(4) & (\FD|mux_Banco_Ula|saida[4]~27_combout\ & !\FD|ULA|soma[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(4),
	datab => \FD|mux_Banco_Ula|saida[4]~27_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[3]~7\,
	combout => \FD|ULA|soma[4]~8_combout\,
	cout => \FD|ULA|soma[4]~9\);

-- Location: LCCOMB_X80_Y52_N10
\FD|ULA|soma[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[5]~10_combout\ = (\FD|IDEX|data_s1\(5) & ((\FD|mux_Banco_Ula|saida[5]~26_combout\ & (\FD|ULA|soma[4]~9\ & VCC)) # (!\FD|mux_Banco_Ula|saida[5]~26_combout\ & (!\FD|ULA|soma[4]~9\)))) # (!\FD|IDEX|data_s1\(5) & 
-- ((\FD|mux_Banco_Ula|saida[5]~26_combout\ & (!\FD|ULA|soma[4]~9\)) # (!\FD|mux_Banco_Ula|saida[5]~26_combout\ & ((\FD|ULA|soma[4]~9\) # (GND)))))
-- \FD|ULA|soma[5]~11\ = CARRY((\FD|IDEX|data_s1\(5) & (!\FD|mux_Banco_Ula|saida[5]~26_combout\ & !\FD|ULA|soma[4]~9\)) # (!\FD|IDEX|data_s1\(5) & ((!\FD|ULA|soma[4]~9\) # (!\FD|mux_Banco_Ula|saida[5]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(5),
	datab => \FD|mux_Banco_Ula|saida[5]~26_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[4]~9\,
	combout => \FD|ULA|soma[5]~10_combout\,
	cout => \FD|ULA|soma[5]~11\);

-- Location: LCCOMB_X80_Y52_N12
\FD|ULA|soma[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[6]~12_combout\ = ((\FD|mux_Banco_Ula|saida[6]~25_combout\ $ (\FD|IDEX|data_s1\(6) $ (!\FD|ULA|soma[5]~11\)))) # (GND)
-- \FD|ULA|soma[6]~13\ = CARRY((\FD|mux_Banco_Ula|saida[6]~25_combout\ & ((\FD|IDEX|data_s1\(6)) # (!\FD|ULA|soma[5]~11\))) # (!\FD|mux_Banco_Ula|saida[6]~25_combout\ & (\FD|IDEX|data_s1\(6) & !\FD|ULA|soma[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[6]~25_combout\,
	datab => \FD|IDEX|data_s1\(6),
	datad => VCC,
	cin => \FD|ULA|soma[5]~11\,
	combout => \FD|ULA|soma[6]~12_combout\,
	cout => \FD|ULA|soma[6]~13\);

-- Location: LCCOMB_X80_Y52_N14
\FD|ULA|soma[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[7]~14_combout\ = (\FD|IDEX|data_s1\(7) & ((\FD|mux_Banco_Ula|saida[7]~24_combout\ & (\FD|ULA|soma[6]~13\ & VCC)) # (!\FD|mux_Banco_Ula|saida[7]~24_combout\ & (!\FD|ULA|soma[6]~13\)))) # (!\FD|IDEX|data_s1\(7) & 
-- ((\FD|mux_Banco_Ula|saida[7]~24_combout\ & (!\FD|ULA|soma[6]~13\)) # (!\FD|mux_Banco_Ula|saida[7]~24_combout\ & ((\FD|ULA|soma[6]~13\) # (GND)))))
-- \FD|ULA|soma[7]~15\ = CARRY((\FD|IDEX|data_s1\(7) & (!\FD|mux_Banco_Ula|saida[7]~24_combout\ & !\FD|ULA|soma[6]~13\)) # (!\FD|IDEX|data_s1\(7) & ((!\FD|ULA|soma[6]~13\) # (!\FD|mux_Banco_Ula|saida[7]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(7),
	datab => \FD|mux_Banco_Ula|saida[7]~24_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[6]~13\,
	combout => \FD|ULA|soma[7]~14_combout\,
	cout => \FD|ULA|soma[7]~15\);

-- Location: LCCOMB_X80_Y52_N16
\FD|ULA|soma[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[8]~16_combout\ = ((\FD|IDEX|data_s1\(8) $ (\FD|mux_Banco_Ula|saida[8]~23_combout\ $ (!\FD|ULA|soma[7]~15\)))) # (GND)
-- \FD|ULA|soma[8]~17\ = CARRY((\FD|IDEX|data_s1\(8) & ((\FD|mux_Banco_Ula|saida[8]~23_combout\) # (!\FD|ULA|soma[7]~15\))) # (!\FD|IDEX|data_s1\(8) & (\FD|mux_Banco_Ula|saida[8]~23_combout\ & !\FD|ULA|soma[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(8),
	datab => \FD|mux_Banco_Ula|saida[8]~23_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[7]~15\,
	combout => \FD|ULA|soma[8]~16_combout\,
	cout => \FD|ULA|soma[8]~17\);

-- Location: LCCOMB_X80_Y52_N18
\FD|ULA|soma[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[9]~18_combout\ = (\FD|mux_Banco_Ula|saida[9]~22_combout\ & ((\FD|IDEX|data_s1\(9) & (\FD|ULA|soma[8]~17\ & VCC)) # (!\FD|IDEX|data_s1\(9) & (!\FD|ULA|soma[8]~17\)))) # (!\FD|mux_Banco_Ula|saida[9]~22_combout\ & ((\FD|IDEX|data_s1\(9) & 
-- (!\FD|ULA|soma[8]~17\)) # (!\FD|IDEX|data_s1\(9) & ((\FD|ULA|soma[8]~17\) # (GND)))))
-- \FD|ULA|soma[9]~19\ = CARRY((\FD|mux_Banco_Ula|saida[9]~22_combout\ & (!\FD|IDEX|data_s1\(9) & !\FD|ULA|soma[8]~17\)) # (!\FD|mux_Banco_Ula|saida[9]~22_combout\ & ((!\FD|ULA|soma[8]~17\) # (!\FD|IDEX|data_s1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[9]~22_combout\,
	datab => \FD|IDEX|data_s1\(9),
	datad => VCC,
	cin => \FD|ULA|soma[8]~17\,
	combout => \FD|ULA|soma[9]~18_combout\,
	cout => \FD|ULA|soma[9]~19\);

-- Location: LCCOMB_X80_Y52_N20
\FD|ULA|soma[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[10]~20_combout\ = ((\FD|mux_Banco_Ula|saida[10]~21_combout\ $ (\FD|IDEX|data_s1\(10) $ (!\FD|ULA|soma[9]~19\)))) # (GND)
-- \FD|ULA|soma[10]~21\ = CARRY((\FD|mux_Banco_Ula|saida[10]~21_combout\ & ((\FD|IDEX|data_s1\(10)) # (!\FD|ULA|soma[9]~19\))) # (!\FD|mux_Banco_Ula|saida[10]~21_combout\ & (\FD|IDEX|data_s1\(10) & !\FD|ULA|soma[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[10]~21_combout\,
	datab => \FD|IDEX|data_s1\(10),
	datad => VCC,
	cin => \FD|ULA|soma[9]~19\,
	combout => \FD|ULA|soma[10]~20_combout\,
	cout => \FD|ULA|soma[10]~21\);

-- Location: LCCOMB_X80_Y52_N22
\FD|ULA|soma[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[11]~22_combout\ = (\FD|IDEX|data_s1\(11) & ((\FD|mux_Banco_Ula|saida[11]~20_combout\ & (\FD|ULA|soma[10]~21\ & VCC)) # (!\FD|mux_Banco_Ula|saida[11]~20_combout\ & (!\FD|ULA|soma[10]~21\)))) # (!\FD|IDEX|data_s1\(11) & 
-- ((\FD|mux_Banco_Ula|saida[11]~20_combout\ & (!\FD|ULA|soma[10]~21\)) # (!\FD|mux_Banco_Ula|saida[11]~20_combout\ & ((\FD|ULA|soma[10]~21\) # (GND)))))
-- \FD|ULA|soma[11]~23\ = CARRY((\FD|IDEX|data_s1\(11) & (!\FD|mux_Banco_Ula|saida[11]~20_combout\ & !\FD|ULA|soma[10]~21\)) # (!\FD|IDEX|data_s1\(11) & ((!\FD|ULA|soma[10]~21\) # (!\FD|mux_Banco_Ula|saida[11]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(11),
	datab => \FD|mux_Banco_Ula|saida[11]~20_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[10]~21\,
	combout => \FD|ULA|soma[11]~22_combout\,
	cout => \FD|ULA|soma[11]~23\);

-- Location: LCCOMB_X80_Y52_N24
\FD|ULA|soma[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[12]~24_combout\ = ((\FD|mux_Banco_Ula|saida[12]~19_combout\ $ (\FD|IDEX|data_s1\(12) $ (!\FD|ULA|soma[11]~23\)))) # (GND)
-- \FD|ULA|soma[12]~25\ = CARRY((\FD|mux_Banco_Ula|saida[12]~19_combout\ & ((\FD|IDEX|data_s1\(12)) # (!\FD|ULA|soma[11]~23\))) # (!\FD|mux_Banco_Ula|saida[12]~19_combout\ & (\FD|IDEX|data_s1\(12) & !\FD|ULA|soma[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[12]~19_combout\,
	datab => \FD|IDEX|data_s1\(12),
	datad => VCC,
	cin => \FD|ULA|soma[11]~23\,
	combout => \FD|ULA|soma[12]~24_combout\,
	cout => \FD|ULA|soma[12]~25\);

-- Location: LCCOMB_X80_Y52_N26
\FD|ULA|soma[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[13]~26_combout\ = (\FD|IDEX|data_s1\(13) & ((\FD|mux_Banco_Ula|saida[13]~18_combout\ & (\FD|ULA|soma[12]~25\ & VCC)) # (!\FD|mux_Banco_Ula|saida[13]~18_combout\ & (!\FD|ULA|soma[12]~25\)))) # (!\FD|IDEX|data_s1\(13) & 
-- ((\FD|mux_Banco_Ula|saida[13]~18_combout\ & (!\FD|ULA|soma[12]~25\)) # (!\FD|mux_Banco_Ula|saida[13]~18_combout\ & ((\FD|ULA|soma[12]~25\) # (GND)))))
-- \FD|ULA|soma[13]~27\ = CARRY((\FD|IDEX|data_s1\(13) & (!\FD|mux_Banco_Ula|saida[13]~18_combout\ & !\FD|ULA|soma[12]~25\)) # (!\FD|IDEX|data_s1\(13) & ((!\FD|ULA|soma[12]~25\) # (!\FD|mux_Banco_Ula|saida[13]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(13),
	datab => \FD|mux_Banco_Ula|saida[13]~18_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[12]~25\,
	combout => \FD|ULA|soma[13]~26_combout\,
	cout => \FD|ULA|soma[13]~27\);

-- Location: LCCOMB_X80_Y52_N28
\FD|ULA|soma[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[14]~28_combout\ = ((\FD|IDEX|data_s1\(14) $ (\FD|mux_Banco_Ula|saida[14]~17_combout\ $ (!\FD|ULA|soma[13]~27\)))) # (GND)
-- \FD|ULA|soma[14]~29\ = CARRY((\FD|IDEX|data_s1\(14) & ((\FD|mux_Banco_Ula|saida[14]~17_combout\) # (!\FD|ULA|soma[13]~27\))) # (!\FD|IDEX|data_s1\(14) & (\FD|mux_Banco_Ula|saida[14]~17_combout\ & !\FD|ULA|soma[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(14),
	datab => \FD|mux_Banco_Ula|saida[14]~17_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[13]~27\,
	combout => \FD|ULA|soma[14]~28_combout\,
	cout => \FD|ULA|soma[14]~29\);

-- Location: LCCOMB_X80_Y52_N30
\FD|ULA|soma[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[15]~30_combout\ = (\FD|IDEX|data_s1\(15) & ((\FD|mux_Banco_Ula|saida[15]~16_combout\ & (\FD|ULA|soma[14]~29\ & VCC)) # (!\FD|mux_Banco_Ula|saida[15]~16_combout\ & (!\FD|ULA|soma[14]~29\)))) # (!\FD|IDEX|data_s1\(15) & 
-- ((\FD|mux_Banco_Ula|saida[15]~16_combout\ & (!\FD|ULA|soma[14]~29\)) # (!\FD|mux_Banco_Ula|saida[15]~16_combout\ & ((\FD|ULA|soma[14]~29\) # (GND)))))
-- \FD|ULA|soma[15]~31\ = CARRY((\FD|IDEX|data_s1\(15) & (!\FD|mux_Banco_Ula|saida[15]~16_combout\ & !\FD|ULA|soma[14]~29\)) # (!\FD|IDEX|data_s1\(15) & ((!\FD|ULA|soma[14]~29\) # (!\FD|mux_Banco_Ula|saida[15]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(15),
	datab => \FD|mux_Banco_Ula|saida[15]~16_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[14]~29\,
	combout => \FD|ULA|soma[15]~30_combout\,
	cout => \FD|ULA|soma[15]~31\);

-- Location: LCCOMB_X80_Y51_N0
\FD|ULA|soma[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[16]~32_combout\ = ((\FD|IDEX|data_s1\(16) $ (\FD|mux_Banco_Ula|saida[16]~15_combout\ $ (!\FD|ULA|soma[15]~31\)))) # (GND)
-- \FD|ULA|soma[16]~33\ = CARRY((\FD|IDEX|data_s1\(16) & ((\FD|mux_Banco_Ula|saida[16]~15_combout\) # (!\FD|ULA|soma[15]~31\))) # (!\FD|IDEX|data_s1\(16) & (\FD|mux_Banco_Ula|saida[16]~15_combout\ & !\FD|ULA|soma[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(16),
	datab => \FD|mux_Banco_Ula|saida[16]~15_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[15]~31\,
	combout => \FD|ULA|soma[16]~32_combout\,
	cout => \FD|ULA|soma[16]~33\);

-- Location: LCCOMB_X80_Y51_N2
\FD|ULA|soma[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[17]~34_combout\ = (\FD|mux_Banco_Ula|saida[17]~14_combout\ & ((\FD|IDEX|data_s1\(17) & (\FD|ULA|soma[16]~33\ & VCC)) # (!\FD|IDEX|data_s1\(17) & (!\FD|ULA|soma[16]~33\)))) # (!\FD|mux_Banco_Ula|saida[17]~14_combout\ & ((\FD|IDEX|data_s1\(17) 
-- & (!\FD|ULA|soma[16]~33\)) # (!\FD|IDEX|data_s1\(17) & ((\FD|ULA|soma[16]~33\) # (GND)))))
-- \FD|ULA|soma[17]~35\ = CARRY((\FD|mux_Banco_Ula|saida[17]~14_combout\ & (!\FD|IDEX|data_s1\(17) & !\FD|ULA|soma[16]~33\)) # (!\FD|mux_Banco_Ula|saida[17]~14_combout\ & ((!\FD|ULA|soma[16]~33\) # (!\FD|IDEX|data_s1\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[17]~14_combout\,
	datab => \FD|IDEX|data_s1\(17),
	datad => VCC,
	cin => \FD|ULA|soma[16]~33\,
	combout => \FD|ULA|soma[17]~34_combout\,
	cout => \FD|ULA|soma[17]~35\);

-- Location: LCCOMB_X80_Y51_N4
\FD|ULA|soma[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[18]~36_combout\ = ((\FD|mux_Banco_Ula|saida[18]~13_combout\ $ (\FD|IDEX|data_s1\(18) $ (!\FD|ULA|soma[17]~35\)))) # (GND)
-- \FD|ULA|soma[18]~37\ = CARRY((\FD|mux_Banco_Ula|saida[18]~13_combout\ & ((\FD|IDEX|data_s1\(18)) # (!\FD|ULA|soma[17]~35\))) # (!\FD|mux_Banco_Ula|saida[18]~13_combout\ & (\FD|IDEX|data_s1\(18) & !\FD|ULA|soma[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[18]~13_combout\,
	datab => \FD|IDEX|data_s1\(18),
	datad => VCC,
	cin => \FD|ULA|soma[17]~35\,
	combout => \FD|ULA|soma[18]~36_combout\,
	cout => \FD|ULA|soma[18]~37\);

-- Location: LCCOMB_X80_Y51_N6
\FD|ULA|soma[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[19]~38_combout\ = (\FD|IDEX|data_s1\(19) & ((\FD|mux_Banco_Ula|saida[19]~12_combout\ & (\FD|ULA|soma[18]~37\ & VCC)) # (!\FD|mux_Banco_Ula|saida[19]~12_combout\ & (!\FD|ULA|soma[18]~37\)))) # (!\FD|IDEX|data_s1\(19) & 
-- ((\FD|mux_Banco_Ula|saida[19]~12_combout\ & (!\FD|ULA|soma[18]~37\)) # (!\FD|mux_Banco_Ula|saida[19]~12_combout\ & ((\FD|ULA|soma[18]~37\) # (GND)))))
-- \FD|ULA|soma[19]~39\ = CARRY((\FD|IDEX|data_s1\(19) & (!\FD|mux_Banco_Ula|saida[19]~12_combout\ & !\FD|ULA|soma[18]~37\)) # (!\FD|IDEX|data_s1\(19) & ((!\FD|ULA|soma[18]~37\) # (!\FD|mux_Banco_Ula|saida[19]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(19),
	datab => \FD|mux_Banco_Ula|saida[19]~12_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[18]~37\,
	combout => \FD|ULA|soma[19]~38_combout\,
	cout => \FD|ULA|soma[19]~39\);

-- Location: LCCOMB_X80_Y51_N8
\FD|ULA|soma[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[20]~40_combout\ = ((\FD|mux_Banco_Ula|saida[20]~11_combout\ $ (\FD|IDEX|data_s1\(20) $ (!\FD|ULA|soma[19]~39\)))) # (GND)
-- \FD|ULA|soma[20]~41\ = CARRY((\FD|mux_Banco_Ula|saida[20]~11_combout\ & ((\FD|IDEX|data_s1\(20)) # (!\FD|ULA|soma[19]~39\))) # (!\FD|mux_Banco_Ula|saida[20]~11_combout\ & (\FD|IDEX|data_s1\(20) & !\FD|ULA|soma[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[20]~11_combout\,
	datab => \FD|IDEX|data_s1\(20),
	datad => VCC,
	cin => \FD|ULA|soma[19]~39\,
	combout => \FD|ULA|soma[20]~40_combout\,
	cout => \FD|ULA|soma[20]~41\);

-- Location: LCCOMB_X80_Y51_N10
\FD|ULA|soma[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[21]~42_combout\ = (\FD|IDEX|data_s1\(21) & ((\FD|mux_Banco_Ula|saida[21]~10_combout\ & (\FD|ULA|soma[20]~41\ & VCC)) # (!\FD|mux_Banco_Ula|saida[21]~10_combout\ & (!\FD|ULA|soma[20]~41\)))) # (!\FD|IDEX|data_s1\(21) & 
-- ((\FD|mux_Banco_Ula|saida[21]~10_combout\ & (!\FD|ULA|soma[20]~41\)) # (!\FD|mux_Banco_Ula|saida[21]~10_combout\ & ((\FD|ULA|soma[20]~41\) # (GND)))))
-- \FD|ULA|soma[21]~43\ = CARRY((\FD|IDEX|data_s1\(21) & (!\FD|mux_Banco_Ula|saida[21]~10_combout\ & !\FD|ULA|soma[20]~41\)) # (!\FD|IDEX|data_s1\(21) & ((!\FD|ULA|soma[20]~41\) # (!\FD|mux_Banco_Ula|saida[21]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(21),
	datab => \FD|mux_Banco_Ula|saida[21]~10_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[20]~41\,
	combout => \FD|ULA|soma[21]~42_combout\,
	cout => \FD|ULA|soma[21]~43\);

-- Location: LCCOMB_X80_Y51_N12
\FD|ULA|soma[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[22]~44_combout\ = ((\FD|IDEX|data_s1\(22) $ (\FD|mux_Banco_Ula|saida[22]~9_combout\ $ (!\FD|ULA|soma[21]~43\)))) # (GND)
-- \FD|ULA|soma[22]~45\ = CARRY((\FD|IDEX|data_s1\(22) & ((\FD|mux_Banco_Ula|saida[22]~9_combout\) # (!\FD|ULA|soma[21]~43\))) # (!\FD|IDEX|data_s1\(22) & (\FD|mux_Banco_Ula|saida[22]~9_combout\ & !\FD|ULA|soma[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(22),
	datab => \FD|mux_Banco_Ula|saida[22]~9_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[21]~43\,
	combout => \FD|ULA|soma[22]~44_combout\,
	cout => \FD|ULA|soma[22]~45\);

-- Location: LCCOMB_X80_Y51_N14
\FD|ULA|soma[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[23]~46_combout\ = (\FD|IDEX|data_s1\(23) & ((\FD|mux_Banco_Ula|saida[23]~8_combout\ & (\FD|ULA|soma[22]~45\ & VCC)) # (!\FD|mux_Banco_Ula|saida[23]~8_combout\ & (!\FD|ULA|soma[22]~45\)))) # (!\FD|IDEX|data_s1\(23) & 
-- ((\FD|mux_Banco_Ula|saida[23]~8_combout\ & (!\FD|ULA|soma[22]~45\)) # (!\FD|mux_Banco_Ula|saida[23]~8_combout\ & ((\FD|ULA|soma[22]~45\) # (GND)))))
-- \FD|ULA|soma[23]~47\ = CARRY((\FD|IDEX|data_s1\(23) & (!\FD|mux_Banco_Ula|saida[23]~8_combout\ & !\FD|ULA|soma[22]~45\)) # (!\FD|IDEX|data_s1\(23) & ((!\FD|ULA|soma[22]~45\) # (!\FD|mux_Banco_Ula|saida[23]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(23),
	datab => \FD|mux_Banco_Ula|saida[23]~8_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[22]~45\,
	combout => \FD|ULA|soma[23]~46_combout\,
	cout => \FD|ULA|soma[23]~47\);

-- Location: LCCOMB_X80_Y51_N16
\FD|ULA|soma[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[24]~48_combout\ = ((\FD|mux_Banco_Ula|saida[24]~7_combout\ $ (\FD|IDEX|data_s1\(24) $ (!\FD|ULA|soma[23]~47\)))) # (GND)
-- \FD|ULA|soma[24]~49\ = CARRY((\FD|mux_Banco_Ula|saida[24]~7_combout\ & ((\FD|IDEX|data_s1\(24)) # (!\FD|ULA|soma[23]~47\))) # (!\FD|mux_Banco_Ula|saida[24]~7_combout\ & (\FD|IDEX|data_s1\(24) & !\FD|ULA|soma[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[24]~7_combout\,
	datab => \FD|IDEX|data_s1\(24),
	datad => VCC,
	cin => \FD|ULA|soma[23]~47\,
	combout => \FD|ULA|soma[24]~48_combout\,
	cout => \FD|ULA|soma[24]~49\);

-- Location: LCCOMB_X80_Y51_N18
\FD|ULA|soma[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[25]~50_combout\ = (\FD|IDEX|data_s1\(25) & ((\FD|mux_Banco_Ula|saida[25]~6_combout\ & (\FD|ULA|soma[24]~49\ & VCC)) # (!\FD|mux_Banco_Ula|saida[25]~6_combout\ & (!\FD|ULA|soma[24]~49\)))) # (!\FD|IDEX|data_s1\(25) & 
-- ((\FD|mux_Banco_Ula|saida[25]~6_combout\ & (!\FD|ULA|soma[24]~49\)) # (!\FD|mux_Banco_Ula|saida[25]~6_combout\ & ((\FD|ULA|soma[24]~49\) # (GND)))))
-- \FD|ULA|soma[25]~51\ = CARRY((\FD|IDEX|data_s1\(25) & (!\FD|mux_Banco_Ula|saida[25]~6_combout\ & !\FD|ULA|soma[24]~49\)) # (!\FD|IDEX|data_s1\(25) & ((!\FD|ULA|soma[24]~49\) # (!\FD|mux_Banco_Ula|saida[25]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(25),
	datab => \FD|mux_Banco_Ula|saida[25]~6_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[24]~49\,
	combout => \FD|ULA|soma[25]~50_combout\,
	cout => \FD|ULA|soma[25]~51\);

-- Location: LCCOMB_X80_Y51_N20
\FD|ULA|soma[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[26]~52_combout\ = ((\FD|mux_Banco_Ula|saida[26]~5_combout\ $ (\FD|IDEX|data_s1\(26) $ (!\FD|ULA|soma[25]~51\)))) # (GND)
-- \FD|ULA|soma[26]~53\ = CARRY((\FD|mux_Banco_Ula|saida[26]~5_combout\ & ((\FD|IDEX|data_s1\(26)) # (!\FD|ULA|soma[25]~51\))) # (!\FD|mux_Banco_Ula|saida[26]~5_combout\ & (\FD|IDEX|data_s1\(26) & !\FD|ULA|soma[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[26]~5_combout\,
	datab => \FD|IDEX|data_s1\(26),
	datad => VCC,
	cin => \FD|ULA|soma[25]~51\,
	combout => \FD|ULA|soma[26]~52_combout\,
	cout => \FD|ULA|soma[26]~53\);

-- Location: LCCOMB_X80_Y51_N22
\FD|ULA|soma[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[27]~54_combout\ = (\FD|IDEX|data_s1\(27) & ((\FD|mux_Banco_Ula|saida[27]~4_combout\ & (\FD|ULA|soma[26]~53\ & VCC)) # (!\FD|mux_Banco_Ula|saida[27]~4_combout\ & (!\FD|ULA|soma[26]~53\)))) # (!\FD|IDEX|data_s1\(27) & 
-- ((\FD|mux_Banco_Ula|saida[27]~4_combout\ & (!\FD|ULA|soma[26]~53\)) # (!\FD|mux_Banco_Ula|saida[27]~4_combout\ & ((\FD|ULA|soma[26]~53\) # (GND)))))
-- \FD|ULA|soma[27]~55\ = CARRY((\FD|IDEX|data_s1\(27) & (!\FD|mux_Banco_Ula|saida[27]~4_combout\ & !\FD|ULA|soma[26]~53\)) # (!\FD|IDEX|data_s1\(27) & ((!\FD|ULA|soma[26]~53\) # (!\FD|mux_Banco_Ula|saida[27]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(27),
	datab => \FD|mux_Banco_Ula|saida[27]~4_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[26]~53\,
	combout => \FD|ULA|soma[27]~54_combout\,
	cout => \FD|ULA|soma[27]~55\);

-- Location: LCCOMB_X80_Y51_N24
\FD|ULA|soma[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[28]~56_combout\ = ((\FD|IDEX|data_s1\(28) $ (\FD|mux_Banco_Ula|saida[28]~3_combout\ $ (!\FD|ULA|soma[27]~55\)))) # (GND)
-- \FD|ULA|soma[28]~57\ = CARRY((\FD|IDEX|data_s1\(28) & ((\FD|mux_Banco_Ula|saida[28]~3_combout\) # (!\FD|ULA|soma[27]~55\))) # (!\FD|IDEX|data_s1\(28) & (\FD|mux_Banco_Ula|saida[28]~3_combout\ & !\FD|ULA|soma[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(28),
	datab => \FD|mux_Banco_Ula|saida[28]~3_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[27]~55\,
	combout => \FD|ULA|soma[28]~56_combout\,
	cout => \FD|ULA|soma[28]~57\);

-- Location: LCCOMB_X80_Y51_N26
\FD|ULA|soma[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[29]~58_combout\ = (\FD|IDEX|data_s1\(29) & ((\FD|mux_Banco_Ula|saida[29]~2_combout\ & (\FD|ULA|soma[28]~57\ & VCC)) # (!\FD|mux_Banco_Ula|saida[29]~2_combout\ & (!\FD|ULA|soma[28]~57\)))) # (!\FD|IDEX|data_s1\(29) & 
-- ((\FD|mux_Banco_Ula|saida[29]~2_combout\ & (!\FD|ULA|soma[28]~57\)) # (!\FD|mux_Banco_Ula|saida[29]~2_combout\ & ((\FD|ULA|soma[28]~57\) # (GND)))))
-- \FD|ULA|soma[29]~59\ = CARRY((\FD|IDEX|data_s1\(29) & (!\FD|mux_Banco_Ula|saida[29]~2_combout\ & !\FD|ULA|soma[28]~57\)) # (!\FD|IDEX|data_s1\(29) & ((!\FD|ULA|soma[28]~57\) # (!\FD|mux_Banco_Ula|saida[29]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(29),
	datab => \FD|mux_Banco_Ula|saida[29]~2_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[28]~57\,
	combout => \FD|ULA|soma[29]~58_combout\,
	cout => \FD|ULA|soma[29]~59\);

-- Location: LCCOMB_X80_Y51_N28
\FD|ULA|soma[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[30]~60_combout\ = ((\FD|mux_Banco_Ula|saida[30]~1_combout\ $ (\FD|IDEX|data_s1\(30) $ (!\FD|ULA|soma[29]~59\)))) # (GND)
-- \FD|ULA|soma[30]~61\ = CARRY((\FD|mux_Banco_Ula|saida[30]~1_combout\ & ((\FD|IDEX|data_s1\(30)) # (!\FD|ULA|soma[29]~59\))) # (!\FD|mux_Banco_Ula|saida[30]~1_combout\ & (\FD|IDEX|data_s1\(30) & !\FD|ULA|soma[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[30]~1_combout\,
	datab => \FD|IDEX|data_s1\(30),
	datad => VCC,
	cin => \FD|ULA|soma[29]~59\,
	combout => \FD|ULA|soma[30]~60_combout\,
	cout => \FD|ULA|soma[30]~61\);

-- Location: LCCOMB_X80_Y51_N30
\FD|ULA|soma[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[31]~62_combout\ = \FD|IDEX|data_s1\(31) $ (\FD|ULA|soma[30]~61\ $ (\FD|mux_Banco_Ula|saida[31]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(31),
	datad => \FD|mux_Banco_Ula|saida[31]~0_combout\,
	cin => \FD|ULA|soma[30]~61\,
	combout => \FD|ULA|soma[31]~62_combout\);

-- Location: LCCOMB_X81_Y51_N0
\FD|ULA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~0_combout\ = (\FD|ULA|soma[31]~62_combout\ & ((\FD|UCULA|ALUop_s~33_combout\) # (\FD|IDEX|data_s7\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUop_s~33_combout\,
	datac => \FD|IDEX|data_s7\(0),
	datad => \FD|ULA|soma[31]~62_combout\,
	combout => \FD|ULA|Mux0~0_combout\);

-- Location: LCCOMB_X81_Y51_N2
\FD|ULA|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~1_combout\ = (\FD|ULA|Mux19~0_combout\ & ((\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Add1~62_combout\)) # (!\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Mux0~0_combout\))))) # (!\FD|ULA|Mux19~0_combout\ & (!\FD|ULA|Mux19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~0_combout\,
	datab => \FD|ULA|Mux19~1_combout\,
	datac => \FD|ULA|Add1~62_combout\,
	datad => \FD|ULA|Mux0~0_combout\,
	combout => \FD|ULA|Mux0~1_combout\);

-- Location: LCCOMB_X81_Y51_N10
\FD|ULA|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux0~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[31]~0_combout\ & ((\FD|IDEX|data_s1\(31)) # (!\FD|ULA|Mux0~1_combout\))) # 
-- (!\FD|mux_Banco_Ula|saida[31]~0_combout\ & (\FD|IDEX|data_s1\(31) & !\FD|ULA|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[31]~0_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|IDEX|data_s1\(31),
	datad => \FD|ULA|Mux0~1_combout\,
	combout => \FD|ULA|Mux0~2_combout\);

-- Location: FF_X81_Y51_N11
\FD|EXMEM|data_s1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(31));

-- Location: LCCOMB_X82_Y53_N12
\FD|MEMWB|data_s1[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s1[31]~feeder_combout\ = \FD|EXMEM|data_s1\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|EXMEM|data_s1\(31),
	combout => \FD|MEMWB|data_s1[31]~feeder_combout\);

-- Location: FF_X82_Y53_N13
\FD|MEMWB|data_s1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s1[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(31));

-- Location: LCCOMB_X81_Y49_N24
\FD|EXMEM|data_s3[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s3[21]~feeder_combout\ = \FD|IDEX|data_s2\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|IDEX|data_s2\(21),
	combout => \FD|EXMEM|data_s3[21]~feeder_combout\);

-- Location: FF_X81_Y49_N25
\FD|EXMEM|data_s3[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s3[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(21));

-- Location: FF_X81_Y53_N1
\FD|EXMEM|data_s3[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s2\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(22));

-- Location: FF_X81_Y53_N3
\FD|EXMEM|data_s3[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s2\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(23));

-- Location: FF_X81_Y50_N27
\FD|EXMEM|data_s3[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s2\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(24));

-- Location: FF_X81_Y50_N23
\FD|EXMEM|data_s3[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s2\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(25));

-- Location: LCCOMB_X79_Y53_N12
\FD|EXMEM|data_s3[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s3[26]~feeder_combout\ = \FD|IDEX|data_s2\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|IDEX|data_s2\(26),
	combout => \FD|EXMEM|data_s3[26]~feeder_combout\);

-- Location: FF_X79_Y53_N13
\FD|EXMEM|data_s3[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s3[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(26));

-- Location: LCCOMB_X79_Y53_N2
\FD|EXMEM|data_s3[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s3[27]~feeder_combout\ = \FD|IDEX|data_s2\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|IDEX|data_s2\(27),
	combout => \FD|EXMEM|data_s3[27]~feeder_combout\);

-- Location: FF_X79_Y53_N3
\FD|EXMEM|data_s3[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s3[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(27));

-- Location: FF_X77_Y52_N1
\FD|EXMEM|data_s3[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s2\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(28));

-- Location: LCCOMB_X77_Y53_N22
\FD|EXMEM|data_s3[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s3[29]~feeder_combout\ = \FD|IDEX|data_s2\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|IDEX|data_s2\(29),
	combout => \FD|EXMEM|data_s3[29]~feeder_combout\);

-- Location: FF_X77_Y53_N23
\FD|EXMEM|data_s3[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s3[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(29));

-- Location: FF_X79_Y52_N23
\FD|EXMEM|data_s3[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s2\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(30));

-- Location: LCCOMB_X77_Y53_N28
\FD|EXMEM|data_s3[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s3[31]~feeder_combout\ = \FD|IDEX|data_s2\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|IDEX|data_s2\(31),
	combout => \FD|EXMEM|data_s3[31]~feeder_combout\);

-- Location: FF_X77_Y53_N29
\FD|EXMEM|data_s3[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s3[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(31));

-- Location: M9K_X78_Y53_N0
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|EXMEM|data_s5\(2),
	portare => VCC,
	clk0 => \detector|saida~clkctrl_outclk\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: LCCOMB_X82_Y53_N4
\FD|mux_Ula_Memoria|saida[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[31]~0_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s1\(31),
	datac => \FD|MEMWB|data_s3\(0),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\,
	combout => \FD|mux_Ula_Memoria|saida[31]~0_combout\);

-- Location: LCCOMB_X81_Y49_N16
\FD|BR|bancoReg_rtl_1_bypass[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\);

-- Location: FF_X81_Y49_N17
\FD|BR|bancoReg_rtl_1_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(52));

-- Location: LCCOMB_X81_Y49_N18
\FD|BR|saidaB[20]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[20]~22_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(52) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(52),
	combout => \FD|BR|saidaB[20]~22_combout\);

-- Location: LCCOMB_X81_Y49_N8
\FD|BR|saidaB[20]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[20]~23_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[20]~22_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\))) # (!\FD|BR|saidaB[20]~22_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(51),
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\,
	datad => \FD|BR|saidaB[20]~22_combout\,
	combout => \FD|BR|saidaB[20]~23_combout\);

-- Location: FF_X81_Y49_N9
\FD|IDEX|data_s2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[20]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(20));

-- Location: FF_X81_Y49_N23
\FD|EXMEM|data_s3[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s2\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(20));

-- Location: LCCOMB_X81_Y51_N30
\FD|UCULA|ALUctr[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[0]~3_combout\ = (!\FD|IDEX|data_s7\(0) & ((\FD|UCULA|ALUop_s~32_combout\) # ((\FD|IDEX|data_s3\(0) & \FD|UCULA|ALUop_s~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(0),
	datab => \FD|IDEX|data_s7\(0),
	datac => \FD|UCULA|ALUop_s~30_combout\,
	datad => \FD|UCULA|ALUop_s~32_combout\,
	combout => \FD|UCULA|ALUctr[0]~3_combout\);

-- Location: LCCOMB_X83_Y51_N4
\FD|ULA|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~0_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[30]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[30]~60_combout\,
	combout => \FD|ULA|Mux1~0_combout\);

-- Location: LCCOMB_X83_Y51_N10
\FD|ULA|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~1_combout\ = (\FD|ULA|Mux19~0_combout\ & ((\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Add1~60_combout\)) # (!\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Mux1~0_combout\))))) # (!\FD|ULA|Mux19~0_combout\ & (((!\FD|ULA|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~60_combout\,
	datab => \FD|ULA|Mux19~0_combout\,
	datac => \FD|ULA|Mux1~0_combout\,
	datad => \FD|ULA|Mux19~1_combout\,
	combout => \FD|ULA|Mux1~1_combout\);

-- Location: LCCOMB_X83_Y51_N28
\FD|ULA|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux1~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[30]~1_combout\ & ((\FD|IDEX|data_s1\(30)) # (!\FD|ULA|Mux1~1_combout\))) # 
-- (!\FD|mux_Banco_Ula|saida[30]~1_combout\ & (\FD|IDEX|data_s1\(30) & !\FD|ULA|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[30]~1_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|IDEX|data_s1\(30),
	datad => \FD|ULA|Mux1~1_combout\,
	combout => \FD|ULA|Mux1~2_combout\);

-- Location: FF_X83_Y51_N29
\FD|EXMEM|data_s1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(30));

-- Location: LCCOMB_X84_Y51_N2
\FD|MEMWB|data_s1[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s1[30]~feeder_combout\ = \FD|EXMEM|data_s1\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s1\(30),
	combout => \FD|MEMWB|data_s1[30]~feeder_combout\);

-- Location: FF_X84_Y51_N3
\FD|MEMWB|data_s1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s1[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(30));

-- Location: LCCOMB_X84_Y51_N20
\FD|mux_Ula_Memoria|saida[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[30]~1_combout\ = (\FD|MEMWB|data_s3\(0) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\)) # (!\FD|MEMWB|data_s3\(0) & ((\FD|MEMWB|data_s1\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEMWB|data_s3\(0),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\,
	datad => \FD|MEMWB|data_s1\(30),
	combout => \FD|mux_Ula_Memoria|saida[30]~1_combout\);

-- Location: LCCOMB_X77_Y52_N20
\FD|BR|saidaB[29]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[29]~5_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[29]~4_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\))) # (!\FD|BR|saidaB[29]~4_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(69)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|saidaB[29]~4_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(69),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\,
	combout => \FD|BR|saidaB[29]~5_combout\);

-- Location: FF_X77_Y52_N21
\FD|IDEX|data_s2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[29]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(29));

-- Location: LCCOMB_X77_Y52_N30
\FD|mux_Banco_Ula|saida[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[29]~2_combout\ = (\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s3\(4))) # (!\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s2\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s8\(0),
	datad => \FD|IDEX|data_s2\(29),
	combout => \FD|mux_Banco_Ula|saida[29]~2_combout\);

-- Location: LCCOMB_X76_Y51_N16
\FD|ULA|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~0_combout\ = (\FD|ULA|soma[29]~58_combout\ & !\FD|UCULA|ALUctr[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|soma[29]~58_combout\,
	datad => \FD|UCULA|ALUctr[0]~3_combout\,
	combout => \FD|ULA|Mux2~0_combout\);

-- Location: LCCOMB_X76_Y51_N10
\FD|ULA|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~1_combout\ = (\FD|ULA|Mux19~0_combout\ & ((\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Add1~58_combout\)) # (!\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Mux2~0_combout\))))) # (!\FD|ULA|Mux19~0_combout\ & (!\FD|ULA|Mux19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~0_combout\,
	datab => \FD|ULA|Mux19~1_combout\,
	datac => \FD|ULA|Add1~58_combout\,
	datad => \FD|ULA|Mux2~0_combout\,
	combout => \FD|ULA|Mux2~1_combout\);

-- Location: LCCOMB_X76_Y51_N12
\FD|ULA|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux2~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[29]~2_combout\ & ((\FD|IDEX|data_s1\(29)) # (!\FD|ULA|Mux2~1_combout\))) # 
-- (!\FD|mux_Banco_Ula|saida[29]~2_combout\ & (\FD|IDEX|data_s1\(29) & !\FD|ULA|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[29]~2_combout\,
	datab => \FD|IDEX|data_s1\(29),
	datac => \FD|UCULA|ALUctr[1]~2_combout\,
	datad => \FD|ULA|Mux2~1_combout\,
	combout => \FD|ULA|Mux2~2_combout\);

-- Location: FF_X76_Y51_N13
\FD|EXMEM|data_s1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(29));

-- Location: LCCOMB_X76_Y53_N14
\FD|MEMWB|data_s1[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s1[29]~feeder_combout\ = \FD|EXMEM|data_s1\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s1\(29),
	combout => \FD|MEMWB|data_s1[29]~feeder_combout\);

-- Location: FF_X76_Y53_N15
\FD|MEMWB|data_s1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s1[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(29));

-- Location: LCCOMB_X77_Y53_N6
\FD|mux_Ula_Memoria|saida[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[29]~2_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s1\(29),
	datac => \FD|MEMWB|data_s3\(0),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\,
	combout => \FD|mux_Ula_Memoria|saida[29]~2_combout\);

-- Location: LCCOMB_X77_Y53_N30
\FD|BR|bancoReg_rtl_1_bypass[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\);

-- Location: FF_X77_Y53_N31
\FD|BR|bancoReg_rtl_1_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(68));

-- Location: LCCOMB_X77_Y52_N2
\FD|BR|saidaB[28]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[28]~6_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(68) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(68),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[28]~6_combout\);

-- Location: LCCOMB_X77_Y52_N26
\FD|BR|saidaB[28]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[28]~7_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[28]~6_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\))) # (!\FD|BR|saidaB[28]~6_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(67)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(67),
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\,
	datad => \FD|BR|saidaB[28]~6_combout\,
	combout => \FD|BR|saidaB[28]~7_combout\);

-- Location: FF_X77_Y52_N27
\FD|IDEX|data_s2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[28]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(28));

-- Location: LCCOMB_X81_Y52_N20
\FD|mux_Banco_Ula|saida[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[28]~3_combout\ = (\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s3\(4))) # (!\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s2\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s8\(0),
	datab => \FD|IDEX|data_s3\(4),
	datad => \FD|IDEX|data_s2\(28),
	combout => \FD|mux_Banco_Ula|saida[28]~3_combout\);

-- Location: LCCOMB_X77_Y51_N0
\FD|ULA|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~0_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[28]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[28]~56_combout\,
	combout => \FD|ULA|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y51_N10
\FD|ULA|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~1_combout\ = (\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Mux19~0_combout\ & (\FD|ULA|Add1~56_combout\))) # (!\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Mux3~0_combout\)) # (!\FD|ULA|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~1_combout\,
	datab => \FD|ULA|Mux19~0_combout\,
	datac => \FD|ULA|Add1~56_combout\,
	datad => \FD|ULA|Mux3~0_combout\,
	combout => \FD|ULA|Mux3~1_combout\);

-- Location: LCCOMB_X77_Y51_N14
\FD|ULA|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux3~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[28]~3_combout\ & ((\FD|IDEX|data_s1\(28)) # (!\FD|ULA|Mux3~1_combout\))) # 
-- (!\FD|mux_Banco_Ula|saida[28]~3_combout\ & (\FD|IDEX|data_s1\(28) & !\FD|ULA|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[28]~3_combout\,
	datab => \FD|IDEX|data_s1\(28),
	datac => \FD|UCULA|ALUctr[1]~2_combout\,
	datad => \FD|ULA|Mux3~1_combout\,
	combout => \FD|ULA|Mux3~2_combout\);

-- Location: FF_X77_Y51_N15
\FD|EXMEM|data_s1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(28));

-- Location: FF_X77_Y51_N23
\FD|MEMWB|data_s1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s1\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(28));

-- Location: LCCOMB_X77_Y51_N8
\FD|mux_Ula_Memoria|saida[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[28]~3_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s3\(0),
	datac => \FD|MEMWB|data_s1\(28),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\,
	combout => \FD|mux_Ula_Memoria|saida[28]~3_combout\);

-- Location: FF_X77_Y51_N21
\FD|BR|bancoReg_rtl_1_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[27]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(65));

-- Location: LCCOMB_X80_Y53_N28
\FD|BR|saidaB[27]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[27]~9_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[27]~8_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\)) # (!\FD|BR|saidaB[27]~8_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(65))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|saidaB[27]~8_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(65),
	combout => \FD|BR|saidaB[27]~9_combout\);

-- Location: FF_X80_Y53_N29
\FD|IDEX|data_s2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[27]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(27));

-- Location: LCCOMB_X80_Y53_N18
\FD|mux_Banco_Ula|saida[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[27]~4_combout\ = (\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s3\(4)))) # (!\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s2\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s2\(27),
	datab => \FD|IDEX|data_s8\(0),
	datad => \FD|IDEX|data_s3\(4),
	combout => \FD|mux_Banco_Ula|saida[27]~4_combout\);

-- Location: LCCOMB_X77_Y51_N12
\FD|ULA|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~0_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[27]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[27]~54_combout\,
	combout => \FD|ULA|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y51_N16
\FD|ULA|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~1_combout\ = (\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Mux19~0_combout\ & (\FD|ULA|Add1~54_combout\))) # (!\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Mux4~0_combout\)) # (!\FD|ULA|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~1_combout\,
	datab => \FD|ULA|Mux19~0_combout\,
	datac => \FD|ULA|Add1~54_combout\,
	datad => \FD|ULA|Mux4~0_combout\,
	combout => \FD|ULA|Mux4~1_combout\);

-- Location: LCCOMB_X77_Y51_N18
\FD|ULA|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux4~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[27]~4_combout\ & ((\FD|IDEX|data_s1\(27)) # (!\FD|ULA|Mux4~1_combout\))) # 
-- (!\FD|mux_Banco_Ula|saida[27]~4_combout\ & (\FD|IDEX|data_s1\(27) & !\FD|ULA|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[27]~4_combout\,
	datab => \FD|IDEX|data_s1\(27),
	datac => \FD|UCULA|ALUctr[1]~2_combout\,
	datad => \FD|ULA|Mux4~1_combout\,
	combout => \FD|ULA|Mux4~2_combout\);

-- Location: FF_X77_Y51_N19
\FD|EXMEM|data_s1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(27));

-- Location: LCCOMB_X77_Y51_N26
\FD|MEMWB|data_s1[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s1[27]~feeder_combout\ = \FD|EXMEM|data_s1\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s1\(27),
	combout => \FD|MEMWB|data_s1[27]~feeder_combout\);

-- Location: FF_X77_Y51_N27
\FD|MEMWB|data_s1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s1[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(27));

-- Location: LCCOMB_X77_Y51_N6
\FD|mux_Ula_Memoria|saida[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[27]~4_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s3\(0),
	datac => \FD|MEMWB|data_s1\(27),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\,
	combout => \FD|mux_Ula_Memoria|saida[27]~4_combout\);

-- Location: LCCOMB_X81_Y49_N20
\FD|BR|bancoReg_rtl_1_bypass[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\);

-- Location: FF_X81_Y49_N21
\FD|BR|bancoReg_rtl_1_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(48));

-- Location: LCCOMB_X81_Y49_N6
\FD|BR|saidaB[18]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[18]~26_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(48) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(48),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[18]~26_combout\);

-- Location: LCCOMB_X81_Y49_N0
\FD|BR|saidaB[18]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[18]~27_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[18]~26_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\))) # (!\FD|BR|saidaB[18]~26_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(47),
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\,
	datad => \FD|BR|saidaB[18]~26_combout\,
	combout => \FD|BR|saidaB[18]~27_combout\);

-- Location: FF_X81_Y49_N1
\FD|IDEX|data_s2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[18]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(18));

-- Location: LCCOMB_X81_Y49_N28
\FD|EXMEM|data_s3[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s3[18]~feeder_combout\ = \FD|IDEX|data_s2\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|IDEX|data_s2\(18),
	combout => \FD|EXMEM|data_s3[18]~feeder_combout\);

-- Location: FF_X81_Y49_N29
\FD|EXMEM|data_s3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s3[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(18));

-- Location: LCCOMB_X79_Y55_N16
\FD|ULA|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~0_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[26]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datac => \FD|ULA|soma[26]~52_combout\,
	combout => \FD|ULA|Mux5~0_combout\);

-- Location: LCCOMB_X79_Y55_N10
\FD|ULA|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~1_combout\ = (\FD|ULA|Mux19~0_combout\ & ((\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Add1~52_combout\)) # (!\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Mux5~0_combout\))))) # (!\FD|ULA|Mux19~0_combout\ & (((!\FD|ULA|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~52_combout\,
	datab => \FD|ULA|Mux19~0_combout\,
	datac => \FD|ULA|Mux19~1_combout\,
	datad => \FD|ULA|Mux5~0_combout\,
	combout => \FD|ULA|Mux5~1_combout\);

-- Location: LCCOMB_X79_Y55_N20
\FD|ULA|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux5~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[26]~5_combout\ & ((\FD|IDEX|data_s1\(26)) # (!\FD|ULA|Mux5~1_combout\))) # 
-- (!\FD|mux_Banco_Ula|saida[26]~5_combout\ & (\FD|IDEX|data_s1\(26) & !\FD|ULA|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|mux_Banco_Ula|saida[26]~5_combout\,
	datac => \FD|IDEX|data_s1\(26),
	datad => \FD|ULA|Mux5~1_combout\,
	combout => \FD|ULA|Mux5~2_combout\);

-- Location: FF_X79_Y55_N21
\FD|EXMEM|data_s1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(26));

-- Location: LCCOMB_X79_Y55_N30
\FD|MEMWB|data_s1[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s1[26]~feeder_combout\ = \FD|EXMEM|data_s1\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s1\(26),
	combout => \FD|MEMWB|data_s1[26]~feeder_combout\);

-- Location: FF_X79_Y55_N31
\FD|MEMWB|data_s1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s1[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(26));

-- Location: LCCOMB_X79_Y55_N28
\FD|mux_Ula_Memoria|saida[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[26]~5_combout\ = (\FD|MEMWB|data_s3\(0) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\)) # (!\FD|MEMWB|data_s3\(0) & ((\FD|MEMWB|data_s1\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s3\(0),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\,
	datad => \FD|MEMWB|data_s1\(26),
	combout => \FD|mux_Ula_Memoria|saida[26]~5_combout\);

-- Location: LCCOMB_X81_Y50_N16
\FD|BR|saidaB[25]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[25]~13_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[25]~12_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\))) # (!\FD|BR|saidaB[25]~12_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|saidaB[25]~12_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(61),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\,
	combout => \FD|BR|saidaB[25]~13_combout\);

-- Location: FF_X81_Y50_N17
\FD|IDEX|data_s2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[25]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(25));

-- Location: LCCOMB_X81_Y50_N22
\FD|mux_Banco_Ula|saida[25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[25]~6_combout\ = (\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s3\(4))) # (!\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s2\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s2\(25),
	datad => \FD|IDEX|data_s8\(0),
	combout => \FD|mux_Banco_Ula|saida[25]~6_combout\);

-- Location: LCCOMB_X76_Y51_N18
\FD|ULA|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~0_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[25]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[25]~50_combout\,
	combout => \FD|ULA|Mux6~0_combout\);

-- Location: LCCOMB_X76_Y51_N24
\FD|ULA|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~1_combout\ = (\FD|ULA|Mux19~0_combout\ & ((\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Add1~50_combout\)) # (!\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Mux6~0_combout\))))) # (!\FD|ULA|Mux19~0_combout\ & (!\FD|ULA|Mux19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~0_combout\,
	datab => \FD|ULA|Mux19~1_combout\,
	datac => \FD|ULA|Add1~50_combout\,
	datad => \FD|ULA|Mux6~0_combout\,
	combout => \FD|ULA|Mux6~1_combout\);

-- Location: LCCOMB_X76_Y51_N14
\FD|ULA|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux6~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[25]~6_combout\ & ((\FD|IDEX|data_s1\(25)) # (!\FD|ULA|Mux6~1_combout\))) # 
-- (!\FD|mux_Banco_Ula|saida[25]~6_combout\ & (\FD|IDEX|data_s1\(25) & !\FD|ULA|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[25]~6_combout\,
	datab => \FD|IDEX|data_s1\(25),
	datac => \FD|UCULA|ALUctr[1]~2_combout\,
	datad => \FD|ULA|Mux6~1_combout\,
	combout => \FD|ULA|Mux6~2_combout\);

-- Location: FF_X76_Y51_N15
\FD|EXMEM|data_s1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(25));

-- Location: LCCOMB_X77_Y51_N4
\FD|MEMWB|data_s1[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s1[25]~feeder_combout\ = \FD|EXMEM|data_s1\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s1\(25),
	combout => \FD|MEMWB|data_s1[25]~feeder_combout\);

-- Location: FF_X77_Y51_N5
\FD|MEMWB|data_s1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s1[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(25));

-- Location: LCCOMB_X77_Y51_N30
\FD|mux_Ula_Memoria|saida[25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[25]~6_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s3\(0),
	datac => \FD|MEMWB|data_s1\(25),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\,
	combout => \FD|mux_Ula_Memoria|saida[25]~6_combout\);

-- Location: LCCOMB_X81_Y50_N20
\FD|BR|saidaB[24]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[24]~15_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[24]~14_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\))) # (!\FD|BR|saidaB[24]~14_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|saidaB[24]~14_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(59),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\,
	combout => \FD|BR|saidaB[24]~15_combout\);

-- Location: FF_X81_Y50_N21
\FD|IDEX|data_s2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[24]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(24));

-- Location: LCCOMB_X81_Y50_N26
\FD|mux_Banco_Ula|saida[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[24]~7_combout\ = (\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s3\(4))) # (!\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s2\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s2\(24),
	datad => \FD|IDEX|data_s8\(0),
	combout => \FD|mux_Banco_Ula|saida[24]~7_combout\);

-- Location: LCCOMB_X80_Y50_N10
\FD|ULA|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~0_combout\ = (\FD|ULA|soma[24]~48_combout\ & !\FD|UCULA|ALUctr[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|soma[24]~48_combout\,
	datad => \FD|UCULA|ALUctr[0]~3_combout\,
	combout => \FD|ULA|Mux7~0_combout\);

-- Location: LCCOMB_X80_Y50_N12
\FD|ULA|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~1_combout\ = (\FD|ULA|Mux19~0_combout\ & ((\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Add1~48_combout\)) # (!\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Mux7~0_combout\))))) # (!\FD|ULA|Mux19~0_combout\ & (!\FD|ULA|Mux19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~0_combout\,
	datab => \FD|ULA|Mux19~1_combout\,
	datac => \FD|ULA|Add1~48_combout\,
	datad => \FD|ULA|Mux7~0_combout\,
	combout => \FD|ULA|Mux7~1_combout\);

-- Location: LCCOMB_X80_Y50_N26
\FD|ULA|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux7~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[24]~7_combout\ & ((\FD|IDEX|data_s1\(24)) # (!\FD|ULA|Mux7~1_combout\))) # 
-- (!\FD|mux_Banco_Ula|saida[24]~7_combout\ & (\FD|IDEX|data_s1\(24) & !\FD|ULA|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[24]~7_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|IDEX|data_s1\(24),
	datad => \FD|ULA|Mux7~1_combout\,
	combout => \FD|ULA|Mux7~2_combout\);

-- Location: FF_X80_Y50_N27
\FD|EXMEM|data_s1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(24));

-- Location: FF_X80_Y50_N25
\FD|MEMWB|data_s1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s1\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(24));

-- Location: LCCOMB_X77_Y50_N28
\FD|mux_Ula_Memoria|saida[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[24]~7_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s1\(24),
	datac => \FD|MEMWB|data_s3\(0),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\,
	combout => \FD|mux_Ula_Memoria|saida[24]~7_combout\);

-- Location: LCCOMB_X79_Y54_N24
\FD|BR|saidaA[23]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[23]~17_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[23]~16_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\))) # (!\FD|BR|saidaA[23]~16_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(57),
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|saidaA[23]~16_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\,
	combout => \FD|BR|saidaA[23]~17_combout\);

-- Location: FF_X79_Y54_N25
\FD|IDEX|data_s1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[23]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(23));

-- Location: LCCOMB_X79_Y54_N20
\FD|ULA|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~0_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[23]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datac => \FD|ULA|soma[23]~46_combout\,
	combout => \FD|ULA|Mux8~0_combout\);

-- Location: LCCOMB_X79_Y54_N0
\FD|ULA|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~1_combout\ = (\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Mux19~0_combout\ & (\FD|ULA|Add1~46_combout\))) # (!\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Mux8~0_combout\)) # (!\FD|ULA|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~1_combout\,
	datab => \FD|ULA|Mux19~0_combout\,
	datac => \FD|ULA|Add1~46_combout\,
	datad => \FD|ULA|Mux8~0_combout\,
	combout => \FD|ULA|Mux8~1_combout\);

-- Location: LCCOMB_X79_Y54_N2
\FD|ULA|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux8~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|IDEX|data_s1\(23) & ((\FD|mux_Banco_Ula|saida[23]~8_combout\) # (!\FD|ULA|Mux8~1_combout\))) # (!\FD|IDEX|data_s1\(23) & 
-- (\FD|mux_Banco_Ula|saida[23]~8_combout\ & !\FD|ULA|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|IDEX|data_s1\(23),
	datac => \FD|mux_Banco_Ula|saida[23]~8_combout\,
	datad => \FD|ULA|Mux8~1_combout\,
	combout => \FD|ULA|Mux8~2_combout\);

-- Location: FF_X79_Y54_N3
\FD|EXMEM|data_s1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(23));

-- Location: LCCOMB_X79_Y54_N28
\FD|MEMWB|data_s1[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s1[23]~feeder_combout\ = \FD|EXMEM|data_s1\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s1\(23),
	combout => \FD|MEMWB|data_s1[23]~feeder_combout\);

-- Location: FF_X79_Y54_N29
\FD|MEMWB|data_s1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s1[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(23));

-- Location: LCCOMB_X79_Y54_N8
\FD|mux_Ula_Memoria|saida[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[23]~8_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s3\(0),
	datab => \FD|MEMWB|data_s1\(23),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\,
	combout => \FD|mux_Ula_Memoria|saida[23]~8_combout\);

-- Location: LCCOMB_X79_Y51_N26
\FD|BR|bancoReg_rtl_0_bypass[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\);

-- Location: FF_X79_Y51_N27
\FD|BR|bancoReg_rtl_0_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(56));

-- Location: LCCOMB_X79_Y51_N16
\FD|BR|saidaA[22]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[22]~18_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(56) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(56),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[22]~18_combout\);

-- Location: LCCOMB_X79_Y51_N8
\FD|BR|saidaA[22]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[22]~19_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[22]~18_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\))) # (!\FD|BR|saidaA[22]~18_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(55),
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\,
	datad => \FD|BR|saidaA[22]~18_combout\,
	combout => \FD|BR|saidaA[22]~19_combout\);

-- Location: FF_X79_Y51_N9
\FD|IDEX|data_s1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[22]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(22));

-- Location: LCCOMB_X79_Y51_N12
\FD|ULA|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~0_combout\ = (\FD|ULA|soma[22]~44_combout\ & !\FD|UCULA|ALUctr[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|soma[22]~44_combout\,
	datad => \FD|UCULA|ALUctr[0]~3_combout\,
	combout => \FD|ULA|Mux9~0_combout\);

-- Location: LCCOMB_X79_Y51_N20
\FD|ULA|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~1_combout\ = (\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Mux19~0_combout\ & (\FD|ULA|Add1~44_combout\))) # (!\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Mux9~0_combout\)) # (!\FD|ULA|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~1_combout\,
	datab => \FD|ULA|Mux19~0_combout\,
	datac => \FD|ULA|Add1~44_combout\,
	datad => \FD|ULA|Mux9~0_combout\,
	combout => \FD|ULA|Mux9~1_combout\);

-- Location: LCCOMB_X79_Y51_N4
\FD|ULA|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux9~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|IDEX|data_s1\(22) & ((\FD|mux_Banco_Ula|saida[22]~9_combout\) # (!\FD|ULA|Mux9~1_combout\))) # (!\FD|IDEX|data_s1\(22) & 
-- (\FD|mux_Banco_Ula|saida[22]~9_combout\ & !\FD|ULA|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|IDEX|data_s1\(22),
	datac => \FD|mux_Banco_Ula|saida[22]~9_combout\,
	datad => \FD|ULA|Mux9~1_combout\,
	combout => \FD|ULA|Mux9~2_combout\);

-- Location: FF_X79_Y51_N5
\FD|EXMEM|data_s1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(22));

-- Location: FF_X79_Y51_N23
\FD|MEMWB|data_s1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s1\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(22));

-- Location: LCCOMB_X79_Y51_N0
\FD|mux_Ula_Memoria|saida[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[22]~9_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEMWB|data_s3\(0),
	datac => \FD|MEMWB|data_s1\(22),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\,
	combout => \FD|mux_Ula_Memoria|saida[22]~9_combout\);

-- Location: LCCOMB_X81_Y49_N12
\FD|BR|saidaB[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[21]~21_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[21]~20_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\))) # (!\FD|BR|saidaB[21]~20_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[21]~20_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(53),
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[21]~21_combout\);

-- Location: FF_X81_Y49_N13
\FD|IDEX|data_s2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(21));

-- Location: LCCOMB_X81_Y49_N14
\FD|mux_Banco_Ula|saida[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[21]~10_combout\ = (\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s3\(4)))) # (!\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s2\(21),
	datac => \FD|IDEX|data_s3\(4),
	datad => \FD|IDEX|data_s8\(0),
	combout => \FD|mux_Banco_Ula|saida[21]~10_combout\);

-- Location: LCCOMB_X79_Y53_N16
\FD|ULA|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~0_combout\ = (\FD|ULA|soma[21]~42_combout\ & !\FD|UCULA|ALUctr[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|soma[21]~42_combout\,
	datad => \FD|UCULA|ALUctr[0]~3_combout\,
	combout => \FD|ULA|Mux10~0_combout\);

-- Location: LCCOMB_X79_Y53_N18
\FD|ULA|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~1_combout\ = (\FD|ULA|Mux19~0_combout\ & ((\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Add1~42_combout\)) # (!\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Mux10~0_combout\))))) # (!\FD|ULA|Mux19~0_combout\ & (!\FD|ULA|Mux19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~0_combout\,
	datab => \FD|ULA|Mux19~1_combout\,
	datac => \FD|ULA|Add1~42_combout\,
	datad => \FD|ULA|Mux10~0_combout\,
	combout => \FD|ULA|Mux10~1_combout\);

-- Location: LCCOMB_X79_Y53_N6
\FD|ULA|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux10~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[21]~10_combout\ & ((\FD|IDEX|data_s1\(21)) # (!\FD|ULA|Mux10~1_combout\))) # 
-- (!\FD|mux_Banco_Ula|saida[21]~10_combout\ & (\FD|IDEX|data_s1\(21) & !\FD|ULA|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[21]~10_combout\,
	datab => \FD|IDEX|data_s1\(21),
	datac => \FD|UCULA|ALUctr[1]~2_combout\,
	datad => \FD|ULA|Mux10~1_combout\,
	combout => \FD|ULA|Mux10~2_combout\);

-- Location: FF_X79_Y53_N7
\FD|EXMEM|data_s1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(21));

-- Location: FF_X80_Y53_N19
\FD|MEMWB|data_s1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s1\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(21));

-- Location: LCCOMB_X79_Y53_N28
\FD|mux_Ula_Memoria|saida[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[21]~10_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEMWB|data_s1\(21),
	datac => \FD|MEMWB|data_s3\(0),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\,
	combout => \FD|mux_Ula_Memoria|saida[21]~10_combout\);

-- Location: LCCOMB_X79_Y49_N28
\FD|BR|saidaA[20]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[20]~23_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[20]~22_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\))) # (!\FD|BR|saidaA[20]~22_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(51),
	datab => \FD|BR|saidaA[20]~22_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\,
	combout => \FD|BR|saidaA[20]~23_combout\);

-- Location: FF_X79_Y49_N29
\FD|IDEX|data_s1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[20]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(20));

-- Location: LCCOMB_X79_Y49_N6
\FD|ULA|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~0_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[20]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[20]~40_combout\,
	combout => \FD|ULA|Mux11~0_combout\);

-- Location: LCCOMB_X79_Y49_N24
\FD|ULA|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~1_combout\ = (\FD|ULA|Mux19~0_combout\ & ((\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Add1~40_combout\)) # (!\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Mux11~0_combout\))))) # (!\FD|ULA|Mux19~0_combout\ & (!\FD|ULA|Mux19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~0_combout\,
	datab => \FD|ULA|Mux19~1_combout\,
	datac => \FD|ULA|Add1~40_combout\,
	datad => \FD|ULA|Mux11~0_combout\,
	combout => \FD|ULA|Mux11~1_combout\);

-- Location: LCCOMB_X79_Y49_N30
\FD|ULA|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux11~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|IDEX|data_s1\(20) & ((\FD|mux_Banco_Ula|saida[20]~11_combout\) # (!\FD|ULA|Mux11~1_combout\))) # 
-- (!\FD|IDEX|data_s1\(20) & (\FD|mux_Banco_Ula|saida[20]~11_combout\ & !\FD|ULA|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|IDEX|data_s1\(20),
	datac => \FD|mux_Banco_Ula|saida[20]~11_combout\,
	datad => \FD|ULA|Mux11~1_combout\,
	combout => \FD|ULA|Mux11~2_combout\);

-- Location: FF_X79_Y49_N31
\FD|EXMEM|data_s1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(20));

-- Location: FF_X79_Y49_N17
\FD|MEMWB|data_s1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s1\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(20));

-- Location: LCCOMB_X79_Y49_N14
\FD|mux_Ula_Memoria|saida[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[20]~11_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s3\(0),
	datab => \FD|MEMWB|data_s1\(20),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\,
	combout => \FD|mux_Ula_Memoria|saida[20]~11_combout\);

-- Location: LCCOMB_X80_Y54_N24
\FD|BR|saidaB[19]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[19]~25_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[19]~24_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\))) # (!\FD|BR|saidaB[19]~24_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(49),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[19]~24_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\,
	combout => \FD|BR|saidaB[19]~25_combout\);

-- Location: FF_X80_Y54_N25
\FD|IDEX|data_s2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[19]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(19));

-- Location: LCCOMB_X80_Y54_N10
\FD|mux_Banco_Ula|saida[19]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[19]~12_combout\ = (\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s3\(4)))) # (!\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|IDEX|data_s2\(19),
	datac => \FD|IDEX|data_s8\(0),
	datad => \FD|IDEX|data_s3\(4),
	combout => \FD|mux_Banco_Ula|saida[19]~12_combout\);

-- Location: LCCOMB_X79_Y53_N26
\FD|ULA|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~0_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[19]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[19]~38_combout\,
	combout => \FD|ULA|Mux12~0_combout\);

-- Location: LCCOMB_X79_Y53_N20
\FD|ULA|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~1_combout\ = (\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Mux19~0_combout\ & \FD|ULA|Add1~38_combout\)))) # (!\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Mux12~0_combout\) # ((!\FD|ULA|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux12~0_combout\,
	datab => \FD|ULA|Mux19~1_combout\,
	datac => \FD|ULA|Mux19~0_combout\,
	datad => \FD|ULA|Add1~38_combout\,
	combout => \FD|ULA|Mux12~1_combout\);

-- Location: LCCOMB_X79_Y53_N22
\FD|ULA|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux12~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[19]~12_combout\ & ((\FD|IDEX|data_s1\(19)) # (!\FD|ULA|Mux12~1_combout\))) # 
-- (!\FD|mux_Banco_Ula|saida[19]~12_combout\ & (\FD|IDEX|data_s1\(19) & !\FD|ULA|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[19]~12_combout\,
	datab => \FD|IDEX|data_s1\(19),
	datac => \FD|UCULA|ALUctr[1]~2_combout\,
	datad => \FD|ULA|Mux12~1_combout\,
	combout => \FD|ULA|Mux12~2_combout\);

-- Location: FF_X79_Y53_N23
\FD|EXMEM|data_s1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(19));

-- Location: FF_X79_Y53_N5
\FD|MEMWB|data_s1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s1\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(19));

-- Location: LCCOMB_X79_Y53_N8
\FD|mux_Ula_Memoria|saida[19]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[19]~12_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEMWB|data_s1\(19),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\,
	datad => \FD|MEMWB|data_s3\(0),
	combout => \FD|mux_Ula_Memoria|saida[19]~12_combout\);

-- Location: FF_X79_Y51_N15
\FD|BR|bancoReg_rtl_0_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[18]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(47));

-- Location: LCCOMB_X79_Y51_N24
\FD|BR|saidaA[18]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[18]~27_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[18]~26_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\)) # (!\FD|BR|saidaA[18]~26_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(47))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|saidaA[18]~26_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(47),
	combout => \FD|BR|saidaA[18]~27_combout\);

-- Location: FF_X79_Y51_N25
\FD|IDEX|data_s1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[18]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(18));

-- Location: LCCOMB_X79_Y51_N10
\FD|ULA|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~0_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[18]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[18]~36_combout\,
	combout => \FD|ULA|Mux13~0_combout\);

-- Location: LCCOMB_X79_Y51_N6
\FD|ULA|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~1_combout\ = (\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Mux19~0_combout\ & (\FD|ULA|Add1~36_combout\))) # (!\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Mux13~0_combout\)) # (!\FD|ULA|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~1_combout\,
	datab => \FD|ULA|Mux19~0_combout\,
	datac => \FD|ULA|Add1~36_combout\,
	datad => \FD|ULA|Mux13~0_combout\,
	combout => \FD|ULA|Mux13~1_combout\);

-- Location: LCCOMB_X79_Y51_N30
\FD|ULA|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux13~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|IDEX|data_s1\(18) & ((\FD|mux_Banco_Ula|saida[18]~13_combout\) # (!\FD|ULA|Mux13~1_combout\))) # 
-- (!\FD|IDEX|data_s1\(18) & (\FD|mux_Banco_Ula|saida[18]~13_combout\ & !\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|IDEX|data_s1\(18),
	datac => \FD|mux_Banco_Ula|saida[18]~13_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux13~2_combout\);

-- Location: FF_X79_Y51_N31
\FD|EXMEM|data_s1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(18));

-- Location: FF_X79_Y51_N11
\FD|MEMWB|data_s1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s1\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(18));

-- Location: LCCOMB_X79_Y51_N14
\FD|mux_Ula_Memoria|saida[18]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[18]~13_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18~portadataout\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s1\(18),
	datab => \FD|MEMWB|data_s3\(0),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18~portadataout\,
	combout => \FD|mux_Ula_Memoria|saida[18]~13_combout\);

-- Location: FF_X81_Y53_N11
\FD|BR|bancoReg_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(17));

-- Location: LCCOMB_X81_Y52_N8
\FD|BR|saidaB[3]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[3]~57_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[3]~56_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\)) # (!\FD|BR|saidaB[3]~56_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[3]~56_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(17),
	combout => \FD|BR|saidaB[3]~57_combout\);

-- Location: FF_X81_Y52_N9
\FD|IDEX|data_s2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[3]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(3));

-- Location: FF_X81_Y52_N7
\FD|EXMEM|data_s3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s2\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(3));

-- Location: FF_X81_Y52_N29
\FD|EXMEM|data_s3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s2\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(4));

-- Location: FF_X81_Y54_N11
\FD|EXMEM|data_s3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s2\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(5));

-- Location: FF_X79_Y52_N1
\FD|EXMEM|data_s3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s2\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(6));

-- Location: FF_X79_Y53_N31
\FD|EXMEM|data_s3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s2\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(7));

-- Location: FF_X79_Y52_N25
\FD|EXMEM|data_s3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s2\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(8));

-- Location: LCCOMB_X77_Y53_N10
\FD|EXMEM|data_s3[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s3[9]~feeder_combout\ = \FD|IDEX|data_s2\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|IDEX|data_s2\(9),
	combout => \FD|EXMEM|data_s3[9]~feeder_combout\);

-- Location: FF_X77_Y53_N11
\FD|EXMEM|data_s3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s3[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(9));

-- Location: LCCOMB_X77_Y53_N8
\FD|EXMEM|data_s3[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s3[10]~feeder_combout\ = \FD|IDEX|data_s2\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|IDEX|data_s2\(10),
	combout => \FD|EXMEM|data_s3[10]~feeder_combout\);

-- Location: FF_X77_Y53_N9
\FD|EXMEM|data_s3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s3[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(10));

-- Location: LCCOMB_X77_Y53_N2
\FD|EXMEM|data_s3[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s3[11]~feeder_combout\ = \FD|IDEX|data_s2\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|IDEX|data_s2\(11),
	combout => \FD|EXMEM|data_s3[11]~feeder_combout\);

-- Location: FF_X77_Y53_N3
\FD|EXMEM|data_s3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s3[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(11));

-- Location: LCCOMB_X77_Y53_N20
\FD|EXMEM|data_s3[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s3[12]~feeder_combout\ = \FD|IDEX|data_s2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|IDEX|data_s2\(12),
	combout => \FD|EXMEM|data_s3[12]~feeder_combout\);

-- Location: FF_X77_Y53_N21
\FD|EXMEM|data_s3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s3[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(12));

-- Location: FF_X79_Y53_N17
\FD|EXMEM|data_s3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s2\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(13));

-- Location: FF_X81_Y54_N23
\FD|EXMEM|data_s3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s2\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(14));

-- Location: LCCOMB_X81_Y53_N28
\FD|EXMEM|data_s3[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s3[15]~feeder_combout\ = \FD|IDEX|data_s2\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|IDEX|data_s2\(15),
	combout => \FD|EXMEM|data_s3[15]~feeder_combout\);

-- Location: FF_X81_Y53_N29
\FD|EXMEM|data_s3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s3[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(15));

-- Location: LCCOMB_X81_Y50_N28
\FD|EXMEM|data_s3[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s3[16]~feeder_combout\ = \FD|IDEX|data_s2\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|IDEX|data_s2\(16),
	combout => \FD|EXMEM|data_s3[16]~feeder_combout\);

-- Location: FF_X81_Y50_N29
\FD|EXMEM|data_s3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s3[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(16));

-- Location: LCCOMB_X80_Y54_N4
\FD|EXMEM|data_s3[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s3[17]~feeder_combout\ = \FD|IDEX|data_s2\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|IDEX|data_s2\(17),
	combout => \FD|EXMEM|data_s3[17]~feeder_combout\);

-- Location: FF_X80_Y54_N5
\FD|EXMEM|data_s3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s3[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(17));

-- Location: M9K_X78_Y53_N0
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|EXMEM|data_s5\(2),
	portare => VCC,
	clk0 => \detector|saida~clkctrl_outclk\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X79_Y54_N10
\FD|ULA|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~0_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[17]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[17]~34_combout\,
	combout => \FD|ULA|Mux14~0_combout\);

-- Location: LCCOMB_X79_Y54_N14
\FD|ULA|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~1_combout\ = (\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Mux19~0_combout\ & (\FD|ULA|Add1~34_combout\))) # (!\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Mux14~0_combout\)) # (!\FD|ULA|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~1_combout\,
	datab => \FD|ULA|Mux19~0_combout\,
	datac => \FD|ULA|Add1~34_combout\,
	datad => \FD|ULA|Mux14~0_combout\,
	combout => \FD|ULA|Mux14~1_combout\);

-- Location: LCCOMB_X79_Y54_N22
\FD|ULA|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~2_combout\ = (\FD|ULA|Mux14~1_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\) # ((\FD|IDEX|data_s1\(17) & \FD|mux_Banco_Ula|saida[17]~14_combout\)))) # (!\FD|ULA|Mux14~1_combout\ & (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|IDEX|data_s1\(17)) # 
-- (\FD|mux_Banco_Ula|saida[17]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(17),
	datab => \FD|mux_Banco_Ula|saida[17]~14_combout\,
	datac => \FD|ULA|Mux14~1_combout\,
	datad => \FD|UCULA|ALUctr[1]~2_combout\,
	combout => \FD|ULA|Mux14~2_combout\);

-- Location: FF_X79_Y54_N23
\FD|EXMEM|data_s1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(17));

-- Location: FF_X79_Y54_N11
\FD|MEMWB|data_s1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s1\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(17));

-- Location: LCCOMB_X79_Y54_N4
\FD|mux_Ula_Memoria|saida[17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[17]~14_combout\ = (\FD|MEMWB|data_s3\(0) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\)) # (!\FD|MEMWB|data_s3\(0) & ((\FD|MEMWB|data_s1\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s3\(0),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\,
	datad => \FD|MEMWB|data_s1\(17),
	combout => \FD|mux_Ula_Memoria|saida[17]~14_combout\);

-- Location: LCCOMB_X81_Y50_N0
\FD|BR|saidaB[16]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[16]~31_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[16]~30_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\))) # (!\FD|BR|saidaB[16]~30_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(43),
	datac => \FD|BR|saidaB[16]~30_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\,
	combout => \FD|BR|saidaB[16]~31_combout\);

-- Location: FF_X81_Y50_N1
\FD|IDEX|data_s2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(16));

-- Location: LCCOMB_X81_Y50_N6
\FD|mux_Banco_Ula|saida[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[16]~15_combout\ = (\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s3\(4))) # (!\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s2\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s2\(16),
	datac => \FD|IDEX|data_s8\(0),
	combout => \FD|mux_Banco_Ula|saida[16]~15_combout\);

-- Location: LCCOMB_X80_Y50_N20
\FD|ULA|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~0_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[16]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[16]~32_combout\,
	combout => \FD|ULA|Mux15~0_combout\);

-- Location: LCCOMB_X80_Y50_N14
\FD|ULA|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~1_combout\ = (\FD|ULA|Mux19~0_combout\ & ((\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Add1~32_combout\))) # (!\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Mux15~0_combout\)))) # (!\FD|ULA|Mux19~0_combout\ & (((!\FD|ULA|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~0_combout\,
	datab => \FD|ULA|Mux15~0_combout\,
	datac => \FD|ULA|Add1~32_combout\,
	datad => \FD|ULA|Mux19~1_combout\,
	combout => \FD|ULA|Mux15~1_combout\);

-- Location: LCCOMB_X80_Y50_N16
\FD|ULA|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~2_combout\ = (\FD|ULA|Mux15~1_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\) # ((\FD|mux_Banco_Ula|saida[16]~15_combout\ & \FD|IDEX|data_s1\(16))))) # (!\FD|ULA|Mux15~1_combout\ & (!\FD|UCULA|ALUctr[1]~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[16]~15_combout\) # (\FD|IDEX|data_s1\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[16]~15_combout\,
	datab => \FD|IDEX|data_s1\(16),
	datac => \FD|ULA|Mux15~1_combout\,
	datad => \FD|UCULA|ALUctr[1]~2_combout\,
	combout => \FD|ULA|Mux15~2_combout\);

-- Location: FF_X80_Y50_N17
\FD|EXMEM|data_s1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(16));

-- Location: LCCOMB_X79_Y50_N28
\FD|MEMWB|data_s1[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s1[16]~feeder_combout\ = \FD|EXMEM|data_s1\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s1\(16),
	combout => \FD|MEMWB|data_s1[16]~feeder_combout\);

-- Location: FF_X79_Y50_N29
\FD|MEMWB|data_s1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s1[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(16));

-- Location: LCCOMB_X79_Y50_N2
\FD|mux_Ula_Memoria|saida[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[16]~15_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEMWB|data_s1\(16),
	datac => \FD|MEMWB|data_s3\(0),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\,
	combout => \FD|mux_Ula_Memoria|saida[16]~15_combout\);

-- Location: LCCOMB_X81_Y53_N12
\FD|BR|saidaB[15]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[15]~33_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[15]~32_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\))) # (!\FD|BR|saidaB[15]~32_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(41),
	datac => \FD|BR|saidaB[15]~32_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\,
	combout => \FD|BR|saidaB[15]~33_combout\);

-- Location: FF_X81_Y53_N13
\FD|IDEX|data_s2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[15]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(15));

-- Location: LCCOMB_X81_Y53_N18
\FD|mux_Banco_Ula|saida[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[15]~16_combout\ = (\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s3\(4)))) # (!\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s2\(15),
	datac => \FD|IDEX|data_s3\(4),
	datad => \FD|IDEX|data_s8\(0),
	combout => \FD|mux_Banco_Ula|saida[15]~16_combout\);

-- Location: LCCOMB_X84_Y52_N12
\FD|ULA|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~0_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[15]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[15]~30_combout\,
	combout => \FD|ULA|Mux16~0_combout\);

-- Location: LCCOMB_X84_Y52_N6
\FD|ULA|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~1_combout\ = (\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Mux19~0_combout\ & (\FD|ULA|Add1~30_combout\))) # (!\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Mux16~0_combout\)) # (!\FD|ULA|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~1_combout\,
	datab => \FD|ULA|Mux19~0_combout\,
	datac => \FD|ULA|Add1~30_combout\,
	datad => \FD|ULA|Mux16~0_combout\,
	combout => \FD|ULA|Mux16~1_combout\);

-- Location: LCCOMB_X84_Y52_N8
\FD|ULA|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux16~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[15]~16_combout\ & ((\FD|IDEX|data_s1\(15)) # (!\FD|ULA|Mux16~1_combout\))) # 
-- (!\FD|mux_Banco_Ula|saida[15]~16_combout\ & (\FD|IDEX|data_s1\(15) & !\FD|ULA|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|mux_Banco_Ula|saida[15]~16_combout\,
	datac => \FD|IDEX|data_s1\(15),
	datad => \FD|ULA|Mux16~1_combout\,
	combout => \FD|ULA|Mux16~2_combout\);

-- Location: FF_X84_Y52_N9
\FD|EXMEM|data_s1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(15));

-- Location: LCCOMB_X83_Y50_N30
\FD|MEMWB|data_s1[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s1[15]~feeder_combout\ = \FD|EXMEM|data_s1\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s1\(15),
	combout => \FD|MEMWB|data_s1[15]~feeder_combout\);

-- Location: FF_X83_Y50_N31
\FD|MEMWB|data_s1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s1[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(15));

-- Location: LCCOMB_X79_Y50_N8
\FD|mux_Ula_Memoria|saida[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[15]~16_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s3\(0),
	datac => \FD|MEMWB|data_s1\(15),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\,
	combout => \FD|mux_Ula_Memoria|saida[15]~16_combout\);

-- Location: LCCOMB_X82_Y53_N10
\FD|BR|saidaA[14]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[14]~35_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[14]~34_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\))) # (!\FD|BR|saidaA[14]~34_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[14]~34_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(39),
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\,
	combout => \FD|BR|saidaA[14]~35_combout\);

-- Location: FF_X82_Y53_N11
\FD|IDEX|data_s1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[14]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(14));

-- Location: LCCOMB_X80_Y50_N22
\FD|ULA|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~0_combout\ = (\FD|ULA|soma[14]~28_combout\ & !\FD|UCULA|ALUctr[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|soma[14]~28_combout\,
	datad => \FD|UCULA|ALUctr[0]~3_combout\,
	combout => \FD|ULA|Mux17~0_combout\);

-- Location: LCCOMB_X80_Y50_N8
\FD|ULA|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~1_combout\ = (\FD|ULA|Mux19~0_combout\ & ((\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Add1~28_combout\)) # (!\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Mux17~0_combout\))))) # (!\FD|ULA|Mux19~0_combout\ & (((!\FD|ULA|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~0_combout\,
	datab => \FD|ULA|Add1~28_combout\,
	datac => \FD|ULA|Mux17~0_combout\,
	datad => \FD|ULA|Mux19~1_combout\,
	combout => \FD|ULA|Mux17~1_combout\);

-- Location: LCCOMB_X80_Y50_N18
\FD|ULA|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~2_combout\ = (\FD|ULA|Mux17~1_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\) # ((\FD|IDEX|data_s1\(14) & \FD|mux_Banco_Ula|saida[14]~17_combout\)))) # (!\FD|ULA|Mux17~1_combout\ & (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|IDEX|data_s1\(14)) # 
-- (\FD|mux_Banco_Ula|saida[14]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(14),
	datab => \FD|mux_Banco_Ula|saida[14]~17_combout\,
	datac => \FD|ULA|Mux17~1_combout\,
	datad => \FD|UCULA|ALUctr[1]~2_combout\,
	combout => \FD|ULA|Mux17~2_combout\);

-- Location: FF_X80_Y50_N19
\FD|EXMEM|data_s1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(14));

-- Location: FF_X82_Y53_N27
\FD|MEMWB|data_s1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s1\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(14));

-- Location: LCCOMB_X82_Y53_N14
\FD|mux_Ula_Memoria|saida[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[14]~17_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEMWB|data_s1\(14),
	datac => \FD|MEMWB|data_s3\(0),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\,
	combout => \FD|mux_Ula_Memoria|saida[14]~17_combout\);

-- Location: LCCOMB_X80_Y53_N8
\FD|BR|saidaB[13]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[13]~37_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[13]~36_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\))) # (!\FD|BR|saidaB[13]~36_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[13]~36_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(37),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\,
	combout => \FD|BR|saidaB[13]~37_combout\);

-- Location: FF_X80_Y53_N9
\FD|IDEX|data_s2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[13]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(13));

-- Location: LCCOMB_X80_Y53_N30
\FD|mux_Banco_Ula|saida[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[13]~18_combout\ = (\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s3\(4)))) # (!\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s2\(13),
	datab => \FD|IDEX|data_s8\(0),
	datad => \FD|IDEX|data_s3\(4),
	combout => \FD|mux_Banco_Ula|saida[13]~18_combout\);

-- Location: LCCOMB_X84_Y52_N18
\FD|ULA|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~0_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[13]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[13]~26_combout\,
	combout => \FD|ULA|Mux18~0_combout\);

-- Location: LCCOMB_X84_Y52_N24
\FD|ULA|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~1_combout\ = (\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Mux19~0_combout\ & (\FD|ULA|Add1~26_combout\))) # (!\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Mux18~0_combout\)) # (!\FD|ULA|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~1_combout\,
	datab => \FD|ULA|Mux19~0_combout\,
	datac => \FD|ULA|Add1~26_combout\,
	datad => \FD|ULA|Mux18~0_combout\,
	combout => \FD|ULA|Mux18~1_combout\);

-- Location: LCCOMB_X84_Y52_N2
\FD|ULA|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux18~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[13]~18_combout\ & ((\FD|IDEX|data_s1\(13)) # (!\FD|ULA|Mux18~1_combout\))) # 
-- (!\FD|mux_Banco_Ula|saida[13]~18_combout\ & (\FD|IDEX|data_s1\(13) & !\FD|ULA|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|mux_Banco_Ula|saida[13]~18_combout\,
	datac => \FD|IDEX|data_s1\(13),
	datad => \FD|ULA|Mux18~1_combout\,
	combout => \FD|ULA|Mux18~2_combout\);

-- Location: FF_X84_Y52_N3
\FD|EXMEM|data_s1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(13));

-- Location: LCCOMB_X80_Y53_N20
\FD|MEMWB|data_s1[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s1[13]~feeder_combout\ = \FD|EXMEM|data_s1\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|EXMEM|data_s1\(13),
	combout => \FD|MEMWB|data_s1[13]~feeder_combout\);

-- Location: FF_X80_Y53_N21
\FD|MEMWB|data_s1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s1[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(13));

-- Location: LCCOMB_X79_Y53_N0
\FD|mux_Ula_Memoria|saida[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[13]~18_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s1\(13),
	datab => \FD|MEMWB|data_s3\(0),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\,
	combout => \FD|mux_Ula_Memoria|saida[13]~18_combout\);

-- Location: LCCOMB_X76_Y52_N8
\FD|BR|saidaB[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[12]~39_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[12]~38_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\))) # (!\FD|BR|saidaB[12]~38_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[12]~38_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(35),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\,
	combout => \FD|BR|saidaB[12]~39_combout\);

-- Location: FF_X76_Y52_N9
\FD|IDEX|data_s2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(12));

-- Location: LCCOMB_X76_Y52_N26
\FD|mux_Banco_Ula|saida[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[12]~19_combout\ = (\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s3\(4)))) # (!\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s2\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|IDEX|data_s2\(12),
	datac => \FD|IDEX|data_s8\(0),
	datad => \FD|IDEX|data_s3\(4),
	combout => \FD|mux_Banco_Ula|saida[12]~19_combout\);

-- Location: LCCOMB_X84_Y52_N20
\FD|ULA|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~2_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[12]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[12]~24_combout\,
	combout => \FD|ULA|Mux19~2_combout\);

-- Location: LCCOMB_X84_Y52_N30
\FD|ULA|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~3_combout\ = (\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Add1~24_combout\ & (\FD|ULA|Mux19~0_combout\))) # (!\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Mux19~2_combout\) # (!\FD|ULA|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~1_combout\,
	datab => \FD|ULA|Add1~24_combout\,
	datac => \FD|ULA|Mux19~0_combout\,
	datad => \FD|ULA|Mux19~2_combout\,
	combout => \FD|ULA|Mux19~3_combout\);

-- Location: LCCOMB_X84_Y52_N0
\FD|ULA|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~4_combout\ = (\FD|ULA|Mux19~3_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\) # ((\FD|mux_Banco_Ula|saida[12]~19_combout\ & \FD|IDEX|data_s1\(12))))) # (!\FD|ULA|Mux19~3_combout\ & (!\FD|UCULA|ALUctr[1]~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[12]~19_combout\) # (\FD|IDEX|data_s1\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[12]~19_combout\,
	datab => \FD|IDEX|data_s1\(12),
	datac => \FD|ULA|Mux19~3_combout\,
	datad => \FD|UCULA|ALUctr[1]~2_combout\,
	combout => \FD|ULA|Mux19~4_combout\);

-- Location: FF_X84_Y52_N1
\FD|EXMEM|data_s1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux19~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(12));

-- Location: FF_X77_Y52_N15
\FD|MEMWB|data_s1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s1\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(12));

-- Location: LCCOMB_X77_Y52_N8
\FD|mux_Ula_Memoria|saida[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[12]~19_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s3\(0),
	datac => \FD|MEMWB|data_s1\(12),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\,
	combout => \FD|mux_Ula_Memoria|saida[12]~19_combout\);

-- Location: LCCOMB_X81_Y55_N12
\FD|BR|bancoReg_rtl_1_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[13]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[1]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[1]~30_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[13]~feeder_combout\);

-- Location: FF_X81_Y55_N13
\FD|BR|bancoReg_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(13));

-- Location: LCCOMB_X82_Y54_N16
\FD|BR|bancoReg_rtl_1_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\);

-- Location: FF_X82_Y54_N17
\FD|BR|bancoReg_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(14));

-- Location: LCCOMB_X82_Y54_N18
\FD|BR|saidaB[1]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[1]~60_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(14) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(14),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[1]~60_combout\);

-- Location: LCCOMB_X81_Y52_N0
\FD|BR|saidaB[1]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[1]~61_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[1]~60_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\)) # (!\FD|BR|saidaB[1]~60_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(13),
	datad => \FD|BR|saidaB[1]~60_combout\,
	combout => \FD|BR|saidaB[1]~61_combout\);

-- Location: FF_X81_Y52_N1
\FD|IDEX|data_s2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[1]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(1));

-- Location: FF_X80_Y52_N23
\FD|EXMEM|data_s3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|IDEX|data_s2\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(1));

-- Location: LCCOMB_X79_Y55_N22
\FD|ULA|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~0_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[11]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[11]~22_combout\,
	combout => \FD|ULA|Mux20~0_combout\);

-- Location: LCCOMB_X79_Y55_N24
\FD|ULA|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~1_combout\ = (\FD|ULA|Mux19~0_combout\ & ((\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Add1~22_combout\))) # (!\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Mux20~0_combout\)))) # (!\FD|ULA|Mux19~0_combout\ & (((!\FD|ULA|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux20~0_combout\,
	datab => \FD|ULA|Mux19~0_combout\,
	datac => \FD|ULA|Mux19~1_combout\,
	datad => \FD|ULA|Add1~22_combout\,
	combout => \FD|ULA|Mux20~1_combout\);

-- Location: LCCOMB_X79_Y55_N14
\FD|ULA|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux20~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|IDEX|data_s1\(11) & ((\FD|mux_Banco_Ula|saida[11]~20_combout\) # (!\FD|ULA|Mux20~1_combout\))) # 
-- (!\FD|IDEX|data_s1\(11) & (\FD|mux_Banco_Ula|saida[11]~20_combout\ & !\FD|ULA|Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|IDEX|data_s1\(11),
	datac => \FD|mux_Banco_Ula|saida[11]~20_combout\,
	datad => \FD|ULA|Mux20~1_combout\,
	combout => \FD|ULA|Mux20~2_combout\);

-- Location: FF_X79_Y55_N15
\FD|EXMEM|data_s1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux20~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(11));

-- Location: FF_X79_Y52_N7
\FD|MEMWB|data_s1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s1\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(11));

-- Location: LCCOMB_X79_Y52_N12
\FD|mux_Ula_Memoria|saida[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[11]~20_combout\ = (\FD|MEMWB|data_s3\(0) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\)) # (!\FD|MEMWB|data_s3\(0) & ((\FD|MEMWB|data_s1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEMWB|data_s3\(0),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\,
	datad => \FD|MEMWB|data_s1\(11),
	combout => \FD|mux_Ula_Memoria|saida[11]~20_combout\);

-- Location: LCCOMB_X81_Y52_N2
\FD|BR|saidaB[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[10]~43_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[10]~42_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\))) # (!\FD|BR|saidaB[10]~42_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(31),
	datab => \FD|BR|saidaB[10]~42_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[10]~43_combout\);

-- Location: FF_X81_Y52_N3
\FD|IDEX|data_s2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(10));

-- Location: LCCOMB_X81_Y52_N18
\FD|mux_Banco_Ula|saida[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[10]~21_combout\ = (\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s3\(4))) # (!\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s2\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s8\(0),
	datab => \FD|IDEX|data_s3\(4),
	datad => \FD|IDEX|data_s2\(10),
	combout => \FD|mux_Banco_Ula|saida[10]~21_combout\);

-- Location: LCCOMB_X84_Y52_N10
\FD|ULA|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~0_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[10]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[10]~20_combout\,
	combout => \FD|ULA|Mux21~0_combout\);

-- Location: LCCOMB_X84_Y52_N4
\FD|ULA|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~1_combout\ = (\FD|ULA|Mux19~0_combout\ & ((\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Add1~20_combout\)) # (!\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Mux21~0_combout\))))) # (!\FD|ULA|Mux19~0_combout\ & (((!\FD|ULA|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~20_combout\,
	datab => \FD|ULA|Mux19~0_combout\,
	datac => \FD|ULA|Mux19~1_combout\,
	datad => \FD|ULA|Mux21~0_combout\,
	combout => \FD|ULA|Mux21~1_combout\);

-- Location: LCCOMB_X84_Y52_N22
\FD|ULA|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux21~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[10]~21_combout\ & ((\FD|IDEX|data_s1\(10)) # (!\FD|ULA|Mux21~1_combout\))) # 
-- (!\FD|mux_Banco_Ula|saida[10]~21_combout\ & (!\FD|ULA|Mux21~1_combout\ & \FD|IDEX|data_s1\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[10]~21_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|ULA|Mux21~1_combout\,
	datad => \FD|IDEX|data_s1\(10),
	combout => \FD|ULA|Mux21~2_combout\);

-- Location: FF_X84_Y52_N11
\FD|EXMEM|data_s1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|ULA|Mux21~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(10));

-- Location: FF_X79_Y52_N9
\FD|MEMWB|data_s1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s1\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(10));

-- Location: LCCOMB_X79_Y52_N8
\FD|mux_Ula_Memoria|saida[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[10]~21_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEMWB|data_s3\(0),
	datac => \FD|MEMWB|data_s1\(10),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\,
	combout => \FD|mux_Ula_Memoria|saida[10]~21_combout\);

-- Location: LCCOMB_X81_Y52_N16
\FD|BR|saidaB[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[9]~45_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[9]~44_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\))) # (!\FD|BR|saidaB[9]~44_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(29),
	datab => \FD|BR|saidaB[9]~44_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[9]~45_combout\);

-- Location: FF_X81_Y52_N17
\FD|IDEX|data_s2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[9]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(9));

-- Location: LCCOMB_X81_Y52_N4
\FD|mux_Banco_Ula|saida[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[9]~22_combout\ = (\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s3\(4))) # (!\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s8\(0),
	datac => \FD|IDEX|data_s3\(4),
	datad => \FD|IDEX|data_s2\(9),
	combout => \FD|mux_Banco_Ula|saida[9]~22_combout\);

-- Location: LCCOMB_X83_Y52_N30
\FD|ULA|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~0_combout\ = (\FD|ULA|soma[9]~18_combout\ & !\FD|UCULA|ALUctr[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[9]~18_combout\,
	datad => \FD|UCULA|ALUctr[0]~3_combout\,
	combout => \FD|ULA|Mux22~0_combout\);

-- Location: LCCOMB_X83_Y52_N28
\FD|ULA|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~1_combout\ = (\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Add1~18_combout\ & \FD|ULA|Mux19~0_combout\)))) # (!\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Mux22~0_combout\) # ((!\FD|ULA|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux22~0_combout\,
	datab => \FD|ULA|Add1~18_combout\,
	datac => \FD|ULA|Mux19~1_combout\,
	datad => \FD|ULA|Mux19~0_combout\,
	combout => \FD|ULA|Mux22~1_combout\);

-- Location: LCCOMB_X83_Y52_N4
\FD|ULA|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux22~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[9]~22_combout\ & ((\FD|IDEX|data_s1\(9)) # (!\FD|ULA|Mux22~1_combout\))) # 
-- (!\FD|mux_Banco_Ula|saida[9]~22_combout\ & (\FD|IDEX|data_s1\(9) & !\FD|ULA|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[9]~22_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|IDEX|data_s1\(9),
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux22~2_combout\);

-- Location: FF_X83_Y52_N5
\FD|EXMEM|data_s1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(9));

-- Location: FF_X83_Y52_N31
\FD|MEMWB|data_s1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s1\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(9));

-- Location: LCCOMB_X77_Y52_N4
\FD|mux_Ula_Memoria|saida[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[9]~22_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEMWB|data_s1\(9),
	datac => \FD|MEMWB|data_s3\(0),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\,
	combout => \FD|mux_Ula_Memoria|saida[9]~22_combout\);

-- Location: LCCOMB_X79_Y52_N14
\FD|BR|saidaB[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[8]~47_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[8]~46_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\))) # (!\FD|BR|saidaB[8]~46_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(27),
	datac => \FD|BR|saidaB[8]~46_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\,
	combout => \FD|BR|saidaB[8]~47_combout\);

-- Location: FF_X79_Y52_N15
\FD|IDEX|data_s2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(8));

-- Location: LCCOMB_X79_Y52_N6
\FD|mux_Banco_Ula|saida[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[8]~23_combout\ = (\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s3\(4))) # (!\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s2\(8),
	datad => \FD|IDEX|data_s8\(0),
	combout => \FD|mux_Banco_Ula|saida[8]~23_combout\);

-- Location: LCCOMB_X83_Y50_N28
\FD|ULA|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~0_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[8]~16_combout\,
	combout => \FD|ULA|Mux23~0_combout\);

-- Location: LCCOMB_X83_Y50_N18
\FD|ULA|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~1_combout\ = (\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Mux19~0_combout\ & (\FD|ULA|Add1~16_combout\))) # (!\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Mux23~0_combout\)) # (!\FD|ULA|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~1_combout\,
	datab => \FD|ULA|Mux19~0_combout\,
	datac => \FD|ULA|Add1~16_combout\,
	datad => \FD|ULA|Mux23~0_combout\,
	combout => \FD|ULA|Mux23~1_combout\);

-- Location: LCCOMB_X83_Y50_N8
\FD|ULA|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux23~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[8]~23_combout\ & ((\FD|IDEX|data_s1\(8)) # (!\FD|ULA|Mux23~1_combout\))) # 
-- (!\FD|mux_Banco_Ula|saida[8]~23_combout\ & (\FD|IDEX|data_s1\(8) & !\FD|ULA|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[8]~23_combout\,
	datab => \FD|IDEX|data_s1\(8),
	datac => \FD|UCULA|ALUctr[1]~2_combout\,
	datad => \FD|ULA|Mux23~1_combout\,
	combout => \FD|ULA|Mux23~2_combout\);

-- Location: FF_X83_Y50_N9
\FD|EXMEM|data_s1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(8));

-- Location: FF_X79_Y50_N23
\FD|MEMWB|data_s1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s1\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(8));

-- Location: LCCOMB_X79_Y50_N12
\FD|mux_Ula_Memoria|saida[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[8]~23_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s3\(0),
	datac => \FD|MEMWB|data_s1\(8),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\,
	combout => \FD|mux_Ula_Memoria|saida[8]~23_combout\);

-- Location: LCCOMB_X79_Y49_N2
\FD|BR|bancoReg_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X79_Y49_N3
\FD|BR|bancoReg_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(26));

-- Location: LCCOMB_X79_Y49_N18
\FD|BR|saidaA[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[7]~48_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(26) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(26),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[7]~48_combout\);

-- Location: LCCOMB_X79_Y49_N10
\FD|BR|saidaA[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[7]~49_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[7]~48_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\))) # (!\FD|BR|saidaA[7]~48_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(25),
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\,
	datad => \FD|BR|saidaA[7]~48_combout\,
	combout => \FD|BR|saidaA[7]~49_combout\);

-- Location: FF_X79_Y49_N11
\FD|IDEX|data_s1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[7]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(7));

-- Location: LCCOMB_X79_Y49_N20
\FD|ULA|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~0_combout\ = (\FD|ULA|soma[7]~14_combout\ & !\FD|UCULA|ALUctr[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|soma[7]~14_combout\,
	datac => \FD|UCULA|ALUctr[0]~3_combout\,
	combout => \FD|ULA|Mux24~0_combout\);

-- Location: LCCOMB_X79_Y49_N26
\FD|ULA|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~1_combout\ = (\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Add1~14_combout\ & (\FD|ULA|Mux19~0_combout\))) # (!\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Mux24~0_combout\) # (!\FD|ULA|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~14_combout\,
	datab => \FD|ULA|Mux19~1_combout\,
	datac => \FD|ULA|Mux19~0_combout\,
	datad => \FD|ULA|Mux24~0_combout\,
	combout => \FD|ULA|Mux24~1_combout\);

-- Location: LCCOMB_X79_Y49_N12
\FD|ULA|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~2_combout\ = (\FD|ULA|Mux24~1_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\) # ((\FD|IDEX|data_s1\(7) & \FD|mux_Banco_Ula|saida[7]~24_combout\)))) # (!\FD|ULA|Mux24~1_combout\ & (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|IDEX|data_s1\(7)) # 
-- (\FD|mux_Banco_Ula|saida[7]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(7),
	datab => \FD|mux_Banco_Ula|saida[7]~24_combout\,
	datac => \FD|ULA|Mux24~1_combout\,
	datad => \FD|UCULA|ALUctr[1]~2_combout\,
	combout => \FD|ULA|Mux24~2_combout\);

-- Location: FF_X79_Y49_N13
\FD|EXMEM|data_s1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux24~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(7));

-- Location: LCCOMB_X79_Y49_N22
\FD|MEMWB|data_s1[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s1[7]~feeder_combout\ = \FD|EXMEM|data_s1\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s1\(7),
	combout => \FD|MEMWB|data_s1[7]~feeder_combout\);

-- Location: FF_X79_Y49_N23
\FD|MEMWB|data_s1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s1[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(7));

-- Location: LCCOMB_X79_Y49_N4
\FD|mux_Ula_Memoria|saida[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[7]~24_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s3\(0),
	datac => \FD|MEMWB|data_s1\(7),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \FD|mux_Ula_Memoria|saida[7]~24_combout\);

-- Location: LCCOMB_X83_Y52_N16
\FD|BR|saidaA[6]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[6]~51_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[6]~50_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\))) # (!\FD|BR|saidaA[6]~50_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(23),
	datac => \FD|BR|saidaA[6]~50_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\,
	combout => \FD|BR|saidaA[6]~51_combout\);

-- Location: FF_X83_Y52_N17
\FD|IDEX|data_s1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[6]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(6));

-- Location: LCCOMB_X83_Y52_N22
\FD|ULA|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~0_combout\ = (\FD|ULA|soma[6]~12_combout\ & !\FD|UCULA|ALUctr[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|soma[6]~12_combout\,
	datad => \FD|UCULA|ALUctr[0]~3_combout\,
	combout => \FD|ULA|Mux25~0_combout\);

-- Location: LCCOMB_X83_Y52_N6
\FD|ULA|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~1_combout\ = (\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Add1~12_combout\ & \FD|ULA|Mux19~0_combout\)))) # (!\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Mux25~0_combout\) # ((!\FD|ULA|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~0_combout\,
	datab => \FD|ULA|Add1~12_combout\,
	datac => \FD|ULA|Mux19~1_combout\,
	datad => \FD|ULA|Mux19~0_combout\,
	combout => \FD|ULA|Mux25~1_combout\);

-- Location: LCCOMB_X83_Y52_N2
\FD|ULA|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux25~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|IDEX|data_s1\(6) & ((\FD|mux_Banco_Ula|saida[6]~25_combout\) # (!\FD|ULA|Mux25~1_combout\))) # (!\FD|IDEX|data_s1\(6) & 
-- (\FD|mux_Banco_Ula|saida[6]~25_combout\ & !\FD|ULA|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|IDEX|data_s1\(6),
	datac => \FD|mux_Banco_Ula|saida[6]~25_combout\,
	datad => \FD|ULA|Mux25~1_combout\,
	combout => \FD|ULA|Mux25~2_combout\);

-- Location: FF_X83_Y52_N3
\FD|EXMEM|data_s1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux25~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(6));

-- Location: FF_X79_Y53_N27
\FD|MEMWB|data_s1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s1\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(6));

-- Location: LCCOMB_X79_Y53_N30
\FD|mux_Ula_Memoria|saida[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[6]~25_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s1\(6),
	datab => \FD|MEMWB|data_s3\(0),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \FD|mux_Ula_Memoria|saida[6]~25_combout\);

-- Location: LCCOMB_X84_Y51_N26
\FD|BR|bancoReg_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X84_Y51_N27
\FD|BR|bancoReg_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(22));

-- Location: LCCOMB_X84_Y51_N24
\FD|BR|saidaA[5]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[5]~52_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(22) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(22),
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[5]~52_combout\);

-- Location: LCCOMB_X81_Y51_N28
\FD|BR|saidaA[5]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[5]~53_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[5]~52_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\))) # (!\FD|BR|saidaA[5]~52_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(21),
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\,
	datad => \FD|BR|saidaA[5]~52_combout\,
	combout => \FD|BR|saidaA[5]~53_combout\);

-- Location: FF_X80_Y52_N17
\FD|IDEX|data_s1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|BR|saidaA[5]~53_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(5));

-- Location: LCCOMB_X83_Y52_N0
\FD|ULA|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~0_combout\ = (\FD|ULA|soma[5]~10_combout\ & !\FD|UCULA|ALUctr[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[5]~10_combout\,
	datad => \FD|UCULA|ALUctr[0]~3_combout\,
	combout => \FD|ULA|Mux26~0_combout\);

-- Location: LCCOMB_X83_Y52_N26
\FD|ULA|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~1_combout\ = (\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Add1~10_combout\ & ((\FD|ULA|Mux19~0_combout\)))) # (!\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Mux26~0_combout\) # (!\FD|ULA|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~10_combout\,
	datab => \FD|ULA|Mux26~0_combout\,
	datac => \FD|ULA|Mux19~1_combout\,
	datad => \FD|ULA|Mux19~0_combout\,
	combout => \FD|ULA|Mux26~1_combout\);

-- Location: LCCOMB_X83_Y52_N20
\FD|ULA|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~2_combout\ = (\FD|ULA|Mux26~1_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\) # ((\FD|IDEX|data_s1\(5) & \FD|mux_Banco_Ula|saida[5]~26_combout\)))) # (!\FD|ULA|Mux26~1_combout\ & (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|IDEX|data_s1\(5)) # 
-- (\FD|mux_Banco_Ula|saida[5]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(5),
	datab => \FD|mux_Banco_Ula|saida[5]~26_combout\,
	datac => \FD|ULA|Mux26~1_combout\,
	datad => \FD|UCULA|ALUctr[1]~2_combout\,
	combout => \FD|ULA|Mux26~2_combout\);

-- Location: FF_X83_Y52_N21
\FD|EXMEM|data_s1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux26~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(5));

-- Location: FF_X84_Y51_N29
\FD|MEMWB|data_s1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s1\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(5));

-- Location: LCCOMB_X84_Y51_N0
\FD|mux_Ula_Memoria|saida[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[5]~26_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEMWB|data_s1\(5),
	datac => \FD|MEMWB|data_s3\(0),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => \FD|mux_Ula_Memoria|saida[5]~26_combout\);

-- Location: LCCOMB_X81_Y52_N26
\FD|BR|saidaB[4]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[4]~55_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[4]~54_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\))) # (!\FD|BR|saidaB[4]~54_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(19),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[4]~54_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\,
	combout => \FD|BR|saidaB[4]~55_combout\);

-- Location: FF_X81_Y52_N27
\FD|IDEX|data_s2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[4]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(4));

-- Location: LCCOMB_X81_Y52_N12
\FD|mux_Banco_Ula|saida[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[4]~27_combout\ = (\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s3\(4)))) # (!\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s2\(4),
	datab => \FD|IDEX|data_s3\(4),
	datad => \FD|IDEX|data_s8\(0),
	combout => \FD|mux_Banco_Ula|saida[4]~27_combout\);

-- Location: LCCOMB_X83_Y52_N24
\FD|ULA|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~0_combout\ = (\FD|ULA|soma[4]~8_combout\ & !\FD|UCULA|ALUctr[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|soma[4]~8_combout\,
	datad => \FD|UCULA|ALUctr[0]~3_combout\,
	combout => \FD|ULA|Mux27~0_combout\);

-- Location: LCCOMB_X83_Y52_N18
\FD|ULA|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~1_combout\ = (\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Add1~8_combout\ & ((\FD|ULA|Mux19~0_combout\)))) # (!\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Mux27~0_combout\) # (!\FD|ULA|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~8_combout\,
	datab => \FD|ULA|Mux27~0_combout\,
	datac => \FD|ULA|Mux19~1_combout\,
	datad => \FD|ULA|Mux19~0_combout\,
	combout => \FD|ULA|Mux27~1_combout\);

-- Location: LCCOMB_X83_Y52_N10
\FD|ULA|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux27~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[4]~27_combout\ & ((\FD|IDEX|data_s1\(4)) # (!\FD|ULA|Mux27~1_combout\))) # 
-- (!\FD|mux_Banco_Ula|saida[4]~27_combout\ & (\FD|IDEX|data_s1\(4) & !\FD|ULA|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|mux_Banco_Ula|saida[4]~27_combout\,
	datac => \FD|IDEX|data_s1\(4),
	datad => \FD|ULA|Mux27~1_combout\,
	combout => \FD|ULA|Mux27~2_combout\);

-- Location: FF_X83_Y52_N11
\FD|EXMEM|data_s1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux27~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(4));

-- Location: LCCOMB_X77_Y55_N24
\FD|MEMWB|data_s1[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s1[4]~feeder_combout\ = \FD|EXMEM|data_s1\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s1\(4),
	combout => \FD|MEMWB|data_s1[4]~feeder_combout\);

-- Location: FF_X77_Y55_N25
\FD|MEMWB|data_s1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s1[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(4));

-- Location: LCCOMB_X77_Y55_N18
\FD|mux_Ula_Memoria|saida[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[4]~27_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEMWB|data_s1\(4),
	datac => \FD|MEMWB|data_s3\(0),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \FD|mux_Ula_Memoria|saida[4]~27_combout\);

-- Location: LCCOMB_X82_Y53_N24
\FD|BR|bancoReg_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X82_Y53_N25
\FD|BR|bancoReg_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(18));

-- Location: LCCOMB_X82_Y53_N18
\FD|BR|saidaA[3]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[3]~56_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(18) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(18),
	combout => \FD|BR|saidaA[3]~56_combout\);

-- Location: LCCOMB_X81_Y53_N8
\FD|BR|saidaA[3]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[3]~57_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[3]~56_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\))) # (!\FD|BR|saidaA[3]~56_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(17),
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\,
	datad => \FD|BR|saidaA[3]~56_combout\,
	combout => \FD|BR|saidaA[3]~57_combout\);

-- Location: FF_X81_Y53_N9
\FD|IDEX|data_s1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[3]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(3));

-- Location: LCCOMB_X83_Y52_N12
\FD|ULA|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~0_combout\ = (\FD|ULA|soma[3]~6_combout\ & !\FD|UCULA|ALUctr[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|soma[3]~6_combout\,
	datad => \FD|UCULA|ALUctr[0]~3_combout\,
	combout => \FD|ULA|Mux28~0_combout\);

-- Location: LCCOMB_X83_Y52_N8
\FD|ULA|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~1_combout\ = (\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Add1~6_combout\ & \FD|ULA|Mux19~0_combout\)))) # (!\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Mux28~0_combout\) # ((!\FD|ULA|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux28~0_combout\,
	datab => \FD|ULA|Add1~6_combout\,
	datac => \FD|ULA|Mux19~1_combout\,
	datad => \FD|ULA|Mux19~0_combout\,
	combout => \FD|ULA|Mux28~1_combout\);

-- Location: LCCOMB_X82_Y53_N8
\FD|ULA|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux28~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|IDEX|data_s1\(3) & ((\FD|mux_Banco_Ula|saida[3]~28_combout\) # (!\FD|ULA|Mux28~1_combout\))) # (!\FD|IDEX|data_s1\(3) & 
-- (\FD|mux_Banco_Ula|saida[3]~28_combout\ & !\FD|ULA|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(3),
	datab => \FD|mux_Banco_Ula|saida[3]~28_combout\,
	datac => \FD|UCULA|ALUctr[1]~2_combout\,
	datad => \FD|ULA|Mux28~1_combout\,
	combout => \FD|ULA|Mux28~2_combout\);

-- Location: FF_X82_Y53_N9
\FD|EXMEM|data_s1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(3));

-- Location: FF_X82_Y53_N23
\FD|MEMWB|data_s1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	asdata => \FD|EXMEM|data_s1\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(3));

-- Location: LCCOMB_X81_Y53_N10
\FD|mux_Ula_Memoria|saida[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[3]~28_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEMWB|data_s1\(3),
	datac => \FD|MEMWB|data_s3\(0),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \FD|mux_Ula_Memoria|saida[3]~28_combout\);

-- Location: LCCOMB_X82_Y54_N24
\FD|BR|bancoReg_rtl_1_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\);

-- Location: FF_X82_Y54_N25
\FD|BR|bancoReg_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(16));

-- Location: LCCOMB_X82_Y54_N10
\FD|BR|saidaB[2]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[2]~58_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(16) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(16),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[2]~58_combout\);

-- Location: LCCOMB_X81_Y52_N30
\FD|BR|saidaB[2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[2]~59_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[2]~58_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\))) # (!\FD|BR|saidaB[2]~58_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(15),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\,
	datad => \FD|BR|saidaB[2]~58_combout\,
	combout => \FD|BR|saidaB[2]~59_combout\);

-- Location: FF_X81_Y52_N31
\FD|IDEX|data_s2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(2));

-- Location: LCCOMB_X81_Y52_N24
\FD|mux_Banco_Ula|saida[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[2]~29_combout\ = (\FD|IDEX|data_s8\(0) & (\FD|IDEX|data_s3\(2))) # (!\FD|IDEX|data_s8\(0) & ((\FD|IDEX|data_s2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|IDEX|data_s3\(2),
	datac => \FD|IDEX|data_s2\(2),
	datad => \FD|IDEX|data_s8\(0),
	combout => \FD|mux_Banco_Ula|saida[2]~29_combout\);

-- Location: LCCOMB_X84_Y52_N28
\FD|ULA|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~0_combout\ = (!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[2]~4_combout\,
	combout => \FD|ULA|Mux29~0_combout\);

-- Location: LCCOMB_X84_Y52_N26
\FD|ULA|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~1_combout\ = (\FD|ULA|Mux19~0_combout\ & ((\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Add1~4_combout\)) # (!\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Mux29~0_combout\))))) # (!\FD|ULA|Mux19~0_combout\ & (((!\FD|ULA|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~4_combout\,
	datab => \FD|ULA|Mux29~0_combout\,
	datac => \FD|ULA|Mux19~0_combout\,
	datad => \FD|ULA|Mux19~1_combout\,
	combout => \FD|ULA|Mux29~1_combout\);

-- Location: LCCOMB_X84_Y52_N16
\FD|ULA|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~2_combout\ = (\FD|ULA|Mux29~1_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\) # ((\FD|mux_Banco_Ula|saida[2]~29_combout\ & \FD|IDEX|data_s1\(2))))) # (!\FD|ULA|Mux29~1_combout\ & (!\FD|UCULA|ALUctr[1]~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[2]~29_combout\) # (\FD|IDEX|data_s1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[2]~29_combout\,
	datab => \FD|IDEX|data_s1\(2),
	datac => \FD|ULA|Mux29~1_combout\,
	datad => \FD|UCULA|ALUctr[1]~2_combout\,
	combout => \FD|ULA|Mux29~2_combout\);

-- Location: FF_X84_Y52_N17
\FD|EXMEM|data_s1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux29~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(2));

-- Location: LCCOMB_X81_Y55_N26
\FD|MEMWB|data_s1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s1[2]~feeder_combout\ = \FD|EXMEM|data_s1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s1\(2),
	combout => \FD|MEMWB|data_s1[2]~feeder_combout\);

-- Location: FF_X81_Y55_N27
\FD|MEMWB|data_s1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(2));

-- Location: LCCOMB_X81_Y55_N30
\FD|mux_Ula_Memoria|saida[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[2]~29_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEMWB|data_s1\(2),
	datac => \FD|MEMWB|data_s3\(0),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \FD|mux_Ula_Memoria|saida[2]~29_combout\);

-- Location: LCCOMB_X81_Y55_N24
\FD|BR|bancoReg_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X81_Y55_N25
\FD|BR|bancoReg_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(14));

-- Location: LCCOMB_X81_Y55_N10
\FD|BR|saidaA[1]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[1]~60_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(14) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(14),
	combout => \FD|BR|saidaA[1]~60_combout\);

-- Location: LCCOMB_X81_Y55_N18
\FD|BR|saidaA[1]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[1]~61_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[1]~60_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\))) # (!\FD|BR|saidaA[1]~60_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(13),
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\,
	datad => \FD|BR|saidaA[1]~60_combout\,
	combout => \FD|BR|saidaA[1]~61_combout\);

-- Location: FF_X81_Y55_N19
\FD|IDEX|data_s1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[1]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(1));

-- Location: LCCOMB_X84_Y55_N28
\FD|ULA|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~0_combout\ = (\FD|ULA|soma[1]~2_combout\ & !\FD|UCULA|ALUctr[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|soma[1]~2_combout\,
	datad => \FD|UCULA|ALUctr[0]~3_combout\,
	combout => \FD|ULA|Mux30~0_combout\);

-- Location: LCCOMB_X84_Y55_N6
\FD|ULA|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~1_combout\ = (\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Add1~2_combout\ & (\FD|ULA|Mux19~0_combout\))) # (!\FD|ULA|Mux19~1_combout\ & (((\FD|ULA|Mux30~0_combout\) # (!\FD|ULA|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~1_combout\,
	datab => \FD|ULA|Add1~2_combout\,
	datac => \FD|ULA|Mux19~0_combout\,
	datad => \FD|ULA|Mux30~0_combout\,
	combout => \FD|ULA|Mux30~1_combout\);

-- Location: LCCOMB_X84_Y55_N4
\FD|ULA|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (((\FD|ULA|Mux30~1_combout\)))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|IDEX|data_s1\(1) & ((\FD|mux_Banco_Ula|saida[1]~30_combout\) # (!\FD|ULA|Mux30~1_combout\))) # (!\FD|IDEX|data_s1\(1) & 
-- (\FD|mux_Banco_Ula|saida[1]~30_combout\ & !\FD|ULA|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|IDEX|data_s1\(1),
	datac => \FD|mux_Banco_Ula|saida[1]~30_combout\,
	datad => \FD|ULA|Mux30~1_combout\,
	combout => \FD|ULA|Mux30~2_combout\);

-- Location: FF_X84_Y55_N5
\FD|EXMEM|data_s1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(1));

-- Location: LCCOMB_X81_Y55_N16
\FD|MEMWB|data_s1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s1[1]~feeder_combout\ = \FD|EXMEM|data_s1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s1\(1),
	combout => \FD|MEMWB|data_s1[1]~feeder_combout\);

-- Location: FF_X81_Y55_N17
\FD|MEMWB|data_s1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(1));

-- Location: LCCOMB_X81_Y55_N22
\FD|mux_Ula_Memoria|saida[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[1]~30_combout\ = (\FD|MEMWB|data_s3\(0) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1\))) # (!\FD|MEMWB|data_s3\(0) & (\FD|MEMWB|data_s1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEMWB|data_s1\(1),
	datac => \FD|MEMWB|data_s3\(0),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => \FD|mux_Ula_Memoria|saida[1]~30_combout\);

-- Location: LCCOMB_X81_Y52_N10
\FD|BR|saidaB[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[0]~63_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[0]~62_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\))) # (!\FD|BR|saidaB[0]~62_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[0]~62_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(11),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	combout => \FD|BR|saidaB[0]~63_combout\);

-- Location: FF_X81_Y52_N11
\FD|IDEX|data_s2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s2\(0));

-- Location: LCCOMB_X77_Y53_N16
\FD|EXMEM|data_s3[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s3[0]~feeder_combout\ = \FD|IDEX|data_s2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|IDEX|data_s2\(0),
	combout => \FD|EXMEM|data_s3[0]~feeder_combout\);

-- Location: FF_X77_Y53_N17
\FD|EXMEM|data_s3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s3[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s3\(0));

-- Location: LCCOMB_X81_Y51_N6
\FD|ULA|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~3_combout\ = (\FD|UCULA|ALUop_s~33_combout\ & (((!\FD|UCULA|ALUctr[0]~3_combout\ & \FD|ULA|soma[0]~0_combout\)) # (!\FD|UCULA|ALUop_s[0]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datab => \FD|UCULA|ALUop_s~33_combout\,
	datac => \FD|UCULA|ALUop_s[0]~34_combout\,
	datad => \FD|ULA|soma[0]~0_combout\,
	combout => \FD|ULA|Mux31~3_combout\);

-- Location: LCCOMB_X81_Y51_N16
\FD|ULA|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~4_combout\ = (\FD|IDEX|data_s1\(0) & (\FD|UCULA|ALUop_s[1]~35_combout\ $ (((\FD|UCULA|ALUop_s[0]~34_combout\) # (!\FD|mux_Banco_Ula|saida[0]~31_combout\))))) # (!\FD|IDEX|data_s1\(0) & (!\FD|UCULA|ALUop_s[1]~35_combout\ & 
-- ((\FD|UCULA|ALUop_s[0]~34_combout\) # (\FD|mux_Banco_Ula|saida[0]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(0),
	datab => \FD|UCULA|ALUop_s[0]~34_combout\,
	datac => \FD|mux_Banco_Ula|saida[0]~31_combout\,
	datad => \FD|UCULA|ALUop_s[1]~35_combout\,
	combout => \FD|ULA|Mux31~4_combout\);

-- Location: LCCOMB_X81_Y51_N26
\FD|ULA|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~5_combout\ = (\FD|UCULA|ALUop_s[0]~34_combout\ & (((\FD|IDEX|data_s1\(0) & \FD|mux_Banco_Ula|saida[0]~31_combout\)) # (!\FD|UCULA|ALUop_s[1]~35_combout\))) # (!\FD|UCULA|ALUop_s[0]~34_combout\ & (\FD|IDEX|data_s1\(0) & 
-- (\FD|mux_Banco_Ula|saida[0]~31_combout\ & !\FD|UCULA|ALUop_s[1]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s1\(0),
	datab => \FD|UCULA|ALUop_s[0]~34_combout\,
	datac => \FD|mux_Banco_Ula|saida[0]~31_combout\,
	datad => \FD|UCULA|ALUop_s[1]~35_combout\,
	combout => \FD|ULA|Mux31~5_combout\);

-- Location: LCCOMB_X81_Y51_N12
\FD|ULA|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~0_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[31]~0_combout\ & (\FD|IDEX|data_s1\(31) & !\FD|ULA|Mux0~1_combout\)) # (!\FD|mux_Banco_Ula|saida[31]~0_combout\ & (!\FD|IDEX|data_s1\(31) & \FD|ULA|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[31]~0_combout\,
	datab => \FD|IDEX|data_s1\(31),
	datac => \FD|UCULA|ALUctr[1]~2_combout\,
	datad => \FD|ULA|Mux0~1_combout\,
	combout => \FD|ULA|Mux31~0_combout\);

-- Location: LCCOMB_X81_Y51_N18
\FD|ULA|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~1_combout\ = (\FD|UCULA|ALUctr[0]~3_combout\ & ((\FD|ULA|Add1~62_combout\ $ (\FD|ULA|Mux31~0_combout\)))) # (!\FD|UCULA|ALUctr[0]~3_combout\ & (\FD|ULA|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datab => \FD|ULA|Add1~0_combout\,
	datac => \FD|ULA|Add1~62_combout\,
	datad => \FD|ULA|Mux31~0_combout\,
	combout => \FD|ULA|Mux31~1_combout\);

-- Location: LCCOMB_X81_Y51_N24
\FD|ULA|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~2_combout\ = (\FD|ULA|Mux31~1_combout\ & ((\FD|UCULA|ALUop_s~33_combout\ & (\FD|UCULA|ALUop_s[1]~35_combout\ & !\FD|UCULA|ALUop_s[0]~34_combout\)) # (!\FD|UCULA|ALUop_s~33_combout\ & (!\FD|UCULA|ALUop_s[1]~35_combout\ & 
-- \FD|UCULA|ALUop_s[0]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUop_s~33_combout\,
	datab => \FD|UCULA|ALUop_s[1]~35_combout\,
	datac => \FD|UCULA|ALUop_s[0]~34_combout\,
	datad => \FD|ULA|Mux31~1_combout\,
	combout => \FD|ULA|Mux31~2_combout\);

-- Location: LCCOMB_X81_Y51_N8
\FD|ULA|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~6_combout\ = (\FD|ULA|Mux31~2_combout\) # (\FD|ULA|Mux31~5_combout\ $ (((!\FD|ULA|Mux31~3_combout\ & \FD|ULA|Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~3_combout\,
	datab => \FD|ULA|Mux31~4_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux31~6_combout\);

-- Location: FF_X81_Y51_N9
\FD|EXMEM|data_s1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux31~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s1\(0));

-- Location: LCCOMB_X77_Y55_N6
\FD|MEMWB|data_s1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEMWB|data_s1[0]~feeder_combout\ = \FD|EXMEM|data_s1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|EXMEM|data_s1\(0),
	combout => \FD|MEMWB|data_s1[0]~feeder_combout\);

-- Location: FF_X77_Y55_N7
\FD|MEMWB|data_s1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|MEMWB|data_s1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEMWB|data_s1\(0));

-- Location: LCCOMB_X77_Y55_N14
\FD|mux_Ula_Memoria|saida[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[0]~31_combout\ = (\FD|MEMWB|data_s3\(0) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (!\FD|MEMWB|data_s3\(0) & ((\FD|MEMWB|data_s1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEMWB|data_s3\(0),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \FD|MEMWB|data_s1\(0),
	combout => \FD|mux_Ula_Memoria|saida[0]~31_combout\);

-- Location: FF_X84_Y51_N21
\FD|BR|bancoReg_rtl_0_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(71));

-- Location: LCCOMB_X84_Y51_N8
\FD|BR|saidaA[30]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[30]~3_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[30]~2_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\)) # (!\FD|BR|saidaA[30]~2_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(71))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[30]~2_combout\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(71),
	combout => \FD|BR|saidaA[30]~3_combout\);

-- Location: FF_X84_Y51_N9
\FD|IDEX|data_s1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s1\(30));

-- Location: LCCOMB_X83_Y51_N26
\FD|ULA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~0_combout\ = (!\FD|ULA|Add1~42_combout\ & (!\FD|ULA|Add1~40_combout\ & (!\FD|ULA|Add1~38_combout\ & !\FD|ULA|Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~42_combout\,
	datab => \FD|ULA|Add1~40_combout\,
	datac => \FD|ULA|Add1~38_combout\,
	datad => \FD|ULA|Add1~44_combout\,
	combout => \FD|ULA|Equal0~0_combout\);

-- Location: LCCOMB_X83_Y52_N14
\FD|ULA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~2_combout\ = (!\FD|ULA|Add1~12_combout\ & (!\FD|ULA|Add1~6_combout\ & (!\FD|ULA|Add1~10_combout\ & !\FD|ULA|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~12_combout\,
	datab => \FD|ULA|Add1~6_combout\,
	datac => \FD|ULA|Add1~10_combout\,
	datad => \FD|ULA|Add1~8_combout\,
	combout => \FD|ULA|Equal0~2_combout\);

-- Location: LCCOMB_X83_Y51_N18
\FD|ULA|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~3_combout\ = (!\FD|ULA|Add1~14_combout\ & (!\FD|ULA|Add1~16_combout\ & (!\FD|ULA|Add1~20_combout\ & !\FD|ULA|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~14_combout\,
	datab => \FD|ULA|Add1~16_combout\,
	datac => \FD|ULA|Add1~20_combout\,
	datad => \FD|ULA|Add1~18_combout\,
	combout => \FD|ULA|Equal0~3_combout\);

-- Location: LCCOMB_X83_Y51_N0
\FD|ULA|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~4_combout\ = (!\FD|ULA|Add1~22_combout\ & (!\FD|ULA|Add1~24_combout\ & (!\FD|ULA|Add1~28_combout\ & !\FD|ULA|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~22_combout\,
	datab => \FD|ULA|Add1~24_combout\,
	datac => \FD|ULA|Add1~28_combout\,
	datad => \FD|ULA|Add1~26_combout\,
	combout => \FD|ULA|Equal0~4_combout\);

-- Location: LCCOMB_X83_Y51_N30
\FD|ULA|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~5_combout\ = (!\FD|ULA|Add1~4_combout\ & (!\FD|ULA|Add1~0_combout\ & (!\FD|ULA|Add1~2_combout\ & \FD|ULA|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~4_combout\,
	datab => \FD|ULA|Add1~0_combout\,
	datac => \FD|ULA|Add1~2_combout\,
	datad => \FD|ULA|Equal0~4_combout\,
	combout => \FD|ULA|Equal0~5_combout\);

-- Location: LCCOMB_X83_Y51_N12
\FD|ULA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~1_combout\ = (!\FD|ULA|Add1~34_combout\ & (!\FD|ULA|Add1~36_combout\ & (!\FD|ULA|Add1~32_combout\ & !\FD|ULA|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~34_combout\,
	datab => \FD|ULA|Add1~36_combout\,
	datac => \FD|ULA|Add1~32_combout\,
	datad => \FD|ULA|Add1~30_combout\,
	combout => \FD|ULA|Equal0~1_combout\);

-- Location: LCCOMB_X83_Y51_N8
\FD|ULA|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~6_combout\ = (\FD|ULA|Equal0~2_combout\ & (\FD|ULA|Equal0~3_combout\ & (\FD|ULA|Equal0~5_combout\ & \FD|ULA|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~2_combout\,
	datab => \FD|ULA|Equal0~3_combout\,
	datac => \FD|ULA|Equal0~5_combout\,
	datad => \FD|ULA|Equal0~1_combout\,
	combout => \FD|ULA|Equal0~6_combout\);

-- Location: LCCOMB_X83_Y51_N22
\FD|ULA|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~7_combout\ = (\FD|ULA|Equal0~0_combout\ & (!\FD|ULA|Add1~56_combout\ & (\FD|ULA|Equal0~6_combout\ & !\FD|ULA|Add1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~0_combout\,
	datab => \FD|ULA|Add1~56_combout\,
	datac => \FD|ULA|Equal0~6_combout\,
	datad => \FD|ULA|Add1~54_combout\,
	combout => \FD|ULA|Equal0~7_combout\);

-- Location: LCCOMB_X83_Y51_N16
\FD|ULA|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~8_combout\ = (!\FD|ULA|Add1~46_combout\ & (!\FD|ULA|Add1~52_combout\ & (!\FD|ULA|Add1~48_combout\ & !\FD|ULA|Add1~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~46_combout\,
	datab => \FD|ULA|Add1~52_combout\,
	datac => \FD|ULA|Add1~48_combout\,
	datad => \FD|ULA|Add1~50_combout\,
	combout => \FD|ULA|Equal0~8_combout\);

-- Location: LCCOMB_X83_Y51_N6
\FD|ULA|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~9_combout\ = (!\FD|ULA|Add1~58_combout\ & \FD|ULA|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|Add1~58_combout\,
	datad => \FD|ULA|Equal0~8_combout\,
	combout => \FD|ULA|Equal0~9_combout\);

-- Location: LCCOMB_X83_Y51_N14
\FD|ULA|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~10_combout\ = (!\FD|ULA|Add1~60_combout\ & (!\FD|ULA|Add1~62_combout\ & (\FD|ULA|Equal0~7_combout\ & \FD|ULA|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~60_combout\,
	datab => \FD|ULA|Add1~62_combout\,
	datac => \FD|ULA|Equal0~7_combout\,
	datad => \FD|ULA|Equal0~9_combout\,
	combout => \FD|ULA|Equal0~10_combout\);

-- Location: FF_X83_Y51_N15
\FD|EXMEM|data_s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|ULA|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s2~q\);

-- Location: LCCOMB_X81_Y54_N0
\FD|sel_mux_beq\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|sel_mux_beq~combout\ = (\FD|EXMEM|data_s5\(0) & \FD|EXMEM|data_s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|EXMEM|data_s5\(0),
	datad => \FD|EXMEM|data_s2~q\,
	combout => \FD|sel_mux_beq~combout\);

-- Location: LCCOMB_X76_Y58_N14
\FD|FID|data_s1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|FID|data_s1[0]~feeder_combout\ = \FD|PC|data_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|data_s\(0),
	combout => \FD|FID|data_s1[0]~feeder_combout\);

-- Location: FF_X76_Y58_N15
\FD|FID|data_s1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|FID|data_s1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(0));

-- Location: LCCOMB_X76_Y58_N24
\FD|IDEX|data_s[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[0]~feeder_combout\ = \FD|FID|data_s1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|FID|data_s1\(0),
	combout => \FD|IDEX|data_s[0]~feeder_combout\);

-- Location: FF_X76_Y58_N25
\FD|IDEX|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(0));

-- Location: LCCOMB_X76_Y58_N18
\FD|EXMEM|data_s6[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[0]~feeder_combout\ = \FD|IDEX|data_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|IDEX|data_s\(0),
	combout => \FD|EXMEM|data_s6[0]~feeder_combout\);

-- Location: FF_X76_Y58_N19
\FD|EXMEM|data_s6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(0));

-- Location: LCCOMB_X76_Y58_N4
\FD|mux_jump|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[0]~0_combout\ = (!\UC|pontosDeControle[0]~0_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(0))) # (!\FD|sel_mux_beq~combout\ & ((\FD|PC|data_s\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|EXMEM|data_s6\(0),
	datac => \FD|PC|data_s\(0),
	datad => \UC|pontosDeControle[0]~0_combout\,
	combout => \FD|mux_jump|saida[0]~0_combout\);

-- Location: FF_X76_Y58_N5
\FD|PC|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_jump|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(0));

-- Location: LCCOMB_X75_Y59_N14
\FD|Somador|saida[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[8]~12_combout\ = (\FD|PC|data_s\(8) & (\FD|Somador|saida[7]~11\ $ (GND))) # (!\FD|PC|data_s\(8) & (!\FD|Somador|saida[7]~11\ & VCC))
-- \FD|Somador|saida[8]~13\ = CARRY((\FD|PC|data_s\(8) & !\FD|Somador|saida[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(8),
	datad => VCC,
	cin => \FD|Somador|saida[7]~11\,
	combout => \FD|Somador|saida[8]~12_combout\,
	cout => \FD|Somador|saida[8]~13\);

-- Location: FF_X75_Y59_N15
\FD|FID|data_s1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(8));

-- Location: LCCOMB_X75_Y57_N10
\FD|IDEX|data_s[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[8]~feeder_combout\ = \FD|FID|data_s1\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|FID|data_s1\(8),
	combout => \FD|IDEX|data_s[8]~feeder_combout\);

-- Location: FF_X75_Y57_N11
\FD|IDEX|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(8));

-- Location: LCCOMB_X76_Y57_N14
\FD|EXMEM|data_s6[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[8]~42_combout\ = ((\FD|IDEX|data_s3\(4) $ (\FD|IDEX|data_s\(8) $ (!\FD|EXMEM|data_s6[7]~41\)))) # (GND)
-- \FD|EXMEM|data_s6[8]~43\ = CARRY((\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(8)) # (!\FD|EXMEM|data_s6[7]~41\))) # (!\FD|IDEX|data_s3\(4) & (\FD|IDEX|data_s\(8) & !\FD|EXMEM|data_s6[7]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s\(8),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[7]~41\,
	combout => \FD|EXMEM|data_s6[8]~42_combout\,
	cout => \FD|EXMEM|data_s6[8]~43\);

-- Location: FF_X76_Y57_N15
\FD|EXMEM|data_s6[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[8]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(8));

-- Location: LCCOMB_X76_Y59_N20
\FD|PC|data_s[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[8]~6_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|EXMEM|data_s6\(8)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[8]~12_combout\,
	datab => \FD|EXMEM|data_s6\(8),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[8]~6_combout\);

-- Location: FF_X76_Y59_N21
\FD|PC|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[8]~6_combout\,
	asdata => \FD|FID|data_s\(28),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(8));

-- Location: LCCOMB_X75_Y59_N16
\FD|Somador|saida[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[9]~14_combout\ = (\FD|PC|data_s\(9) & (!\FD|Somador|saida[8]~13\)) # (!\FD|PC|data_s\(9) & ((\FD|Somador|saida[8]~13\) # (GND)))
-- \FD|Somador|saida[9]~15\ = CARRY((!\FD|Somador|saida[8]~13\) # (!\FD|PC|data_s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(9),
	datad => VCC,
	cin => \FD|Somador|saida[8]~13\,
	combout => \FD|Somador|saida[9]~14_combout\,
	cout => \FD|Somador|saida[9]~15\);

-- Location: FF_X75_Y59_N17
\FD|FID|data_s1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(9));

-- Location: LCCOMB_X75_Y57_N4
\FD|IDEX|data_s[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[9]~feeder_combout\ = \FD|FID|data_s1\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|FID|data_s1\(9),
	combout => \FD|IDEX|data_s[9]~feeder_combout\);

-- Location: FF_X75_Y57_N5
\FD|IDEX|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(9));

-- Location: LCCOMB_X76_Y57_N16
\FD|EXMEM|data_s6[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[9]~44_combout\ = (\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(9) & (\FD|EXMEM|data_s6[8]~43\ & VCC)) # (!\FD|IDEX|data_s\(9) & (!\FD|EXMEM|data_s6[8]~43\)))) # (!\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(9) & (!\FD|EXMEM|data_s6[8]~43\)) # 
-- (!\FD|IDEX|data_s\(9) & ((\FD|EXMEM|data_s6[8]~43\) # (GND)))))
-- \FD|EXMEM|data_s6[9]~45\ = CARRY((\FD|IDEX|data_s3\(4) & (!\FD|IDEX|data_s\(9) & !\FD|EXMEM|data_s6[8]~43\)) # (!\FD|IDEX|data_s3\(4) & ((!\FD|EXMEM|data_s6[8]~43\) # (!\FD|IDEX|data_s\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s\(9),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[8]~43\,
	combout => \FD|EXMEM|data_s6[9]~44_combout\,
	cout => \FD|EXMEM|data_s6[9]~45\);

-- Location: FF_X76_Y57_N17
\FD|EXMEM|data_s6[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(9));

-- Location: LCCOMB_X76_Y59_N2
\FD|PC|data_s[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[9]~7_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|EXMEM|data_s6\(9)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[9]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[9]~14_combout\,
	datab => \FD|EXMEM|data_s6\(9),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[9]~7_combout\);

-- Location: FF_X76_Y59_N3
\FD|PC|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[9]~7_combout\,
	asdata => \FD|FID|data_s\(28),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(9));

-- Location: LCCOMB_X75_Y59_N18
\FD|Somador|saida[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[10]~16_combout\ = (\FD|PC|data_s\(10) & (\FD|Somador|saida[9]~15\ $ (GND))) # (!\FD|PC|data_s\(10) & (!\FD|Somador|saida[9]~15\ & VCC))
-- \FD|Somador|saida[10]~17\ = CARRY((\FD|PC|data_s\(10) & !\FD|Somador|saida[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(10),
	datad => VCC,
	cin => \FD|Somador|saida[9]~15\,
	combout => \FD|Somador|saida[10]~16_combout\,
	cout => \FD|Somador|saida[10]~17\);

-- Location: FF_X75_Y59_N19
\FD|FID|data_s1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(10));

-- Location: LCCOMB_X76_Y59_N6
\FD|IDEX|data_s[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[10]~feeder_combout\ = \FD|FID|data_s1\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s1\(10),
	combout => \FD|IDEX|data_s[10]~feeder_combout\);

-- Location: FF_X76_Y59_N7
\FD|IDEX|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(10));

-- Location: LCCOMB_X76_Y57_N18
\FD|EXMEM|data_s6[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[10]~46_combout\ = ((\FD|IDEX|data_s3\(4) $ (\FD|IDEX|data_s\(10) $ (!\FD|EXMEM|data_s6[9]~45\)))) # (GND)
-- \FD|EXMEM|data_s6[10]~47\ = CARRY((\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(10)) # (!\FD|EXMEM|data_s6[9]~45\))) # (!\FD|IDEX|data_s3\(4) & (\FD|IDEX|data_s\(10) & !\FD|EXMEM|data_s6[9]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s\(10),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[9]~45\,
	combout => \FD|EXMEM|data_s6[10]~46_combout\,
	cout => \FD|EXMEM|data_s6[10]~47\);

-- Location: FF_X76_Y57_N19
\FD|EXMEM|data_s6[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(10));

-- Location: LCCOMB_X76_Y59_N4
\FD|PC|data_s[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[10]~8_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|EXMEM|data_s6\(10)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[10]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[10]~16_combout\,
	datab => \FD|EXMEM|data_s6\(10),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[10]~8_combout\);

-- Location: FF_X76_Y59_N5
\FD|PC|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[10]~8_combout\,
	asdata => \FD|FID|data_s\(28),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(10));

-- Location: LCCOMB_X75_Y59_N20
\FD|Somador|saida[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[11]~18_combout\ = (\FD|PC|data_s\(11) & (!\FD|Somador|saida[10]~17\)) # (!\FD|PC|data_s\(11) & ((\FD|Somador|saida[10]~17\) # (GND)))
-- \FD|Somador|saida[11]~19\ = CARRY((!\FD|Somador|saida[10]~17\) # (!\FD|PC|data_s\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(11),
	datad => VCC,
	cin => \FD|Somador|saida[10]~17\,
	combout => \FD|Somador|saida[11]~18_combout\,
	cout => \FD|Somador|saida[11]~19\);

-- Location: FF_X75_Y59_N21
\FD|FID|data_s1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(11));

-- Location: LCCOMB_X75_Y57_N22
\FD|IDEX|data_s[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[11]~feeder_combout\ = \FD|FID|data_s1\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s1\(11),
	combout => \FD|IDEX|data_s[11]~feeder_combout\);

-- Location: FF_X75_Y57_N23
\FD|IDEX|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(11));

-- Location: LCCOMB_X76_Y57_N20
\FD|EXMEM|data_s6[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[11]~48_combout\ = (\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(11) & (\FD|EXMEM|data_s6[10]~47\ & VCC)) # (!\FD|IDEX|data_s\(11) & (!\FD|EXMEM|data_s6[10]~47\)))) # (!\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(11) & 
-- (!\FD|EXMEM|data_s6[10]~47\)) # (!\FD|IDEX|data_s\(11) & ((\FD|EXMEM|data_s6[10]~47\) # (GND)))))
-- \FD|EXMEM|data_s6[11]~49\ = CARRY((\FD|IDEX|data_s3\(4) & (!\FD|IDEX|data_s\(11) & !\FD|EXMEM|data_s6[10]~47\)) # (!\FD|IDEX|data_s3\(4) & ((!\FD|EXMEM|data_s6[10]~47\) # (!\FD|IDEX|data_s\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s\(11),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[10]~47\,
	combout => \FD|EXMEM|data_s6[11]~48_combout\,
	cout => \FD|EXMEM|data_s6[11]~49\);

-- Location: FF_X76_Y57_N21
\FD|EXMEM|data_s6[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[11]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(11));

-- Location: LCCOMB_X76_Y59_N26
\FD|PC|data_s[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[11]~9_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(11))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[11]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|EXMEM|data_s6\(11),
	datab => \FD|Somador|saida[11]~18_combout\,
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[11]~9_combout\);

-- Location: FF_X76_Y59_N27
\FD|PC|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[11]~9_combout\,
	asdata => \FD|FID|data_s\(28),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(11));

-- Location: LCCOMB_X75_Y59_N22
\FD|Somador|saida[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[12]~20_combout\ = (\FD|PC|data_s\(12) & (\FD|Somador|saida[11]~19\ $ (GND))) # (!\FD|PC|data_s\(12) & (!\FD|Somador|saida[11]~19\ & VCC))
-- \FD|Somador|saida[12]~21\ = CARRY((\FD|PC|data_s\(12) & !\FD|Somador|saida[11]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(12),
	datad => VCC,
	cin => \FD|Somador|saida[11]~19\,
	combout => \FD|Somador|saida[12]~20_combout\,
	cout => \FD|Somador|saida[12]~21\);

-- Location: FF_X75_Y59_N23
\FD|FID|data_s1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(12));

-- Location: LCCOMB_X75_Y57_N28
\FD|IDEX|data_s[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[12]~feeder_combout\ = \FD|FID|data_s1\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s1\(12),
	combout => \FD|IDEX|data_s[12]~feeder_combout\);

-- Location: FF_X75_Y57_N29
\FD|IDEX|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(12));

-- Location: LCCOMB_X76_Y57_N22
\FD|EXMEM|data_s6[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[12]~50_combout\ = ((\FD|IDEX|data_s3\(4) $ (\FD|IDEX|data_s\(12) $ (!\FD|EXMEM|data_s6[11]~49\)))) # (GND)
-- \FD|EXMEM|data_s6[12]~51\ = CARRY((\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(12)) # (!\FD|EXMEM|data_s6[11]~49\))) # (!\FD|IDEX|data_s3\(4) & (\FD|IDEX|data_s\(12) & !\FD|EXMEM|data_s6[11]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s\(12),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[11]~49\,
	combout => \FD|EXMEM|data_s6[12]~50_combout\,
	cout => \FD|EXMEM|data_s6[12]~51\);

-- Location: FF_X76_Y57_N23
\FD|EXMEM|data_s6[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(12));

-- Location: LCCOMB_X76_Y59_N28
\FD|PC|data_s[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[12]~10_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(12))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[12]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|EXMEM|data_s6\(12),
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[12]~20_combout\,
	combout => \FD|PC|data_s[12]~10_combout\);

-- Location: FF_X76_Y59_N29
\FD|PC|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[12]~10_combout\,
	asdata => \FD|FID|data_s\(28),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(12));

-- Location: LCCOMB_X75_Y59_N24
\FD|Somador|saida[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[13]~22_combout\ = (\FD|PC|data_s\(13) & (!\FD|Somador|saida[12]~21\)) # (!\FD|PC|data_s\(13) & ((\FD|Somador|saida[12]~21\) # (GND)))
-- \FD|Somador|saida[13]~23\ = CARRY((!\FD|Somador|saida[12]~21\) # (!\FD|PC|data_s\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(13),
	datad => VCC,
	cin => \FD|Somador|saida[12]~21\,
	combout => \FD|Somador|saida[13]~22_combout\,
	cout => \FD|Somador|saida[13]~23\);

-- Location: FF_X75_Y59_N25
\FD|FID|data_s1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(13));

-- Location: LCCOMB_X75_Y57_N30
\FD|IDEX|data_s[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[13]~feeder_combout\ = \FD|FID|data_s1\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|FID|data_s1\(13),
	combout => \FD|IDEX|data_s[13]~feeder_combout\);

-- Location: FF_X75_Y57_N31
\FD|IDEX|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(13));

-- Location: LCCOMB_X76_Y57_N24
\FD|EXMEM|data_s6[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[13]~52_combout\ = (\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(13) & (\FD|EXMEM|data_s6[12]~51\ & VCC)) # (!\FD|IDEX|data_s\(13) & (!\FD|EXMEM|data_s6[12]~51\)))) # (!\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(13) & 
-- (!\FD|EXMEM|data_s6[12]~51\)) # (!\FD|IDEX|data_s\(13) & ((\FD|EXMEM|data_s6[12]~51\) # (GND)))))
-- \FD|EXMEM|data_s6[13]~53\ = CARRY((\FD|IDEX|data_s3\(4) & (!\FD|IDEX|data_s\(13) & !\FD|EXMEM|data_s6[12]~51\)) # (!\FD|IDEX|data_s3\(4) & ((!\FD|EXMEM|data_s6[12]~51\) # (!\FD|IDEX|data_s\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s\(13),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[12]~51\,
	combout => \FD|EXMEM|data_s6[13]~52_combout\,
	cout => \FD|EXMEM|data_s6[13]~53\);

-- Location: FF_X76_Y57_N25
\FD|EXMEM|data_s6[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[13]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(13));

-- Location: LCCOMB_X76_Y59_N14
\FD|PC|data_s[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[13]~11_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|EXMEM|data_s6\(13)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[13]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[13]~22_combout\,
	datab => \FD|EXMEM|data_s6\(13),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[13]~11_combout\);

-- Location: FF_X76_Y59_N15
\FD|PC|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[13]~11_combout\,
	asdata => \FD|FID|data_s\(28),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(13));

-- Location: LCCOMB_X75_Y59_N26
\FD|Somador|saida[14]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[14]~24_combout\ = (\FD|PC|data_s\(14) & (\FD|Somador|saida[13]~23\ $ (GND))) # (!\FD|PC|data_s\(14) & (!\FD|Somador|saida[13]~23\ & VCC))
-- \FD|Somador|saida[14]~25\ = CARRY((\FD|PC|data_s\(14) & !\FD|Somador|saida[13]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(14),
	datad => VCC,
	cin => \FD|Somador|saida[13]~23\,
	combout => \FD|Somador|saida[14]~24_combout\,
	cout => \FD|Somador|saida[14]~25\);

-- Location: FF_X75_Y59_N27
\FD|FID|data_s1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[14]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(14));

-- Location: LCCOMB_X75_Y57_N12
\FD|IDEX|data_s[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[14]~feeder_combout\ = \FD|FID|data_s1\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s1\(14),
	combout => \FD|IDEX|data_s[14]~feeder_combout\);

-- Location: FF_X75_Y57_N13
\FD|IDEX|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(14));

-- Location: LCCOMB_X76_Y57_N26
\FD|EXMEM|data_s6[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[14]~54_combout\ = ((\FD|IDEX|data_s\(14) $ (\FD|IDEX|data_s3\(4) $ (!\FD|EXMEM|data_s6[13]~53\)))) # (GND)
-- \FD|EXMEM|data_s6[14]~55\ = CARRY((\FD|IDEX|data_s\(14) & ((\FD|IDEX|data_s3\(4)) # (!\FD|EXMEM|data_s6[13]~53\))) # (!\FD|IDEX|data_s\(14) & (\FD|IDEX|data_s3\(4) & !\FD|EXMEM|data_s6[13]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s\(14),
	datab => \FD|IDEX|data_s3\(4),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[13]~53\,
	combout => \FD|EXMEM|data_s6[14]~54_combout\,
	cout => \FD|EXMEM|data_s6[14]~55\);

-- Location: FF_X76_Y57_N27
\FD|EXMEM|data_s6[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(14));

-- Location: LCCOMB_X76_Y59_N0
\FD|PC|data_s[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[14]~12_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|EXMEM|data_s6\(14)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[14]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[14]~24_combout\,
	datab => \FD|EXMEM|data_s6\(14),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[14]~12_combout\);

-- Location: FF_X76_Y59_N1
\FD|PC|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[14]~12_combout\,
	asdata => \FD|FID|data_s\(28),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(14));

-- Location: LCCOMB_X75_Y59_N28
\FD|Somador|saida[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[15]~26_combout\ = (\FD|PC|data_s\(15) & (!\FD|Somador|saida[14]~25\)) # (!\FD|PC|data_s\(15) & ((\FD|Somador|saida[14]~25\) # (GND)))
-- \FD|Somador|saida[15]~27\ = CARRY((!\FD|Somador|saida[14]~25\) # (!\FD|PC|data_s\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(15),
	datad => VCC,
	cin => \FD|Somador|saida[14]~25\,
	combout => \FD|Somador|saida[15]~26_combout\,
	cout => \FD|Somador|saida[15]~27\);

-- Location: FF_X75_Y59_N29
\FD|FID|data_s1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(15));

-- Location: LCCOMB_X75_Y57_N2
\FD|IDEX|data_s[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[15]~feeder_combout\ = \FD|FID|data_s1\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|FID|data_s1\(15),
	combout => \FD|IDEX|data_s[15]~feeder_combout\);

-- Location: FF_X75_Y57_N3
\FD|IDEX|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(15));

-- Location: LCCOMB_X76_Y57_N28
\FD|EXMEM|data_s6[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[15]~56_combout\ = (\FD|IDEX|data_s\(15) & ((\FD|IDEX|data_s3\(4) & (\FD|EXMEM|data_s6[14]~55\ & VCC)) # (!\FD|IDEX|data_s3\(4) & (!\FD|EXMEM|data_s6[14]~55\)))) # (!\FD|IDEX|data_s\(15) & ((\FD|IDEX|data_s3\(4) & 
-- (!\FD|EXMEM|data_s6[14]~55\)) # (!\FD|IDEX|data_s3\(4) & ((\FD|EXMEM|data_s6[14]~55\) # (GND)))))
-- \FD|EXMEM|data_s6[15]~57\ = CARRY((\FD|IDEX|data_s\(15) & (!\FD|IDEX|data_s3\(4) & !\FD|EXMEM|data_s6[14]~55\)) # (!\FD|IDEX|data_s\(15) & ((!\FD|EXMEM|data_s6[14]~55\) # (!\FD|IDEX|data_s3\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s\(15),
	datab => \FD|IDEX|data_s3\(4),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[14]~55\,
	combout => \FD|EXMEM|data_s6[15]~56_combout\,
	cout => \FD|EXMEM|data_s6[15]~57\);

-- Location: FF_X76_Y57_N29
\FD|EXMEM|data_s6[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[15]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(15));

-- Location: LCCOMB_X76_Y59_N22
\FD|PC|data_s[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[15]~13_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(15))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[15]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|EXMEM|data_s6\(15),
	datab => \FD|Somador|saida[15]~26_combout\,
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[15]~13_combout\);

-- Location: FF_X76_Y59_N23
\FD|PC|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[15]~13_combout\,
	asdata => \FD|FID|data_s\(28),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(15));

-- Location: LCCOMB_X75_Y59_N30
\FD|Somador|saida[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[16]~28_combout\ = (\FD|PC|data_s\(16) & (\FD|Somador|saida[15]~27\ $ (GND))) # (!\FD|PC|data_s\(16) & (!\FD|Somador|saida[15]~27\ & VCC))
-- \FD|Somador|saida[16]~29\ = CARRY((\FD|PC|data_s\(16) & !\FD|Somador|saida[15]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(16),
	datad => VCC,
	cin => \FD|Somador|saida[15]~27\,
	combout => \FD|Somador|saida[16]~28_combout\,
	cout => \FD|Somador|saida[16]~29\);

-- Location: FF_X75_Y59_N31
\FD|FID|data_s1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[16]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(16));

-- Location: LCCOMB_X75_Y57_N0
\FD|IDEX|data_s[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[16]~feeder_combout\ = \FD|FID|data_s1\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s1\(16),
	combout => \FD|IDEX|data_s[16]~feeder_combout\);

-- Location: FF_X75_Y57_N1
\FD|IDEX|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(16));

-- Location: LCCOMB_X76_Y57_N30
\FD|EXMEM|data_s6[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[16]~58_combout\ = ((\FD|IDEX|data_s\(16) $ (\FD|IDEX|data_s4\(1) $ (!\FD|EXMEM|data_s6[15]~57\)))) # (GND)
-- \FD|EXMEM|data_s6[16]~59\ = CARRY((\FD|IDEX|data_s\(16) & ((\FD|IDEX|data_s4\(1)) # (!\FD|EXMEM|data_s6[15]~57\))) # (!\FD|IDEX|data_s\(16) & (\FD|IDEX|data_s4\(1) & !\FD|EXMEM|data_s6[15]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s\(16),
	datab => \FD|IDEX|data_s4\(1),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[15]~57\,
	combout => \FD|EXMEM|data_s6[16]~58_combout\,
	cout => \FD|EXMEM|data_s6[16]~59\);

-- Location: FF_X76_Y57_N31
\FD|EXMEM|data_s6[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[16]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(16));

-- Location: LCCOMB_X76_Y59_N24
\FD|PC|data_s[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[16]~14_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(16))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[16]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|EXMEM|data_s6\(16),
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[16]~28_combout\,
	combout => \FD|PC|data_s[16]~14_combout\);

-- Location: FF_X76_Y59_N25
\FD|PC|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[16]~14_combout\,
	asdata => \FD|FID|data_s\(5),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(16));

-- Location: LCCOMB_X75_Y58_N0
\FD|Somador|saida[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[17]~30_combout\ = (\FD|PC|data_s\(17) & (!\FD|Somador|saida[16]~29\)) # (!\FD|PC|data_s\(17) & ((\FD|Somador|saida[16]~29\) # (GND)))
-- \FD|Somador|saida[17]~31\ = CARRY((!\FD|Somador|saida[16]~29\) # (!\FD|PC|data_s\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(17),
	datad => VCC,
	cin => \FD|Somador|saida[16]~29\,
	combout => \FD|Somador|saida[17]~30_combout\,
	cout => \FD|Somador|saida[17]~31\);

-- Location: FF_X75_Y58_N1
\FD|FID|data_s1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[17]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(17));

-- Location: LCCOMB_X75_Y56_N24
\FD|IDEX|data_s[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[17]~feeder_combout\ = \FD|FID|data_s1\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s1\(17),
	combout => \FD|IDEX|data_s[17]~feeder_combout\);

-- Location: FF_X75_Y56_N25
\FD|IDEX|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(17));

-- Location: LCCOMB_X76_Y56_N0
\FD|EXMEM|data_s6[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[17]~60_combout\ = (\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(17) & (\FD|EXMEM|data_s6[16]~59\ & VCC)) # (!\FD|IDEX|data_s\(17) & (!\FD|EXMEM|data_s6[16]~59\)))) # (!\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(17) & 
-- (!\FD|EXMEM|data_s6[16]~59\)) # (!\FD|IDEX|data_s\(17) & ((\FD|EXMEM|data_s6[16]~59\) # (GND)))))
-- \FD|EXMEM|data_s6[17]~61\ = CARRY((\FD|IDEX|data_s3\(4) & (!\FD|IDEX|data_s\(17) & !\FD|EXMEM|data_s6[16]~59\)) # (!\FD|IDEX|data_s3\(4) & ((!\FD|EXMEM|data_s6[16]~59\) # (!\FD|IDEX|data_s\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s\(17),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[16]~59\,
	combout => \FD|EXMEM|data_s6[17]~60_combout\,
	cout => \FD|EXMEM|data_s6[17]~61\);

-- Location: FF_X76_Y56_N1
\FD|EXMEM|data_s6[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[17]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(17));

-- Location: LCCOMB_X76_Y59_N30
\FD|PC|data_s[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[17]~15_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(17))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[17]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|EXMEM|data_s6\(17),
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[17]~30_combout\,
	combout => \FD|PC|data_s[17]~15_combout\);

-- Location: FF_X76_Y59_N31
\FD|PC|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[17]~15_combout\,
	asdata => \FD|FID|data_s\(28),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(17));

-- Location: LCCOMB_X75_Y58_N2
\FD|Somador|saida[18]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[18]~32_combout\ = (\FD|PC|data_s\(18) & (\FD|Somador|saida[17]~31\ $ (GND))) # (!\FD|PC|data_s\(18) & (!\FD|Somador|saida[17]~31\ & VCC))
-- \FD|Somador|saida[18]~33\ = CARRY((\FD|PC|data_s\(18) & !\FD|Somador|saida[17]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(18),
	datad => VCC,
	cin => \FD|Somador|saida[17]~31\,
	combout => \FD|Somador|saida[18]~32_combout\,
	cout => \FD|Somador|saida[18]~33\);

-- Location: FF_X75_Y58_N3
\FD|FID|data_s1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[18]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(18));

-- Location: LCCOMB_X75_Y56_N30
\FD|IDEX|data_s[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[18]~feeder_combout\ = \FD|FID|data_s1\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s1\(18),
	combout => \FD|IDEX|data_s[18]~feeder_combout\);

-- Location: FF_X75_Y56_N31
\FD|IDEX|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(18));

-- Location: LCCOMB_X76_Y56_N2
\FD|EXMEM|data_s6[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[18]~62_combout\ = ((\FD|IDEX|data_s3\(4) $ (\FD|IDEX|data_s\(18) $ (!\FD|EXMEM|data_s6[17]~61\)))) # (GND)
-- \FD|EXMEM|data_s6[18]~63\ = CARRY((\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(18)) # (!\FD|EXMEM|data_s6[17]~61\))) # (!\FD|IDEX|data_s3\(4) & (\FD|IDEX|data_s\(18) & !\FD|EXMEM|data_s6[17]~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s\(18),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[17]~61\,
	combout => \FD|EXMEM|data_s6[18]~62_combout\,
	cout => \FD|EXMEM|data_s6[18]~63\);

-- Location: FF_X76_Y56_N3
\FD|EXMEM|data_s6[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[18]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(18));

-- Location: LCCOMB_X76_Y55_N30
\FD|PC|data_s[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[18]~16_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(18))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[18]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|EXMEM|data_s6\(18),
	datab => \FD|Somador|saida[18]~32_combout\,
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[18]~16_combout\);

-- Location: FF_X76_Y55_N31
\FD|PC|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[18]~16_combout\,
	asdata => \FD|FID|data_s\(16),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(18));

-- Location: LCCOMB_X75_Y58_N4
\FD|Somador|saida[19]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[19]~34_combout\ = (\FD|PC|data_s\(19) & (!\FD|Somador|saida[18]~33\)) # (!\FD|PC|data_s\(19) & ((\FD|Somador|saida[18]~33\) # (GND)))
-- \FD|Somador|saida[19]~35\ = CARRY((!\FD|Somador|saida[18]~33\) # (!\FD|PC|data_s\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(19),
	datad => VCC,
	cin => \FD|Somador|saida[18]~33\,
	combout => \FD|Somador|saida[19]~34_combout\,
	cout => \FD|Somador|saida[19]~35\);

-- Location: FF_X75_Y58_N5
\FD|FID|data_s1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(19));

-- Location: LCCOMB_X75_Y56_N4
\FD|IDEX|data_s[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[19]~feeder_combout\ = \FD|FID|data_s1\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s1\(19),
	combout => \FD|IDEX|data_s[19]~feeder_combout\);

-- Location: FF_X75_Y56_N5
\FD|IDEX|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(19));

-- Location: LCCOMB_X76_Y56_N4
\FD|EXMEM|data_s6[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[19]~64_combout\ = (\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(19) & (\FD|EXMEM|data_s6[18]~63\ & VCC)) # (!\FD|IDEX|data_s\(19) & (!\FD|EXMEM|data_s6[18]~63\)))) # (!\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(19) & 
-- (!\FD|EXMEM|data_s6[18]~63\)) # (!\FD|IDEX|data_s\(19) & ((\FD|EXMEM|data_s6[18]~63\) # (GND)))))
-- \FD|EXMEM|data_s6[19]~65\ = CARRY((\FD|IDEX|data_s3\(4) & (!\FD|IDEX|data_s\(19) & !\FD|EXMEM|data_s6[18]~63\)) # (!\FD|IDEX|data_s3\(4) & ((!\FD|EXMEM|data_s6[18]~63\) # (!\FD|IDEX|data_s\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s\(19),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[18]~63\,
	combout => \FD|EXMEM|data_s6[19]~64_combout\,
	cout => \FD|EXMEM|data_s6[19]~65\);

-- Location: FF_X76_Y56_N5
\FD|EXMEM|data_s6[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[19]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(19));

-- Location: LCCOMB_X76_Y59_N8
\FD|PC|data_s[19]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[19]~17_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|EXMEM|data_s6\(19)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[19]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[19]~34_combout\,
	datab => \FD|EXMEM|data_s6\(19),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[19]~17_combout\);

-- Location: FF_X76_Y59_N9
\FD|PC|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[19]~17_combout\,
	asdata => \FD|FID|data_s\(5),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(19));

-- Location: LCCOMB_X75_Y58_N6
\FD|Somador|saida[20]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[20]~36_combout\ = (\FD|PC|data_s\(20) & (\FD|Somador|saida[19]~35\ $ (GND))) # (!\FD|PC|data_s\(20) & (!\FD|Somador|saida[19]~35\ & VCC))
-- \FD|Somador|saida[20]~37\ = CARRY((\FD|PC|data_s\(20) & !\FD|Somador|saida[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(20),
	datad => VCC,
	cin => \FD|Somador|saida[19]~35\,
	combout => \FD|Somador|saida[20]~36_combout\,
	cout => \FD|Somador|saida[20]~37\);

-- Location: FF_X75_Y58_N7
\FD|FID|data_s1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[20]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(20));

-- Location: LCCOMB_X75_Y56_N6
\FD|IDEX|data_s[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[20]~feeder_combout\ = \FD|FID|data_s1\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|FID|data_s1\(20),
	combout => \FD|IDEX|data_s[20]~feeder_combout\);

-- Location: FF_X75_Y56_N7
\FD|IDEX|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(20));

-- Location: LCCOMB_X76_Y56_N6
\FD|EXMEM|data_s6[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[20]~66_combout\ = ((\FD|IDEX|data_s3\(4) $ (\FD|IDEX|data_s\(20) $ (!\FD|EXMEM|data_s6[19]~65\)))) # (GND)
-- \FD|EXMEM|data_s6[20]~67\ = CARRY((\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(20)) # (!\FD|EXMEM|data_s6[19]~65\))) # (!\FD|IDEX|data_s3\(4) & (\FD|IDEX|data_s\(20) & !\FD|EXMEM|data_s6[19]~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s\(20),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[19]~65\,
	combout => \FD|EXMEM|data_s6[20]~66_combout\,
	cout => \FD|EXMEM|data_s6[20]~67\);

-- Location: FF_X76_Y56_N7
\FD|EXMEM|data_s6[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[20]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(20));

-- Location: LCCOMB_X75_Y55_N14
\FD|mux_jump|saida[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[20]~1_combout\ = (!\UC|pontosDeControle[0]~0_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(20))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[20]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|EXMEM|data_s6\(20),
	datac => \UC|pontosDeControle[0]~0_combout\,
	datad => \FD|Somador|saida[20]~36_combout\,
	combout => \FD|mux_jump|saida[20]~1_combout\);

-- Location: FF_X75_Y55_N15
\FD|PC|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_jump|saida[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(20));

-- Location: LCCOMB_X75_Y58_N8
\FD|Somador|saida[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[21]~38_combout\ = (\FD|PC|data_s\(21) & (!\FD|Somador|saida[20]~37\)) # (!\FD|PC|data_s\(21) & ((\FD|Somador|saida[20]~37\) # (GND)))
-- \FD|Somador|saida[21]~39\ = CARRY((!\FD|Somador|saida[20]~37\) # (!\FD|PC|data_s\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(21),
	datad => VCC,
	cin => \FD|Somador|saida[20]~37\,
	combout => \FD|Somador|saida[21]~38_combout\,
	cout => \FD|Somador|saida[21]~39\);

-- Location: FF_X75_Y58_N9
\FD|FID|data_s1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[21]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(21));

-- Location: LCCOMB_X75_Y56_N28
\FD|IDEX|data_s[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[21]~feeder_combout\ = \FD|FID|data_s1\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|FID|data_s1\(21),
	combout => \FD|IDEX|data_s[21]~feeder_combout\);

-- Location: FF_X75_Y56_N29
\FD|IDEX|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(21));

-- Location: LCCOMB_X76_Y56_N8
\FD|EXMEM|data_s6[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[21]~68_combout\ = (\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(21) & (\FD|EXMEM|data_s6[20]~67\ & VCC)) # (!\FD|IDEX|data_s\(21) & (!\FD|EXMEM|data_s6[20]~67\)))) # (!\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(21) & 
-- (!\FD|EXMEM|data_s6[20]~67\)) # (!\FD|IDEX|data_s\(21) & ((\FD|EXMEM|data_s6[20]~67\) # (GND)))))
-- \FD|EXMEM|data_s6[21]~69\ = CARRY((\FD|IDEX|data_s3\(4) & (!\FD|IDEX|data_s\(21) & !\FD|EXMEM|data_s6[20]~67\)) # (!\FD|IDEX|data_s3\(4) & ((!\FD|EXMEM|data_s6[20]~67\) # (!\FD|IDEX|data_s\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s\(21),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[20]~67\,
	combout => \FD|EXMEM|data_s6[21]~68_combout\,
	cout => \FD|EXMEM|data_s6[21]~69\);

-- Location: FF_X76_Y56_N9
\FD|EXMEM|data_s6[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[21]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(21));

-- Location: LCCOMB_X76_Y58_N20
\FD|PC|data_s[21]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[21]~18_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(21))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[21]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|EXMEM|data_s6\(21),
	datad => \FD|Somador|saida[21]~38_combout\,
	combout => \FD|PC|data_s[21]~18_combout\);

-- Location: FF_X76_Y58_N21
\FD|PC|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[21]~18_combout\,
	asdata => \FD|FID|data_s\(19),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(21));

-- Location: LCCOMB_X75_Y58_N10
\FD|Somador|saida[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[22]~40_combout\ = (\FD|PC|data_s\(22) & (\FD|Somador|saida[21]~39\ $ (GND))) # (!\FD|PC|data_s\(22) & (!\FD|Somador|saida[21]~39\ & VCC))
-- \FD|Somador|saida[22]~41\ = CARRY((\FD|PC|data_s\(22) & !\FD|Somador|saida[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(22),
	datad => VCC,
	cin => \FD|Somador|saida[21]~39\,
	combout => \FD|Somador|saida[22]~40_combout\,
	cout => \FD|Somador|saida[22]~41\);

-- Location: FF_X75_Y58_N11
\FD|FID|data_s1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[22]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(22));

-- Location: LCCOMB_X75_Y56_N18
\FD|IDEX|data_s[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[22]~feeder_combout\ = \FD|FID|data_s1\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|FID|data_s1\(22),
	combout => \FD|IDEX|data_s[22]~feeder_combout\);

-- Location: FF_X75_Y56_N19
\FD|IDEX|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(22));

-- Location: LCCOMB_X76_Y56_N10
\FD|EXMEM|data_s6[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[22]~70_combout\ = ((\FD|IDEX|data_s3\(4) $ (\FD|IDEX|data_s\(22) $ (!\FD|EXMEM|data_s6[21]~69\)))) # (GND)
-- \FD|EXMEM|data_s6[22]~71\ = CARRY((\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(22)) # (!\FD|EXMEM|data_s6[21]~69\))) # (!\FD|IDEX|data_s3\(4) & (\FD|IDEX|data_s\(22) & !\FD|EXMEM|data_s6[21]~69\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s\(22),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[21]~69\,
	combout => \FD|EXMEM|data_s6[22]~70_combout\,
	cout => \FD|EXMEM|data_s6[22]~71\);

-- Location: FF_X76_Y56_N11
\FD|EXMEM|data_s6[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[22]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(22));

-- Location: LCCOMB_X76_Y58_N2
\FD|mux_jump|saida[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[22]~2_combout\ = (!\UC|pontosDeControle[0]~0_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(22))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[22]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|EXMEM|data_s6\(22),
	datab => \UC|pontosDeControle[0]~0_combout\,
	datac => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[22]~40_combout\,
	combout => \FD|mux_jump|saida[22]~2_combout\);

-- Location: FF_X76_Y58_N3
\FD|PC|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_jump|saida[22]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(22));

-- Location: LCCOMB_X75_Y58_N12
\FD|Somador|saida[23]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[23]~42_combout\ = (\FD|PC|data_s\(23) & (!\FD|Somador|saida[22]~41\)) # (!\FD|PC|data_s\(23) & ((\FD|Somador|saida[22]~41\) # (GND)))
-- \FD|Somador|saida[23]~43\ = CARRY((!\FD|Somador|saida[22]~41\) # (!\FD|PC|data_s\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(23),
	datad => VCC,
	cin => \FD|Somador|saida[22]~41\,
	combout => \FD|Somador|saida[23]~42_combout\,
	cout => \FD|Somador|saida[23]~43\);

-- Location: FF_X75_Y58_N13
\FD|FID|data_s1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[23]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(23));

-- Location: LCCOMB_X75_Y56_N20
\FD|IDEX|data_s[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[23]~feeder_combout\ = \FD|FID|data_s1\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s1\(23),
	combout => \FD|IDEX|data_s[23]~feeder_combout\);

-- Location: FF_X75_Y56_N21
\FD|IDEX|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(23));

-- Location: LCCOMB_X76_Y56_N12
\FD|EXMEM|data_s6[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[23]~72_combout\ = (\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(23) & (\FD|EXMEM|data_s6[22]~71\ & VCC)) # (!\FD|IDEX|data_s\(23) & (!\FD|EXMEM|data_s6[22]~71\)))) # (!\FD|IDEX|data_s3\(4) & ((\FD|IDEX|data_s\(23) & 
-- (!\FD|EXMEM|data_s6[22]~71\)) # (!\FD|IDEX|data_s\(23) & ((\FD|EXMEM|data_s6[22]~71\) # (GND)))))
-- \FD|EXMEM|data_s6[23]~73\ = CARRY((\FD|IDEX|data_s3\(4) & (!\FD|IDEX|data_s\(23) & !\FD|EXMEM|data_s6[22]~71\)) # (!\FD|IDEX|data_s3\(4) & ((!\FD|EXMEM|data_s6[22]~71\) # (!\FD|IDEX|data_s\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s3\(4),
	datab => \FD|IDEX|data_s\(23),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[22]~71\,
	combout => \FD|EXMEM|data_s6[23]~72_combout\,
	cout => \FD|EXMEM|data_s6[23]~73\);

-- Location: FF_X76_Y56_N13
\FD|EXMEM|data_s6[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(23));

-- Location: LCCOMB_X76_Y58_N10
\FD|PC|data_s[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[23]~19_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(23))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[23]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|EXMEM|data_s6\(23),
	datad => \FD|Somador|saida[23]~42_combout\,
	combout => \FD|PC|data_s[23]~19_combout\);

-- Location: FF_X76_Y58_N11
\FD|PC|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[23]~19_combout\,
	asdata => \FD|FID|data_s\(21),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(23));

-- Location: LCCOMB_X75_Y58_N14
\FD|Somador|saida[24]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[24]~44_combout\ = (\FD|PC|data_s\(24) & (\FD|Somador|saida[23]~43\ $ (GND))) # (!\FD|PC|data_s\(24) & (!\FD|Somador|saida[23]~43\ & VCC))
-- \FD|Somador|saida[24]~45\ = CARRY((\FD|PC|data_s\(24) & !\FD|Somador|saida[23]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(24),
	datad => VCC,
	cin => \FD|Somador|saida[23]~43\,
	combout => \FD|Somador|saida[24]~44_combout\,
	cout => \FD|Somador|saida[24]~45\);

-- Location: FF_X75_Y58_N15
\FD|FID|data_s1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[24]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(24));

-- Location: LCCOMB_X75_Y56_N10
\FD|IDEX|data_s[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[24]~feeder_combout\ = \FD|FID|data_s1\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s1\(24),
	combout => \FD|IDEX|data_s[24]~feeder_combout\);

-- Location: FF_X75_Y56_N11
\FD|IDEX|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(24));

-- Location: LCCOMB_X76_Y56_N14
\FD|EXMEM|data_s6[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[24]~74_combout\ = ((\FD|IDEX|data_s\(24) $ (\FD|IDEX|data_s3\(4) $ (!\FD|EXMEM|data_s6[23]~73\)))) # (GND)
-- \FD|EXMEM|data_s6[24]~75\ = CARRY((\FD|IDEX|data_s\(24) & ((\FD|IDEX|data_s3\(4)) # (!\FD|EXMEM|data_s6[23]~73\))) # (!\FD|IDEX|data_s\(24) & (\FD|IDEX|data_s3\(4) & !\FD|EXMEM|data_s6[23]~73\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s\(24),
	datab => \FD|IDEX|data_s3\(4),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[23]~73\,
	combout => \FD|EXMEM|data_s6[24]~74_combout\,
	cout => \FD|EXMEM|data_s6[24]~75\);

-- Location: FF_X76_Y56_N15
\FD|EXMEM|data_s6[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[24]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(24));

-- Location: LCCOMB_X76_Y58_N8
\FD|mux_jump|saida[24]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[24]~3_combout\ = (!\UC|pontosDeControle[0]~0_combout\ & ((\FD|sel_mux_beq~combout\ & ((\FD|EXMEM|data_s6\(24)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[24]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[24]~44_combout\,
	datab => \UC|pontosDeControle[0]~0_combout\,
	datac => \FD|sel_mux_beq~combout\,
	datad => \FD|EXMEM|data_s6\(24),
	combout => \FD|mux_jump|saida[24]~3_combout\);

-- Location: FF_X76_Y58_N9
\FD|PC|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_jump|saida[24]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(24));

-- Location: LCCOMB_X75_Y58_N16
\FD|Somador|saida[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[25]~46_combout\ = (\FD|PC|data_s\(25) & (!\FD|Somador|saida[24]~45\)) # (!\FD|PC|data_s\(25) & ((\FD|Somador|saida[24]~45\) # (GND)))
-- \FD|Somador|saida[25]~47\ = CARRY((!\FD|Somador|saida[24]~45\) # (!\FD|PC|data_s\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(25),
	datad => VCC,
	cin => \FD|Somador|saida[24]~45\,
	combout => \FD|Somador|saida[25]~46_combout\,
	cout => \FD|Somador|saida[25]~47\);

-- Location: FF_X75_Y58_N17
\FD|FID|data_s1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[25]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(25));

-- Location: LCCOMB_X75_Y56_N8
\FD|IDEX|data_s[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[25]~feeder_combout\ = \FD|FID|data_s1\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|FID|data_s1\(25),
	combout => \FD|IDEX|data_s[25]~feeder_combout\);

-- Location: FF_X75_Y56_N9
\FD|IDEX|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(25));

-- Location: LCCOMB_X76_Y56_N16
\FD|EXMEM|data_s6[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[25]~76_combout\ = (\FD|IDEX|data_s\(25) & ((\FD|IDEX|data_s3\(4) & (\FD|EXMEM|data_s6[24]~75\ & VCC)) # (!\FD|IDEX|data_s3\(4) & (!\FD|EXMEM|data_s6[24]~75\)))) # (!\FD|IDEX|data_s\(25) & ((\FD|IDEX|data_s3\(4) & 
-- (!\FD|EXMEM|data_s6[24]~75\)) # (!\FD|IDEX|data_s3\(4) & ((\FD|EXMEM|data_s6[24]~75\) # (GND)))))
-- \FD|EXMEM|data_s6[25]~77\ = CARRY((\FD|IDEX|data_s\(25) & (!\FD|IDEX|data_s3\(4) & !\FD|EXMEM|data_s6[24]~75\)) # (!\FD|IDEX|data_s\(25) & ((!\FD|EXMEM|data_s6[24]~75\) # (!\FD|IDEX|data_s3\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s\(25),
	datab => \FD|IDEX|data_s3\(4),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[24]~75\,
	combout => \FD|EXMEM|data_s6[25]~76_combout\,
	cout => \FD|EXMEM|data_s6[25]~77\);

-- Location: FF_X76_Y56_N17
\FD|EXMEM|data_s6[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(25));

-- Location: LCCOMB_X76_Y58_N22
\FD|mux_jump|saida[25]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[25]~4_combout\ = (!\UC|pontosDeControle[0]~0_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(25))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[25]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|EXMEM|data_s6\(25),
	datac => \FD|Somador|saida[25]~46_combout\,
	datad => \UC|pontosDeControle[0]~0_combout\,
	combout => \FD|mux_jump|saida[25]~4_combout\);

-- Location: FF_X76_Y58_N23
\FD|PC|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_jump|saida[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(25));

-- Location: LCCOMB_X75_Y58_N18
\FD|Somador|saida[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[26]~48_combout\ = (\FD|PC|data_s\(26) & (\FD|Somador|saida[25]~47\ $ (GND))) # (!\FD|PC|data_s\(26) & (!\FD|Somador|saida[25]~47\ & VCC))
-- \FD|Somador|saida[26]~49\ = CARRY((\FD|PC|data_s\(26) & !\FD|Somador|saida[25]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(26),
	datad => VCC,
	cin => \FD|Somador|saida[25]~47\,
	combout => \FD|Somador|saida[26]~48_combout\,
	cout => \FD|Somador|saida[26]~49\);

-- Location: FF_X75_Y58_N19
\FD|FID|data_s1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[26]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(26));

-- Location: LCCOMB_X75_Y56_N2
\FD|IDEX|data_s[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[26]~feeder_combout\ = \FD|FID|data_s1\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s1\(26),
	combout => \FD|IDEX|data_s[26]~feeder_combout\);

-- Location: FF_X75_Y56_N3
\FD|IDEX|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(26));

-- Location: LCCOMB_X76_Y56_N18
\FD|EXMEM|data_s6[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[26]~78_combout\ = ((\FD|IDEX|data_s\(26) $ (\FD|IDEX|data_s3\(4) $ (!\FD|EXMEM|data_s6[25]~77\)))) # (GND)
-- \FD|EXMEM|data_s6[26]~79\ = CARRY((\FD|IDEX|data_s\(26) & ((\FD|IDEX|data_s3\(4)) # (!\FD|EXMEM|data_s6[25]~77\))) # (!\FD|IDEX|data_s\(26) & (\FD|IDEX|data_s3\(4) & !\FD|EXMEM|data_s6[25]~77\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s\(26),
	datab => \FD|IDEX|data_s3\(4),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[25]~77\,
	combout => \FD|EXMEM|data_s6[26]~78_combout\,
	cout => \FD|EXMEM|data_s6[26]~79\);

-- Location: FF_X76_Y56_N19
\FD|EXMEM|data_s6[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[26]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(26));

-- Location: LCCOMB_X76_Y58_N16
\FD|PC|data_s[26]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[26]~20_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|EXMEM|data_s6\(26)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[26]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|Somador|saida[26]~48_combout\,
	datad => \FD|EXMEM|data_s6\(26),
	combout => \FD|PC|data_s[26]~20_combout\);

-- Location: FF_X76_Y58_N17
\FD|PC|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[26]~20_combout\,
	asdata => \FD|FID|data_s\(5),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(26));

-- Location: LCCOMB_X75_Y58_N20
\FD|Somador|saida[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[27]~50_combout\ = (\FD|PC|data_s\(27) & (!\FD|Somador|saida[26]~49\)) # (!\FD|PC|data_s\(27) & ((\FD|Somador|saida[26]~49\) # (GND)))
-- \FD|Somador|saida[27]~51\ = CARRY((!\FD|Somador|saida[26]~49\) # (!\FD|PC|data_s\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(27),
	datad => VCC,
	cin => \FD|Somador|saida[26]~49\,
	combout => \FD|Somador|saida[27]~50_combout\,
	cout => \FD|Somador|saida[27]~51\);

-- Location: FF_X75_Y58_N21
\FD|FID|data_s1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[27]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(27));

-- Location: LCCOMB_X75_Y56_N16
\FD|IDEX|data_s[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[27]~feeder_combout\ = \FD|FID|data_s1\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|FID|data_s1\(27),
	combout => \FD|IDEX|data_s[27]~feeder_combout\);

-- Location: FF_X75_Y56_N17
\FD|IDEX|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(27));

-- Location: LCCOMB_X76_Y56_N20
\FD|EXMEM|data_s6[27]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[27]~80_combout\ = (\FD|IDEX|data_s\(27) & ((\FD|IDEX|data_s3\(4) & (\FD|EXMEM|data_s6[26]~79\ & VCC)) # (!\FD|IDEX|data_s3\(4) & (!\FD|EXMEM|data_s6[26]~79\)))) # (!\FD|IDEX|data_s\(27) & ((\FD|IDEX|data_s3\(4) & 
-- (!\FD|EXMEM|data_s6[26]~79\)) # (!\FD|IDEX|data_s3\(4) & ((\FD|EXMEM|data_s6[26]~79\) # (GND)))))
-- \FD|EXMEM|data_s6[27]~81\ = CARRY((\FD|IDEX|data_s\(27) & (!\FD|IDEX|data_s3\(4) & !\FD|EXMEM|data_s6[26]~79\)) # (!\FD|IDEX|data_s\(27) & ((!\FD|EXMEM|data_s6[26]~79\) # (!\FD|IDEX|data_s3\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s\(27),
	datab => \FD|IDEX|data_s3\(4),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[26]~79\,
	combout => \FD|EXMEM|data_s6[27]~80_combout\,
	cout => \FD|EXMEM|data_s6[27]~81\);

-- Location: FF_X76_Y56_N21
\FD|EXMEM|data_s6[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[27]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(27));

-- Location: LCCOMB_X76_Y58_N12
\FD|mux_jump|saida[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[27]~5_combout\ = (!\UC|pontosDeControle[0]~0_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(27))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[27]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \UC|pontosDeControle[0]~0_combout\,
	datac => \FD|EXMEM|data_s6\(27),
	datad => \FD|Somador|saida[27]~50_combout\,
	combout => \FD|mux_jump|saida[27]~5_combout\);

-- Location: FF_X76_Y58_N13
\FD|PC|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|mux_jump|saida[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(27));

-- Location: LCCOMB_X75_Y58_N22
\FD|Somador|saida[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[28]~52_combout\ = (\FD|PC|data_s\(28) & (\FD|Somador|saida[27]~51\ $ (GND))) # (!\FD|PC|data_s\(28) & (!\FD|Somador|saida[27]~51\ & VCC))
-- \FD|Somador|saida[28]~53\ = CARRY((\FD|PC|data_s\(28) & !\FD|Somador|saida[27]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(28),
	datad => VCC,
	cin => \FD|Somador|saida[27]~51\,
	combout => \FD|Somador|saida[28]~52_combout\,
	cout => \FD|Somador|saida[28]~53\);

-- Location: FF_X75_Y58_N23
\FD|FID|data_s1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[28]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(28));

-- Location: LCCOMB_X76_Y58_N30
\FD|IDEX|data_s[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[28]~feeder_combout\ = \FD|FID|data_s1\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|FID|data_s1\(28),
	combout => \FD|IDEX|data_s[28]~feeder_combout\);

-- Location: FF_X76_Y58_N31
\FD|IDEX|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(28));

-- Location: LCCOMB_X76_Y56_N22
\FD|EXMEM|data_s6[28]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[28]~82_combout\ = ((\FD|IDEX|data_s\(28) $ (\FD|IDEX|data_s3\(4) $ (!\FD|EXMEM|data_s6[27]~81\)))) # (GND)
-- \FD|EXMEM|data_s6[28]~83\ = CARRY((\FD|IDEX|data_s\(28) & ((\FD|IDEX|data_s3\(4)) # (!\FD|EXMEM|data_s6[27]~81\))) # (!\FD|IDEX|data_s\(28) & (\FD|IDEX|data_s3\(4) & !\FD|EXMEM|data_s6[27]~81\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s\(28),
	datab => \FD|IDEX|data_s3\(4),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[27]~81\,
	combout => \FD|EXMEM|data_s6[28]~82_combout\,
	cout => \FD|EXMEM|data_s6[28]~83\);

-- Location: FF_X76_Y56_N23
\FD|EXMEM|data_s6[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[28]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(28));

-- Location: LCCOMB_X76_Y58_N6
\FD|PC|data_s[28]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[28]~21_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(28))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[28]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|EXMEM|data_s6\(28),
	datad => \FD|Somador|saida[28]~52_combout\,
	combout => \FD|PC|data_s[28]~21_combout\);

-- Location: FF_X76_Y58_N7
\FD|PC|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[28]~21_combout\,
	asdata => \FD|FID|data_s1\(28),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(28));

-- Location: LCCOMB_X75_Y58_N24
\FD|Somador|saida[29]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[29]~54_combout\ = (\FD|PC|data_s\(29) & (!\FD|Somador|saida[28]~53\)) # (!\FD|PC|data_s\(29) & ((\FD|Somador|saida[28]~53\) # (GND)))
-- \FD|Somador|saida[29]~55\ = CARRY((!\FD|Somador|saida[28]~53\) # (!\FD|PC|data_s\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(29),
	datad => VCC,
	cin => \FD|Somador|saida[28]~53\,
	combout => \FD|Somador|saida[29]~54_combout\,
	cout => \FD|Somador|saida[29]~55\);

-- Location: FF_X75_Y58_N25
\FD|FID|data_s1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[29]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(29));

-- Location: LCCOMB_X76_Y58_N28
\FD|IDEX|data_s[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[29]~feeder_combout\ = \FD|FID|data_s1\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|FID|data_s1\(29),
	combout => \FD|IDEX|data_s[29]~feeder_combout\);

-- Location: FF_X76_Y58_N29
\FD|IDEX|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(29));

-- Location: LCCOMB_X76_Y56_N24
\FD|EXMEM|data_s6[29]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[29]~84_combout\ = (\FD|IDEX|data_s\(29) & ((\FD|IDEX|data_s3\(4) & (\FD|EXMEM|data_s6[28]~83\ & VCC)) # (!\FD|IDEX|data_s3\(4) & (!\FD|EXMEM|data_s6[28]~83\)))) # (!\FD|IDEX|data_s\(29) & ((\FD|IDEX|data_s3\(4) & 
-- (!\FD|EXMEM|data_s6[28]~83\)) # (!\FD|IDEX|data_s3\(4) & ((\FD|EXMEM|data_s6[28]~83\) # (GND)))))
-- \FD|EXMEM|data_s6[29]~85\ = CARRY((\FD|IDEX|data_s\(29) & (!\FD|IDEX|data_s3\(4) & !\FD|EXMEM|data_s6[28]~83\)) # (!\FD|IDEX|data_s\(29) & ((!\FD|EXMEM|data_s6[28]~83\) # (!\FD|IDEX|data_s3\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s\(29),
	datab => \FD|IDEX|data_s3\(4),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[28]~83\,
	combout => \FD|EXMEM|data_s6[29]~84_combout\,
	cout => \FD|EXMEM|data_s6[29]~85\);

-- Location: FF_X76_Y56_N25
\FD|EXMEM|data_s6[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[29]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(29));

-- Location: LCCOMB_X76_Y58_N0
\FD|PC|data_s[29]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[29]~22_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|EXMEM|data_s6\(29)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[29]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|Somador|saida[29]~54_combout\,
	datad => \FD|EXMEM|data_s6\(29),
	combout => \FD|PC|data_s[29]~22_combout\);

-- Location: FF_X76_Y58_N1
\FD|PC|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[29]~22_combout\,
	asdata => \FD|FID|data_s1\(29),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(29));

-- Location: LCCOMB_X75_Y58_N26
\FD|Somador|saida[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[30]~56_combout\ = (\FD|PC|data_s\(30) & (\FD|Somador|saida[29]~55\ $ (GND))) # (!\FD|PC|data_s\(30) & (!\FD|Somador|saida[29]~55\ & VCC))
-- \FD|Somador|saida[30]~57\ = CARRY((\FD|PC|data_s\(30) & !\FD|Somador|saida[29]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(30),
	datad => VCC,
	cin => \FD|Somador|saida[29]~55\,
	combout => \FD|Somador|saida[30]~56_combout\,
	cout => \FD|Somador|saida[30]~57\);

-- Location: FF_X75_Y58_N27
\FD|FID|data_s1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[30]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(30));

-- Location: LCCOMB_X76_Y56_N30
\FD|IDEX|data_s[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[30]~feeder_combout\ = \FD|FID|data_s1\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|FID|data_s1\(30),
	combout => \FD|IDEX|data_s[30]~feeder_combout\);

-- Location: FF_X76_Y56_N31
\FD|IDEX|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(30));

-- Location: LCCOMB_X76_Y56_N26
\FD|EXMEM|data_s6[30]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[30]~86_combout\ = ((\FD|IDEX|data_s\(30) $ (\FD|IDEX|data_s3\(4) $ (!\FD|EXMEM|data_s6[29]~85\)))) # (GND)
-- \FD|EXMEM|data_s6[30]~87\ = CARRY((\FD|IDEX|data_s\(30) & ((\FD|IDEX|data_s3\(4)) # (!\FD|EXMEM|data_s6[29]~85\))) # (!\FD|IDEX|data_s\(30) & (\FD|IDEX|data_s3\(4) & !\FD|EXMEM|data_s6[29]~85\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|IDEX|data_s\(30),
	datab => \FD|IDEX|data_s3\(4),
	datad => VCC,
	cin => \FD|EXMEM|data_s6[29]~85\,
	combout => \FD|EXMEM|data_s6[30]~86_combout\,
	cout => \FD|EXMEM|data_s6[30]~87\);

-- Location: FF_X76_Y56_N27
\FD|EXMEM|data_s6[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[30]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(30));

-- Location: LCCOMB_X76_Y58_N26
\FD|PC|data_s[30]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[30]~23_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(30))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[30]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|EXMEM|data_s6\(30),
	datad => \FD|Somador|saida[30]~56_combout\,
	combout => \FD|PC|data_s[30]~23_combout\);

-- Location: FF_X76_Y58_N27
\FD|PC|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[30]~23_combout\,
	asdata => \FD|FID|data_s1\(30),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(30));

-- Location: LCCOMB_X75_Y58_N28
\FD|Somador|saida[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[31]~58_combout\ = \FD|PC|data_s\(31) $ (\FD|Somador|saida[30]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(31),
	cin => \FD|Somador|saida[30]~57\,
	combout => \FD|Somador|saida[31]~58_combout\);

-- Location: FF_X75_Y58_N29
\FD|FID|data_s1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[31]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|FID|data_s1\(31));

-- Location: LCCOMB_X75_Y56_N14
\FD|IDEX|data_s[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|IDEX|data_s[31]~feeder_combout\ = \FD|FID|data_s1\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|FID|data_s1\(31),
	combout => \FD|IDEX|data_s[31]~feeder_combout\);

-- Location: FF_X75_Y56_N15
\FD|IDEX|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|IDEX|data_s[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|IDEX|data_s\(31));

-- Location: LCCOMB_X76_Y56_N28
\FD|EXMEM|data_s6[31]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|EXMEM|data_s6[31]~88_combout\ = \FD|IDEX|data_s3\(4) $ (\FD|EXMEM|data_s6[30]~87\ $ (\FD|IDEX|data_s\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|IDEX|data_s3\(4),
	datad => \FD|IDEX|data_s\(31),
	cin => \FD|EXMEM|data_s6[30]~87\,
	combout => \FD|EXMEM|data_s6[31]~88_combout\);

-- Location: FF_X76_Y56_N29
\FD|EXMEM|data_s6[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|EXMEM|data_s6[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|EXMEM|data_s6\(31));

-- Location: LCCOMB_X75_Y58_N30
\FD|PC|data_s[31]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[31]~24_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|EXMEM|data_s6\(31))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[31]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|EXMEM|data_s6\(31),
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[31]~58_combout\,
	combout => \FD|PC|data_s[31]~24_combout\);

-- Location: FF_X75_Y58_N31
\FD|PC|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[31]~24_combout\,
	asdata => \FD|FID|data_s1\(31),
	sload => \UC|pontosDeControle[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(31));

-- Location: LCCOMB_X84_Y55_N26
\H0|saida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \H0|saida7seg[0]~0_combout\ = (\FD|ULA|Mux28~2_combout\ & (\FD|ULA|Mux31~6_combout\ & ((\FD|ULA|Mux29~2_combout\) # (\FD|ULA|Mux30~2_combout\)))) # (!\FD|ULA|Mux28~2_combout\ & (!\FD|ULA|Mux30~2_combout\ & (\FD|ULA|Mux29~2_combout\ $ 
-- (\FD|ULA|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~2_combout\,
	datab => \FD|ULA|Mux28~2_combout\,
	datac => \FD|ULA|Mux30~2_combout\,
	datad => \FD|ULA|Mux31~6_combout\,
	combout => \H0|saida7seg[0]~0_combout\);

-- Location: LCCOMB_X84_Y55_N24
\H0|saida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \H0|saida7seg[1]~1_combout\ = (\FD|ULA|Mux28~2_combout\ & ((\FD|ULA|Mux31~6_combout\ & ((\FD|ULA|Mux30~2_combout\))) # (!\FD|ULA|Mux31~6_combout\ & (\FD|ULA|Mux29~2_combout\)))) # (!\FD|ULA|Mux28~2_combout\ & (\FD|ULA|Mux29~2_combout\ & 
-- (\FD|ULA|Mux30~2_combout\ $ (\FD|ULA|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~2_combout\,
	datab => \FD|ULA|Mux28~2_combout\,
	datac => \FD|ULA|Mux30~2_combout\,
	datad => \FD|ULA|Mux31~6_combout\,
	combout => \H0|saida7seg[1]~1_combout\);

-- Location: LCCOMB_X84_Y55_N22
\H0|saida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \H0|saida7seg[2]~2_combout\ = (\FD|ULA|Mux29~2_combout\ & (\FD|ULA|Mux28~2_combout\ & ((\FD|ULA|Mux30~2_combout\) # (!\FD|ULA|Mux31~6_combout\)))) # (!\FD|ULA|Mux29~2_combout\ & (!\FD|ULA|Mux28~2_combout\ & (\FD|ULA|Mux30~2_combout\ & 
-- !\FD|ULA|Mux31~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~2_combout\,
	datab => \FD|ULA|Mux28~2_combout\,
	datac => \FD|ULA|Mux30~2_combout\,
	datad => \FD|ULA|Mux31~6_combout\,
	combout => \H0|saida7seg[2]~2_combout\);

-- Location: LCCOMB_X84_Y55_N20
\H0|saida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \H0|saida7seg[3]~3_combout\ = (\FD|ULA|Mux30~2_combout\ & ((\FD|ULA|Mux29~2_combout\ & ((\FD|ULA|Mux31~6_combout\))) # (!\FD|ULA|Mux29~2_combout\ & (\FD|ULA|Mux28~2_combout\ & !\FD|ULA|Mux31~6_combout\)))) # (!\FD|ULA|Mux30~2_combout\ & 
-- (!\FD|ULA|Mux28~2_combout\ & (\FD|ULA|Mux29~2_combout\ $ (\FD|ULA|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~2_combout\,
	datab => \FD|ULA|Mux28~2_combout\,
	datac => \FD|ULA|Mux30~2_combout\,
	datad => \FD|ULA|Mux31~6_combout\,
	combout => \H0|saida7seg[3]~3_combout\);

-- Location: LCCOMB_X84_Y55_N30
\H0|saida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \H0|saida7seg[4]~4_combout\ = (\FD|ULA|Mux29~2_combout\ & ((\FD|ULA|Mux30~2_combout\ & ((\FD|ULA|Mux31~6_combout\))) # (!\FD|ULA|Mux30~2_combout\ & (!\FD|ULA|Mux28~2_combout\)))) # (!\FD|ULA|Mux29~2_combout\ & (\FD|ULA|Mux31~6_combout\ & 
-- ((!\FD|ULA|Mux30~2_combout\) # (!\FD|ULA|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~2_combout\,
	datab => \FD|ULA|Mux28~2_combout\,
	datac => \FD|ULA|Mux30~2_combout\,
	datad => \FD|ULA|Mux31~6_combout\,
	combout => \H0|saida7seg[4]~4_combout\);

-- Location: LCCOMB_X84_Y55_N12
\H0|saida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \H0|saida7seg[5]~5_combout\ = (\FD|ULA|Mux29~2_combout\ & (\FD|ULA|Mux31~6_combout\ & ((\FD|ULA|Mux28~2_combout\) # (\FD|ULA|Mux30~2_combout\)))) # (!\FD|ULA|Mux29~2_combout\ & (!\FD|ULA|Mux28~2_combout\ & ((\FD|ULA|Mux30~2_combout\) # 
-- (\FD|ULA|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~2_combout\,
	datab => \FD|ULA|Mux28~2_combout\,
	datac => \FD|ULA|Mux30~2_combout\,
	datad => \FD|ULA|Mux31~6_combout\,
	combout => \H0|saida7seg[5]~5_combout\);

-- Location: LCCOMB_X84_Y55_N18
\H0|saida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \H0|saida7seg[6]~6_combout\ = (\FD|ULA|Mux29~2_combout\ & ((\FD|ULA|Mux30~2_combout\ & ((!\FD|ULA|Mux31~6_combout\))) # (!\FD|ULA|Mux30~2_combout\ & ((\FD|ULA|Mux31~6_combout\) # (!\FD|ULA|Mux28~2_combout\))))) # (!\FD|ULA|Mux29~2_combout\ & 
-- ((\FD|ULA|Mux28~2_combout\) # ((\FD|ULA|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~2_combout\,
	datab => \FD|ULA|Mux28~2_combout\,
	datac => \FD|ULA|Mux30~2_combout\,
	datad => \FD|ULA|Mux31~6_combout\,
	combout => \H0|saida7seg[6]~6_combout\);

-- Location: LCCOMB_X114_Y30_N0
\H1|saida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \H1|saida7seg[0]~0_combout\ = (\FD|ULA|Mux27~2_combout\ & (\FD|ULA|Mux24~2_combout\ $ (((!\FD|ULA|Mux25~2_combout\ & !\FD|ULA|Mux26~2_combout\))))) # (!\FD|ULA|Mux27~2_combout\ & (\FD|ULA|Mux25~2_combout\ & (!\FD|ULA|Mux26~2_combout\ & 
-- !\FD|ULA|Mux24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~2_combout\,
	datab => \FD|ULA|Mux27~2_combout\,
	datac => \FD|ULA|Mux26~2_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \H1|saida7seg[0]~0_combout\);

-- Location: LCCOMB_X114_Y30_N2
\H1|saida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \H1|saida7seg[1]~1_combout\ = (\FD|ULA|Mux26~2_combout\ & ((\FD|ULA|Mux27~2_combout\ & ((\FD|ULA|Mux24~2_combout\))) # (!\FD|ULA|Mux27~2_combout\ & (\FD|ULA|Mux25~2_combout\)))) # (!\FD|ULA|Mux26~2_combout\ & (\FD|ULA|Mux25~2_combout\ & 
-- (\FD|ULA|Mux27~2_combout\ $ (\FD|ULA|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~2_combout\,
	datab => \FD|ULA|Mux27~2_combout\,
	datac => \FD|ULA|Mux26~2_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \H1|saida7seg[1]~1_combout\);

-- Location: LCCOMB_X114_Y30_N28
\H1|saida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \H1|saida7seg[2]~2_combout\ = (\FD|ULA|Mux25~2_combout\ & (\FD|ULA|Mux24~2_combout\ & ((\FD|ULA|Mux26~2_combout\) # (!\FD|ULA|Mux27~2_combout\)))) # (!\FD|ULA|Mux25~2_combout\ & (!\FD|ULA|Mux27~2_combout\ & (\FD|ULA|Mux26~2_combout\ & 
-- !\FD|ULA|Mux24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~2_combout\,
	datab => \FD|ULA|Mux27~2_combout\,
	datac => \FD|ULA|Mux26~2_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \H1|saida7seg[2]~2_combout\);

-- Location: LCCOMB_X114_Y30_N10
\H1|saida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \H1|saida7seg[3]~3_combout\ = (\FD|ULA|Mux26~2_combout\ & ((\FD|ULA|Mux25~2_combout\ & (\FD|ULA|Mux27~2_combout\)) # (!\FD|ULA|Mux25~2_combout\ & (!\FD|ULA|Mux27~2_combout\ & \FD|ULA|Mux24~2_combout\)))) # (!\FD|ULA|Mux26~2_combout\ & 
-- (!\FD|ULA|Mux24~2_combout\ & (\FD|ULA|Mux25~2_combout\ $ (\FD|ULA|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~2_combout\,
	datab => \FD|ULA|Mux27~2_combout\,
	datac => \FD|ULA|Mux26~2_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \H1|saida7seg[3]~3_combout\);

-- Location: LCCOMB_X114_Y30_N20
\H1|saida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \H1|saida7seg[4]~4_combout\ = (\FD|ULA|Mux25~2_combout\ & ((\FD|ULA|Mux26~2_combout\ & (\FD|ULA|Mux27~2_combout\)) # (!\FD|ULA|Mux26~2_combout\ & ((!\FD|ULA|Mux24~2_combout\))))) # (!\FD|ULA|Mux25~2_combout\ & (\FD|ULA|Mux27~2_combout\ & 
-- ((!\FD|ULA|Mux24~2_combout\) # (!\FD|ULA|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~2_combout\,
	datab => \FD|ULA|Mux27~2_combout\,
	datac => \FD|ULA|Mux26~2_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \H1|saida7seg[4]~4_combout\);

-- Location: LCCOMB_X114_Y30_N22
\H1|saida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \H1|saida7seg[5]~5_combout\ = (\FD|ULA|Mux25~2_combout\ & (\FD|ULA|Mux27~2_combout\ & ((\FD|ULA|Mux26~2_combout\) # (\FD|ULA|Mux24~2_combout\)))) # (!\FD|ULA|Mux25~2_combout\ & (!\FD|ULA|Mux24~2_combout\ & ((\FD|ULA|Mux27~2_combout\) # 
-- (\FD|ULA|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~2_combout\,
	datab => \FD|ULA|Mux27~2_combout\,
	datac => \FD|ULA|Mux26~2_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \H1|saida7seg[5]~5_combout\);

-- Location: LCCOMB_X114_Y30_N12
\H1|saida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \H1|saida7seg[6]~6_combout\ = (\FD|ULA|Mux25~2_combout\ & ((\FD|ULA|Mux27~2_combout\ & (!\FD|ULA|Mux26~2_combout\)) # (!\FD|ULA|Mux27~2_combout\ & ((\FD|ULA|Mux26~2_combout\) # (!\FD|ULA|Mux24~2_combout\))))) # (!\FD|ULA|Mux25~2_combout\ & 
-- (((\FD|ULA|Mux26~2_combout\) # (\FD|ULA|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~2_combout\,
	datab => \FD|ULA|Mux27~2_combout\,
	datac => \FD|ULA|Mux26~2_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \H1|saida7seg[6]~6_combout\);

-- Location: LCCOMB_X84_Y49_N12
\H2|saida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \H2|saida7seg[0]~0_combout\ = (\FD|ULA|Mux23~2_combout\ & (\FD|ULA|Mux20~2_combout\ $ (((!\FD|ULA|Mux21~2_combout\ & !\FD|ULA|Mux22~2_combout\))))) # (!\FD|ULA|Mux23~2_combout\ & (\FD|ULA|Mux21~2_combout\ & (!\FD|ULA|Mux22~2_combout\ & 
-- !\FD|ULA|Mux20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~2_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Mux22~2_combout\,
	datad => \FD|ULA|Mux20~2_combout\,
	combout => \H2|saida7seg[0]~0_combout\);

-- Location: LCCOMB_X84_Y49_N26
\H2|saida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \H2|saida7seg[1]~1_combout\ = (\FD|ULA|Mux22~2_combout\ & ((\FD|ULA|Mux23~2_combout\ & ((\FD|ULA|Mux20~2_combout\))) # (!\FD|ULA|Mux23~2_combout\ & (\FD|ULA|Mux21~2_combout\)))) # (!\FD|ULA|Mux22~2_combout\ & (\FD|ULA|Mux21~2_combout\ & 
-- (\FD|ULA|Mux23~2_combout\ $ (\FD|ULA|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~2_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Mux22~2_combout\,
	datad => \FD|ULA|Mux20~2_combout\,
	combout => \H2|saida7seg[1]~1_combout\);

-- Location: LCCOMB_X84_Y49_N16
\H2|saida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \H2|saida7seg[2]~2_combout\ = (\FD|ULA|Mux21~2_combout\ & (\FD|ULA|Mux20~2_combout\ & ((\FD|ULA|Mux22~2_combout\) # (!\FD|ULA|Mux23~2_combout\)))) # (!\FD|ULA|Mux21~2_combout\ & (!\FD|ULA|Mux23~2_combout\ & (\FD|ULA|Mux22~2_combout\ & 
-- !\FD|ULA|Mux20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~2_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Mux22~2_combout\,
	datad => \FD|ULA|Mux20~2_combout\,
	combout => \H2|saida7seg[2]~2_combout\);

-- Location: LCCOMB_X84_Y49_N14
\H2|saida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \H2|saida7seg[3]~3_combout\ = (\FD|ULA|Mux22~2_combout\ & ((\FD|ULA|Mux23~2_combout\ & (\FD|ULA|Mux21~2_combout\)) # (!\FD|ULA|Mux23~2_combout\ & (!\FD|ULA|Mux21~2_combout\ & \FD|ULA|Mux20~2_combout\)))) # (!\FD|ULA|Mux22~2_combout\ & 
-- (!\FD|ULA|Mux20~2_combout\ & (\FD|ULA|Mux23~2_combout\ $ (\FD|ULA|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~2_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Mux22~2_combout\,
	datad => \FD|ULA|Mux20~2_combout\,
	combout => \H2|saida7seg[3]~3_combout\);

-- Location: LCCOMB_X84_Y49_N0
\H2|saida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \H2|saida7seg[4]~4_combout\ = (\FD|ULA|Mux23~2_combout\ & ((\FD|ULA|Mux21~2_combout\ $ (!\FD|ULA|Mux22~2_combout\)) # (!\FD|ULA|Mux20~2_combout\))) # (!\FD|ULA|Mux23~2_combout\ & (\FD|ULA|Mux21~2_combout\ & (!\FD|ULA|Mux22~2_combout\ & 
-- !\FD|ULA|Mux20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~2_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Mux22~2_combout\,
	datad => \FD|ULA|Mux20~2_combout\,
	combout => \H2|saida7seg[4]~4_combout\);

-- Location: LCCOMB_X84_Y49_N30
\H2|saida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \H2|saida7seg[5]~5_combout\ = (\FD|ULA|Mux21~2_combout\ & (\FD|ULA|Mux23~2_combout\ & ((\FD|ULA|Mux22~2_combout\) # (\FD|ULA|Mux20~2_combout\)))) # (!\FD|ULA|Mux21~2_combout\ & (!\FD|ULA|Mux20~2_combout\ & ((\FD|ULA|Mux23~2_combout\) # 
-- (\FD|ULA|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~2_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Mux22~2_combout\,
	datad => \FD|ULA|Mux20~2_combout\,
	combout => \H2|saida7seg[5]~5_combout\);

-- Location: LCCOMB_X84_Y49_N28
\H2|saida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \H2|saida7seg[6]~6_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux23~2_combout\ & (!\FD|ULA|Mux22~2_combout\)) # (!\FD|ULA|Mux23~2_combout\ & ((\FD|ULA|Mux22~2_combout\) # (!\FD|ULA|Mux20~2_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & 
-- (((\FD|ULA|Mux22~2_combout\) # (\FD|ULA|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~2_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Mux22~2_combout\,
	datad => \FD|ULA|Mux20~2_combout\,
	combout => \H2|saida7seg[6]~6_combout\);

-- Location: LCCOMB_X84_Y50_N28
\H3|saida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \H3|saida7seg[0]~0_combout\ = (\FD|ULA|Mux16~2_combout\ & (\FD|ULA|Mux19~4_combout\ & ((\FD|ULA|Mux18~2_combout\) # (\FD|ULA|Mux17~2_combout\)))) # (!\FD|ULA|Mux16~2_combout\ & (!\FD|ULA|Mux18~2_combout\ & (\FD|ULA|Mux19~4_combout\ $ 
-- (\FD|ULA|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux18~2_combout\,
	datab => \FD|ULA|Mux16~2_combout\,
	datac => \FD|ULA|Mux19~4_combout\,
	datad => \FD|ULA|Mux17~2_combout\,
	combout => \H3|saida7seg[0]~0_combout\);

-- Location: LCCOMB_X84_Y50_N30
\H3|saida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \H3|saida7seg[1]~1_combout\ = (\FD|ULA|Mux18~2_combout\ & ((\FD|ULA|Mux19~4_combout\ & (\FD|ULA|Mux16~2_combout\)) # (!\FD|ULA|Mux19~4_combout\ & ((\FD|ULA|Mux17~2_combout\))))) # (!\FD|ULA|Mux18~2_combout\ & (\FD|ULA|Mux17~2_combout\ & 
-- (\FD|ULA|Mux16~2_combout\ $ (\FD|ULA|Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux18~2_combout\,
	datab => \FD|ULA|Mux16~2_combout\,
	datac => \FD|ULA|Mux19~4_combout\,
	datad => \FD|ULA|Mux17~2_combout\,
	combout => \H3|saida7seg[1]~1_combout\);

-- Location: LCCOMB_X84_Y50_N8
\H3|saida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \H3|saida7seg[2]~2_combout\ = (\FD|ULA|Mux16~2_combout\ & (\FD|ULA|Mux17~2_combout\ & ((\FD|ULA|Mux18~2_combout\) # (!\FD|ULA|Mux19~4_combout\)))) # (!\FD|ULA|Mux16~2_combout\ & (\FD|ULA|Mux18~2_combout\ & (!\FD|ULA|Mux19~4_combout\ & 
-- !\FD|ULA|Mux17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux18~2_combout\,
	datab => \FD|ULA|Mux16~2_combout\,
	datac => \FD|ULA|Mux19~4_combout\,
	datad => \FD|ULA|Mux17~2_combout\,
	combout => \H3|saida7seg[2]~2_combout\);

-- Location: LCCOMB_X84_Y50_N2
\H3|saida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \H3|saida7seg[3]~3_combout\ = (\FD|ULA|Mux18~2_combout\ & ((\FD|ULA|Mux19~4_combout\ & ((\FD|ULA|Mux17~2_combout\))) # (!\FD|ULA|Mux19~4_combout\ & (\FD|ULA|Mux16~2_combout\ & !\FD|ULA|Mux17~2_combout\)))) # (!\FD|ULA|Mux18~2_combout\ & 
-- (!\FD|ULA|Mux16~2_combout\ & (\FD|ULA|Mux19~4_combout\ $ (\FD|ULA|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux18~2_combout\,
	datab => \FD|ULA|Mux16~2_combout\,
	datac => \FD|ULA|Mux19~4_combout\,
	datad => \FD|ULA|Mux17~2_combout\,
	combout => \H3|saida7seg[3]~3_combout\);

-- Location: LCCOMB_X84_Y50_N4
\H3|saida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \H3|saida7seg[4]~4_combout\ = (\FD|ULA|Mux18~2_combout\ & (\FD|ULA|Mux19~4_combout\ & ((\FD|ULA|Mux17~2_combout\) # (!\FD|ULA|Mux16~2_combout\)))) # (!\FD|ULA|Mux18~2_combout\ & ((\FD|ULA|Mux17~2_combout\ & (!\FD|ULA|Mux16~2_combout\)) # 
-- (!\FD|ULA|Mux17~2_combout\ & ((\FD|ULA|Mux19~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux18~2_combout\,
	datab => \FD|ULA|Mux16~2_combout\,
	datac => \FD|ULA|Mux19~4_combout\,
	datad => \FD|ULA|Mux17~2_combout\,
	combout => \H3|saida7seg[4]~4_combout\);

-- Location: LCCOMB_X84_Y50_N22
\H3|saida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \H3|saida7seg[5]~5_combout\ = (\FD|ULA|Mux18~2_combout\ & ((\FD|ULA|Mux17~2_combout\ & ((\FD|ULA|Mux19~4_combout\))) # (!\FD|ULA|Mux17~2_combout\ & (!\FD|ULA|Mux16~2_combout\)))) # (!\FD|ULA|Mux18~2_combout\ & (\FD|ULA|Mux19~4_combout\ & 
-- (\FD|ULA|Mux16~2_combout\ $ (!\FD|ULA|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux18~2_combout\,
	datab => \FD|ULA|Mux16~2_combout\,
	datac => \FD|ULA|Mux19~4_combout\,
	datad => \FD|ULA|Mux17~2_combout\,
	combout => \H3|saida7seg[5]~5_combout\);

-- Location: LCCOMB_X84_Y50_N24
\H3|saida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \H3|saida7seg[6]~6_combout\ = (\FD|ULA|Mux18~2_combout\ & (((!\FD|ULA|Mux17~2_combout\) # (!\FD|ULA|Mux19~4_combout\)))) # (!\FD|ULA|Mux18~2_combout\ & ((\FD|ULA|Mux16~2_combout\ & ((\FD|ULA|Mux19~4_combout\) # (!\FD|ULA|Mux17~2_combout\))) # 
-- (!\FD|ULA|Mux16~2_combout\ & ((\FD|ULA|Mux17~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux18~2_combout\,
	datab => \FD|ULA|Mux16~2_combout\,
	datac => \FD|ULA|Mux19~4_combout\,
	datad => \FD|ULA|Mux17~2_combout\,
	combout => \H3|saida7seg[6]~6_combout\);

-- Location: LCCOMB_X83_Y4_N16
\H4|saida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \H4|saida7seg[0]~0_combout\ = (\FD|PC|data_s\(0) & ((\FD|PC|data_s\(3)))) # (!\FD|PC|data_s\(0) & (\FD|PC|data_s\(2) & !\FD|PC|data_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(0),
	datab => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(3),
	combout => \H4|saida7seg[0]~0_combout\);

-- Location: LCCOMB_X83_Y4_N22
\H4|saida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \H4|saida7seg[1]~1_combout\ = ((!\FD|PC|data_s\(0) & !\FD|PC|data_s\(2))) # (!\FD|PC|data_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(0),
	datab => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(3),
	combout => \H4|saida7seg[1]~1_combout\);

-- Location: LCCOMB_X83_Y4_N8
\H4|saida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \H4|saida7seg[2]~2_combout\ = (\FD|PC|data_s\(2) & \FD|PC|data_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(3),
	combout => \H4|saida7seg[2]~2_combout\);

-- Location: LCCOMB_X83_Y4_N30
\H4|saida7seg[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \H4|saida7seg[4]~3_combout\ = (\FD|PC|data_s\(2) & ((\FD|PC|data_s\(0)) # (!\FD|PC|data_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(0),
	datab => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(3),
	combout => \H4|saida7seg[4]~3_combout\);

-- Location: LCCOMB_X83_Y4_N20
\H4|saida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \H4|saida7seg[4]~4_combout\ = (\FD|PC|data_s\(0) & ((\FD|PC|data_s\(2)) # (!\FD|PC|data_s\(3)))) # (!\FD|PC|data_s\(0) & (\FD|PC|data_s\(2) & !\FD|PC|data_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(0),
	datab => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(3),
	combout => \H4|saida7seg[4]~4_combout\);

-- Location: LCCOMB_X83_Y4_N26
\H4|saida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \H4|saida7seg[5]~5_combout\ = (\FD|PC|data_s\(0) & ((\FD|PC|data_s\(2)) # (!\FD|PC|data_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(0),
	datab => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(3),
	combout => \H4|saida7seg[5]~5_combout\);

-- Location: LCCOMB_X83_Y4_N28
\H4|saida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \H4|saida7seg[6]~6_combout\ = \FD|PC|data_s\(2) $ (((!\FD|PC|data_s\(0) & !\FD|PC|data_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(0),
	datab => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(3),
	combout => \H4|saida7seg[6]~6_combout\);

-- Location: LCCOMB_X75_Y54_N30
\H5|saida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \H5|saida7seg[0]~0_combout\ = (\FD|PC|data_s\(4) & (\FD|PC|data_s\(7) $ (((!\FD|PC|data_s\(6) & !\FD|PC|data_s\(5)))))) # (!\FD|PC|data_s\(4) & (\FD|PC|data_s\(6) & (!\FD|PC|data_s\(5) & !\FD|PC|data_s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(7),
	combout => \H5|saida7seg[0]~0_combout\);

-- Location: LCCOMB_X75_Y54_N4
\H5|saida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \H5|saida7seg[1]~1_combout\ = (\FD|PC|data_s\(5) & ((\FD|PC|data_s\(4) & ((\FD|PC|data_s\(7)))) # (!\FD|PC|data_s\(4) & (\FD|PC|data_s\(6))))) # (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(6) & (\FD|PC|data_s\(4) $ (\FD|PC|data_s\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(7),
	combout => \H5|saida7seg[1]~1_combout\);

-- Location: LCCOMB_X75_Y54_N2
\H5|saida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \H5|saida7seg[2]~2_combout\ = (\FD|PC|data_s\(6) & (\FD|PC|data_s\(7) & ((\FD|PC|data_s\(5)) # (!\FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(4) & (\FD|PC|data_s\(5) & !\FD|PC|data_s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(7),
	combout => \H5|saida7seg[2]~2_combout\);

-- Location: LCCOMB_X75_Y54_N24
\H5|saida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \H5|saida7seg[3]~3_combout\ = (\FD|PC|data_s\(5) & ((\FD|PC|data_s\(4) & (\FD|PC|data_s\(6))) # (!\FD|PC|data_s\(4) & (!\FD|PC|data_s\(6) & \FD|PC|data_s\(7))))) # (!\FD|PC|data_s\(5) & (!\FD|PC|data_s\(7) & (\FD|PC|data_s\(4) $ (\FD|PC|data_s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(7),
	combout => \H5|saida7seg[3]~3_combout\);

-- Location: LCCOMB_X75_Y54_N18
\H5|saida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \H5|saida7seg[4]~4_combout\ = (\FD|PC|data_s\(4) & ((\FD|PC|data_s\(6) $ (!\FD|PC|data_s\(5))) # (!\FD|PC|data_s\(7)))) # (!\FD|PC|data_s\(4) & (\FD|PC|data_s\(6) & (!\FD|PC|data_s\(5) & !\FD|PC|data_s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(7),
	combout => \H5|saida7seg[4]~4_combout\);

-- Location: LCCOMB_X75_Y54_N20
\H5|saida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \H5|saida7seg[5]~5_combout\ = (\FD|PC|data_s\(6) & (\FD|PC|data_s\(4) & ((\FD|PC|data_s\(5)) # (\FD|PC|data_s\(7))))) # (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & ((\FD|PC|data_s\(4)) # (\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(7),
	combout => \H5|saida7seg[5]~5_combout\);

-- Location: LCCOMB_X75_Y54_N10
\H5|saida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \H5|saida7seg[6]~6_combout\ = (\FD|PC|data_s\(6) & ((\FD|PC|data_s\(4) & (!\FD|PC|data_s\(5))) # (!\FD|PC|data_s\(4) & ((\FD|PC|data_s\(5)) # (!\FD|PC|data_s\(7)))))) # (!\FD|PC|data_s\(6) & (((\FD|PC|data_s\(5)) # (\FD|PC|data_s\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(7),
	combout => \H5|saida7seg[6]~6_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_saida_ULAWF(0) <= \saida_ULAWF[0]~output_o\;

ww_saida_ULAWF(1) <= \saida_ULAWF[1]~output_o\;

ww_saida_ULAWF(2) <= \saida_ULAWF[2]~output_o\;

ww_saida_ULAWF(3) <= \saida_ULAWF[3]~output_o\;

ww_saida_ULAWF(4) <= \saida_ULAWF[4]~output_o\;

ww_saida_ULAWF(5) <= \saida_ULAWF[5]~output_o\;

ww_saida_ULAWF(6) <= \saida_ULAWF[6]~output_o\;

ww_saida_ULAWF(7) <= \saida_ULAWF[7]~output_o\;

ww_saida_ULAWF(8) <= \saida_ULAWF[8]~output_o\;

ww_saida_ULAWF(9) <= \saida_ULAWF[9]~output_o\;

ww_saida_ULAWF(10) <= \saida_ULAWF[10]~output_o\;

ww_saida_ULAWF(11) <= \saida_ULAWF[11]~output_o\;

ww_saida_ULAWF(12) <= \saida_ULAWF[12]~output_o\;

ww_saida_ULAWF(13) <= \saida_ULAWF[13]~output_o\;

ww_saida_ULAWF(14) <= \saida_ULAWF[14]~output_o\;

ww_saida_ULAWF(15) <= \saida_ULAWF[15]~output_o\;

ww_saida_ULAWF(16) <= \saida_ULAWF[16]~output_o\;

ww_saida_ULAWF(17) <= \saida_ULAWF[17]~output_o\;

ww_saida_ULAWF(18) <= \saida_ULAWF[18]~output_o\;

ww_saida_ULAWF(19) <= \saida_ULAWF[19]~output_o\;

ww_saida_ULAWF(20) <= \saida_ULAWF[20]~output_o\;

ww_saida_ULAWF(21) <= \saida_ULAWF[21]~output_o\;

ww_saida_ULAWF(22) <= \saida_ULAWF[22]~output_o\;

ww_saida_ULAWF(23) <= \saida_ULAWF[23]~output_o\;

ww_saida_ULAWF(24) <= \saida_ULAWF[24]~output_o\;

ww_saida_ULAWF(25) <= \saida_ULAWF[25]~output_o\;

ww_saida_ULAWF(26) <= \saida_ULAWF[26]~output_o\;

ww_saida_ULAWF(27) <= \saida_ULAWF[27]~output_o\;

ww_saida_ULAWF(28) <= \saida_ULAWF[28]~output_o\;

ww_saida_ULAWF(29) <= \saida_ULAWF[29]~output_o\;

ww_saida_ULAWF(30) <= \saida_ULAWF[30]~output_o\;

ww_saida_ULAWF(31) <= \saida_ULAWF[31]~output_o\;

ww_pcWF(0) <= \pcWF[0]~output_o\;

ww_pcWF(1) <= \pcWF[1]~output_o\;

ww_pcWF(2) <= \pcWF[2]~output_o\;

ww_pcWF(3) <= \pcWF[3]~output_o\;

ww_pcWF(4) <= \pcWF[4]~output_o\;

ww_pcWF(5) <= \pcWF[5]~output_o\;

ww_pcWF(6) <= \pcWF[6]~output_o\;

ww_pcWF(7) <= \pcWF[7]~output_o\;

ww_pcWF(8) <= \pcWF[8]~output_o\;

ww_pcWF(9) <= \pcWF[9]~output_o\;

ww_pcWF(10) <= \pcWF[10]~output_o\;

ww_pcWF(11) <= \pcWF[11]~output_o\;

ww_pcWF(12) <= \pcWF[12]~output_o\;

ww_pcWF(13) <= \pcWF[13]~output_o\;

ww_pcWF(14) <= \pcWF[14]~output_o\;

ww_pcWF(15) <= \pcWF[15]~output_o\;

ww_pcWF(16) <= \pcWF[16]~output_o\;

ww_pcWF(17) <= \pcWF[17]~output_o\;

ww_pcWF(18) <= \pcWF[18]~output_o\;

ww_pcWF(19) <= \pcWF[19]~output_o\;

ww_pcWF(20) <= \pcWF[20]~output_o\;

ww_pcWF(21) <= \pcWF[21]~output_o\;

ww_pcWF(22) <= \pcWF[22]~output_o\;

ww_pcWF(23) <= \pcWF[23]~output_o\;

ww_pcWF(24) <= \pcWF[24]~output_o\;

ww_pcWF(25) <= \pcWF[25]~output_o\;

ww_pcWF(26) <= \pcWF[26]~output_o\;

ww_pcWF(27) <= \pcWF[27]~output_o\;

ww_pcWF(28) <= \pcWF[28]~output_o\;

ww_pcWF(29) <= \pcWF[29]~output_o\;

ww_pcWF(30) <= \pcWF[30]~output_o\;

ww_pcWF(31) <= \pcWF[31]~output_o\;

ww_ZWF <= \ZWF~output_o\;

ww_dec_RBWF(0) <= \dec_RBWF[0]~output_o\;

ww_dec_RBWF(1) <= \dec_RBWF[1]~output_o\;

ww_dec_RBWF(2) <= \dec_RBWF[2]~output_o\;

ww_dec_RBWF(3) <= \dec_RBWF[3]~output_o\;

ww_dec_RBWF(4) <= \dec_RBWF[4]~output_o\;

ww_dec_RBWF(5) <= \dec_RBWF[5]~output_o\;

ww_dec_RBWF(6) <= \dec_RBWF[6]~output_o\;

ww_dec_RBWF(7) <= \dec_RBWF[7]~output_o\;

ww_dec_RBWF(8) <= \dec_RBWF[8]~output_o\;

ww_dec_RBWF(9) <= \dec_RBWF[9]~output_o\;

ww_dec_RBWF(10) <= \dec_RBWF[10]~output_o\;

ww_dec_RBWF(11) <= \dec_RBWF[11]~output_o\;

ww_dec_RBWF(12) <= \dec_RBWF[12]~output_o\;

ww_dec_RBWF(13) <= \dec_RBWF[13]~output_o\;

ww_dec_RBWF(14) <= \dec_RBWF[14]~output_o\;

ww_dec_RBWF(15) <= \dec_RBWF[15]~output_o\;

ww_dec_RBWF(16) <= \dec_RBWF[16]~output_o\;

ww_dec_RBWF(17) <= \dec_RBWF[17]~output_o\;

ww_dec_RBWF(18) <= \dec_RBWF[18]~output_o\;

ww_dec_RBWF(19) <= \dec_RBWF[19]~output_o\;

ww_dec_RBWF(20) <= \dec_RBWF[20]~output_o\;

ww_dec_RBWF(21) <= \dec_RBWF[21]~output_o\;

ww_dec_RBWF(22) <= \dec_RBWF[22]~output_o\;

ww_dec_RBWF(23) <= \dec_RBWF[23]~output_o\;

ww_dec_RBWF(24) <= \dec_RBWF[24]~output_o\;

ww_dec_RBWF(25) <= \dec_RBWF[25]~output_o\;

ww_dec_RBWF(26) <= \dec_RBWF[26]~output_o\;

ww_dec_RBWF(27) <= \dec_RBWF[27]~output_o\;

ww_dec_RBWF(28) <= \dec_RBWF[28]~output_o\;

ww_dec_RBWF(29) <= \dec_RBWF[29]~output_o\;

ww_dec_RBWF(30) <= \dec_RBWF[30]~output_o\;

ww_dec_RBWF(31) <= \dec_RBWF[31]~output_o\;

ww_dec_RAWF(0) <= \dec_RAWF[0]~output_o\;

ww_dec_RAWF(1) <= \dec_RAWF[1]~output_o\;

ww_dec_RAWF(2) <= \dec_RAWF[2]~output_o\;

ww_dec_RAWF(3) <= \dec_RAWF[3]~output_o\;

ww_dec_RAWF(4) <= \dec_RAWF[4]~output_o\;

ww_dec_RAWF(5) <= \dec_RAWF[5]~output_o\;

ww_dec_RAWF(6) <= \dec_RAWF[6]~output_o\;

ww_dec_RAWF(7) <= \dec_RAWF[7]~output_o\;

ww_dec_RAWF(8) <= \dec_RAWF[8]~output_o\;

ww_dec_RAWF(9) <= \dec_RAWF[9]~output_o\;

ww_dec_RAWF(10) <= \dec_RAWF[10]~output_o\;

ww_dec_RAWF(11) <= \dec_RAWF[11]~output_o\;

ww_dec_RAWF(12) <= \dec_RAWF[12]~output_o\;

ww_dec_RAWF(13) <= \dec_RAWF[13]~output_o\;

ww_dec_RAWF(14) <= \dec_RAWF[14]~output_o\;

ww_dec_RAWF(15) <= \dec_RAWF[15]~output_o\;

ww_dec_RAWF(16) <= \dec_RAWF[16]~output_o\;

ww_dec_RAWF(17) <= \dec_RAWF[17]~output_o\;

ww_dec_RAWF(18) <= \dec_RAWF[18]~output_o\;

ww_dec_RAWF(19) <= \dec_RAWF[19]~output_o\;

ww_dec_RAWF(20) <= \dec_RAWF[20]~output_o\;

ww_dec_RAWF(21) <= \dec_RAWF[21]~output_o\;

ww_dec_RAWF(22) <= \dec_RAWF[22]~output_o\;

ww_dec_RAWF(23) <= \dec_RAWF[23]~output_o\;

ww_dec_RAWF(24) <= \dec_RAWF[24]~output_o\;

ww_dec_RAWF(25) <= \dec_RAWF[25]~output_o\;

ww_dec_RAWF(26) <= \dec_RAWF[26]~output_o\;

ww_dec_RAWF(27) <= \dec_RAWF[27]~output_o\;

ww_dec_RAWF(28) <= \dec_RAWF[28]~output_o\;

ww_dec_RAWF(29) <= \dec_RAWF[29]~output_o\;

ww_dec_RAWF(30) <= \dec_RAWF[30]~output_o\;

ww_dec_RAWF(31) <= \dec_RAWF[31]~output_o\;

ww_sel_mux_jumpWF <= \sel_mux_jumpWF~output_o\;

ww_sel_mux_beqWF <= \sel_mux_beqWF~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


