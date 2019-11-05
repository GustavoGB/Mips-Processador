-- does not create the library; it simply forward declares 
-- it. 
library ieee;

-- Use clauses import declarations into the current scope.	
-- If more than one use clause imports the same name into the
-- the same scope, none of the names are imported.

-- Import all the declarations in a package
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UC is
	
	port
	(
		opcode : in std_logic_vector (5 downto 0);
		ULA_func : out std_logic_vector (5 downto 0);
		Habilita_BancoRegistradores : out std_logic;
		Habilita_WRAM : out std_logic;
		Habilita_RRAM : out std_logic;
		Habilita_MuxSaidaULA: out std_logic;
		Habilita_MuxEntradaULA: out std_logic;
		Habilita_MuxEntradaBanco: out std_logic;
		Mux_Jump: out std_logic
		
	);
end UC;


-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture Arch of UC is
	constant lw : std_logic_vector(5 downto 0) := "100011";
	constant sw : std_logic_vector(5 downto 0) := "101011";
	constant beq : std_logic_vector(5 downto 0) := "000100";
	constant add : std_logic_vector(5 downto 0) := "000000";
	constant sub : std_logic_vector(5 downto 0) := "000000";
	
begin
	Mux_Jump <= '0' when (opcode = beq) else '1';
	
	Habilita_BancoRegistradores <= '1' when (opcode = sw) or (opcode = add) or (opcode = sub) else '0';
	
	Habilita_RRAM <= '1' when (opcode = sw) else '0';
	
	Habilita_WRAM <= '1' when (opcode = sw) else '0';	

	Habilita_MuxSaidaULA <= '1' when (opcode = sw)  else '0';	
	
	Habilita_MuxEntradaULA <= '1' when (opcode = sw) or (opcode = lw) or (opcode = beq)  else '0';	

	Habilita_MuxEntradaBanco <= '1' when (opcode = add) or (opcode = sub) else '0';	
	
	ULA_func <= "100000" when (opcode = add) else 
	"100010" when (opcode = sub) else "000000";
		
end Arch;