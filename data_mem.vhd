library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity data_mem is
   generic (
         dataWidth: natural := 32;
         addrWidth: natural := 32;
			memoryAddrWidth:  natural := 8
    );
    port
    (
        addr     : in std_logic_vector(addrWidth-1 downto 0);
        we       : in std_logic := '1';
        clk      : in std_logic;
        dado_in  : in std_logic_vector(dataWidth-1 downto 0);
        dado_out : out std_logic_vector(dataWidth-1 downto 0)
    );
end entity;

architecture rtl of data_mem is
    -- Build a 2-D array type for the RAM
    subtype word_t is std_logic_vector(dataWidth-1 downto 0);
    type memory_t is array((2**memoryAddrWidth-1) downto 0) of word_t;
	 
	 signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

    -- Declare the RAM signal.
    signal ram : memory_t;
begin
	 EnderecoLocal <= addr(memoryAddrWidth+1 downto 2);
	 process(clk)
    begin
        
		  if(rising_edge(clk)) then
            if(we = '1') then
                ram(to_integer(unsigned(EnderecoLocal))) <= dado_in;
            end if;
        end if;
    end process;
    dado_out <= ram(to_integer(unsigned(EnderecoLocal)));
end architecture;