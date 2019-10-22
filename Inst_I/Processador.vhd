library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Processador is
	port
	(
		CLK : in std_logic;
		End_rt: in std_logic_vector(4 downto 0);
		End_rs: in std_logic_vector(4 downto 0);
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
		Habilita_BancoRegistradores => habilitaBanco,
		Habilita_WRAM => habilitaWRam,
		Habilita_RRAM => habilitaRRam,
		Mux_Jump => mux_jump
    );
	
	 BR: entity work.banco
	 port map(
        clk => CLK,
        enderecoA => End_rs,
        enderecoB => End_rt,
        enderecoC => End_rt,
        dadoEscritaC  => saidaRAM,
        escreveC    => habilitaBanco,
		  saidaB => dadoLidoReg2,
        saidaA      => saidaBancoReg
	 );
	 
    ULA : entity work.ula 
    port map
    (
		A => saidaBancoReg,
		B => saida_extensor,
		func => SW(17 downto 16),
		C => saidaULA
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