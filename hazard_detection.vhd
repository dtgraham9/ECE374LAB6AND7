library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity hazard_Detection is
	port(ID_EX_RD, ID_RS, ID_RT : in std_logic_vector(3 downto 0);
			      ID_EX_MEMREAD : in std_logic;
					ID_EX_Regwrite: in std_logic;
			        hazard : out std_logic);
end hazard_Detection;
			  
architecture behaviour of hazard_detection is 
	
begin
	hazard <='1' when (ID_EX_MemREAD = '1' AND
							 ID_EX_Regwrite = '1' AND
							 ((ID_EX_RD = ID_RS) OR 
							 (ID_EX_RD = ID_RT))) else	'0';


end behaviour;