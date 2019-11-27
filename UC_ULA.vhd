-- Design de Computadores
-- file: UC_ULA.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity UC_ULA is
	port
    (
        funct               : IN STD_LOGIC_VECTOR(FUNCT_WIDTH-1 DOWNTO 0);
        ALUop               : IN STD_LOGIC_VECTOR(ALU_OP_WIDTH-1 DOWNTO 0);
        ALUctr              : OUT STD_LOGIC_VECTOR(CTRL_ALU_WIDTH-1 DOWNTO 0)
    );
end entity;

architecture bhv of UC_ULA is	
    	signal d_funct : std_logic_vector(CTRL_ALU_WIDTH-1 downto 0);
		signal saida : std_logic_vector(CTRL_ALU_WIDTH-1 downto 0);

begin

	d_funct <= ulaCtrlAdd when (funct = functADD) else
				  ulaCtrlSub when (funct = functSUB) else
				  ulaCtrlAnd when (funct = functAND) else
				  ulaCtrlOr when (funct = functOR) else
				  ulaCtrlSlt when (funct = functSLT) else
				  "1111";
				  
--		when functADD => d_funct <= ulaCtrlAdd;
--		when functSUB => d_funct <= ulaCtrlSub;
--		when functAND => d_funct <= ulaCtrlAnd;
--		when functOR => d_funct <= ulaCtrlOr;
--		when functSLT => d_funct <= ulaCtrlSlt;
--		when others => d_funct <= "1111";
--		 
--	 end case;

	 saida <= d_funct when (ALUop = readFunctULA) else
				  ulaCtrlAdd when (ALUop = aluOpAdd) else
				  ulaCtrlSub when (ALUop = aluOpSub) else
				  ulaCtrlAnd when (ALUop = aluOpAnd) else
				  ulaCtrlOr when (ALUop = aluOpOr) else
				  ulaCtrlSlt when (ALUop = aluOpSlt) else
				  "1111";
	 
--	 case ALUop is
--		when readFunctULA => saida <= d_funct; 
--		when aluOpAdd => saida <= ulaCtrlAdd;
--		when aluOpSub => saida <= ulaCtrlSub;
--		when aluOpAnd => saida <= ulaCtrlAnd;
--		when aluOpOr =>  saida <= ulaCtrlOr;
--		when aluOpSlt =>  saida <= ulaCtrlSlt;
--		when others => saida <= "1111";
--	 end case;
 
	 ALUctr <= saida;

end bhv;