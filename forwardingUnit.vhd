LIBRARY ieee;
use ieee.std_logic_1164.all;
USE work.components.all;

entity forwardingUnit is 
	port(MEM_WB_Regwrite, EX_MEM_Regwrite : in std_logic;
	MEM_WB_Rd, EX_MEM_Rd, ID_EX_Rs, ID_EX_Rt : in std_logic_vector(3 downto 0);
	ForwardA, ForwardB : out std_logic_vector(1 downto 0));
end forwardingUnit;

architecture forward of forwardingUnit is
begin
---MEM_WB Forwarding-------
	forwardA <="01" when 	((MEM_WB_RegWrite = '1')and (not (MEM_WB_Rd = "0000")) and 
									not((EX_MEM_RegWrite = '1') and (not (EX_MEM_Rd = "0000")) 
									and (not (EX_MEM_Rd = ID_EX_Rs))) 
									and (MEM_WB_Rd = ID_EX_Rs)) else
				-----EX_MEM Forwarding ------
				"10" when		((EX_MEM_RegWrite = '1')
									and not (EX_MEM_Rd = "0000")
									and (EX_MEM_Rd = ID_EX_Rs)) 
				----- No forwarding -----
				else 	"00";
	---MEM_WB Forwarding-------
	forwardB <="01" when 	((MEM_WB_RegWrite = '1') and 
									(not (MEM_WB_Rd = "0000"))and 
									not((EX_MEM_RegWrite = '1') and (not (EX_MEM_Rd = "0000")) 
									and (not (EX_MEM_Rd = ID_EX_Rt))) 
									and (MEM_WB_Rd = ID_EX_Rt)) else
					-----EX_MEM Forwarding ------
				"10" when 		((EX_MEM_RegWrite = '1')
									and not (EX_MEM_Rd = "0000")
									and (EX_MEM_Rd = ID_EX_Rt))
				----- No forwarding ---
				else "00";
end forward;