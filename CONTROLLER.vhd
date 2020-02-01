library ieee;
use ieee.std_logic_1164.all;

entity CONTROLLER is
	port(
		-- INPUTS
		COND:		in std_logic_vector(3 downto 0);
		OP:		in std_logic_vector(1 downto 0);
		FUNC:		in std_logic_vector(5 downto 0);

		SHFT:		in std_logic_vector(4 downto 0);
		SHFTYPE:	in std_logic_vector(1 downto 0);
		
		C,V:		in std_logic;
		N,Z:		in std_logic;
		
		-- OUTPUTS
		SHAMT:	out std_logic_vector(4 downto 0);
		SHTYPE:	out std_logic_vector(1 downto 0);
		
		PCSRC:	out std_logic;
		PCWR:		out std_logic;
		
		REGWR:	out std_logic;
		AORMS:	out std_logic;
		EXTS:		out std_logic_vector(1 downto 0);
		
		ALUS:		out std_logic_vector(2 downto 0);
		ALUSRCB:	out std_logic;
		
		CPSRWR:	out std_logic;
		MEMWR:	out std_logic;
		MEMRD:	out std_logic;
		REGSRC:	out std_logic	
	);
end entity;

architecture BEHAVIORAL of CONTROLLER is

	signal I: 	std_logic;
	signal S: 	std_logic;
	signal CMD:	std_logic_vector(3 downto 0);
	
	signal B:	std_logic;
	signal L:	std_logic;
	
	signal ROTATE:	std_logic_vector(4 downto 0);

begin

	-- ASSIGN FUNC SIGNALS
	CMD 		<= FUNC(4 downto 1);
	I			<= FUNC(5);
	ROTATE 	<= '0' & SHFT(4 downto 1);
	
	B <= FUNC(2);
	L <= FUNC(0);
	
	
	-- ASSIGN CONTROL SIGNALS
	PCSRC 	<= '0' when (OP = B"10" and ((COND = B"0000" and Z = '1') or (COND = B"0001" and Z = '0') or (COND = B"1110"))) else '1';
	
	PCwR 		<= '1';
	
	AORMS		<= '1' when (OP = B"00" and I = '0') else '0';
	
	REGWR		<= '1' when (OP = B"00" and CMD /= B"1010") or (OP = B"01" and L = '1') else '0';
	
	EXTS		<=	B"01" when (OP = B"01") else
					B"10" when (OP = B"10") else
					B"00";
	
	SHAMT 	<= SHFT 		when (OP = B"00" and I = '0') else
					ROTATE 	when (OP = B"00" and I = '1') else
					B"00010" when (OP = B"10" and (COND = B"1110" or (COND = B"0000" and Z = '1') or (COND = B"0001" and Z = '0'))) else
					B"00000";
					
	SHTYPE	<= SHFTYPE	when (OP = B"00" and I = '0') else
					B"11" 	when (OP = B"00" and I = '1') else	
					B"00";
	
	ALUSRCB	<= '1' when ((OP = B"00" and I = '0') or (OP = B"01")) else '0';
	
	ALUS		<= B"000" when (OP = B"00" and  CMD = B"0100") or OP = B"10" else 		-- ADD
					B"001" when (OP = B"00" and (CMD = B"1010" or CMD = B"0010")) else 	-- CMP / SUB
					B"010" when (OP = B"00" and  CMD = B"0000") else 							-- AND
					B"011" when (OP = B"00" and  CMD = B"1100") else 							-- ORR
					B"100" when (OP = B"00" and  CMD = B"0001") else 							-- EOR
					B"101" when (OP = B"01") else														-- LDR / STR
					B"110" when (OP = B"00" and  CMD = B"1101") else							-- MOV
					B"000";
	
	CPSRWR	<= '1' when (OP = B"00" and CMD = "1010") else '0';
	
	MEMWR		<= '1' when (OP = B"01" and L = '0') else '0';
	
	MEMRD		<= '1' when (OP = B"01" and L = '1') else '0';
	
	REGSRC	<= '0' when (OP = B"00" and CMD = "1010") or (OP /= B"00") else '1';
	
end architecture;