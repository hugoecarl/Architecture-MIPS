library ieee;
use ieee.std_logic_1164.all;

entity shift2 is
	generic
    (
        larguraDado : natural  :=    26
    );
    port
    (
        shift_IN : in  std_logic_vector(larguraDado-1 downto 0);
        shift_OUT: out std_logic_vector(larguraDado+1 downto 0)
    );
end entity;

architecture comportamento of shift2 is
begin
    shift_OUT <= shift_IN(larguraDado-1 downto 0) & "00";  
end architecture;