library ieee;
use ieee.std_logic_1164.all;


entity BUSMUX_2TO1 is

	generic(N : positive := 32);

	port(
		-- INPUTS
		D1, D0: 	in std_logic_vector(N-1 downto 0);
		S:			in std_logic;
		
		-- OUTPUTS
		Y:			out std_logic_vector(N-1 downto 0)
	);
end entity;


architecture DATAFLOW of BUSMUX_2TO1 is

begin

	Y <= D0 when S = '0' else D1;
			
end architecture;