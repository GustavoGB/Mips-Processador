
-- Quartus Prime VHDL Template
-- One-bit wide, N-bit long shift register with asynchronous reset

library ieee;
use ieee.std_logic_1164.all;

entity Registrador_MEM is

	generic
	(
		NUM_BITS : natural := 3
	);

	port 
	(
		clk	    : in std_logic;
		enable	: in std_logic;
		reset   : in std_logic;
		saida_mux_rd_rt : in std_logic_vector(4 downto 0); 
		saidaULA	   : in std_logic_vector(31 downto 0); 
		Z			: in std_logic;
		read_d2  : in std_logic_vector(31 downto 0);
		uc_wb			 : in std_logic_vector(1 downto 0);
		uc_m			 : in std_logic_vector(2 downto 0);
		PC_mais_4_mais_imediato : in std_logic_vector(31 downto 0); 
		uc_wb_out			: out std_logic_vector(1 downto 0);
		uc_m_out			 : out std_logic_vector(2 downto 0);
		PC_mais_4_mais_imediato_out : out std_logic_vector(31 downto 0); 
		Z_out : out std_logic;
		read_d2_out  : out std_logic_vector(31 downto 0);
		saidaULA_out : out std_logic_vector(31 downto 0); 
		saida_mux_rd_rt_out : out std_logic_vector(4 downto 0) 
	);

end entity;

architecture rtl of Registrador_MEM is
	signal data_s, data_s,data_s,data_s,data_s,data_s : std_logic_vector(NUM_BITS - 1 downto 0) := (OTHERS=>'0');
begin
	process (clk, reset)
		begin
			-- Reset whenever the reset signal goes low, regardless of the clock
			-- or the clock enable
			if (reset = '0') then
				data_s <= (OTHERS =>'0');
			-- If not resetting, and the clock signal is enabled on this register, 
			-- update the register output on the clock's rising edge
			elsif (rising_edge(clk)) then
				if (enable = '1') then
					data_s <= data_in;
				end if;
			end if;
		end process;

		data_out <= data_s;

end rtl;
