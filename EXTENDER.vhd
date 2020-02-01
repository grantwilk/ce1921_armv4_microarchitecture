library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity EXTENDER is
	port(
		-- INPUTS
		IMM: 		in  std_logic_vector(23 downto 0);
		EXTS:		in  std_logic_vector(1  downto 0);
		
		-- OUTPUTS
		IMM32:	out std_logic_vector(31 downto 0)
	);
end entity;


architecture DATAFLOW of EXTENDER is

begin
	
	with EXTS select
	IMM32 <= std_logic_vector(resize(unsigned(IMM(7  downto 0)), IMM32'length)) when B"00",		-- 8-bit  unsigned extension
				std_logic_vector(resize(unsigned(IMM(11 downto 0)), IMM32'length)) when B"01",		-- 12-bit unsigned extension
				std_logic_vector(resize(signed(IMM), IMM32'length))                when others;		-- 24-bit signed   extension
				
end architecture;