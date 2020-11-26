library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity divisao_tb is
GENERIC (N : INTEGER := 8);
end divisao_tb;

architecture tb of divisao_tb is

	COMPONENT divisao IS
	GENERIC (N : INTEGER := 8);
	PORT (Reset, clk, inicio : IN STD_LOGIC;
			entA, entB: IN std_logic_vector(N-1 downto 0);
			pronto : OUT STD_LOGIC;
			resto, resultado: OUT std_logic_vector(N-1 downto 0));
	END COMPONENT;

    SIGNAL Reset, clk, inicio: std_logic;
	 SIGNAL entA, entB: std_logic_vector(N-1 downto 0);
	 SIGNAL pronto: std_logic;
	 SIGNAL resto, resultado: std_logic_vector(N-1 downto 0);
	 
begin
    -- conectando os sinais do test bench aos sinais
	 D1: divisao port map (Reset, clk, inicio, entA, entB, pronto, resto, resultado);
		
	 Reset <= '1', '0' after 10 ns;
	 inicio <= '1' after 20 ns, '0' after 40 ns;
	 entA <= "10010000"; --144
	 entB <= "00001100"; --12
	 
	 
	 -- processo gerador de clock
	 tb1 : process
        constant periodo: time := 20 ns; -- periodo do clock
        begin
				clk <= '1';
            wait for periodo/2; -- 50% do periodo pra cada nivel
				clk <= '0';
				wait for periodo/2;
        end process;
end tb;