library ieee;
use ieee.std_logic_1164.all;

entity InstrucoesI is
    generic (
        quantidadeLedsRed           : natural := 18;
        quantidadeLedsGreen         : natural := 8;
        quantidadeChaves            : natural := 18
    );
    port
    (
        CLOCK_50 : IN STD_LOGIC;
        SW : IN STD_LOGIC_VECTOR(quantidadeChaves-1 downto 0)
    );
end entity;

architecture estrutural of InstrucoesI is
signal sig_instrucao: std_logic_vector(31 downto 0);
signal sig_endereco: std_logic_vector(31 downto 0);
begin	 
    ROM : entity work.rom 
    port map
    (
          Endereco => sig_endereco,
          Dado => sig_instrucao
    );
	 
	PR: entity work.Processador 	 
	port map
	(
		CLK => CLOCK_50,
		End_rt => sig_instrucao(25 downto 21),
		End_rs => sig_instrucao(20 downto 16),
		End_rd => sig_instrucao(20 downto 16),
		Imediato => sig_instrucao(15 downto 0),
		Opcode => sig_instrucao(31 downto 26),
		SW => SW,
		OutEnd => sig_endereco
	);
	 
end architecture;