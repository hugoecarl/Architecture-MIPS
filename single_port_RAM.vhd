library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity single_port_RAM is
    generic (
        dataWidth: natural := 32;
        addrWidth: natural := 32;
        memoryAddrWidth:  natural := 6 );   -- 64 posicoes de 32 bits cada
    port
    (
        we,re       : IN std_logic := '1';
        clk         : IN std_logic;
        Endereco    : IN  STD_LOGIC_VECTOR (addrWidth-1 DOWNTO 0);
        dado_write  : IN std_logic_vector(dataWidth-1 downto 0);
        dado_read   : OUT std_logic_vector(dataWidth-1 downto 0)
    );
end entity;

architecture rtl of single_port_RAM is
    type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 DOWNTO 0);

    signal ram : blocoMemoria := (others => (others => '0'));

    -- Utiliza uma quantidade menor de endereços locais:
    signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);
begin
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(we = '1') then
                ram(to_integer(unsigned(EnderecoLocal))) <= dado_write;
            end if;
        end if;
    end process;
    EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
    dado_read <= ram (to_integer(unsigned(EnderecoLocal)));
end architecture;