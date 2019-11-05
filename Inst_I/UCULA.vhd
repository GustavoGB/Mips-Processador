-- does not create the library; it simply forward declares 
-- it. 
library ieee;

-- Use clauses import declarations into the current scope.	
-- If more than one use clause imports the same name into the
-- the same scope, none of the names are imported.

-- Import all the declarations in a package
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UCULA is

	port
	(
		func: in std_logic_vector (5 downto 0);
		opALU1: in std_logic;
		opALU2: in std_logic;
		ULA_func : out std_logic_vector (2 downto 0)
	);
end UCULA;

architecture Arch of UCULA is
signal op : std_logic_vector(2 downto 0);

begin

	op <= "010" when (opALU1 ='0') and (opALU2 = '0') else --SOMA, para instrucoes load  que pegam o endereço somado com o imm ?
		"110" when (opALU2 = '1') else
		"010" when (opALU1 = '1') and (func(3 downto 0) = "0000") else -- SOMA 
		"110" when (opALU1 = '1') and (func(3 downto 0) = "0010") else -- SUB
		"000" when (opALU1 = '1') and (func(3 downto 0) = "0100") else -- AND
		"001" when (opALU1 = '1') and (func(3 downto 0) = "0101") else -- OR
		"111" when (opALU1 = '1') and (func(3 downto 0) = "1010") else "011"; -- que não é usada
		-- SLT

end Arch;