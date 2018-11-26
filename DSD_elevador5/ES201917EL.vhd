library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ES201917EL is
	port (
				--------------------------
				--	Puertos del elevador	--
				--------------------------
				
				reloj, boton_PB, boton_P1, boton_P2, boton_P3, sensor_PB, sensor_P1, sensor_P2, sensor_P3: in std_logic;
				--Q: out std_logic_vector (3 downto 0);
				--SEG : out std_logic_vector (6 downto 0);
				SUBIR, BAJAR, buzzer, l_PB, l_P1, l_P2, l_P3 : out std_logic;
				
				--------------------------
				-- Puertos de la matriz	--
				--------------------------
				Q1: inout std_logic_vector(2 downto 0);  --	contador al 8
				Q2: inout std_logic_vector(2  downto 0); --	contador al 8
				Q3: inout std_logic_vector(10 downto 0); --	contador al 2048
				
				REN : out std_logic_vector (7 downto 0);
				COL : out std_logic_vector (7 downto 0)
		);
end ES201917EL ;

architecture comportamiento of ES201917EL is
	
	--------------------------
	--	Señales del elevador	--
	--------------------------
	type estados is (DETECTA_PISO,PB, BPB, DPB, P1, SP1, BP1, DP1, P2, SP2, BP2, DP2, P3, SP3, DP3);
	
	signal edo_pres, edo_fut: estados;
	signal divi : std_logic_vector(23 downto 0):="000000000000000000000000"; --Reloj principal
	---------------------
	-- Notas Musicales --
	---------------------
	signal A: std_logic_vector(13 downto 0):="00000000000000";
	signal B: std_logic_vector(14 downto 0):="000000000000000";
	signal D: std_logic_vector(15 downto 0):="0000000000000000";
	signal C: std_logic_vector(16 downto 0):="00000000000000000"; 
	signal clk, clk_b, B_ena, a_13, b_14, d_15, c_16: std_logic;
	
	signal cont_buz: std_logic_vector(2 downto 0):="000";
	
	--------------------------
	-- Señales de la matriz --
	--------------------------
	signal divi_mat : std_logic_vector(15 downto 0):="0000000000000000"; --Frecuencia de 1525.879 Hz
	signal clk_mat: std_logic;
	
	
begin

-----------------------------------------------------------------
-- Proceso de divisor del reloj controlador y tonos del buzzer --
-----------------------------------------------------------------
		divisor: process (reloj) 
		begin
			if(reloj'event and reloj='1')then
			divi <=divi + 1; 	--Reloj
			divi_mat <= divi_mat + 1;
			A <= A + 1;
			B <= B + 1;
			C <= C + 1;
			D <= D + 1;
			end if;
		end process divisor;
		
		contador_buz: process(clk_b)
		begin
			if(clk_b'event and clk_b='1') then
				cont_buz <= cont_buz + 1;
			end if;
		end process contador_buz;
		
		a_13 <= A(13); -- Tono A
		b_14 <= B(14);
		d_15 <= D(15);
		c_16 <= C(16);	-- Tono C
		clk_mat <= divi_mat(10);	-- Reloj controlador de la matriz
		clk_b <= divi (19);
		clk <= divi(23); --AQUI


----------------------
-- Cambio de estado --
----------------------		
		p_reloj: process(clk)
		begin
			if(clk'event and clk='1') then
				edo_pres <= edo_fut;
				end if;
		end process p_reloj;
		
----------------------------
-- Controlador del buzzer --
----------------------------
		p_buzzer: process(B_ena)
			begin
				if(B_ena = '1') then
					case cont_buz is

						when	"000"	=>	buzzer	<=	a_13	;
						when	"001"	=>	buzzer	<=	'0'	;
						when	"010"	=>	buzzer	<=	b_14	;
						when	"011"	=>	buzzer	<=	'0'	;
						when	"100"	=>	buzzer	<=	d_15	;
						when	"101"	=>	buzzer	<=	'0'	;
						when	"110"	=>	buzzer	<=	c_16	;
						when	"111"	=>	buzzer	<=	'0'	;
 
					end case;
					else
					buzzer <= '0';
				end if;
			end process p_buzzer;

	-----------------
	--	Carta ASM	--
	-----------------
	carta_asm: process(boton_PB, boton_P1, boton_P2, boton_P3, sensor_PB, sensor_P1, sensor_P2, sensor_P3)
			begin
				case edo_pres is
										
					when DETECTA_PISO =>
				--	Q <= "1111";
					--SEG <= "0111000"; --F
					B_ena <= '0';
					SUBIR <= '0';
					BAJAR <= '0';
					l_PB <= clk_b;
					l_P1 <= clk_b;
					l_P2 <= clk_b;
					l_P3 <= clk_b;
					
						if(sensor_PB= '1') then
							edo_fut <= PB;
						elsif(sensor_P1= '1') then
							edo_fut <= P1;
						elsif(sensor_P2= '1') then
							edo_fut <= P2;
						elsif(sensor_P3= '1') then
							edo_fut <= P3;
						else
							edo_fut <= DETECTA_PISO;
						end if;
						
					when PB => -- PLANTA BAJA
					--	Q <= "0000";
						--SEG <= "0000001";
						SUBIR <= '0';
						BAJAR <= '0';
						B_ena <= '0';
						l_PB <= '1';
						l_P1 <= '0';
						l_P2 <= '0';
						l_P3 <= '0';
						
						if(boton_P1 = '1') then
							edo_fut <= SP1;
						elsif(boton_P2 = '1') then
							edo_fut <= SP2;
						elsif(boton_P3 = '1') then
							edo_fut <= SP3;
						else
							edo_fut <= PB;
						end if;
						
					when BPB => 
					--	Q <= "0001";
						--SEG <= "1001111";
						SUBIR <= '0';
						BAJAR <= '1';
						l_PB <= clk_b;
						l_P1 <= '0';
						l_P2 <= '0';
						l_P3 <= '0';
						
						if(sensor_PB = '1') then
							edo_fut <= DPB;
						else
							edo_fut <= BPB;
						end if;
						
					when DPB =>	
					--	Q <= "0010";
						--SEG <= "0010010";
						SUBIR <= '0';
						BAJAR <= '0';
						B_ena <= '1';
						edo_fut <= PB;
						l_PB <= '1';
						l_P1 <= '0';
						l_P2 <= '0';
						l_P3 <= '0';
						
					when P1 => -- PISO 1
					--	Q <= "0011";
						--SEG <= "0000110";
						B_ena <= '0';
						l_PB <= '0';
						l_P1 <= '1';
						l_P2 <= '0';
						l_P3 <= '0';
						
						if(boton_PB = '1') then
							edo_fut <= BPB;
						elsif(boton_P2 = '1') then
							edo_fut <= SP2;
						elsif(boton_P3 = '1') then
							edo_fut <= SP3;
						else
							edo_fut <= P1;
						end if;
						
					when BP1 =>
					--	Q <= "0100";
						--SEG <= "1001100";
						SUBIR <= '0';
						BAJAR <= '1';
						l_PB <= '0';
						l_P1 <= clk_b;
						l_P2 <= '0';
						l_P3 <= '0';
						
						if(sensor_P1 = '1') then
							edo_fut <= DP1;
						else
							edo_fut <= BP1;
						end if;
						
					when SP1 => 
					--	Q <= "0101";
						--SEG <= "0100100";
						SUBIR <= '1';
						BAJAR <= '0';
						l_PB <= '0';
						l_P1 <= clk_b;
						l_P2 <= '0';
						l_P3 <= '0';
						
						if(sensor_P1 = '1') then
							edo_fut <= DP1;
						else
							edo_fut <= SP1;
						end if;
						
					when DP1 =>	
					--	Q <= "0110";
						--SEG <= "0100000";
						SUBIR <= '0';
						BAJAR <= '0';
						B_ena <= '1';
						l_PB <= '0';
						l_P1 <= '1';
						l_P2 <= '0';
						l_P3 <= '0';
						edo_fut <= P1;
					
					when P2 => -- PISO 2
					--	Q <= "0111";
						--SEG <= "0001111";
						B_ena <= '0';
						l_PB <= '0';
						l_P1 <= '0';
						l_P2 <= clk_b;
						l_P3 <= '0';
						
						if(boton_PB = '1') then
							edo_fut <= BPB;
						elsif(boton_P1 = '1') then
							edo_fut <= BP1;
						elsif(boton_P3 = '1') then
							edo_fut <= SP3;
						else
							edo_fut <= P2;
						end if;
						
					when BP2 => 
					--	Q <= "1000";
						--SEG <= "0000000";
						SUBIR <= '0';
						BAJAR <= '1';
						l_PB <= '0';
						l_P1 <= '0';
						l_P2 <= clk_b;
						l_P3 <= '0';
						
						if(sensor_P2 = '1') then
							edo_fut <= DP2;
						else
							edo_fut <= BP2;
						end if;
						
					when SP2 => 
					--	Q <= "1001";
						--SEG <= "0000100";
						l_PB <= '0';
						l_P1 <= '0';
						l_P2 <= clk_b;
						l_P3 <= '0';
						
						if(sensor_P2 = '1') then
							edo_fut <= DP2;
						else
							SUBIR <= '1';
							BAJAR <= '0';
							edo_fut <= SP2;
						end if;
						
					when DP2 =>	
					--	Q <= "1010";
						--SEG <= "0001000";
						SUBIR <= '0';
						BAJAR <= '0';
						B_ena <= '1';
						l_PB <= '0';
						l_P1 <= '0';
						l_P2 <= '1';
						l_P3 <= '0';
						
						edo_fut <= P2;
						
					when P3 => -- PISO 3
					--	Q <= "1011";
						--SEG <= "1100000";
						B_ena <= '0';
						l_PB <= '0';
						l_P1 <= '0';
						l_P2 <= '0';
						l_P3 <= '1';
						
						if(boton_PB = '1') then
							edo_fut <= BPB;
						elsif(boton_P1 = '1') then
							edo_fut <= BP1;
						elsif(boton_P2 = '1') then
							edo_fut <= BP2;
						else
							edo_fut <= P3;
						end if;
						
					when SP3 => 
					--	Q <= "1100";
						--SEG <= "1110010"; --C
						SUBIR <= '1';
						BAJAR <= '0';
						l_PB <= '0';
						l_P1 <= '0';
						l_P2 <= '0';
						l_P3 <= clk_b;
						
						if(sensor_P3 = '1') then
							edo_fut <= DP3;
						else
							edo_fut <= SP3;
						end if;
						
					when DP3 =>	
					--Q <= "1101";
					--SEG <= "1000010";
						SUBIR <= '0';
						BAJAR <= '0';
						B_ena <= '1';
						l_PB <= '0';
						l_P1 <= '0';
						l_P2 <= '0';
						l_P3 <= '1';
						edo_fut <= P3;
				end case;
			end process carta_asm;			
-----------------------------
-- Procesos para la matriz	--
-----------------------------	
		contadores: process(clk_mat) --Proceso de contador
				begin
					if(clk_mat'event and clk_mat='1')then --Si el pulso de reloj es 1
						if(((Q1="111") and (Q2="111")and (Q3="11111111111")))then --Reset
							Q1<="000";
							Q2<="000";
							Q3<="00000000000";
						else
							if(Q2="111" and Q3="11111111111")then -- Reseteo de Q2 y Q3, incremento de Q1
								Q1<=Q1+1; --aqui
								Q2<="000";
								Q3<="00000000000";
							else
								Q3<=Q3+1;
								Q2<=Q2+1;
							end if;
						end if;
					end if;	
				end process contadores;
			
		matriz1088as: process(edo_pres, Q1,Q2) -- decodificador con relojes Q1 y Q2
		begin
		if ((edo_pres = SP1) or (edo_pres = SP2) or (edo_pres = SP3)) then
			case Q1 	is
				when "000" =>  
					case Q2 is	
						when	"000"	=> COL <=	"00000000"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00001000"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00011100"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00111110"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"01111111"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00011100"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00011100"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00011100"	;	REN <=	"11111110"	;
						
						when 	others=> COL <= 	"00000000"	;	REN <=	"00000000"	;
					
					end case;
					
				when "001" => 
					case Q2 is			  
						when	"000"	=> COL <=	"00001000"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00011100"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00111110"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"01111111"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00011100"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00011100"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00011100"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00000000"	;	REN <=	"11111110"	;
						
						when 	others=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;		
					
				when "010" =>  
									
					case Q2 is 				
						when	"000"	=> COL <=	"00011100"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00111110"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"01111111"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00011100"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00011100"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00011100"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00000000"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00001000"	;	REN <=	"11111110"	;
						
						when 	others=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "011" => 
					case Q2 is			  
						when	"000"	=> COL <=	"00111110"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"01111111"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00011100"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00011100"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00011100"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00000000"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00001000"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00011100"	;	REN <=	"11111110"	;

						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "100" => 
					case Q2 is		  
						when	"000"	=> COL <=	"01111111"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00011100"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00011100"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00011100"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00000000"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00001000"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00011100"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00111110"	;	REN <=	"11111110"	;

						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "101" => 
					case Q2 is			  
						when	"000"	=> COL <=	"00011100"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00011100"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00011100"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00000000"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00001000"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00011100"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00111110"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"01111111"	;	REN <=	"11111110"	;
						
						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "110" => 
					case Q2 is			  
						when	"000"	=> COL <=	"00011100"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00011100"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00000000"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00001000"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00011100"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00111110"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"01111111"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00011100"	;	REN <=	"11111110"	;
						
						when 	others => COL <=	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "111" => 
					case Q2 is			  
						when	"000"	=> COL <=	"00011100"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00000000"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00001000"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00011100"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00111110"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"01111111"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00011100"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00011100"	;	REN <=	"11111110"	;
						
						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
			end case;
		elsif ((edo_pres = BPB) or (edo_pres = BP1) or (edo_pres = BP2))	then 
			
			case Q1 	is
				when "000" =>  
					case Q2 is	
							when	"000"	=> COL <=	"00000000"	;	REN <=	"01111111"	;
							when	"001"	=> COL <=	"00011100"	;	REN <=	"10111111"	;
							when	"010"	=> COL <=	"00011100"	;	REN <=	"11011111"	;
							when	"011"	=> COL <=	"00011100"	;	REN <=	"11101111"	;
							when	"100"	=> COL <=	"01111111"	;	REN <=	"11110111"	;
							when	"101"	=> COL <=	"00111110"	;	REN <=	"11111011"	;
							when	"110"	=> COL <=	"00011100"	;	REN <=	"11111101"	;
							when	"111"	=> COL <=	"00001000"	;	REN <=	"11111110"	;
						
						when 	others=> COL <= 	"00000000"	;	REN <=	"00000000"	;
					
					end case;
					
				when "001" => 
					case Q2 is			  
						when	"000"	=> COL <=	"00001000"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00000000"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00011100"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00011100"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00011100"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"01111111"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00111110"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00011100"	;	REN <=	"11111110"	;
						
						when 	others=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;		
					
				when "010" =>  
									
					case Q2 is 				
						when	"000"	=> COL <=	"00011100"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00001000"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00000000"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00011100"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00011100"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00011100"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"01111111"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00111110"	;	REN <=	"11111110"	;
						
						when 	others=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "011" => 
					case Q2 is			  
						when	"000"	=> COL <=	"00111110"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00011100"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00001000"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00000000"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00011100"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00011100"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00011100"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"01111111"	;	REN <=	"11111110"	;
						
						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "100" => 
					case Q2 is		  
						when	"000"	=> COL <=	"01111111"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00111110"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00011100"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00001000"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00000000"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00011100"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00011100"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00011100"	;	REN <=	"11111110"	;
						
						when 	others=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "101" => 
					case Q2 is			  
						when	"000"	=> COL <=	"00011100"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"01111111"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00111110"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00011100"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00001000"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00000000"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00011100"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00011100"	;	REN <=	"11111110"	;
						
						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "110" => 
					case Q2 is			  
						when	"000"	=> COL <=	"00011100"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00011100"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"01111111"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00111110"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00011100"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00001000"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00000000"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00011100"	;	REN <=	"11111110"	;
						
						when 	others=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "111" => 
					case Q2 is			  
						when	"000"	=> COL <=	"00011100"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00011100"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00011100"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"01111111"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00111110"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00011100"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00001000"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00000000"	;	REN <=	"11111110"	;
						when 	others=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
			end case;
			
		elsif (edo_pres = PB) then
			case Q2 is			  
				
				when	"000"	=> COL <=	"11001000"	;	REN <=	"01111111"	;
				when	"001"	=> COL <=	"10101000"	;	REN <=	"10111111"	;
				when	"010"	=> COL <=	"10101000"	;	REN <=	"11011111"	;
				when	"011"	=> COL <=	"11001100"	;	REN <=	"11101111"	;
				when	"100"	=> COL <=	"10001010"	;	REN <=	"11110111"	;
				when	"101"	=> COL <=	"10001010"	;	REN <=	"11111011"	;
				when	"110"	=> COL <=	"10001010"	;	REN <=	"11111101"	;
				when	"111"	=> COL <=	"10001100"	;	REN <=	"11111110"	;
				
				when 	others=> COL <= 	"00000000"	;	REN <=	"11111111"	;
			end case;
			
		elsif (edo_pres = P1) then
			case Q2 is
				when	"000"	=> COL <=	"00010000"	;	REN <=	"01111111"	;
				when	"001"	=> COL <=	"00110000"	;	REN <=	"10111111"	;
				when	"010"	=> COL <=	"00010000"	;	REN <=	"11011111"	;
				when	"011"	=> COL <=	"00010000"	;	REN <=	"11101111"	;
				when	"100"	=> COL <=	"00010000"	;	REN <=	"11110111"	;
				when	"101"	=> COL <=	"00010000"	;	REN <=	"11111011"	;
				when	"110"	=> COL <=	"00010000"	;	REN <=	"11111101"	;
				when	"111"	=> COL <=	"00111000"	;	REN <=	"11111110"	;
				
				when 	others=> COL <= 	"00000000"	;	REN <=	"11111111"	;
			end case;
		elsif (edo_pres = P2) then
			case Q2 is
				when	"000"	=> COL <=	"00111000"	;	REN <=	"01111111"	;
				when	"001"	=> COL <=	"01000100"	;	REN <=	"10111111"	;
				when	"010"	=> COL <=	"00000100"	;	REN <=	"11011111"	;
				when	"011"	=> COL <=	"00000100"	;	REN <=	"11101111"	;
				when	"100"	=> COL <=	"00001000"	;	REN <=	"11110111"	;
				when	"101"	=> COL <=	"00010000"	;	REN <=	"11111011"	;
				when	"110"	=> COL <=	"00100000"	;	REN <=	"11111101"	;
				when	"111"	=> COL <=	"01111100"	;	REN <=	"11111110"	;
				
				when 	others=> COL <= 	"00000000"	;	REN <=	"11111111"	;
			end case;
		elsif (edo_pres = P3) then
			case Q2 is
				when	"000"	=> COL <=	"00111000"	;	REN <=	"01111111"	;
				when	"001"	=> COL <=	"01000100"	;	REN <=	"10111111"	;
				when	"010"	=> COL <=	"00000100"	;	REN <=	"11011111"	;
				when	"011"	=> COL <=	"00011000"	;	REN <=	"11101111"	;
				when	"100"	=> COL <=	"00000100"	;	REN <=	"11110111"	;
				when	"101"	=> COL <=	"00000100"	;	REN <=	"11111011"	;
				when	"110"	=> COL <=	"01000100"	;	REN <=	"11111101"	;
				when	"111"	=> COL <=	"00111000"	;	REN <=	"11111110"	;
				when 	others=> COL <= 	"00000000"	;	REN <=	"11111111"	;
			end case;
		elsif (edo_pres = DETECTA_PISO) then
			case Q2 is
				when	"000"	=> COL <=	"00000000"	;	REN <=	"01111111"	;
				when	"001"	=> COL <=	"00100100"	;	REN <=	"10111111"	;
				when	"010"	=> COL <=	"00000000"	;	REN <=	"11011111"	;
				when	"011"	=> COL <=	"00000000"	;	REN <=	"11101111"	;
				when	"100"	=> COL <=	"01000010"	;	REN <=	"11110111"	;
				when	"101"	=> COL <=	"00111100"	;	REN <=	"11111011"	;
				when	"110"	=> COL <=	"00000000"	;	REN <=	"11111101"	;
				when	"111"	=> COL <=	"00000000"	;	REN <=	"11111110"	;
				
				when 	others=> COL <= 	"00000000"	;	REN <=	"11111111"	;
			end case;
		else
			case Q2 is
				when	"000"	=> COL <=	"00000000"	;	REN <=	"01111111"	;
				when	"001"	=> COL <=	"00000001"	;	REN <=	"10111111"	;
				when	"010"	=> COL <=	"00000010"	;	REN <=	"11011111"	;
				when	"011"	=> COL <=	"00000100"	;	REN <=	"11101111"	;
				when	"100"	=> COL <=	"10001000"	;	REN <=	"11110111"	;
				when	"101"	=> COL <=	"01010000"	;	REN <=	"11111011"	;
				when	"110"	=> COL <=	"00100000"	;	REN <=	"11111101"	;
				when	"111"	=> COL <=	"00000000"	;	REN <=	"11111110"	;
			end case;
		end if;
		end process matriz1088as;
			end comportamiento;