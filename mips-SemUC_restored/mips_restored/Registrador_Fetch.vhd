
-- Quartus Prime VHDL Template
-- One-bit wide, N-bit long shift register with asynchronous reset

library ieee;
use ieee.std_logic_1164.all;

entity Registrador_Fetch is

	generic
	(
		NUM_BITS : natural := 3
	);

	port 
	(
		clk	    : in std_logic;
		enable	: in std_logic;
		reset   : in std_logic;
		data_in	    : in std_logic_vector(31 downto 0);
		data_in2	    : in std_logic_vector(31 downto 0);
		data_out	: out std_logic_vector(31 downto 0);
		data_out2	: out std_logic_vector(31 downto 0)
	);

end entity;

architecture rtl of Registrador_Fetch is
	signal data_s : std_logic_vector(31 downto 0) := (OTHERS=>'0');
	signal data_s1 : std_logic_vector(31 downto 0) := (OTHERS=>'0');begin
	process (clk, reset)
		begin
			-- Reset whenever the reset signal goes low, regardless of the clock
			-- or the clock enable
			if (reset = '0') then
				data_s <= (OTHERS =>'0');
				data_s1 <= (OTHERS =>'0');
			-- If not resetting, and the clock signal is enabled on this register, 
			-- update the register output on the clock's rising edge
			elsif (rising_edge(clk)) then
				if (enable = '1') then
					data_s <= data_in;
					data_s1 <= data_in2;
				end if;
			end if;
		end process;

		data_out <= data_s;
		data_out2 <= data_s1;

end rtl;
