LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bc IS
PORT (Reset, clk, inicio: IN STD_LOGIC;
      AmenorB: IN STD_LOGIC;
      pronto: OUT STD_LOGIC;
      mA, cA, cB, cResto, cQuociente, mQuociente, cResultado: OUT STD_LOGIC );
END bc;

ARCHITECTURE estrutura OF bc IS
	TYPE state_type IS (S0, S1, S2, S3);
	SIGNAL state: state_type;
BEGIN

	-- lógica próximo estado
	PROCESS (clk, Reset, AmenorB)
		BEGIN
			if(Reset = '1') THEN
				state <= S0 ;
			ELSIF (clk'EVENT AND clk = '1') THEN
				CASE state IS
					WHEN S0 =>
						IF (inicio = '1') THEN
							state <= S1;
						ELSE
							state <= S0;
						END IF;
					
					WHEN S1 =>
						state <= S2;
					
					WHEN S2 =>
						IF (not AmenorB = '1') THEN
							state <= S3;
						ELSE
							state <= S0;
						END IF;
					
					WHEN S3 =>
						--state <= S2;
						
						IF (not AmenorB = '1') THEN
							state <= S2;
						ELSE
							state <= S0;
						END IF;
				END CASE;
			END IF;
		END PROCESS;
		
		
		-- lógica de saida
	PROCESS (state, AmenorB)
	BEGIN
		CASE state IS
			WHEN S0 =>
				pronto <= '1';
				mA <= '0';
				cA <= '0';
				cB <= '0';
				cResto <= '0';
				cQuociente <= '0';
				mQuociente <= '0';
				cResultado <= '0';
				
			WHEN S1 =>
				pronto <= '0';
				cResto <= '0';
				mA <= '1';
				cA <= '1';
				cB <= '1';
				cQuociente <= '1';
				mQuociente <= '1';
				
			WHEN S2 =>
				IF (not AmenorB = '1') THEN
					cResto <= '0';
					cResultado <= '0';
				ELSE
					cResto <= '1';
					cResultado <= '1';
				END IF;
				
			WHEN S3 =>
				IF (not AmenorB = '1') THEN
					mA <= '0';
					cA <= '1';
					mQuociente <= '0';
					cQuociente <= '1';
				ELSE
					cResto <= '1';
					cResultado <= '1';
				END IF;
				
		END CASE;
	END PROCESS;
	
END estrutura;