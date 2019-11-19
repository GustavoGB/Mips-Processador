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
    --signal ALUop_s : STD_LOGIC_VECTOR(ALU_OP_WIDTH-1 DOWNTO 0);
begin

	 ALUctr <= ulaCtrlAdd when (funct(5 downto 4) = "10") and (ALUop = aluOpAdd) else
					ulaCtrlSub when (funct(5 downto 4) = "00") and (ALUop = aluOpSub) else
					ulaCtrlAnd when (ALUop = aluOpAnd) else
					ulaCtrlOr when  (ALUop = aluOpOr) else
					ulaCtrlSlt when (ALUop = aluOpSlt) else "0000";

end bhv;