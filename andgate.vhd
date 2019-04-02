library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity andgate is
	port( Branch, ZERO2 : in std_logic;
			branchmuxselect : out std_logic);
end andgate;

architecture behaviour of andgate is
signal result : std_logic;
	
begin
	
	result <= Branch AND ZERO2;
	branchmuxselect <= result;
	
	end behaviour;

			