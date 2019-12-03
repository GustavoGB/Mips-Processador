-- Design de Computadores
-- file: fluxo_dados.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity fluxo_dados is
    generic (
        larguraROM          : natural := 8 -- deve ser menor ou igual a 32
    );
	port
    (
        clk			            : IN STD_LOGIC;
        pontosDeControle        : IN STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0);
        instrucao               : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
		  pcWF 						  : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
		  saidaULA 					  : OUT STD_LOGIC_VECTOR(31 downto 0);
		  ZWF 						  : OUT STD_LOGIC
    );
end entity;

architecture estrutural of fluxo_dados is
    signal wb_saida_mux_rd_rt : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0);
	 signal ex_saida_mux_rd_rt : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0);
	 signal wb_uc_wb : std_logic_vector(1 downto 0);
	 signal ex_uc_wb : std_logic_vector(1 downto 0);
	 signal ex_RB : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Declaração de sinais auxiliares
    signal inst_fetch : std_logic_vector(DATA_WIDTH-1 DOWNTO 0);
	 signal fetch_PC_4 : std_logic_vector(DATA_WIDTH-1 DOWNTO 0);
    -- Sinais auxiliar da instrução
    signal instrucao_s : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para o banco de registradores
    signal RA, RB : std_logic_vector(DATA_WIDTH-1 downto 0);
	 signal dec_RA, dec_RB : std_logic_vector(DATA_WIDTH-1 downto 0);
	 signal wb_saida_ula : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para a ULA
    signal saida_ula : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal ex_saidaUla : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal Z_out : std_logic;
    signal ex_Z : std_logic;
    -- Sinais auxiliares para a lógica do PC
    signal PC_s, PC_mais_4, PC_mais_4_mais_imediato, entrada_somador_beq : std_logic_vector(DATA_WIDTH-1 downto 0);
	 signal ex_PC_mais_4_mais_imediato : std_logic_vector(DATA_WIDTH-1 downto 0);
    -- Sinais auxiliares para a RAM
    signal dado_lido_mem : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal wb_dado_lido_mem : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para os componentes manipuladores do imediato
    signal sinal_ext : std_logic_vector(DATA_WIDTH-1 downto 0);
	 signal dec_sinal_ext : std_logic_vector(DATA_WIDTH-1 downto 0);
    -- Sinais auxiliares para os componentes manipuladores do endereço de jump
    signal PC_4_concat_imed : std_logic_vector(DATA_WIDTH-1 downto 0);
	 signal dec_PC_mais_4 : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal saida_shift_jump : std_logic_vector(27 downto 0);
            
    -- Sinais auxiliares dos MUXs
    signal sel_mux_beq : std_logic;
    signal saida_mux_ula_mem, saida_mux_banco_ula, saida_mux_beq, saida_mux_jump : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal saida_mux_rd_rt : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0);
	 signal dec_uc_wb :  std_logic_vector(1 downto 0);
	 signal dec_uc_m :  std_logic_vector(2 downto 0);
	 signal ex_uc_m :  std_logic_vector(2 downto 0);
	 signal dec_uc_ex :  std_logic_vector(4 downto 0);
	 signal dec_RT_addr : std_logic_vector(20 downto 16);
	 signal dec_RD_addr : std_logic_vector(15 downto 11);


    -- Controle da ULA
    signal ULActr : std_logic_vector(CTRL_ALU_WIDTH-1 downto 0);

    -- Codigos da palavra de controle:
    alias ULAop             : std_logic_vector(ALU_OP_WIDTH-1 downto 0) is pontosDeControle(10 downto 8);
    alias escreve_RC        : std_logic is pontosDeControle(7);
    alias escreve_RAM       : std_logic is pontosDeControle(6);
    alias leitura_RAM       : std_logic is pontosDeControle(5);
    alias sel_mux_ula_mem   : std_logic is pontosDeControle(4);
    alias sel_mux_rd_rt     : std_logic is pontosDeControle(3);
    alias sel_mux_banco_ula : std_logic is pontosDeControle(2);
    alias sel_beq           : std_logic is pontosDeControle(1);
    alias sel_mux_jump      : std_logic is pontosDeControle(0);

    -- Parsing da instrucao
--    alias RS_addr   : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is instrucao(25 downto 21);
--    alias RT_addr   : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is instrucao(20 downto 16);
--    alias RD_addr   : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is instrucao(15 downto 11);
--    alias funct     : std_logic_vector(FUNCT_WIDTH-1 downto 0) is  instrucao(5 DOWNTO 0);
--    alias imediato  : std_logic_vector(15 downto 0) is instrucao(15 downto 0);

begin

    FID: entity work.Registrador_Fetch
			port map (
				clk	   =>  clk,
				enable	=> '1',
				reset   => '0',
				data_in	    => instrucao_s,
				data_in2 => PC_mais_4,
				data_out	=> inst_fetch,
				data_out2 => fetch_PC_4
			);
	 instrucao <= instrucao_s;
    IDEX: entity work.Registrador_EX
			port map (
				clk	    => clk,
				enable	=> '1',
				reset   => '0',
				pc	    => fetch_PC_4, 
				read_d1	    => RA, 
				read_d2	    => RB, 
				sig_ext		 => sinal_ext,
				inst_20		 => instrucao_s(20 downto 16),
				inst_15 		 => instrucao_s(15 downto 11),
				uc_wb			 => escreve_RC & sel_mux_ula_mem,
				uc_m			 => escreve_RAM & leitura_RAM & sel_beq,
				uc_ex			 => ULAop & sel_mux_rd_rt & sel_mux_banco_ula,
				pc_out		 => dec_PC_mais_4,
				read_d1_out	    => dec_RA, 
				read_d2_out	    => dec_RB, 
				sig_ext_out		 => dec_sinal_ext,
				inst_20_out		 => dec_RT_addr,
				inst_15_out 		 => dec_RD_addr,
				uc_wb_out			 => dec_uc_wb,
				uc_m_out			 => dec_uc_m,
				uc_ex_out			 => dec_uc_ex
			);

    EXMEM: entity work.Registrador_MEM
			port map (
				clk	    => clk,
				enable	=> '1',
				reset   => '0',
				saida_mux_rd_rt => saida_mux_rd_rt,
				saidaULA	    => saida_ula,
				Z			=> Z_out,
				read_d2  => dec_RB,
				uc_wb			 => dec_uc_wb,
				uc_m			 => dec_uc_m,
				PC_mais_4_mais_imediato => PC_mais_4_mais_imediato,
				uc_wb_out			 => ex_uc_wb,
				uc_m_out			 => ex_uc_m,
				PC_mais_4_mais_imediato_out => ex_PC_mais_4_mais_imediato,
				Z_out => ex_Z,
				read_d2_out  => ex_RB,
				saidaULA_out => ex_saidaULA,
				saida_mux_rd_rt_out => ex_saida_mux_rd_rt
			);
	 
    MEMWB: entity work.Registrador_WB
			port map (
				clk	    => clk,
				enable	=> '1',
				reset   => '0',
				dado_ram_in	    => dado_lido_mem,
				saidaULA => ex_saidaULA,
				saida_mux_rd_rt => ex_saida_mux_rd_rt,
				uc_wb => ex_uc_wb,
				uc_wb_out => wb_uc_wb,
				dado_ram_out	=> wb_dado_lido_mem,
				saidaULA_out => wb_saida_ula,
				saida_mux_rd_rt_out => wb_saida_mux_rd_rt
			);
	 
    sel_mux_beq <= (ex_uc_m(0) AND ex_Z);

    -- Ajuste do PC para jump (concatena com imediato multiplicado por 4)
    PC_4_concat_imed <= PC_mais_4(31 downto 28) & saida_shift_jump;

    -- Banco de registradores
     BR: entity work.bancoRegistradores 
        generic map (
            larguraDados => DATA_WIDTH, 
            larguraEndBancoRegs => 5
        )
        port map (
            enderecoA => inst_fetch(25 downto 21),
            enderecoB => inst_fetch(20 downto 16),
            enderecoC => wb_saida_mux_rd_rt,
            clk          => clk,
            dadoEscritaC => saida_mux_ula_mem, 
            escreveC     => wb_uc_wb(1),
            saidaA       => RA,
            saidaB       => RB
        );
    
    -- ULA
     ULA: entity work.ULA
        generic map (
            NUM_BITS => DATA_WIDTH
        )
		port map (
            A   => dec_RA,
            B   => saida_mux_banco_ula,
            ctr => ULActr,
            C   => saida_ula,
            Z   => Z_out
        );
	saidaULA <= saida_ula;
	ZWF <= Z_out;
    UCULA : entity work.uc_ula 
        port map
        (
            funct  => dec_sinal_ext(5 downto 0),
            ALUop  => dec_uc_ex(4 downto 2),
            ALUctr => ULActr
        );
     
    -- PC e somadores
     PC: entity work.Registrador
        generic map (
            NUM_BITS => DATA_WIDTH
        )
		port map (
            data_out => PC_s,
            data_in  => saida_mux_jump,
            clk      => clk,
            enable   => '1',
            reset    => '1' -- reset negado
        );
		pcWF <= PC_s;
     Somador_imediato: entity work.somador 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => dec_PC_mais_4,
            entradaB => entrada_somador_beq,
            saida    => PC_mais_4_mais_imediato
        );
    
     Somador: entity work.soma4
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entrada => PC_s,
            saida   => PC_mais_4
        ); 

    -- ROM
    ROM: entity work.ROM 
        generic map (
            dataWidth => DATA_WIDTH, 
            addrWidth => larguraROM
        ) 
		port map (
            endereco => PC_s(larguraROM-1 downto 0),
            dado     => instrucao_s
        );
    
    -- RAM: escreve valor lido no registrador B no endereço de memória de acordo com a saída da ULA
     RAM: entity work.single_port_RAM 
        generic map (
            dataWidth => DATA_WIDTH, 
            addrWidth => ADDR_WIDTH
        )
		port map (
            endereco    => ex_saidaULA, 
            we          => ex_uc_m(2),
            re          => ex_uc_m(1),
            clk         => clk,
            dado_write  => ex_RB,
            dado_read   => dado_lido_mem
        ); 

     -- Componentes manipuladores do imediato
     extensor: entity work.estendeSinalGenerico 
        generic map (
            larguraDadoEntrada => 16,
            larguraDadoSaida   => DATA_WIDTH
        )
		port map (
            estendeSinal_IN  => inst_fetch(15 downto 0),
            estendeSinal_OUT => sinal_ext 
        ); 

     shift: entity work.shift2_imediato 
        generic map (
            larguraDado => DATA_WIDTH
        )
		port map (
            shift_IN  => dec_sinal_ext,
            shift_OUT => entrada_somador_beq
        );
    
    -- Componentes manipuladores do endereço de jump
     shift_jump: entity work.shift2 
        generic map (
            larguraDado => 26
        )
		port map (
            shift_IN  => inst_fetch(25 downto 0),
            shift_OUT => saida_shift_jump
        );
    
    -- MUXs
     mux_Ula_Memoria: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => wb_saida_ula, 
            entradaB => wb_dado_lido_mem, 
            seletor  => wb_uc_wb(0),
            saida    => saida_mux_ula_mem
        );
	 
     mux_Rd_Rt: entity work.muxGenerico2 
        generic map (
            larguraDados => REGBANK_ADDR_WIDTH
        )
		port map (
            entradaA => dec_RT_addr, 
            entradaB => dec_RD_addr,
            seletor  => dec_uc_ex(1),
            saida    => saida_mux_rd_rt
        );
	
     mux_Banco_Ula: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => dec_RB, 
            entradaB => sinal_ext,  
            seletor  => dec_uc_ex(0),
            saida    => saida_mux_banco_ula
        );
		
     mux_beq: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => PC_mais_4,
            entradaB => ex_PC_mais_4_mais_imediato,
            seletor  => sel_mux_beq,
            saida    => saida_mux_beq
        );
		
     mux_jump: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => saida_mux_beq,
            entradaB => PC_4_concat_imed,
            seletor  => sel_mux_jump,
            saida    => saida_mux_jump
        );
		  

end architecture;
