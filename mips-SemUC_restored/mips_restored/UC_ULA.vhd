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
    signal ALUop_s : STD_LOGIC_VECTOR(ALU_OP_WIDTH-1 DOWNTO 0);
begin
	
	ALUop_s <= aluOpAdd when (funct=functADD and (ALUop=readFunctULA)) else
				aluOpSlt when (funct=functSLT and (ALUop=readFunctULA)) else
				aluOpAnd when (funct=functAND and (ALUop=readFunctULA)) else
				aluOpOr when (funct=functOR and (ALUop=readFunctULA)) else
				aluOpSub when (funct=functSUB and (ALUop=readFunctULA)) else
				ALUop when (ALUop /= readFunctULA) else "000";
	
	
	
	 ALUctr <=  ulaCtrlAdd when (ALUop_s=aluOpAdd) else
					ulaCtrlSub when (ALUop_s=aluOpSub) else
					ulaCtrlAnd when (ALUop_s = aluOpAnd) else
					ulaCtrlOr when  (ALUop_s = aluOpOr)  else
					ulaCtrlSlt when (ALUop_s = aluOpSlt) else "0000";

end bhv;