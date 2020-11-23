LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY bo IS
PORT (clk : IN STD_LOGIC;
		mA, cA, cB, cResto, mQuociente, cQuociente, cResultado: IN STD_LOGIC;
      entA, entB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		AmenorB: OUT STD_LOGIC;
      resto, resultado: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END bo;

ARCHITECTURE estrutura OF bo IS
	
	COMPONENT mux2para1 IS
   PORT ( a, b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			sel: IN STD_LOGIC;
			y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
   END COMPONENT;
	
	COMPONENT registrador IS
	PORT (clk, carga : IN STD_LOGIC;
		  d : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT subtrator IS
	PORT (a, b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT somador IS
	PORT (a, b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT comparador IS
	PORT (a, b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			s : OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL saidaSubtrator, saidaSomador, saidaMux1, saidaMuxContador: STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL saidaRegA, saidaRegB, saidaQuociente: STD_LOGIC_VECTOR(3 downto 0);

BEGIN

	-------------------------------------------------------------------------------
	
	-- A
	mux1: mux2para1 port map (saidaSubtrator, entA, mA, saidaMux1);
	registradorA: registrador port map (clk, cA, saidaMux1, saidaRegA);
	
	-- B
	registradorB: registrador port map (clk, cB, entB, saidaRegB);
	
	-- comparador A < B
	comparadorAB: comparador port map(saidaRegA, saidaRegB, AmenorB);
	
	-- subtrator A - B
	subtratorAB: subtrator port map (saidaRegA, saidaRegB, saidaSubtrator);
	
	-- resto
	registradorResto: registrador port map (clk, cResto, saidaRegA, resto);
	
	-------------------------------------------------------------------------------
	
	-- contador (soma +1)
	muxContador: mux2para1 port map (saidaSomador, "0000", mQuociente, saidaMuxContador);
	registradorContador: registrador port map (clk, cQuociente, saidaMuxContador, saidaQuociente);
	somaContador: somador port map (saidaQuociente, "0001", saidaSomador);
	
	-- resultado
	registradorResultado: registrador port map (clk, cResultado, saidaQuociente, resultado);
	
	-------------------------------------------------------------------------------

END estrutura;