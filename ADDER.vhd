library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ADDER is
	
	generic(N : positive := 32);

	port(
		-- INPUTS
		A, B: in  std_logic_vector(N-1 downto 0);
		
		-- OUTPUTS
		S:		out std_logic_vector(N-1 downto 0)
	);
end entity;

architecture DATAFLOW of ADDER is
begin

	S <= std_logic_vector(unsigned(A) + unsigned(B));

end architecture;