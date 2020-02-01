library ieee;
use ieee.std_logic_1164.all;


entity BUSMUX is

	generic(N : positive := 8);

	port(
		-- INPUTS
		D3, D2: 	in std_logic_vector(N-1 downto 0);
		D1, D0: 	in std_logic_vector(N-1 downto 0);
		S:			in std_logic_vector(1 downto 0);
		
		-- OUTPUTS
		Y:			out std_logic_vector(N-1 downto 0)
	);
end entity;


architecture DATAFLOW of BUSMUX is

begin

	with S select
	Y <= 	D3 when B"11",
			D2 when B"10",
			D1 when B"01",
			D0 when others;
			
end architecture;