LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY comparador IS
GENERIC (N : INTEGER := 8);
PORT (a, b : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
      s : OUT STD_LOGIC);
END comparador;

ARCHITECTURE estrutura OF comparador IS
BEGIN

	s <= '1' WHEN a < b ELSE '0';

END estrutura;