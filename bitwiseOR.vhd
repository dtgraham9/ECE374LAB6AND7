library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity bitwiseOR is 
	port( src1, src2 : in std_logic_vector(3 downto 0);
			sum : out std_logic_vector(3 downto 0));
end bitwiseOR;

architecture behaviour of bitwiseOR is
	signal result : std_logic_vector(3 downto 0);
	
begin
	result(0) <= src1(0) OR src2(0);
	result(1) <= src1(1) OR src2(1);
	result(2) <= src1(2) OR src2(2);
	result(3) <= src1(3) OR src2(3);
	sum <= result(3) & result(2) & result(1) & result(0);
	end behaviour;