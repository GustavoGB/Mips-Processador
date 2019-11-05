library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Processador is
	port
	(
		CLK : in std_logic;
		End_rt: in std_logic_vector(4 downto 0);
		End_rs: in std_logic_vector(4 downto 0);
		End_rd : in std_logic_vector(4 downto 0);
		Imediato: in std_logic_vector(15 downto 0);
		Opcode: in std_logic_vector(5 downto 0);
      SW : IN STD_LOGIC_VECTOR(17 downto 0);
		OutEnd: out std_logic_vector(31 downto 0)
	);
end Processador;

architecture Arch of Processador is
signal end_add : std_logic_vector(31 downto 0);
signal mux_jump : std_logic;
signal saidaMuxJump : std_logic_vector(31 downto 0);
signal sig_ULA_func : std_logic_vector(2 downto 0);
signal habilitaBanco : std_logic;
signal saidaULA: std_logic_vector(31 downto 0);
signal saidaPC: std_logic_vector(31 downto 0);
signal saidaBancoReg : std_logic_vector(31 downto 0);
signal saida_extensor : std_logic_vector(31 downto 0);
signal habilitaRRam : std_logic;
signal habilitaWRam : std_logic;
signal saidaRAM : std_logic_vector(31 downto 0);
signal dadoLidoReg2 : std_logic_vector(31 downto 0);
signal saida_somador2 : std_logic_Vector(31 downto 0);
signal Habilita_MuxEntradaULA : std_logic;
signal Habilita_MuxSaidaULA : std_logic;
signal Habilita_MuxEntradaBanco : std_logic;
signal saidaMuxEULA : std_logic_Vector(31 downto 0);
signal saidaMuxSULA : std_logic_Vector(31 downto 0);
signal saidaMuxEBC : std_logic_Vector(4 downto 0);
signal sig_func : std_logic_vector(5 downto 0);
signal sig_func_ucula : std_logic_vector(2 downto 0);


begin

	SomadorPC: entity work.somador
		 port map
		 (
			A => saidaPC,
			X => end_add
		 );
		 
	SomadorIM: entity work.somador2
		 port map
		 (
			A => saida_extensor,
			B => end_add,
			X => saida_somador2
		 );
		 
		 Mux2_Jump: entity work.muxPC
		 port map
		 (
			 A => saida_somador2,
			 B => end_add,		 
			 sel => mux_jump,
			 X => saidaMuxJump
		 );

		 Mux_EULA: entity work.mux32
		 port map
		 (
			 A => dadoLidoReg2,
			 B => saida_extensor,		 
			 sel => Habilita_MuxEntradaULA,
			 X => saidaMuxEULA
		 );
		 
		 Mux_SULA: entity work.mux32
		 port map
		 (
			 A => saidaULA,
			 B => saidaRAM,		 
			 sel => Habilita_MuxSaidaULA,
			 X => saidaMuxSULA
		 );
		 
		 Mux_EBC: entity work.mux5
		 port map
		 (
			 A => End_rt,
			 B => End_rd,		 
			 sel => Habilita_MuxEntradaBanco,
			 X => saidaMuxEBC
		 );
		 
		 Ext: entity work.extensor
		 port map
		 (
			 estendeSinal_IN => Imediato,
			 estendeSinal_OUT => saida_extensor		
		 );
		 
		 PC : entity work.pc 
		 port map
		 (
			clk => CLK,
			A => saidaMuxJump ,
			instrucao => saidaPC
		 );
		 
-- Instanciação da Unidade de Controle
    UC : entity work.UC 
    port map
    (
		opcode => Opcode,
		ULA_func => sig_func,
		Habilita_BancoRegistradores => habilitaBanco,
		Habilita_WRAM => habilitaWRam,
		Habilita_RRAM => habilitaRRam,
		Habilita_MuxEntradaULA => Habilita_MuxEntradaULA,
		Habilita_MuxSaidaULA => Habilita_MuxSaidaULA,
		Habilita_MuxEntradaBanco => Habilita_MuxEntradaBanco,
		Mux_Jump => mux_jump
    );
	
	 BR: entity work.banco
	 port map(
        clk => CLK,
        enderecoA => End_rs,
        enderecoB => End_rt,
        enderecoC => saidaMuxEBC,
        dadoEscritaC  => saidaMuxSULA,
        escreveC    => habilitaBanco,
		  saidaB => dadoLidoReg2,
        saidaA      => saidaBancoReg
	 );
	 
    ULA : entity work.ula 
    port map
    (
		A => saidaBancoReg,
		B => saidaMuxEULA,
		func => sig_func_ucula,
		C => saidaULA
    );
	 
    UC_ula : entity work.UCULA 
    port map
    (
		func => Imediato(5 downto 0),
		opALU1 => sig_func(5),
		opALU2 => sig_func(4),
		ULA_func => sig_func_ucula
    );
	 
	 RAM: entity work.ram
	 port map
	 (
        addr  => saidaULA,
        we    => habilitaWRam,
		  re => habilitaRRam,
        --clk      : in std_logic;
        dado_in  => dadoLidoReg2,
        dado_out => saidaRAM
	 );
		 
	OutEnd <= saidaPC;
	
end Arch;