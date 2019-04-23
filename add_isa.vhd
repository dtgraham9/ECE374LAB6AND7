library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity add_isa is
 	port( clock, reset : in std_logic;
	current_pc, result : out std_logic_vector(3 downto 0));
end add_isa;

architecture behaviour of add_isa is
	
	----------------------------------------------------------------
	-----------------     1-bit signals     ------------------------
	----------------------------------------------------------------
	
	----- control signals / intra-stage signals -----
	constant zero_value : std_logic :='0';
	constant initial_pc : std_logic_vector(3 downto 0) := (others => '0');
	constant reset_Instr: std_logic_vector(31 downto 0) := (others=>'1');
	signal MemRead, MemWrite, RegWrite, add_sub, ALUSRC, MemtoReg, RegDst, Branch, Jump, BRANCH_CONTROL, ZERO2 : std_logic;
	
	----- pipeline signals -----
	signal ID_EX_REGDST, ID_EX_ALUSRC, ID_EX_ADDSUB, ID_EX_MEMWRITE, ID_EX_REGWRITE, ID_EX_MEMTOREG, ID_EX_BRANCH, ID_EX_MEMREAD, EX_MEM_REGWRITE, EX_MEM_MEMTOREG, EX_MEM_ZERO2, EX_MEM_MEMWRITE, EX_MEM_MEMREAD, EX_MEM_BRANCH, MEM_WB_REGWRITE, MEM_WB_MEMTOREG : std_logic;
	
	---------hazard and branch mux signal --------------------------\
	signal hazard_branch_control :							std_logic;
	
	---------------Hazard signals----------------------------------
	signal hazard:													std_logic;
	signal hazard_memwrite:										std_logic;
	signal hazard_regwrite:										std_logic;
	signal hazard_memtoReg:										std_logic;
	signal hazard_memread:										std_logic;
	signal hazard_branch:										std_logic;
	
	signal hazard_PC:												std_logic_vector(3 downto 0);
	signal hazard_update_pc:									std_logic_vector(3 downto 0);
	signal hazard_instr_im:										std_logic_vector(31 downto 0);
	
	-----------branch signals-------------------------------------
	signal branch_EX_MEM_REGwrite:							std_logic;
	signal branch_EX_MEM_MEMTOREG:							std_logic;
	signal branch_EX_MEM_MEMWRITE:							std_logic;
	signal branch_EX_MEM_MEMREAD:								std_logic;
	signal branch_ID_EX_branch:								std_logic;
	
	----------------------------------------------------------------
	-----------------     2-bit signals     ------------------------
	----------------------------------------------------------------	
	
	----- control signals / intra-stage signals -----
	signal ALUOP : std_logic_vector(1 downto 0);
	signal FORWARDING_A, FORWARDING_B : std_logic_vector(1 downto 0);
	
	----- pipeline signals -----
	signal ID_EX_ALUOP : std_logic_vector(1 downto 0);
	
	----------------------------------------------------------------
	-----------------     4-bit signals     ------------------------
	----------------------------------------------------------------
	
	----- control signals / intra-stage signals -----
	-- IF stage ---
	signal update_pc, final_pc, mout, rout:  				std_logic_vector(3 downto 0); 
	--- ID stage
	signal read_port1, read_port2, write_port : 			std_logic_vector(3 downto 0);
	--- EX stage
	signal memaddressoffset, writeregister : 				std_logic_vector(3 downto 0);
	signal src1, src2, muxtoalu, sum, rt_rd : 			std_logic_vector(3 downto 0);
	signal forwardingmuxtoalu, forwardingmuxtomux :    std_logic_vector(3 downto 0);
	--- MEM stage
	signal value1, JUMPADDRESS, jmout : 					std_logic_vector(3 downto 0);
	--- WB stage
	signal writemux : 											std_logic_vector(3 downto 0);

	----- pipeline signals -----
	------IF_ID stage signals ------
	signal IF_ID_ADDPC : 										std_logic_vector(3 downto 0);
	-----ID_EX stage signals --------
	signal ID_EX_ADDPC, ID_EX_SRC1, ID_EX_SRC2: 			std_logic_vector(3 downto 0); 
	signal ID_EX_MEMADDRESSOFFSET, ID_EX_RD,EX_MEM_RD: std_logic_vector(3 downto 0);
	signal ID_EX_RT, ID_EX_RS:                         std_logic_vector(3 downto 0);
	--EX_MEM stage signals ----
	signal EX_MEM_SUM, EX_MEM_SRC2, EX_MEM_ADDPC:  		std_logic_vector(3 downto 0);
	signal EX_MEM_MEMADDRESSOFFSET : 		std_logic_vector(3 downto 0);
	--MEM_WB stage signals
	signal MEM_WB_VALUE1, MEM_WB_SUM, MEM_WB_RD: 		std_logic_vector(3 downto 0);
	----------------------------------------------------------------
	-----------------     32-bit signals     -----------------------
	----------------------------------------------------------------
	
	----- control signals / intra-stage signals -----
	signal instr_from_im : std_logic_vector(31 downto 0);
	
	---------branch------------------------------------
	signal final_instr_im : 			std_logic_vector(31 downto 0);
	
	----- pipeline signals -----
	signal IF_ID_INSTR : std_logic_vector(31 downto 0);
	
begin

   ----------------------------------------------------------------
	-----------------        IF STAGE        -----------------------
	----------------------------------------------------------------
	
	pc_mux1 : 	mux2to1 generic map (n=>4) port map (reset, final_pc, initial_pc, mout);					--- multiplexer
	pc_hazard_mux : mux2to1 generic map (n=>4) port map(hazard, mout,rout,hazard_pc); 
	pc1	: 		regN generic map (n=>4) port map (clock, hazard_pc, rout);												--- register
	---------- pc = pc +1 ------------------------------------------
	addpc1 : ripple_carry port map ('0', rout, "0001", update_pc);
	
	
	----------- IM -------------------------------------------------
	im1 : instruction_memory port map (clock, reset, rout, instr_from_im);
	
	---------- IF_ID_PIPELINE ---------------------------------------
	-----------Hazard-------------------------------------------------
	Hazard_addPC1 : mux2to1 generic map (n=>4) port map (hazard, update_pc, IF_ID_ADDPC, hazard_update_pc);
	hazard_instr1 : mux2to1 generic map (n=>32) port map(hazard, instr_from_im, IF_ID_INSTR, hazard_instr_im);
	------------hazard end-----------------------------------------------------------
	--------------branch logic ------------------------------------------------------
	branch_logic_instr: mux2to1 generic map(n=>32) port map(Branch_control, hazard_instr_im, reset_Instr, final_instr_im);
	IF_ID_ADDPC2 : regN generic map (n=>4) port map ( clock, hazard_update_pc, IF_ID_ADDPC );
	IF_ID_INSTR1 : regN generic map (n=>32) port map ( clock, final_instr_im, IF_ID_INSTR ); 
	
	-----------------------------------------------------------------
	------------------        ID STAGE        -----------------------
	-----------------------------------------------------------------
	
	---------------Hazard detection unit ------------------------------
	Hazard_detection_unit : hazard_detection port map(ID_EX_RD, read_port1, read_port2, ID_EX_MEMREAD,
																		ID_EX_Regwrite, hazard);
	
	------------- ID ------------------------------------------------
	id1 : instruction_decode port map (IF_ID_INSTR, MemRead, MemWrite, RegWrite, add_sub, read_port1, read_port2, write_port, ALUOP, ALUSRC, memaddressoffset, MemtoReg, RegDst, Branch, Jump);
	
	------------- RF ------------------------------------------------
	regdstmux1 : mux2to1 generic map (n=>4) port map (RegDst, read_port2, write_port, writeregister);
	rf1 : register_file port map (clock, reset, MEM_WB_REGWRITE, read_port1, read_port2, MEM_WB_RD, writemux, src1, src2);
	
	
	hazard_branch_control <= hazard OR branch_Control;
	
	------------- ID_EX_PIPELINE ------------------------------------
	-----------Hazard muxes ----------------------------------------
	Hazard_memwrite1 :		mux2to1_logic1 port map(hazard, memwrite, zero_value, hazard_memwrite);
	Hazard_regwrite1 :		mux2to1_logic1 port map(hazard, regwrite, zero_value, hazard_regwrite);
	Hazard_Branch1   :		mux2to1_logic1 port map(hazard, branch,   zero_value, hazard_branch);
	Hazard_MEMtoReg1 :		mux2to1_logic1 port map(hazard, memtoReg, zero_value, hazard_memtoReg);
 	Hazard_MEMRead1  :		mux2to1_logic1 port map(hazard, memread,  zero_value, hazard_memRead);
	-----------------hazard end--------------------------------------------------------
	
	ID_EX_ALUSRC7 : 		reg1 port map ( clock, reset, ALUSRC, ID_EX_ALUSRC );
	ID_EX_ADDSUB10 : 		reg1 port map ( clock, reset, add_sub, ID_EX_ADDSUB );
	ID_EX_MEMWRITE11 : 	reg1 port map ( clock, reset, hazard_memwrite, ID_EX_MEMWRITE );
	ID_EX_REGWRITE12 : 	reg1 port map ( clock, reset, hazard_regwrite, ID_EX_REGWRITE );
	ID_EX_MEMTOREG13 : 	reg1 port map ( clock, reset, hazard_MEMtoREG, ID_EX_MEMTOREG );
	ID_EX_BRANCH14 : 		reg1 port map ( clock, reset, hazard_branch, ID_EX_BRANCH);
	ID_EX_MEMREAD15 : 	reg1 port map ( clock, reset, hazard_memRead, ID_EX_MEMREAD);
	ID_EX_ALUOP8 : 		regN generic map (n=>2) port map ( clock, ALUOP, ID_EX_ALUOP );
	ID_EX_ADDPC3 : 		regN generic map (n=>4) port map ( clock, IF_ID_ADDPC, ID_EX_ADDPC );
	ID_EX_SRC14 : 			regN generic map (n=>4) port map ( clock, src1, ID_EX_SRC1 );
	ID_EX_SRC25 : 			regN generic map (n=>4) port map ( clock, src2, ID_EX_SRC2 );
	ID_EX_MEMADDROFF6 : 	regN generic map (n=>4) port map ( clock, memaddressoffset, ID_EX_MEMADDRESSOFFSET );
	ID_EX_RD9 : 			regN generic map (n=>4) port map ( clock, writeregister, ID_EX_RD );
	ID_EX_RT33 :         regN generic map (n=>4) port map ( clock, read_port2, ID_EX_RT );
	ID_EX_RS34 :         regN generic map (n=>4) port map ( clock, read_port1, ID_EX_RS );
	
	-----------------------------------------------------------------
	------------------        EX STAGE        -----------------------
	-----------------------------------------------------------------
	
	------------- ALU -----------------------------------------------
	aforwardingmux1 : mux4to1 generic map (n=>4) port map ( ID_EX_SRC1, writemux, EX_MEM_SUM, EX_MEM_SUM, FORWARDING_A, forwardingmuxtoalu );
	bforwardingmux1 : mux4to1 generic map (n=>4) port map ( ID_EX_SRC2, writemux, EX_MEM_SUM, EX_MEM_SUM, FORWARDING_B, forwardingmuxtomux );
	rtrdmux1 :     mux2to1 generic map (n=>4) port map ( ID_EX_REGDST, ID_EX_RT, ID_EX_RD, rt_rd );
	alusrcmux1 : 	mux2to1 generic map (n=>4) port map ( ID_EX_ALUSRC, forwardingmuxtomux, ID_EX_MEMADDRESSOFFSET, muxtoalu ); 
	alu1 : 			alu port map ( forwardingmuxtoalu, muxtoalu, ID_EX_ADDSUB, ID_EX_ALUOP, sum, ZERO2 );
	
	
	------------- EX_MEM_PIPELINE -----------------------------------
	------------- branch control---------------------------------------
	branch_regwrite1 : 	mux2to1_logic1 port map(branch_control, ID_EX_Regwrite, '0', branch_EX_MEM_REGwrite);
	branch_memtoREg1 :	mux2to1_logic1 port map(branch_control, ID_EX_memtoreg, '0', branch_EX_MEM_MEMTOREG);
	branch_memwrite1 :	mux2to1_logic1 port map(branch_control, ID_EX_MEMWRITE, '0', branch_EX_MEM_MEMWRITE);
	branch_MEMREAD1  :	mux2to1_logic1 port map(branch_control, ID_EX_MEMREAD,  '0', branch_EX_MEM_MEMREAD);
	branch_Branch1   :   mux2to1_logic1 port map(branch_control, ID_EX_Branch,   '0', branch_ID_EX_branch);
	------------------branch end ------------------------------------------------
	
	EX_MEM_REGWRITE16 : 	reg1 port map ( clock, reset, branch_EX_MEM_REGwrite, EX_MEM_REGWRITE );
	EX_MEM_MEMTOREG17 : 	reg1 port map ( clock, reset, branch_EX_MEM_MEMTOREG, EX_MEM_MEMTOREG );
	EX_MEM_ZERO220 : 		reg1 port map ( clock, reset, ZERO2, EX_MEM_ZERO2 );
	EX_MEM_MEMWRITE21 : 	reg1 port map ( clock, reset, branch_EX_MEM_MEMWRITE, EX_MEM_MEMWRITE );
	EX_MEM_MEMREAD22 : 	reg1 port map ( clock, reset, branch_EX_MEM_MEMREAD, EX_MEM_MEMREAD );
	EX_MEM_BRANCH24 : 	reg1 port map ( clock, reset, branch_ID_EX_branch, EX_MEM_BRANCH );
	EX_MEM_ADDPC25 : 		regN generic map (n=>4) port map ( clock, ID_EX_ADDPC, EX_MEM_ADDPC );
	EX_MEM_MEMADDROFF26 :regN generic map (n=>4) port map ( clock, ID_EX_MEMADDRESSOFFSET, EX_MEM_MEMADDRESSOFFSET );
	EX_MEM_RD18 : 			regN generic map (n=>4) port map ( clock, rt_rd, EX_MEM_RD );
	EX_MEM_SUM19 : 		regN generic map (n=>4) port map ( clock, sum, EX_MEM_SUM );
	EX_MEM_SRC223 : 		regN generic map (n=>4) port map ( clock, forwardingmuxtomux, EX_MEM_SRC2 );
	
	-----------------------------------------------------------------
	-----------------        MEM STAGE        -----------------------
	-----------------------------------------------------------------
	------------- DM  -----------------------------------------------
	dm1 : data_memory port map (clock, reset, EX_MEM_MEMWRITE, EX_MEM_SUM, EX_MEM_SRC2, value1);
	
	jumpadder1 : ripple_carry port map ( '0', EX_MEM_MEMADDRESSOFFSET, EX_MEM_ADDPC, JUMPADDRESS );
	branchandgate1 : andgate port map ( EX_MEM_BRANCH, EX_MEM_ZERO2, BRANCH_CONTROL );
	jumpmux1 : mux2to1 generic map (n=>4) port map (Jump, update_pc, memaddressoffset, jmout);
	branchmux1 : mux2to1 generic map (n=>4) port map ( BRANCH_CONTROL, jmout, JUMPADDRESS, final_pc );
	
	---------- MEM_WB_PIPELINE --------------------------------------
	MEM_WB_REGWRITE27 : 	reg1 port map ( clock, reset, EX_MEM_REGWRITE, MEM_WB_REGWRITE );
	MEM_WB_MEMTOREG28 : 	reg1 port map ( clock, reset, EX_MEM_MEMTOREG, MEM_WB_MEMTOREG );
	MEM_WB_VALUE129 : 	regN generic map (n=>4) port map ( clock, value1, MEM_WB_VALUE1 );
	MEM_WB_SUM30 : 		regN generic map (n=>4) port map ( clock, EX_MEM_SUM, MEM_WB_SUM );
	MEM_WB_RD31 :			regN generic map (n=>4) port map ( clock, EX_MEM_RD, MEM_WB_RD );
	
	-----------------------------------------------------------------
	-----------------        WB STAGE        ------------------------
	-----------------------------------------------------------------	
	
   dmmux1 : mux2to1 generic map (n=>4) port map ( MEM_WB_MEMTOREG, MEM_WB_SUM, MEM_WB_VALUE1, writemux );
   
	
	-----------------------------------------------------------------
	-----------------     FORWARDING UNIT    ------------------------
	-----------------------------------------------------------------
	
	forwardingunit1 : forwardingUnit port map ( MEM_WB_REGWRITE, EX_MEM_REGWRITE, MEM_WB_RD, EX_MEM_RD, ID_EX_Rs, ID_EX_RT, FORWARDING_A, FORWARDING_B );
	
	
	
	result <= EX_MEM_SRC2 when EX_MEM_MEMWRITE = '1' else writemux;
	current_pc <= rout;

end behaviour;