library ieee;
use ieee.std_logic_1164.all;

entity shift2_imediato is
	generic
    (
        larguraDado : natural  :=    16
    );
    port
    (
        shift_IN : in  std_logic_vector(larguraDado-1 downto 0);
        shift_OUT: out std_logic_vector(larguraDado-1 downto 0)
    );
end entity;

architecture comportamento of shift2_imediato is
begin
    shift_OUT <= shift_IN(larguraDado-3 downto 0) & "00"; 
end architecture;