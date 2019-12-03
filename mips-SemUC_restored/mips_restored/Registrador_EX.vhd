
-- Quartus Prime VHDL Template
-- One-bit wide, N-bit long shift register with asynchronous reset

library ieee;
use ieee.std_logic_1164.all;

entity Registrador_EX is

	generic
	(
		NUM_BITS : natural := 3
	);

	port 
	(
				clk	    : in std_logic;
				enable : in std_logic;
				reset  : in std_logic;
				pc	    : in std_logic_vector(31 downto 0); 
				read_d1	  : in std_logic_vector(31 downto 0);   
				read_d2	   : in std_logic_vector(31 downto 0); 
				sig_ext		 : in std_logic_vector(31 downto 0); 
				inst_20		 : in std_logic_vector(4 downto 0); 
				inst_15 		 : in std_logic_vector(4 downto 0); 
				uc_wb			 : in std_logic_vector(1 downto 0);
				uc_m			 : in std_logic_vector(2 downto 0);
				uc_ex			 : in std_logic_vector(4 downto 0);
				pc_out		 : out std_logic_vector(31 downto 0); 
				read_d1_out	    : out std_logic_vector(31 downto 0);  
				read_d2_out	    : out std_logic_vector(31 downto 0); 
				sig_ext_out		 : out std_logic_vector(31 downto 0); 
				inst_20_out		  : out std_logic_vector(4 downto 0);
				inst_15_out 		 : out std_logic_vector(4 downto 0); 
				uc_wb_out			 : out std_logic_vector(1 downto 0);
				uc_m_out			 : out std_logic_vector(2 downto 0);
				uc_ex_out			: out std_logic_vector(4 downto 0)
	);

end entity;

architecture rtl of Registrador_EX is
	signal data_s : std_logic_vector(31 downto 0) := (OTHERS=>'0');
	signal data_s1 : std_logic_vector(31 downto 0) := (OTHERS=>'0');
	signal data_s2 : std_logic_vector(31 downto 0) := (OTHERS=>'0');
	signal data_s3 : std_logic_vector(31 downto 0) := (OTHERS=>'0');
	signal data_s4 : std_logic_vector(4 downto 0) := (OTHERS=>'0');
	signal data_s5 : std_logic_vector(4 downto 0) := (OTHERS=>'0');
	signal data_s6 : std_logic_vector(1 downto 0) := (OTHERS=>'0');
	signal data_s7 : std_logic_vector(2 downto 0) := (OTHERS=>'0');
	signal data_s8 : std_logic_vector(4 downto 0) := (OTHERS=>'0');
begin
	process (clk, reset)
		begin
			-- Reset whenever the reset signal goes low, regardless of the clock
			-- or the clock enable
			if (reset = '0') then
				data_s <= (OTHERS =>'0');
				data_s1 <= (OTHERS =>'0');
				data_s2 <= (OTHERS =>'0');
				data_s3 <= (OTHERS =>'0');
				data_s4 <= (OTHERS =>'0');
				data_s5 <= (OTHERS =>'0');
				data_s6 <= (OTHERS =>'0');
				data_s7 <= (OTHERS =>'0');
				data_s8 <= (OTHERS =>'0');

			-- If not resetting, and the clock signal is enabled on this register, 
			-- update the register output on the clock's rising edge
			elsif (rising_edge(clk)) then
				if (enable = '1') then
					data_s <= pc;
					data_s1 <= read_d1;
					data_s2 <= read_d2;
					data_s3 <= sig_ext;
					data_s4 <= inst_20;
					data_s5 <= inst_15;
					data_s6 <= uc_wb;
					data_s7 <= uc_m;
					data_s8 <= uc_ex;

				end if;
			end if;
		end process;

				pc_out		 <= data_s;
				read_d1_out	 <= data_s1;     
				read_d2_out	 <= data_s2;   
				sig_ext_out	<= data_s3;	
				inst_20_out		 <= data_s4;
				inst_15_out 		 <= data_s5;
				uc_wb_out			<= data_s6;
				uc_m_out			 <= data_s7;
				uc_ex_out	<= data_s8;
end rtl;
