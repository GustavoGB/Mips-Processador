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
		--ULA_func : out std_logic_vector (2 downto 0);
		Habilita_BancoRegistradores : out std_logic;
		Habilita_WRAM : out std_logic;
		Habilita_RRAM : out std_logic;
		Mux_Jump: out std_logic
		
	);
end UC;


-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture Arch of UC is
	constant lw : std_logic_vector(5 downto 0) := "100011";
	constant sw : std_logic_vector(5 downto 0) := "101011";
	constant beq : std_logic_vector(5 downto 0) := "000100";

	
begin
	Mux_Jump <= '0' when (opcode = beq) else '1';
	
	Habilita_BancoRegistradores <= '1' when (opcode = sw) else '0';
	
	Habilita_RRAM <= '1' when (opcode = sw) else '0';
	
	Habilita_WRAM <= '1' when (opcode = sw) else '0'; 
		
end Arch;