library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;  -- para tratamento de arquivos e texto


entity testbench_master is
GENERIC (N : INTEGER := 8);
end testbench_master;

architecture tb of testbench_master is

	COMPONENT divisao IS
	GENERIC (N : INTEGER := 8);
	PORT (Reset, clk, inicio : IN STD_LOGIC;
			entA, entB: IN std_logic_vector(N-1 downto 0);
			pronto : OUT STD_LOGIC;
			resto, resultado: OUT std_logic_vector(N-1 downto 0));
	END COMPONENT;

	 constant clk_period: time := 20 ns;
    SIGNAL Reset, clk, inicio: std_logic;
	 SIGNAL entA, entB: std_logic_vector(N-1 downto 0);
	 SIGNAL pronto: std_logic;
	 SIGNAL resto, resultado: std_logic_vector(N-1 downto 0);
	 
begin
    -- conectando os sinais do test bench aos sinais
	 D1: divisao port map (Reset, clk, inicio, entA, entB, pronto, resto, resultado);
		
	 Reset <= '1', '0' after 10 ns;
	 inicio <= '1' after 20 ns, '0' after 40 ns;
	--  entA <= "10010000"; --144
	--  entB <= "00001100"; --12
	 
	 
	 -- processo gerador de clock
	 tb1 : process
        begin
				clk <= '1';
            wait for clk_period/2; -- 50% do periodo pra cada nivel
				clk <= '0';
				wait for clk_period/2;
        end process;

     -- processo de leitura das entradas e escrita saidas
     file_io: process
          variable read_col_from_input_buf : line; -- buffers de entrada e saida
      file input_buf : text;  -- text is keyword
          variable write_col_to_output_buf : line; 
      file output_buf : text;  -- text is keyword

          variable val_A, val_B: std_logic_vector(N-1 downto 0); -- entradas A e B do arquivo
          variable val_SPACE : character;  -- para espacos
      
          begin
              file_open(input_buf, "C:\Users\antho\Desktop\Anthony\UFSC\2020.1\SD\Prática\Trabalho_Divisao\entradas.txt",  read_mode); 
              file_open(output_buf, "C:\Users\antho\Desktop\Anthony\UFSC\2020.1\SD\Prática\Trabalho_Divisao\saidas_tb.txt",  write_mode); 

        -- wait until rst = '0'; -- espera reset desligar
        wait until inicio = '1'; -- espera inicio ligar
          
              while not endfile(input_buf) loop
                  readline(input_buf, read_col_from_input_buf);
                  read(read_col_from_input_buf, val_A);
                  read(read_col_from_input_buf, val_SPACE);           -- read in the space character
                  read(read_col_from_input_buf, val_B);

                  -- Pass the read values to signals
                  entA <= val_A;
                  entB <= val_B;

                  wait for clk_period;
							write(write_col_to_output_buf, resultado);
							write(write_col_to_output_buf, val_SPACE);
							write(write_col_to_output_buf, resto);
							writeline(output_buf, write_col_to_output_buf);    -- 

              end loop;

        write(write_col_to_output_buf, string'("SIMULACAO CONCLUIDA"));
              writeline(output_buf, write_col_to_output_buf);    -- 

              file_close(input_buf);             
              file_close(output_buf);

              wait;
          end process;
end tb;