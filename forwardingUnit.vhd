LIBRARY ieee;
use ieee.std_logic_1164.all;
USE work.components.all;

entity forwardingUnit is 
	port(MEM_WB_REGWRITE, EX_MEM_REGWRITE : in std_logic;
	MEM_WB_RD, EX_MEM_RD, ID_EX_RS, ID_EX_RT : in std_logic_vector(3 downto 0);
	FORWARDING_A, FORWARDING_B : out std_logic_vector(1 downto 0));
end forwardingUnit;

architecture forward of forwardingUnit is
begin
---MEM_WB Forwarding-------
	FORWARDING_A <="01" when ((MEM_WB_REGWRITE = '1') 
									and (MEM_WB_RD = ID_EX_RS)) else
				-----EX_MEM Forwarding ------
				"10" when		((EX_MEM_REGWRITE = '1')
									and (EX_MEM_RD = ID_EX_RS)) 
				----- No forwarding -----
				else 	"00";
	---MEM_WB Forwarding-------
	FORWARDING_B <="01" when 	((MEM_WB_REGWRITE = '1')
									and (MEM_WB_RD = ID_EX_RT)) else
					-----EX_MEM Forwarding ------
				"10" when 		((EX_MEM_REGWRITE = '1')
									and (EX_MEM_RD = ID_EX_RT))
				----- No forwarding ---
				else "00";
end forward;