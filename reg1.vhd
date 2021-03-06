library ieee;
use ieee.std_logic_1164.all;

entity reg1 is
port ( clock, reset : in std_logic;
		 D : in std_logic;
		 Q : out std_logic);
end reg1;

architecture behavior of reg1 is
begin
	process ( clock, reset )
		begin
			if clock'event and clock = '1' and reset = '0' then
				Q <= D;
			elsif clock'event and clock = '1' and reset = '1' then
				Q <= '0';
			end if;
			
	end process;
end behavior;