library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

package components is
------------ full adder ---------------
component fulladd IS
	PORT ( Cin, x, y : IN STD_LOGIC;
		s, Cout : OUT STD_LOGIC );
END component;

------------- n stage ripple carry adder -------------------
component ripple_carry IS
	PORT ( Cin: IN STD_LOGIC;
			x,y : IN STD_LOGIC_VECTOR(3 downto 0);
			s : OUT STD_LOGIC_VECTOR(3 downto 0);
			Cout : OUT STD_LOGIC );
END component;

--------- multiplexer -----------------------
component mux2to1 IS
	generic(n : integer := 4);
	PORT ( s : IN std_logic;
			a, b : in std_logic_vector((n-1) downto 0);
			f : OUT std_logic_vector((n-1) downto 0));
END component;

component mux4to1 IS
	generic  (n : integer:= 4);
	PORT ( w0, w1, w2, w3 : IN STD_LOGIC_VECTOR((n-1) downto 0);
		s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		f : OUT STD_LOGIC_VECTOR((n-1) downto 0));
END component;

---------------- decoders -------------------------
component dec2to4 IS
	PORT ( w : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			En : IN STD_LOGIC;
			y : OUT STD_LOGIC_VECTOR(3 downto 0));
END component;

component dec4to16 IS
	PORT (w : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			En : IN STD_LOGIC;
			y : OUT STD_LOGIC_VECTOR(15 downto 0));
END component;

------------- n stage tri-state buffer ------------------------
component trin IS
	GENERIC (N : INTEGER := 8);
	PORT (X : IN STD_LOGIC_VECTOR((N-1) DOWNTO 0);
			E : IN STD_LOGIC;
			F : OUT STD_LOGIC_VECTOR((N-1) DOWNTO 0));
END component;

------------ n bit register -----------------------
component regN is
	generic(N: integer:= 32);
	port (clock : in std_logic;
	  D : in std_logic_vector(N-1 downto 0);
	  Q : out std_logic_vector(N-1 downto 0));
end component;

-------------- instruction memeory --------------------------
component instruction_memory is
	port(clock, reset : in std_logic;
			input : in std_logic_vector(3 downto 0);
			output : out std_logic_vector(31 downto 0));
end component;

--------------- register file -------------------------------
component register_file is
	port(clock, reset, RegWrite : in std_logic;
			read_port1, read_port2, write_port, write_value : in std_logic_vector(3 downto 0);
			value1, value2 : out std_logic_vector(3 downto 0));
end component;

------------- instruction decode ----------------------------
component instruction_decode is
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
end component;

-------------       alu         -----------------------------
component alu is
	port(src1, muxtoalu : in std_logic_vector(3 downto 0);
		  add_sub : in std_logic;
		  ALUOP : in std_logic_vector(1 downto 0);
		  sum : out std_logic_vector(3 downto 0);
		  ZERO2 : out std_logic);
end component;

-------------    bitewiseAND    -----------------------------
component bitwiseAND is
	port( src1, src2 : in std_logic_vector(3 downto 0);
			sum : out std_logic_vector(3 downto 0));
end component;

-------------    bitewiseOR     -----------------------------
component bitwiseOR is
	port( src1, src2 : in std_logic_vector(3 downto 0);
			sum : out std_logic_vector(3 downto 0));
end component;

-------------    data memory    -----------------------------
component data_memory is
	port(clock, reset, MemWrite : in std_logic;
	                  sum, src2 : in std_logic_vector(3 downto 0);
							   value1 : out std_logic_vector(3 downto 0));
end component;

-------------    andgate        -----------------------------
component andgate is
	port(Branch, ZERO2 : in std_logic;
		branchmuxselect : out std_logic);

end component;

-------------    reg1           -----------------------------
component reg1 is
	port( clock, reset : in std_logic;
                    D : in std_logic;
						  Q : out std_logic);
end component;

-------------   forwarding unit -----------------------------
component forwardingUnit is 
	port(MEM_WB_REGWRITE, EX_MEM_REGWRITE : 	in std_logic;
	MEM_WB_RD, EX_MEM_RD, ID_EX_RS, ID_EX_RT: in std_logic_vector(3 downto 0);
	FORWARDING_A, FORWARDING_B : 					out std_logic_vector(1 downto 0));
end component;

------------Hazard detection ------------------------------

component hazard_Detection is
	port(ID_EX_RD, ID_RS, ID_RT : in std_logic_vector(3 downto 0);
			      ID_EX_MEMREAD : in std_logic;
					ID_EX_Regwrite: in std_logic;
			        hazard : out std_logic);
end component;

-----------2to1 mux for std_logic ----------------------

component mux2to1_logic1 IS
	PORT ( s : IN std_logic;
			a, b : in std_logic;
			f : OUT std_logic);
END component;

end components; 