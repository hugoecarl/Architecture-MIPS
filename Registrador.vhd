
-- Quartus Prime VHDL Template
-- One-bit wide, N-bit long shift register with asynchronous reset

library ieee;
use ieee.std_logic_1164.all;

entity Registrador is

	generic
	(
		NUM_BITS : natural := 3
	);

	port 
	(
		clk	    : in std_logic;
		enable	: in std_logic;
		reset   : in std_logic;
		data_in	    : in std_logic_vector(NUM_BITS - 1 downto 0);
		data_out	: out std_logic_vector(NUM_BITS - 1 downto 0)
	);

end entity;

architecture rtl of Registrador is
	signal data_s : std_logic_vector(NUM_BITS - 1 downto 0) := (OTHERS=>'0');
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
