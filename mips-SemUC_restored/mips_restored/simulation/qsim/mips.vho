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

-- DATE "12/02/2019 22:37:49"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mips IS
    PORT (
	clk : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	saida_ULAWF : OUT std_logic_vector(31 DOWNTO 0);
	pcWF : OUT std_logic_vector(31 DOWNTO 0);
	ZWF : OUT std_logic
	);
END mips;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[0]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[1]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[2]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[3]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[4]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[6]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[7]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[8]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[9]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[10]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[11]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[12]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[13]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[14]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[15]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[16]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[17]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[18]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[19]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[20]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[21]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[22]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[23]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[24]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[25]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[26]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[27]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[28]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[29]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[30]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULAWF[31]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[0]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[2]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[4]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[5]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[6]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[7]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[8]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[9]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[10]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[11]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[12]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[13]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[14]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[15]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[16]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[17]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[18]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[19]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[20]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[21]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[22]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[23]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[24]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[25]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[26]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[27]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[28]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[29]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[30]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcWF[31]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZWF	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_saida_ULAWF : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_pcWF : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ZWF : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \FD|Somador|saida[2]~1\ : std_logic;
SIGNAL \FD|Somador|saida[3]~2_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[3]~1_combout\ : std_logic;
SIGNAL \FD|Somador|saida[3]~3\ : std_logic;
SIGNAL \FD|Somador|saida[4]~4_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[4]~2_combout\ : std_logic;
SIGNAL \FD|Somador|saida[4]~5\ : std_logic;
SIGNAL \FD|Somador|saida[5]~6_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[5]~3_combout\ : std_logic;
SIGNAL \FD|Somador|saida[5]~7\ : std_logic;
SIGNAL \FD|Somador|saida[6]~8_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[6]~4_combout\ : std_logic;
SIGNAL \FD|Somador|saida[6]~9\ : std_logic;
SIGNAL \FD|Somador|saida[7]~10_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[7]~5_combout\ : std_logic;
SIGNAL \UC|Equal0~0_combout\ : std_logic;
SIGNAL \UC|Equal0~1_combout\ : std_logic;
SIGNAL \FD|Somador|saida[2]~0_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[2]~0_combout\ : std_logic;
SIGNAL \FD|Somador|saida[7]~11\ : std_logic;
SIGNAL \FD|Somador|saida[8]~12_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[8]~6_combout\ : std_logic;
SIGNAL \FD|Somador|saida[8]~13\ : std_logic;
SIGNAL \FD|Somador|saida[9]~14_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[9]~7_combout\ : std_logic;
SIGNAL \FD|Somador|saida[9]~15\ : std_logic;
SIGNAL \FD|Somador|saida[10]~16_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[10]~8_combout\ : std_logic;
SIGNAL \FD|Somador|saida[10]~17\ : std_logic;
SIGNAL \FD|Somador|saida[11]~18_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[11]~9_combout\ : std_logic;
SIGNAL \FD|Somador|saida[11]~19\ : std_logic;
SIGNAL \FD|Somador|saida[12]~20_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[12]~10_combout\ : std_logic;
SIGNAL \FD|Somador|saida[12]~21\ : std_logic;
SIGNAL \FD|Somador|saida[13]~22_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[13]~11_combout\ : std_logic;
SIGNAL \FD|Somador|saida[13]~23\ : std_logic;
SIGNAL \FD|Somador|saida[14]~24_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[14]~12_combout\ : std_logic;
SIGNAL \FD|Somador|saida[14]~25\ : std_logic;
SIGNAL \FD|Somador|saida[15]~26_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[15]~13_combout\ : std_logic;
SIGNAL \FD|Somador|saida[15]~27\ : std_logic;
SIGNAL \FD|Somador|saida[16]~28_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[16]~14_combout\ : std_logic;
SIGNAL \FD|Somador|saida[16]~29\ : std_logic;
SIGNAL \FD|Somador|saida[17]~30_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[17]~15_combout\ : std_logic;
SIGNAL \FD|Somador|saida[17]~31\ : std_logic;
SIGNAL \FD|Somador|saida[18]~32_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[18]~16_combout\ : std_logic;
SIGNAL \FD|Somador|saida[18]~33\ : std_logic;
SIGNAL \FD|Somador|saida[19]~34_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[19]~17_combout\ : std_logic;
SIGNAL \FD|Somador|saida[19]~35\ : std_logic;
SIGNAL \FD|Somador|saida[20]~36_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[20]~18_combout\ : std_logic;
SIGNAL \FD|Somador|saida[20]~37\ : std_logic;
SIGNAL \FD|Somador|saida[21]~38_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[21]~19_combout\ : std_logic;
SIGNAL \FD|Somador|saida[21]~39\ : std_logic;
SIGNAL \FD|Somador|saida[22]~40_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[22]~20_combout\ : std_logic;
SIGNAL \FD|Somador|saida[22]~41\ : std_logic;
SIGNAL \FD|Somador|saida[23]~42_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[23]~21_combout\ : std_logic;
SIGNAL \FD|Somador|saida[23]~43\ : std_logic;
SIGNAL \FD|Somador|saida[24]~44_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[24]~22_combout\ : std_logic;
SIGNAL \FD|Somador|saida[24]~45\ : std_logic;
SIGNAL \FD|Somador|saida[25]~46_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[25]~23_combout\ : std_logic;
SIGNAL \FD|Somador|saida[25]~47\ : std_logic;
SIGNAL \FD|Somador|saida[26]~48_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[26]~24_combout\ : std_logic;
SIGNAL \FD|Somador|saida[26]~49\ : std_logic;
SIGNAL \FD|Somador|saida[27]~50_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[27]~25_combout\ : std_logic;
SIGNAL \FD|Somador|saida[27]~51\ : std_logic;
SIGNAL \FD|Somador|saida[28]~52_combout\ : std_logic;
SIGNAL \FD|Somador|saida[28]~53\ : std_logic;
SIGNAL \FD|Somador|saida[29]~54_combout\ : std_logic;
SIGNAL \FD|Somador|saida[29]~55\ : std_logic;
SIGNAL \FD|Somador|saida[30]~56_combout\ : std_logic;
SIGNAL \FD|Somador|saida[30]~57\ : std_logic;
SIGNAL \FD|Somador|saida[31]~58_combout\ : std_logic;
SIGNAL \FD|PC|data_s\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_KEY <= KEY;
saida_ULAWF <= ww_saida_ULAWF;
pcWF <= ww_pcWF;
ZWF <= ww_ZWF;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X105_Y0_N9
\saida_ULAWF[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[0]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\saida_ULAWF[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[1]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\saida_ULAWF[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[2]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\saida_ULAWF[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[3]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\saida_ULAWF[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[4]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\saida_ULAWF[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\saida_ULAWF[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\saida_ULAWF[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[7]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\saida_ULAWF[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[8]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\saida_ULAWF[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[9]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\saida_ULAWF[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[10]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\saida_ULAWF[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[11]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\saida_ULAWF[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[12]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\saida_ULAWF[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[13]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\saida_ULAWF[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[14]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\saida_ULAWF[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[15]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\saida_ULAWF[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[16]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\saida_ULAWF[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[17]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\saida_ULAWF[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[18]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\saida_ULAWF[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[19]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\saida_ULAWF[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[20]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\saida_ULAWF[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[21]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\saida_ULAWF[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[22]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\saida_ULAWF[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[23]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\saida_ULAWF[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[24]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\saida_ULAWF[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[25]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\saida_ULAWF[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[26]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\saida_ULAWF[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[27]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\saida_ULAWF[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[28]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\saida_ULAWF[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[29]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\saida_ULAWF[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[30]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\saida_ULAWF[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ULAWF[31]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\pcWF[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pcWF[0]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\pcWF[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pcWF[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
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

-- Location: IOOBUF_X0_Y24_N16
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

-- Location: IOOBUF_X0_Y24_N23
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

-- Location: IOOBUF_X0_Y24_N9
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

-- Location: IOOBUF_X0_Y23_N23
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

-- Location: IOOBUF_X0_Y21_N16
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

-- Location: IOOBUF_X0_Y21_N23
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

-- Location: IOOBUF_X0_Y23_N16
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

-- Location: IOOBUF_X0_Y19_N9
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

-- Location: IOOBUF_X0_Y22_N16
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

-- Location: IOOBUF_X0_Y18_N16
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

-- Location: IOOBUF_X0_Y19_N2
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

-- Location: IOOBUF_X0_Y18_N23
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

-- Location: IOOBUF_X0_Y20_N16
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

-- Location: IOOBUF_X0_Y22_N23
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

-- Location: IOOBUF_X0_Y13_N9
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

-- Location: IOOBUF_X0_Y16_N16
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

-- Location: IOOBUF_X0_Y12_N23
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

-- Location: IOOBUF_X0_Y11_N16
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

-- Location: IOOBUF_X0_Y11_N23
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

-- Location: IOOBUF_X0_Y14_N2
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

-- Location: IOOBUF_X0_Y15_N23
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

-- Location: IOOBUF_X0_Y17_N16
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

-- Location: IOOBUF_X0_Y16_N23
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

-- Location: IOOBUF_X0_Y12_N16
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

-- Location: IOOBUF_X0_Y15_N16
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

-- Location: IOOBUF_X0_Y14_N9
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

-- Location: IOOBUF_X0_Y13_N2
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

-- Location: IOOBUF_X0_Y10_N23
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

-- Location: IOOBUF_X0_Y10_N16
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

-- Location: IOOBUF_X5_Y73_N9
\ZWF~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ZWF~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X2_Y18_N2
\FD|Somador|saida[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[2]~0_combout\ = \FD|PC|data_s\(2) $ (VCC)
-- \FD|Somador|saida[2]~1\ = CARRY(\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datad => VCC,
	combout => \FD|Somador|saida[2]~0_combout\,
	cout => \FD|Somador|saida[2]~1\);

-- Location: LCCOMB_X2_Y18_N4
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

-- Location: LCCOMB_X2_Y18_N0
\FD|mux_jump|saida[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[3]~1_combout\ = (\FD|Somador|saida[3]~2_combout\ & \UC|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Somador|saida[3]~2_combout\,
	datad => \UC|Equal0~1_combout\,
	combout => \FD|mux_jump|saida[3]~1_combout\);

-- Location: FF_X2_Y18_N1
\FD|PC|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(3));

-- Location: LCCOMB_X2_Y18_N6
\FD|Somador|saida[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[4]~4_combout\ = (\FD|PC|data_s\(4) & (\FD|Somador|saida[3]~3\ $ (GND))) # (!\FD|PC|data_s\(4) & (!\FD|Somador|saida[3]~3\ & VCC))
-- \FD|Somador|saida[4]~5\ = CARRY((\FD|PC|data_s\(4) & !\FD|Somador|saida[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(4),
	datad => VCC,
	cin => \FD|Somador|saida[3]~3\,
	combout => \FD|Somador|saida[4]~4_combout\,
	cout => \FD|Somador|saida[4]~5\);

-- Location: LCCOMB_X1_Y18_N6
\FD|mux_jump|saida[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[4]~2_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|Equal0~1_combout\,
	datad => \FD|Somador|saida[4]~4_combout\,
	combout => \FD|mux_jump|saida[4]~2_combout\);

-- Location: FF_X2_Y18_N25
\FD|PC|data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_jump|saida[4]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(4));

-- Location: LCCOMB_X2_Y18_N8
\FD|Somador|saida[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[5]~6_combout\ = (\FD|PC|data_s\(5) & (!\FD|Somador|saida[4]~5\)) # (!\FD|PC|data_s\(5) & ((\FD|Somador|saida[4]~5\) # (GND)))
-- \FD|Somador|saida[5]~7\ = CARRY((!\FD|Somador|saida[4]~5\) # (!\FD|PC|data_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(5),
	datad => VCC,
	cin => \FD|Somador|saida[4]~5\,
	combout => \FD|Somador|saida[5]~6_combout\,
	cout => \FD|Somador|saida[5]~7\);

-- Location: LCCOMB_X1_Y18_N4
\FD|mux_jump|saida[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[5]~3_combout\ = (\FD|Somador|saida[5]~6_combout\ & \UC|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Somador|saida[5]~6_combout\,
	datad => \UC|Equal0~1_combout\,
	combout => \FD|mux_jump|saida[5]~3_combout\);

-- Location: FF_X2_Y18_N29
\FD|PC|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_jump|saida[5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(5));

-- Location: LCCOMB_X2_Y18_N10
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

-- Location: LCCOMB_X1_Y18_N26
\FD|mux_jump|saida[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[6]~4_combout\ = (\FD|Somador|saida[6]~8_combout\ & \UC|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Somador|saida[6]~8_combout\,
	datad => \UC|Equal0~1_combout\,
	combout => \FD|mux_jump|saida[6]~4_combout\);

-- Location: FF_X2_Y18_N17
\FD|PC|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_jump|saida[6]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(6));

-- Location: LCCOMB_X2_Y18_N12
\FD|Somador|saida[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[7]~10_combout\ = (\FD|PC|data_s\(7) & (!\FD|Somador|saida[6]~9\)) # (!\FD|PC|data_s\(7) & ((\FD|Somador|saida[6]~9\) # (GND)))
-- \FD|Somador|saida[7]~11\ = CARRY((!\FD|Somador|saida[6]~9\) # (!\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datad => VCC,
	cin => \FD|Somador|saida[6]~9\,
	combout => \FD|Somador|saida[7]~10_combout\,
	cout => \FD|Somador|saida[7]~11\);

-- Location: LCCOMB_X1_Y18_N8
\FD|mux_jump|saida[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[7]~5_combout\ = (\FD|Somador|saida[7]~10_combout\ & \UC|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Somador|saida[7]~10_combout\,
	datad => \UC|Equal0~1_combout\,
	combout => \FD|mux_jump|saida[7]~5_combout\);

-- Location: FF_X1_Y18_N9
\FD|PC|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(7));

-- Location: LCCOMB_X1_Y18_N28
\UC|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal0~0_combout\ = (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(5) & !\FD|PC|data_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(6),
	combout => \UC|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y18_N18
\UC|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal0~1_combout\ = (\FD|PC|data_s\(2)) # ((\FD|PC|data_s\(4)) # ((\FD|PC|data_s\(7)) # (!\UC|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(7),
	datad => \UC|Equal0~0_combout\,
	combout => \UC|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y18_N16
\FD|mux_jump|saida[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[2]~0_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|Equal0~1_combout\,
	datad => \FD|Somador|saida[2]~0_combout\,
	combout => \FD|mux_jump|saida[2]~0_combout\);

-- Location: FF_X2_Y18_N23
\FD|PC|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_jump|saida[2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(2));

-- Location: LCCOMB_X2_Y18_N14
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

-- Location: LCCOMB_X1_Y18_N2
\FD|mux_jump|saida[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[8]~6_combout\ = (\FD|Somador|saida[8]~12_combout\ & \UC|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Somador|saida[8]~12_combout\,
	datad => \UC|Equal0~1_combout\,
	combout => \FD|mux_jump|saida[8]~6_combout\);

-- Location: FF_X1_Y18_N3
\FD|PC|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(8));

-- Location: LCCOMB_X2_Y18_N16
\FD|Somador|saida[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[9]~14_combout\ = (\FD|PC|data_s\(9) & (!\FD|Somador|saida[8]~13\)) # (!\FD|PC|data_s\(9) & ((\FD|Somador|saida[8]~13\) # (GND)))
-- \FD|Somador|saida[9]~15\ = CARRY((!\FD|Somador|saida[8]~13\) # (!\FD|PC|data_s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(9),
	datad => VCC,
	cin => \FD|Somador|saida[8]~13\,
	combout => \FD|Somador|saida[9]~14_combout\,
	cout => \FD|Somador|saida[9]~15\);

-- Location: LCCOMB_X1_Y18_N12
\FD|mux_jump|saida[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[9]~7_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|Equal0~1_combout\,
	datad => \FD|Somador|saida[9]~14_combout\,
	combout => \FD|mux_jump|saida[9]~7_combout\);

-- Location: FF_X1_Y18_N13
\FD|PC|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(9));

-- Location: LCCOMB_X2_Y18_N18
\FD|Somador|saida[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[10]~16_combout\ = (\FD|PC|data_s\(10) & (\FD|Somador|saida[9]~15\ $ (GND))) # (!\FD|PC|data_s\(10) & (!\FD|Somador|saida[9]~15\ & VCC))
-- \FD|Somador|saida[10]~17\ = CARRY((\FD|PC|data_s\(10) & !\FD|Somador|saida[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(10),
	datad => VCC,
	cin => \FD|Somador|saida[9]~15\,
	combout => \FD|Somador|saida[10]~16_combout\,
	cout => \FD|Somador|saida[10]~17\);

-- Location: LCCOMB_X1_Y18_N30
\FD|mux_jump|saida[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[10]~8_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|Equal0~1_combout\,
	datad => \FD|Somador|saida[10]~16_combout\,
	combout => \FD|mux_jump|saida[10]~8_combout\);

-- Location: FF_X1_Y18_N31
\FD|PC|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[10]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(10));

-- Location: LCCOMB_X2_Y18_N20
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

-- Location: LCCOMB_X1_Y18_N24
\FD|mux_jump|saida[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[11]~9_combout\ = (\FD|Somador|saida[11]~18_combout\ & \UC|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Somador|saida[11]~18_combout\,
	datad => \UC|Equal0~1_combout\,
	combout => \FD|mux_jump|saida[11]~9_combout\);

-- Location: FF_X1_Y18_N25
\FD|PC|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(11));

-- Location: LCCOMB_X2_Y18_N22
\FD|Somador|saida[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[12]~20_combout\ = (\FD|PC|data_s\(12) & (\FD|Somador|saida[11]~19\ $ (GND))) # (!\FD|PC|data_s\(12) & (!\FD|Somador|saida[11]~19\ & VCC))
-- \FD|Somador|saida[12]~21\ = CARRY((\FD|PC|data_s\(12) & !\FD|Somador|saida[11]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(12),
	datad => VCC,
	cin => \FD|Somador|saida[11]~19\,
	combout => \FD|Somador|saida[12]~20_combout\,
	cout => \FD|Somador|saida[12]~21\);

-- Location: LCCOMB_X1_Y18_N10
\FD|mux_jump|saida[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[12]~10_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[12]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|Equal0~1_combout\,
	datad => \FD|Somador|saida[12]~20_combout\,
	combout => \FD|mux_jump|saida[12]~10_combout\);

-- Location: FF_X1_Y18_N11
\FD|PC|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(12));

-- Location: LCCOMB_X2_Y18_N24
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

-- Location: LCCOMB_X1_Y18_N20
\FD|mux_jump|saida[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[13]~11_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[13]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|Equal0~1_combout\,
	datad => \FD|Somador|saida[13]~22_combout\,
	combout => \FD|mux_jump|saida[13]~11_combout\);

-- Location: FF_X1_Y18_N21
\FD|PC|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(13));

-- Location: LCCOMB_X2_Y18_N26
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

-- Location: LCCOMB_X1_Y18_N22
\FD|mux_jump|saida[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[14]~12_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[14]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|Equal0~1_combout\,
	datad => \FD|Somador|saida[14]~24_combout\,
	combout => \FD|mux_jump|saida[14]~12_combout\);

-- Location: FF_X1_Y18_N23
\FD|PC|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[14]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(14));

-- Location: LCCOMB_X2_Y18_N28
\FD|Somador|saida[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[15]~26_combout\ = (\FD|PC|data_s\(15) & (!\FD|Somador|saida[14]~25\)) # (!\FD|PC|data_s\(15) & ((\FD|Somador|saida[14]~25\) # (GND)))
-- \FD|Somador|saida[15]~27\ = CARRY((!\FD|Somador|saida[14]~25\) # (!\FD|PC|data_s\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(15),
	datad => VCC,
	cin => \FD|Somador|saida[14]~25\,
	combout => \FD|Somador|saida[15]~26_combout\,
	cout => \FD|Somador|saida[15]~27\);

-- Location: LCCOMB_X1_Y18_N0
\FD|mux_jump|saida[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[15]~13_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[15]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|Equal0~1_combout\,
	datad => \FD|Somador|saida[15]~26_combout\,
	combout => \FD|mux_jump|saida[15]~13_combout\);

-- Location: FF_X1_Y18_N1
\FD|PC|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[15]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(15));

-- Location: LCCOMB_X2_Y18_N30
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

-- Location: LCCOMB_X1_Y18_N14
\FD|mux_jump|saida[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[16]~14_combout\ = (\FD|Somador|saida[16]~28_combout\ & \UC|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Somador|saida[16]~28_combout\,
	datad => \UC|Equal0~1_combout\,
	combout => \FD|mux_jump|saida[16]~14_combout\);

-- Location: FF_X1_Y18_N15
\FD|PC|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[16]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(16));

-- Location: LCCOMB_X2_Y17_N0
\FD|Somador|saida[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[17]~30_combout\ = (\FD|PC|data_s\(17) & (!\FD|Somador|saida[16]~29\)) # (!\FD|PC|data_s\(17) & ((\FD|Somador|saida[16]~29\) # (GND)))
-- \FD|Somador|saida[17]~31\ = CARRY((!\FD|Somador|saida[16]~29\) # (!\FD|PC|data_s\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(17),
	datad => VCC,
	cin => \FD|Somador|saida[16]~29\,
	combout => \FD|Somador|saida[17]~30_combout\,
	cout => \FD|Somador|saida[17]~31\);

-- Location: LCCOMB_X2_Y17_N30
\FD|mux_jump|saida[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[17]~15_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[17]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UC|Equal0~1_combout\,
	datad => \FD|Somador|saida[17]~30_combout\,
	combout => \FD|mux_jump|saida[17]~15_combout\);

-- Location: FF_X2_Y17_N31
\FD|PC|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[17]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(17));

-- Location: LCCOMB_X2_Y17_N2
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

-- Location: LCCOMB_X1_Y17_N16
\FD|mux_jump|saida[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[18]~16_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[18]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UC|Equal0~1_combout\,
	datad => \FD|Somador|saida[18]~32_combout\,
	combout => \FD|mux_jump|saida[18]~16_combout\);

-- Location: FF_X1_Y17_N17
\FD|PC|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[18]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(18));

-- Location: LCCOMB_X2_Y17_N4
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

-- Location: LCCOMB_X1_Y17_N30
\FD|mux_jump|saida[19]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[19]~17_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[19]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UC|Equal0~1_combout\,
	datad => \FD|Somador|saida[19]~34_combout\,
	combout => \FD|mux_jump|saida[19]~17_combout\);

-- Location: FF_X1_Y17_N31
\FD|PC|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[19]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(19));

-- Location: LCCOMB_X2_Y17_N6
\FD|Somador|saida[20]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[20]~36_combout\ = (\FD|PC|data_s\(20) & (\FD|Somador|saida[19]~35\ $ (GND))) # (!\FD|PC|data_s\(20) & (!\FD|Somador|saida[19]~35\ & VCC))
-- \FD|Somador|saida[20]~37\ = CARRY((\FD|PC|data_s\(20) & !\FD|Somador|saida[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(20),
	datad => VCC,
	cin => \FD|Somador|saida[19]~35\,
	combout => \FD|Somador|saida[20]~36_combout\,
	cout => \FD|Somador|saida[20]~37\);

-- Location: LCCOMB_X1_Y17_N24
\FD|mux_jump|saida[20]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[20]~18_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[20]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UC|Equal0~1_combout\,
	datad => \FD|Somador|saida[20]~36_combout\,
	combout => \FD|mux_jump|saida[20]~18_combout\);

-- Location: FF_X1_Y17_N25
\FD|PC|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[20]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(20));

-- Location: LCCOMB_X2_Y17_N8
\FD|Somador|saida[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[21]~38_combout\ = (\FD|PC|data_s\(21) & (!\FD|Somador|saida[20]~37\)) # (!\FD|PC|data_s\(21) & ((\FD|Somador|saida[20]~37\) # (GND)))
-- \FD|Somador|saida[21]~39\ = CARRY((!\FD|Somador|saida[20]~37\) # (!\FD|PC|data_s\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(21),
	datad => VCC,
	cin => \FD|Somador|saida[20]~37\,
	combout => \FD|Somador|saida[21]~38_combout\,
	cout => \FD|Somador|saida[21]~39\);

-- Location: LCCOMB_X1_Y17_N22
\FD|mux_jump|saida[21]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[21]~19_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[21]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|Equal0~1_combout\,
	datac => \FD|Somador|saida[21]~38_combout\,
	combout => \FD|mux_jump|saida[21]~19_combout\);

-- Location: FF_X1_Y17_N23
\FD|PC|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[21]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(21));

-- Location: LCCOMB_X2_Y17_N10
\FD|Somador|saida[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[22]~40_combout\ = (\FD|PC|data_s\(22) & (\FD|Somador|saida[21]~39\ $ (GND))) # (!\FD|PC|data_s\(22) & (!\FD|Somador|saida[21]~39\ & VCC))
-- \FD|Somador|saida[22]~41\ = CARRY((\FD|PC|data_s\(22) & !\FD|Somador|saida[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(22),
	datad => VCC,
	cin => \FD|Somador|saida[21]~39\,
	combout => \FD|Somador|saida[22]~40_combout\,
	cout => \FD|Somador|saida[22]~41\);

-- Location: LCCOMB_X1_Y17_N20
\FD|mux_jump|saida[22]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[22]~20_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[22]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|Equal0~1_combout\,
	datac => \FD|Somador|saida[22]~40_combout\,
	combout => \FD|mux_jump|saida[22]~20_combout\);

-- Location: FF_X1_Y17_N21
\FD|PC|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(22));

-- Location: LCCOMB_X2_Y17_N12
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

-- Location: LCCOMB_X1_Y17_N6
\FD|mux_jump|saida[23]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[23]~21_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[23]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|Equal0~1_combout\,
	datac => \FD|Somador|saida[23]~42_combout\,
	combout => \FD|mux_jump|saida[23]~21_combout\);

-- Location: FF_X1_Y17_N7
\FD|PC|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[23]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(23));

-- Location: LCCOMB_X2_Y17_N14
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

-- Location: LCCOMB_X1_Y17_N4
\FD|mux_jump|saida[24]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[24]~22_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[24]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|Equal0~1_combout\,
	datac => \FD|Somador|saida[24]~44_combout\,
	combout => \FD|mux_jump|saida[24]~22_combout\);

-- Location: FF_X1_Y17_N5
\FD|PC|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[24]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(24));

-- Location: LCCOMB_X2_Y17_N16
\FD|Somador|saida[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[25]~46_combout\ = (\FD|PC|data_s\(25) & (!\FD|Somador|saida[24]~45\)) # (!\FD|PC|data_s\(25) & ((\FD|Somador|saida[24]~45\) # (GND)))
-- \FD|Somador|saida[25]~47\ = CARRY((!\FD|Somador|saida[24]~45\) # (!\FD|PC|data_s\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(25),
	datad => VCC,
	cin => \FD|Somador|saida[24]~45\,
	combout => \FD|Somador|saida[25]~46_combout\,
	cout => \FD|Somador|saida[25]~47\);

-- Location: LCCOMB_X1_Y17_N10
\FD|mux_jump|saida[25]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[25]~23_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[25]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UC|Equal0~1_combout\,
	datad => \FD|Somador|saida[25]~46_combout\,
	combout => \FD|mux_jump|saida[25]~23_combout\);

-- Location: FF_X1_Y17_N11
\FD|PC|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[25]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(25));

-- Location: LCCOMB_X2_Y17_N18
\FD|Somador|saida[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[26]~48_combout\ = (\FD|PC|data_s\(26) & (\FD|Somador|saida[25]~47\ $ (GND))) # (!\FD|PC|data_s\(26) & (!\FD|Somador|saida[25]~47\ & VCC))
-- \FD|Somador|saida[26]~49\ = CARRY((\FD|PC|data_s\(26) & !\FD|Somador|saida[25]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(26),
	datad => VCC,
	cin => \FD|Somador|saida[25]~47\,
	combout => \FD|Somador|saida[26]~48_combout\,
	cout => \FD|Somador|saida[26]~49\);

-- Location: LCCOMB_X1_Y17_N12
\FD|mux_jump|saida[26]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[26]~24_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[26]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UC|Equal0~1_combout\,
	datad => \FD|Somador|saida[26]~48_combout\,
	combout => \FD|mux_jump|saida[26]~24_combout\);

-- Location: FF_X1_Y17_N13
\FD|PC|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[26]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(26));

-- Location: LCCOMB_X2_Y17_N20
\FD|Somador|saida[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[27]~50_combout\ = (\FD|PC|data_s\(27) & (!\FD|Somador|saida[26]~49\)) # (!\FD|PC|data_s\(27) & ((\FD|Somador|saida[26]~49\) # (GND)))
-- \FD|Somador|saida[27]~51\ = CARRY((!\FD|Somador|saida[26]~49\) # (!\FD|PC|data_s\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(27),
	datad => VCC,
	cin => \FD|Somador|saida[26]~49\,
	combout => \FD|Somador|saida[27]~50_combout\,
	cout => \FD|Somador|saida[27]~51\);

-- Location: LCCOMB_X1_Y17_N26
\FD|mux_jump|saida[27]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[27]~25_combout\ = (\UC|Equal0~1_combout\ & \FD|Somador|saida[27]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|Equal0~1_combout\,
	datac => \FD|Somador|saida[27]~50_combout\,
	combout => \FD|mux_jump|saida[27]~25_combout\);

-- Location: FF_X1_Y17_N27
\FD|PC|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[27]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(27));

-- Location: LCCOMB_X2_Y17_N22
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

-- Location: FF_X2_Y17_N23
\FD|PC|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Somador|saida[28]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(28));

-- Location: LCCOMB_X2_Y17_N24
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

-- Location: FF_X2_Y17_N25
\FD|PC|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Somador|saida[29]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(29));

-- Location: LCCOMB_X2_Y17_N26
\FD|Somador|saida[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[30]~56_combout\ = (\FD|PC|data_s\(30) & (\FD|Somador|saida[29]~55\ $ (GND))) # (!\FD|PC|data_s\(30) & (!\FD|Somador|saida[29]~55\ & VCC))
-- \FD|Somador|saida[30]~57\ = CARRY((\FD|PC|data_s\(30) & !\FD|Somador|saida[29]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(30),
	datad => VCC,
	cin => \FD|Somador|saida[29]~55\,
	combout => \FD|Somador|saida[30]~56_combout\,
	cout => \FD|Somador|saida[30]~57\);

-- Location: FF_X2_Y17_N27
\FD|PC|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Somador|saida[30]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(30));

-- Location: LCCOMB_X2_Y17_N28
\FD|Somador|saida[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[31]~58_combout\ = \FD|Somador|saida[30]~57\ $ (\FD|PC|data_s\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|data_s\(31),
	cin => \FD|Somador|saida[30]~57\,
	combout => \FD|Somador|saida[31]~58_combout\);

-- Location: FF_X2_Y17_N29
\FD|PC|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Somador|saida[31]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(31));

-- Location: IOIBUF_X96_Y73_N22
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X1_Y73_N22
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

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
END structure;


