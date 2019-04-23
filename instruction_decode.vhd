------ This file describes the instruction decode operation -------------
LIBRARY ieee;
use ieee.std_logic_1164.all;
USE work.components.all;

entity instruction_decode is
	port(instr : in std_logic_vector(31 downto 0);
			MemRead, MemWrite, RegWrite, add_sub : out std_logic;
			read_p1, read_p2, write_p : out std_logic_vector(3 downto 0);
			ALUOP : out std_logic_vector(1 downto 0);
			ALUSRC : out std_logic;
			memaddressoffset : out std_logic_vector(3 downto 0);
			MemtoReg : out std_logic;
			RegDst : out std_logic;
			Branch : out std_logic;
			Jump : out std_logic);
end instruction_decode;

architecture struc_behaviour of instruction_decode is
	signal opcode, funct : std_logic_vector(5 downto 0);
	signal shamt : std_logic_vector(4 downto 0);

begin

	Jump <= '1' when (opcode = "000010") else
			  '0';
			  

   Branch <= '1' when (opcode = "000100") else
				 '0';

	RegDst <= '0' when (opcode = "100011") else
	          '-' when (opcode = "101011") else
				 '1';
	
	MemtoReg <= '1' when (opcode = "100011") else
					'0';

	ALUSRC <= '1' when (opcode = "100011") OR (opcode = "101011") else
				 '0';
				 
   memaddressoffset <= instr(3 downto 0);
	opcode <= instr(31 downto 26);
	shamt <= instr(10 downto 6);
	funct <= instr(5 downto 0);

	read_p1 <= instr(24 downto 21);
	read_p2 <= instr(19 downto 16);
	write_p <= instr(14 downto 11);
	
	MemRead <= '1' when (opcode="100011") else '0';
	
	MemWrite <= '1' when (opcode = "101011") else
	                       '0';
								  
	RegWrite <= '1' when (opcode = "000000") OR (opcode = "100011")
							else '0';
	
	add_sub <= '0' when (funct = "100000") AND (opcode = "000000") else
				  '1' when (funct = "100010") AND (opcode = "000000") else
				  '-' when (funct = "100101") AND (opcode = "000000") else
				  '-' when (funct = "100100") AND (opcode = "000000") else
				  '1' when (funct = "101010") AND (opcode = "000000") else
				  '1' when (opcode = "000100") else
				  '0' when (opcode = "100011") OR (opcode = "101011") else
				  '0' when (opcode = "000010");						
						
	ALUOP <= "01" when (funct = "100000") AND (opcode = "000000") else
				"01" when (funct = "100010") AND (opcode = "000000") else
				"11" when (funct = "100101") AND (opcode = "000000") else
				"10" when (funct = "100100") AND (opcode = "000000") else
				"00" when (funct = "101010") AND (opcode = "000000") else
				"01" when (opcode = "100011") OR (opcode = "101011") OR (opcode = "000100") else
				"00" when (opcode = "000010");
						
	

end struc_behaviour;