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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/03/2019 13:26:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mips
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mips_vhd_vec_tst IS
END mips_vhd_vec_tst;
ARCHITECTURE mips_arch OF mips_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALUopWF : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL dec_RAWF : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL dec_RBWF : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL pcWF : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida_ULAWF : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ux_exWF : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL ZWF : STD_LOGIC;
COMPONENT mips
	PORT (
	ALUopWF : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk : IN STD_LOGIC;
	dec_RAWF : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	dec_RBWF : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	pcWF : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida_ULAWF : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ux_exWF : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	ZWF : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mips
	PORT MAP (
-- list connections between master ports and signals
	ALUopWF => ALUopWF,
	clk => clk,
	dec_RAWF => dec_RAWF,
	dec_RBWF => dec_RBWF,
	KEY => KEY,
	pcWF => pcWF,
	saida_ULAWF => saida_ULAWF,
	ux_exWF => ux_exWF,
	ZWF => ZWF
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		clk <= '0';
		WAIT FOR 10000 ps;
		clk <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
END mips_arch;
