LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY divisao IS
PORT (Reset, clk, inicio : IN STD_LOGIC;
		entA, entB: IN std_logic_vector(3 downto 0);
      pronto : OUT STD_LOGIC;
		resto, resultado: OUT std_logic_vector(3 downto 0));
END divisao;

ARCHITECTURE bhv OF divisao IS

	COMPONENT bo IS
	PORT (clk : IN STD_LOGIC;
			mA, cA, cB, cResto, mQuociente, cQuociente, cResultado: IN STD_LOGIC;
			entA, entB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			AmenorB: OUT STD_LOGIC;
			resto, resultado: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT bc IS
	PORT (Reset, clk, inicio: IN STD_LOGIC;
			AmenorB: IN STD_LOGIC;
			pronto: OUT STD_LOGIC;
			mA, cA, cB, cResto, cQuociente, mQuociente, cResultado: OUT STD_LOGIC );
	END COMPONENT;
	
	SIGNAL AmenorB: STD_LOGIC;
	SIGNAL mA, cA, cB, cResto, cQuociente, mQuociente, cResultado: STD_LOGIC;

BEGIN

	BOportMap: bo port map (clk, mA, cA, cB, cResto, mQuociente, cQuociente, cResultado, entA, entB, AmenorB, resto, resultado);
	BCportMap: bc port map (Reset, clk, inicio, AmenorB, pronto, mA, cA, cB, cResto, cQuociente, mQuociente, cResultado);
	
END bhv;