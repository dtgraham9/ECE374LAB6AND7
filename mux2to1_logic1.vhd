
-------- This is a n-bit 2_to_1 MUX ------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2to1_logic1 IS
	PORT ( s : IN std_logic;
			a, b : in std_logic;
			f : OUT std_logic);
END mux2to1_logic1;

ARCHITECTURE LogicFunc OF mux2to1_logic1 IS
BEGIN
	f <= a when(s='0') else b;
			
END LogicFunc;
