
-- A library clause declares a name as a library.  It 
-- does not create the library; it simply forward declares 
-- it. 
library ieee;

-- Commonly imported packages:

	-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
	use ieee.std_logic_1164.all;
	
entity mux2 is
generic (DATA_WIDTH : natural := 32); 
	port
	(
		-- Input ports
		A	: in std_logic_vector(DATA_WIDTH-1 downto 0);
		B	: in  std_logic_vector(DATA_WIDTH-1 downto 0);
		Sel : in std_logic;

		-- Output ports
		Y	: out std_logic_vector(DATA_WIDTH-1 downto 0)
	);
end entity;

architecture muxSelect of mux2 is

begin

	Y <= A when Sel = '0' else B;

end architecture;

