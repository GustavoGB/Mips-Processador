-- A library clause declares a name as a library.  It 
-- does not create the library; it simply forward declares 
-- it. 
library ieee;

-- Use clauses import declarations into the current scope.	
-- If more than one use clause imports the same name into the
-- the same scope, none of the names are imported.

-- Import all the declarations in a package
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;




entity ula is
	Generic ( largura_Dados : natural := 32 );
	
	port
	(
		A : in std_logic_vector (largura_Dados-1 downto 0);
		B : in std_logic_vector (largura_Dados-1 downto 0);
		func : in std_logic_vector (2 downto 0);
		C : out std_logic_vector (largura_Dados-1 downto 0); --É um endereço que vai p/ ram
		-- Flags
		Overflow,Negative,Zero,CarryOut : out std_logic
	);
end ula;


-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture Arch of ula is	
	constant Add : std_logic_vector(2 downto 0) := "010";
	constant Sub : std_logic_vector(2 downto 0) := "110";	
	constant Ande : std_logic_Vector(2 downto 0) := "000";
	constant Ore: std_logic_vector(2 downto 0) := "001";
	constant Slt: std_logic_vector(2 downto 0) := "111";
	signal temp : std_logic_vector(31 downto 0);
	
begin
	
	temp <= std_logic_vector(unsigned(A) + unsigned(B)) when (func = Add) else
		std_logic_vector(unsigned(A) - unsigned(B)) when (func = Sub) or (func = Slt) else
		(A and B) when (func = Ande) else
		(A or B) when (func = Ore) else "00000000000000000000000000000000";
		
		--Falta saber como fazer as flags e passar o res pra C, nao sei se precisa mudar algo
		
end Arch;