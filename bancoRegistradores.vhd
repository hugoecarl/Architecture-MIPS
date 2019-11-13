library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).
entity bancoRegistradores is
    generic
    (
        larguraDados        : natural := 32;
        larguraEndBancoRegs : natural := 5
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk        : in std_logic;
--
        enderecoA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoB       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoC   	: in std_logic_vector((larguraEndBancoRegs-1) downto 0);
--
        dadoEscritaC    : in std_logic_vector((larguraDados-1) downto 0);
--
        escreveC      	: in std_logic;
--
        saidaA          : out std_logic_vector((larguraDados -1) downto 0);
        saidaB          : out std_logic_vector((larguraDados -1) downto 0)
    );
end entity;

architecture rtl of bancoRegistradores is
	subtype register_t is std_logic_vector((larguraDados-1) downto 0);
	type reg_bank_t is array(0 TO 2**larguraEndBancoRegs-1) of register_t;
	
	function initMemory
        return reg_bank_t is variable tmp : reg_bank_t := (others => (others => '0'));
	  begin
		-- Inicializa os endereços:
		tmp(0) := x"00000000";
		tmp(1) := x"00000000";
		tmp(2) := x"00000000";
		tmp(3) := x"00000000";
		tmp(4) := x"00000000";
		tmp(5) := x"00000000";
		tmp(6) := x"00000006";
		tmp(7) := x"0000000A";
		tmp(8) := x"00000009";
		tmp(9) := x"0000000A";
		tmp(10) := x"0000000B";
		tmp(11) := x"0000000C";
		tmp(12) := x"0000000D";
		tmp(13) := x"0000000E";
		return tmp;
	end initMemory;

   -- A inicializacao do banco, usada somente para os testes, deve ser removida no projeto final!
	signal bancoReg : reg_bank_t := initMemory;
begin
	process (clk)
	begin
		if (rising_edge(clk)) then
			if (escreveC = '1') then
				bancoReg(to_integer(unsigned(enderecoC))) <= dadoEscritaC;
				
			end if;
		end if;
	end process;
    -- IF endereco = 0 : retorna ZERO
  process(all) is
  begin
		if (unsigned(enderecoA) = 0) then
			saidaA <= (others => '0');
		else
			saidaA <= bancoReg(to_integer(unsigned(enderecoA)));
		end if;
		if (unsigned(enderecoB) = 0) then
			saidaB <= (others => '0');
		else
			saidaB <= bancoReg(to_integer(unsigned(enderecoB)));
	  end if;
  end process;
end rtl;