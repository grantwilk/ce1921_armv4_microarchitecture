library ieee;
use ieee.std_logic_1164.all;


entity REG is

	generic(N : positive := 8);
	
	port(
		-- INPUTS
		D:		in  std_logic_vector(N-1 downto 0);
		LD: 	in  std_logic;
		RST: 	in  std_logic;
		CLK:	in  std_logic;
		
		-- OUTPUTS
		Q:		out std_logic_vector(N-1 downto 0)
	);
end entity;


architecture BEHAVIORAL of REG is

begin

	REG: process(CLK, RST, LD)
	
	begin
		if RST = '0' then Q <= (others => '0');
		elsif rising_edge(CLK) then
			if LD = '1'  then Q <= D;
			end if;
		end if;
	end process;
	
end architecture;