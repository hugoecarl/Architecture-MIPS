library IEEE;
use ieee.std_logic_1164.all;

entity PC is
	generic
    (
        addr : natural := 8
    );
        port
        (
            -- Input ports
            pc_i : in  std_logic_vector(addr-1 downto 0);
            clk : in  std_logic;
            -- Output ports
            pc_o : out std_logic_vector(addr-1 downto 0)
        );
    end entity PC;

-- Update the register output on the clock's rising edge
architecture pc1 of PC is
begin
	process(clk) is
		begin
			if (rising_edge(clk)) then
				pc_o <= pc_i;
			end if;
	end process;
end architecture;