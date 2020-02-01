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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/14/2019 18:04:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SYSTEM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SYSTEM_vhd_vec_tst IS
END SYSTEM_vhd_vec_tst;
ARCHITECTURE SYSTEM_arch OF SYSTEM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALUS : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ALUSRCB : STD_LOGIC;
SIGNAL AORMS : STD_LOGIC;
SIGNAL BRADDR : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL C : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL CPSRWR : STD_LOGIC;
SIGNAL EXTS : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL INSTR : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL LEDS : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL MEMRD : STD_LOGIC;
SIGNAL MEMWR : STD_LOGIC;
SIGNAL N : STD_LOGIC;
SIGNAL PC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL PCSRC : STD_LOGIC;
SIGNAL PCWR : STD_LOGIC;
SIGNAL REGSRC : STD_LOGIC;
SIGNAL REGWR : STD_LOGIC;
SIGNAL SEG0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SEG1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SEG2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SEG3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SEG4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SEG5 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SHAMT : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL SHTYPE : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SLIDERS : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL SYSRST : STD_LOGIC;
SIGNAL V : STD_LOGIC;
SIGNAL WBDATA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Z : STD_LOGIC;
COMPONENT SYSTEM
	PORT (
	ALUS : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	ALUSRCB : OUT STD_LOGIC;
	AORMS : OUT STD_LOGIC;
	BRADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	C : OUT STD_LOGIC;
	CLK : IN STD_LOGIC;
	CPSRWR : OUT STD_LOGIC;
	EXTS : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	INSTR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	LEDS : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	MEMRD : OUT STD_LOGIC;
	MEMWR : OUT STD_LOGIC;
	N : OUT STD_LOGIC;
	PC : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	PCSRC : OUT STD_LOGIC;
	PCWR : OUT STD_LOGIC;
	REGSRC : OUT STD_LOGIC;
	REGWR : OUT STD_LOGIC;
	SEG0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SEG1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SEG2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SEG3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SEG4 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SEG5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SHAMT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	SHTYPE : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	SLIDERS : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	SYSRST : IN STD_LOGIC;
	V : OUT STD_LOGIC;
	WBDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SYSTEM
	PORT MAP (
-- list connections between master ports and signals
	ALUS => ALUS,
	ALUSRCB => ALUSRCB,
	AORMS => AORMS,
	BRADDR => BRADDR,
	C => C,
	CLK => CLK,
	CPSRWR => CPSRWR,
	EXTS => EXTS,
	INSTR => INSTR,
	LEDS => LEDS,
	MEMRD => MEMRD,
	MEMWR => MEMWR,
	N => N,
	PC => PC,
	PCSRC => PCSRC,
	PCWR => PCWR,
	REGSRC => REGSRC,
	REGWR => REGWR,
	SEG0 => SEG0,
	SEG1 => SEG1,
	SEG2 => SEG2,
	SEG3 => SEG3,
	SEG4 => SEG4,
	SEG5 => SEG5,
	SHAMT => SHAMT,
	SHTYPE => SHTYPE,
	SLIDERS => SLIDERS,
	SYSRST => SYSRST,
	V => V,
	WBDATA => WBDATA,
	Z => Z
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
END SYSTEM_arch;
