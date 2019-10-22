library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Utilizado para o Generic

entity somador is
   Generic ( 
		largura_dados : natural := 32;
		incremento : natural := 4
	);
	
	port
	(
		A : in std_logic_vector (largura_dados-1 downto 0);		
		X : out std_logic_vector (largura_dados-1 downto 0)
    );
end entity;

architecture Arc of somador is

-- Soma A + 1 e o resultado é armazenado em X.
-- Faz a operacao com inteiros e retorna o valor em um vector_signal novamente
begin
	X <= std_logic_vector(unsigned(A) + incremento);	
end architecture;