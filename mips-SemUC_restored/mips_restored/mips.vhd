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
        CLOCK_50			            : IN  STD_LOGIC;
		  --Botoes
		  KEY: IN STD_LOGIC_VECTOR(quantidadeBotoes-1 DOWNTO 0);
        -- LEDS
        LEDR : OUT STD_LOGIC_VECTOR(quantidadeLedsRed-1 downto 0);
        --LEDG : OUT STD_LOGIC_VECTOR(quantidadeLedsGreen-1 downto 0);
		  --SIMULACAO
		  saida_ULAWF : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
		  pcWF : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
		  ZWF : OUT STD_LOGIC;
		  --ux_exWF : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		  dec_RBWF : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		  dec_RAWF : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		  sel_mux_jumpWF : OUT STD_LOGIC;
		  sel_mux_beqWF : OUT STD_LOGIC;
		  --opcodeWF : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		  ALUopWF : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        -- DISPLAYS 7 SEG
        HEX0, HEX1, HEX2, HEX3 : OUT STD_LOGIC_VECTOR(6 downto 0)
		  --HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)
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
    --sinal de clock auxiliar para simulação
     --signal clk  : STD_LOGIC;
	  signal pc_led : STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
	  signal Q : std_logic;

    alias opcode : std_logic_vector(OPCODE_WIDTH-1 downto 0) is instrucao(31 DOWNTO 26);
begin
	 pc_led <= pcWF;
	 LEDR <= pc_led(17 downto 0);
    HEX0 <= saida_ULAWF(6 downto 0);	
    HEX1 <= saida_ULAWF(13 downto 7);	
    HEX2 <= saida_ULAWF(20 downto 14);	
    HEX3 <= saida_ULAWF(27 downto 21);	
     --CLOCK generator auxiliar para simulação
     --CG : entity work.clock_generator port map (clk	=> clk);

    FD : entity work.fluxo_dados 
	port map
	(
        clk	                    => clk_but , --clk,
        pontosDeControle        => pontosDeControle,
        instrucao               => instrucao,
		  saidaULA => saida_ULAWF,
		  pcWF => pcWF,
		  ZWF => ZWF,
		  --ux_exWF => ux_exWF,
		  dec_RBWF => dec_RBWF,
		  dec_RAWF => dec_RAWF,
		  sel_mux_jumpWF => sel_mux_jumpWF,
		  sel_mux_beqWF => sel_mux_beqWF,
		  ALUopWF => ALUopWF
    );

    UC : entity work.uc 
	port map
	(
        opcode              	=> opcode,
        pontosDeControle    	=> pontosDeControle
    );
	 --opcodeWF <= opcode;
	 
	 FlipFlop : entity work.FlipFlop
	 port map
	 (
		data_out => Q,
		clk      => KEY(0),
		reset    => KEY(1) -- reset negado
 );
	detector : entity work.edgeDetector
	port map
	(
		clk => CLOCK_50,
		entrada => Q,
		saida => clk_but
	);
end architecture;
