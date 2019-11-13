-- Design de Computadores
-- file: UC_ULA.vhd
-- date: 01/11/2019

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity ULA is
generic
	(
		NUM_BITS : natural := 32
	);

port(	A	:	in std_logic_vector(NUM_BITS-1 downto 0);
		B	:	in std_logic_vector(NUM_BITS-1 downto 0);
		ctr	:	in std_logic_vector(3 downto 0);
		C	:	out std_logic_vector(NUM_BITS-1 downto 0);
		Z   : 	out std_logic
);

end entity;

architecture behv of ULA is
	constant zero : std_logic_vector(NUM_BITS-1 downto 0) := (others => '0');
	signal C_s, soma, sub, or1, and1, slt : std_logic_vector(NUM_BITS-1 downto 0);
	signal overflow_s : std_logic;

begin	
	soma <= std_logic_vector(signed(A) + signed(B));
	sub  <= std_logic_vector(signed(A) + (not (signed(B))) + 1);
	or1  <= A or B;
	and1 <= A and B;				   
	slt  <= (0 => sub(NUM_BITS-1) xor overflow_s, others => '0');

    process(ctr, soma, sub, and1, or1, slt)
    begin
	 case ctr is
	    when "0010" => C_s <= soma;
	    when "0110" => C_s <= sub;
       	when "0000" => C_s <= and1;
	    when "0001" => C_s <= or1;
		when "0111" => C_s <= slt;
	    when others => C_s <= zero;
    end case;
	end process;
	
	Z <= '1' when unsigned(sub) = unsigned(zero) else '0';
	overflow_s <= (not(A(NUM_BITS-1)) and not(B(NUM_BITS-1)) and C_s(NUM_BITS-1)) or (A(NUM_BITS-1) and B(NUM_BITS-1) and not(C_s(NUM_BITS-1)));
	
	C <= C_s;

end architecture;

----------------------------------------------------