library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity alu is
	port(src1, muxtoalu : in std_logic_vector(3 downto 0);
			      add_sub : in std_logic;
			        ALUOP : in std_logic_vector(1 downto 0);
			         sum  : out std_logic_vector(3 downto 0);
			        ZERO2 : out std_logic);
end alu;
			  
architecture behaviour of alu is 
	signal tempadd_sub, tempbitwiseAND, tempbitwiseOR, tempslt : std_logic_vector(3 downto 0);
	signal tempcarryout : std_logic;
	
begin
	bitwiseAND1 : bitwiseAND port map(src1, muxtoalu, tempbitwiseAND);
	bitwiseOR1 : bitwiseOR port map(src1, muxtoalu, tempbitwiseOR);
	adder_subtractor1 : ripple_carry port map(add_sub, src1, muxtoalu, tempadd_sub, tempcarryout);
	slt : mux2to1 generic map (n=>4) port map(tempadd_sub(3), "0000", "0001", tempslt);
	alufin : mux4to1 generic map (n=>4) port map(tempslt, tempadd_sub, tempbitwiseAND, tempbitwiseOR, ALUOP, sum);
   
	zero2 <= '1' when (tempadd_sub="0000")
			       else '0';
end behaviour;