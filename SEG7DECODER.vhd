library ieee;
use ieee.std_logic_1164.all;

entity SEG7DECODER is
	port (
		-- INPUTS
		A:		in	 std_logic_vector(31 downto 0);
		
		-- OUTPUTS
		SEG5:	out std_logic_vector(7 downto 0);
		SEG4:	out std_logic_vector(7 downto 0);
		SEG3:	out std_logic_vector(7 downto 0);
		SEG2:	out std_logic_vector(7 downto 0);
		SEG1:	out std_logic_vector(7 downto 0);
		SEG0:	out std_logic_vector(7 downto 0)
	);
end entity;

architecture DATAFLOW of SEG7DECODER is

	constant FONT_0:		std_logic_vector(7 downto 0) := x"C0";
	constant FONT_1:		std_logic_vector(7 downto 0) := X"F9";
	constant FONT_2:		std_logic_vector(7 downto 0) := X"A4";
	constant FONT_3:		std_logic_vector(7 downto 0) := X"B0";
	constant FONT_4:		std_logic_vector(7 downto 0) := X"99";
	constant FONT_5:		std_logic_vector(7 downto 0) := X"92";
	constant FONT_6:		std_logic_vector(7 downto 0) := X"82";
	constant FONT_7:		std_logic_vector(7 downto 0) := X"F8";
	constant FONT_8:		std_logic_vector(7 downto 0) := X"80";
	constant FONT_9:		std_logic_vector(7 downto 0) := X"98";
	constant FONT_A:		std_logic_vector(7 downto 0) := X"88";
	constant FONT_B:		std_logic_vector(7 downto 0) := X"83";
	constant FONT_C:		std_logic_vector(7 downto 0) := X"A7";
	constant FONT_D:		std_logic_vector(7 downto 0) := X"A1";
	constant FONT_E:		std_logic_vector(7 downto 0) := X"86";
	constant FONT_F:		std_logic_vector(7 downto 0) := X"8E";
	
begin

	with A(23 downto 20) select
	SEG5 <= 	FONT_0 when X"0",
				FONT_1 when X"1",
				FONT_2 when X"2",
				FONT_3 when X"3",
				FONT_4 when X"4",
				FONT_5 when X"5",
				FONT_6 when X"6",
				FONT_7 when X"7",
				FONT_8 when X"8",
				FONT_9 when X"9",
				FONT_A when X"A",
				FONT_B when X"B",
				FONT_C when X"C",
				FONT_D when X"D",
				FONT_E when X"E",
				FONT_F when others;
	
	with A(19 downto 16) select
	SEG4 <= 	FONT_0 when X"0",
				FONT_1 when X"1",
				FONT_2 when X"2",
				FONT_3 when X"3",
				FONT_4 when X"4",
				FONT_5 when X"5",
				FONT_6 when X"6",
				FONT_7 when X"7",
				FONT_8 when X"8",
				FONT_9 when X"9",
				FONT_A when X"A",
				FONT_B when X"B",
				FONT_C when X"C",
				FONT_D when X"D",
				FONT_E when X"E",
				FONT_F when others;
				
	with A(15 downto 12) select
	SEG3 <= 	FONT_0 when X"0",
				FONT_1 when X"1",
				FONT_2 when X"2",
				FONT_3 when X"3",
				FONT_4 when X"4",
				FONT_5 when X"5",
				FONT_6 when X"6",
				FONT_7 when X"7",
				FONT_8 when X"8",
				FONT_9 when X"9",
				FONT_A when X"A",
				FONT_B when X"B",
				FONT_C when X"C",
				FONT_D when X"D",
				FONT_E when X"E",
				FONT_F when others;
	
	with A(11 downto 8) select
	SEG2 <= 	FONT_0 when X"0",
				FONT_1 when X"1",
				FONT_2 when X"2",
				FONT_3 when X"3",
				FONT_4 when X"4",
				FONT_5 when X"5",
				FONT_6 when X"6",
				FONT_7 when X"7",
				FONT_8 when X"8",
				FONT_9 when X"9",
				FONT_A when X"A",
				FONT_B when X"B",
				FONT_C when X"C",
				FONT_D when X"D",
				FONT_E when X"E",
				FONT_F when others;
	
	with A(7 downto 4) select
	SEG1 <= 	FONT_0 when X"0",
				FONT_1 when X"1",
				FONT_2 when X"2",
				FONT_3 when X"3",
				FONT_4 when X"4",
				FONT_5 when X"5",
				FONT_6 when X"6",
				FONT_7 when X"7",
				FONT_8 when X"8",
				FONT_9 when X"9",
				FONT_A when X"A",
				FONT_B when X"B",
				FONT_C when X"C",
				FONT_D when X"D",
				FONT_E when X"E",
				FONT_F when others;
				
	with A(3 downto 0) select
	SEG0 <= 	FONT_0 when X"0",
				FONT_1 when X"1",
				FONT_2 when X"2",
				FONT_3 when X"3",
				FONT_4 when X"4",
				FONT_5 when X"5",
				FONT_6 when X"6",
				FONT_7 when X"7",
				FONT_8 when X"8",
				FONT_9 when X"9",
				FONT_A when X"A",
				FONT_B when X"B",
				FONT_C when X"C",
				FONT_D when X"D",
				FONT_E when X"E",
				FONT_F when others;
				
end architecture;