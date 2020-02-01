library ieee;
use ieee.std_logic_1164.all;


entity REGRCBMUX is

	port(
		-- INPUTS
		D1, D0: 	in std_logic_vector(3 downto 0);
		S:			in std_logic;
		
		-- OUTPUTS
		Y:			out std_logic_vector(3 downto 0)
	);
end entity;


architecture DATAFLOW of REGRCBMUX is

begin

	Y <= D0 when S = '0' else D1;
			
end architecture;