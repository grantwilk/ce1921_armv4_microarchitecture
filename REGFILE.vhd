--------------------------------------------------
-- entity:	regfile 
-- provides:	an ARMv4 register file component
-- project:	MSOE CE1921 single-cycle processor
-- author:	meier@msoe.edu <Dr. M.>
-- date:	9 april 2019 
--------------------------------------------------

-- include libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- functional block symbol
entity REGFILE is
port(RDADDR1: in std_logic_vector(3 downto 0);     -- rn field from ibus
     RDADDR2: in std_logic_vector(3 downto 0);     -- rm field from ibus 
     WRADDR: in std_logic_vector(3 downto 0);     -- rd field from ibus 
     WRDATA: in std_logic_vector(31 downto 0);   -- write back data stored in R[rd]
     REGWR: in std_logic;                     -- register load control signal 
     RST: in std_logic;		              -- system wide reset signal
     CLK: in std_logic;  		      -- system wide clock signal 
     RD1: out std_logic_vector(31 downto 0);  -- R[rn] is ALU source 1 output 
     RD2: out std_logic_vector(31 downto 0) -- R[rd] is ALU source 2 output
	  );
end entity REGFILE;

-- circuit description
architecture behavioral of REGFILE is 

  -- Register files are collections of registers 
  -- VHDL allows array data structures
  -- Using an array to hold the register values requires integer index
  type memory is array(0 to 15) of std_logic_vector(31 downto 0);
  signal myregs: memory;
	
	
begin

  -- implement synchronous load 
  -- converts address nibbles into integer index for array
	process(RST,REGWR,CLK)
	begin
		if RST = '0' then 
			for i in 0 to 15 loop
				myregs(i) <= X"00000000";
			end loop;
		elsif rising_edge(CLK) and REGWR = '1' then
			myregs(to_integer(unsigned(WRADDR))) <= WRDATA;
		end if;
	end process;
  
  RD1 <= myregs(to_integer(unsigned(RDADDR1)));
  RD2 <= myregs(to_integer(unsigned(RDADDR2)));
  
end architecture behavioral;
