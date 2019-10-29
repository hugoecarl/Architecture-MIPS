library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).

entity data_mem is
    generic
    (
        larguraDados        : natural := 32;
        larguraEndBancoRegs : natural := 5   --Resulta em 2^5=32 posicoes
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk        : in std_logic;
--
        address       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        writedata       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
--
        rread            : in std_logic;
		  wwrite           : in std_logic;
        readdata         : out std_logic_vector((larguraDados -1) downto 0)
    );
end entity;

architecture comportamento of data_mem is

    subtype palavra_t is std_logic_vector((larguraDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

	   function initMemory
        return memoria_t is variable tmp : memoria_t := (others => (others => '0'));
  begin
        -- Inicializa os endereços:
        tmp(9) := x"00000004";
        tmp(10) := x"00000003";
        tmp(11) := x"00000002";
        return tmp;
    end initMemory;

    -- Declaracao dos registradores:
    shared variable registrador : memoria_t  := initMemory;


begin
    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (wwrite = '1') then
                registrador(to_integer(unsigned(address))) := writedata;
            end if;
        end if;
		  if (rising_edge(clk)) then
            if (rread = '1') then
                registrador(to_integer(unsigned(address))) := readdata;
            end if;
        end if;
    end process;

    -- IF endereco = 0 : retorna ZERO
     process(all) is
     begin
         if (unsigned(address) = 0) then
            saidaA <= (others => '0');
         else
            saidaA <= registrador(to_integer(unsigned(address)));
         end if;
     end process;
end architecture;