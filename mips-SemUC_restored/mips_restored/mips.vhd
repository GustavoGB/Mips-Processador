-- Design de Computadores
-- file: mips.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity mips is
    generic (
		  quantidadeBotoes            : natural := 4;
        quantidadeLedsRed           : natural := 18;
        quantidadeLedsGreen         : natural := 8
    );

	port
    (
        clk			            : IN  STD_LOGIC;
		  --Botoes
		  KEY: IN STD_LOGIC_VECTOR(quantidadeBotoes-1 DOWNTO 0);
        -- LEDS
        LEDR : OUT STD_LOGIC_VECTOR(quantidadeLedsRed-1 downto 0);
        LEDG : OUT STD_LOGIC_VECTOR(quantidadeLedsGreen-1 downto 0);
		  --SIMULACAO
		  saida_ULAWF : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
		  pcWF : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
		  ZWF : OUT STD_LOGIC;
        -- DISPLAYS 7 SEG
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)
    );
end entity;

architecture estrutural of mips is

	-- Declaração de sinais auxiliares
    signal pontosDeControle     : STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0);
    signal instrucao            : STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    signal ALUop                : STD_LOGIC_VECTOR(ALU_OP_WIDTH-1 DOWNTO 0);
    signal ALUctr               : STD_LOGIC_VECTOR(CTRL_ALU_WIDTH-1 DOWNTO 0);
	 signal saidaULA 				  : STD_LOGIC_VECTOR(31 downto 0);
	 signal clk_but 				  : STD_LOGIC;
    -- Sinal de clock auxiliar para simulação
    -- signal clk  : STD_LOGIC;

    alias opcode : std_logic_vector(OPCODE_WIDTH-1 downto 0) is instrucao(31 DOWNTO 26);
begin


	 clk_but <= KEY(0);

    -- CLOCK generator auxiliar para simulação
    -- CG : entity work.clock_generator port map (clk	=> clk);

    FD : entity work.fluxo_dados 
	port map
	(
        clk	                    => clk, --clk_but,
        pontosDeControle        => pontosDeControle,
        instrucao               => instrucao,
		  saidaULA => saida_ULAWF,
		  pcWF => pcWF,
		  ZWF => ZWF
    );

    UC : entity work.uc 
	port map
	(
        opcode              	=> opcode,
        pontosDeControle    	=> pontosDeControle
    );
	 
    -- Instanciação de cada Display
    DISPLAY0 : entity work.conversorHex7SegDisplay 
    port map
    (
        clk         => clk,
        dadoHex     => saidaULA(3 downto 0), -- que veio da ULA
        habilita    => '1',
        saida7seg   => HEX0
    );
	 
	 -- Instanciação de cada Display
    DISPLAY1 : entity work.conversorHex7SegDisplay 
    port map
    (
        clk         => clk,
        dadoHex     => saidaULA(7 downto 4), -- que veio da ULA
        habilita    => '1',
        saida7seg   => HEX1
    );
	 
	     -- Instanciação de cada Display
    DISPLAY2 : entity work.conversorHex7SegDisplay 
    port map
    (
        clk         => clk,
        dadoHex     => saidaULA(11 downto 8), -- que veio da ULA
        habilita    => '1',
        saida7seg   => HEX2
    );
	 
	     -- Instanciação de cada Display
    DISPLAY3 : entity work.conversorHex7SegDisplay 
    port map
    (
        clk         => clk,
        dadoHex     => saidaULA(15 downto 12), -- que veio da ULA
        habilita    => '1',
        saida7seg   => HEX3
    );
	 
	     -- Instanciação de cada Display
    DISPLAY4 : entity work.conversorHex7SegDisplay 
    port map
    (
        clk         => clk,
        dadoHex     => saidaULA(19 downto 16), -- que veio da ULA
        habilita    => '1',
        saida7seg   => HEX4
    );
	 
    -- Instanciação de cada Display
    DISPLAY5 : entity work.conversorHex7SegDisplay 
    port map
    (
        clk         => clk,
        dadoHex     => saidaULA(23 downto 20), -- que veio da ULA
        habilita    => '1',
        saida7seg   => HEX5
    );
	 
    -- Instanciação de cada Display
    DISPLAY6 : entity work.conversorHex7SegDisplay 
    port map
    (
        clk         => clk,
        dadoHex     => saidaULA(27 downto 24), -- que veio da ULA
        habilita    => '1',
        saida7seg   => HEX6
    );

end architecture;
