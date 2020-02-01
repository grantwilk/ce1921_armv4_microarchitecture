library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ADDRDECODER is
	port(
		-- INPUTS
		ADDR:		in  std_logic_vector(31 downto 0);
		MEMWR:	in  std_logic;
		MEMRD:	in  std_logic;
		
		-- OUTPUTS
		LD2:		out std_logic;
		LD1:		out std_logic;
		LD0:		out std_logic;
		DATAS:	out std_logic
	);
end entity;

architecture DATAFLOW of ADDRDECODER is

begin

	LD2 	<= '1' when unsigned(ADDR) <= X"0000001F" and MEMRD = '0' and MEMWR = '1' else '0';
	LD1 	<= '1' when ADDR = X"000000F8"  				and MEMRD = '0' and MEMWR = '1' else '0';
	LD0 	<= '1' when ADDR = X"000000FC"  				and MEMRD = '0' and MEMWR = '1' else '0';
	DATAS <= '1' when unsigned(ADDR) <= X"0000001F" and MEMRD = '1' and MEMWR = '0' else '0';

end architecture;