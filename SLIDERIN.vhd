library ieee;
use ieee.std_logic_1164.all;

entity SLIDERIN is
	port(
		-- INPUTS
		SLIDERS:		in std_logic_vector(9 downto 0);
		RST:			in std_logic;
		CLK:			in std_logic;
		
		-- OUTPUTS
		Q:				out std_logic_vector(31 downto 0)
	);
end entity;

architecture DATAFLOW of SLIDERIN is

	signal QINT: std_logic_vector(9 downto 0);

begin

	REG:	entity work.REG 
		generic map (10)
		port map(SLIDERS, '1', RST, CLK, QINT);
		
	Q <= (31 downto 10 => '0') & QINT;
	
end architecture;
	