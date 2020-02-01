
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity BARRELSHIFTER is
	port(
		-- INPUTS
		IMM32: 		in  std_logic_vector(31 downto 0);
		SHAMT:		in  std_logic_vector(4  downto 0);
		SHTYPE:		in  std_logic_vector(1  downto 0);	
		
		-- OUTPUTS
		IMMSHFT:	out std_logic_vector(31 downto 0)
	);
end entity;


architecture DATAFLOW of BARRELSHIFTER is

	signal SHIFT: integer range 0 to 31 := 0;

begin

	SHIFT <= to_integer(unsigned(SHAMT));
	
	
	IMMSHFT <=  std_logic_vector(shift_left(unsigned(IMM32),   SHIFT))	when SHTYPE = B"00" else 	-- Logical Shift Left
					std_logic_vector(shift_right(unsigned(IMM32),  SHIFT))	when SHTYPE = B"01" else 	-- Logical Shift Right
					std_logic_vector(shift_right(signed(IMM32),    SHIFT))	when SHTYPE = B"10" else 	-- Arithmetic Shift Right
					to_stdlogicvector(to_bitvector(IMM32) ROR (2 * SHIFT));									 	-- Rotate Right
	
end architecture;