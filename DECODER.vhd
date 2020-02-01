library ieee;
use ieee.std_logic_1164.all;


entity DECODER is
	port(
		-- INPUTS
		S: in std_logic_vector(1 downto 0);
		LD: in std_logic;
		
		-- OUTPUTS
		LD3, LD2: out std_logic;
		LD1, LD0: out std_logic
	);
end entity;


architecture DATAFLOW of DECODER is

begin

	LD3 <= '1' when S = B"11" and LD = '1' else '0';
	LD2 <= '1' when S = B"10" and LD = '1' else '0';
	LD1 <= '1' when S = B"01" and LD = '1' else '0';
	LD0 <= '1' when S = B"00" and LD = '1' else '0';

end architecture;