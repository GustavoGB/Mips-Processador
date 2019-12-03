	library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FlipFlop is
    generic (
        larguraDados : natural := 1
    );
    port (
      data_out : out std_logic;
      clk, reset : in std_logic
        );
end entity;

architecture arch of FlipFlop is
begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process (clk, reset)
		begin
			-- Reset whenever the reset signal goes low, regardless of the clock
			if (reset = '0') then
				data_out <= '0';
			-- If not resetting, update the register output on the clock's rising edge
			elsif (rising_edge(clk)) then
				data_out <= '1';
			end if;
	end process;
	 
end arch;


