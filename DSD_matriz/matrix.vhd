library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

	entity matrix is
	
		port(
			
			
			reloj,reset: in std_logic; -- Entradada del reloj y reset

			Q1: inout std_logic_vector(2 downto 0);  --	contador al 7
 			Q2: inout std_logic_vector(2  downto 0); --	contador al 7
			Q3: inout std_logic_vector(10 downto 0); --	contador al 2047
			
			REN : out std_logic_vector (7 downto 0);
			COL : out std_logic_vector (7 downto 0));

	end matrix;

	architecture eduardo of matrix is
	
	signal divi : std_logic_vector(15 downto 0):="0000000000000000"; --Frecuencia de 1525.879 Hz
	signal clk: std_logic;
	begin
	
		divisor 	 : process (reloj) --Proceso divisor de frecuencia
		begin
		if	(reloj'event and reloj='1')then
		divi <=divi+1;
		end if;
		end process divisor;
		
		clk<= divi(15);
		
		contadores: process(clk, reset) --Proceso de contador
		begin
			if(clk'event and clk='1')then --Si el pulso de reloj es 1
				if(reset='1' or ((Q1="111") and (Q2="111")and (Q3="11111111111")))then --Reset
					Q1<="000";
					Q2<="000";
					Q3<="00000000000";
				else
					if(Q2="111" and Q3="11111111111")then -- Reseteo de Q2 y Q3, incremento de Q1
						Q1<=Q1+1;
						Q2<="000";
						Q3<="00000000000";
					else
						Q3<=Q3+1; -- Solo incremento de Q2 y Q3
						Q2<=Q2+1;
					end if;
				end if;
			end if;	
		end process contadores;
		
		matriz1088as: process(Q1,Q2) -- decodificador con relojes Q1 y Q2
		begin
			case Q1 	is
				when "000" =>  
					case Q2 is	
						when	"000"	=> COL <=	"00000000"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00011110"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00001100"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00001100"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00001100"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"01101100"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"01101100"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00111000"	;	REN <=	"11111110"	;	
						when 	others 	=> COL <= 	"00000000"	;	REN <=	"00000000"	;
					
					end case;
					
				when "001" => 
					case Q2 is			  
						when	"000"	=> COL <=	"00000000"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00000000"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00000000"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00111100"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"01100110"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"01100110"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"01100110"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00111100"	;	REN <=	"11111110"	;
						
						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;		
					
				when "010" =>  
									
					case Q2 is 				
						when	"000"	=> COL <=	"00000000"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00000000"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00000000"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00111110"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"01000000"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00111100"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00000010"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"01111100"	;	REN <=	"11111110"	;

						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "011" => 
					case Q2 is			  
						when	"000"	=> COL <=	"00000000"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00000000"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00000000"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00111100"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"01100110"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"01111110"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"01100000"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00111100"	;	REN <=	"11111110"	;

						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "100" => 
					case Q2 is		  
						when	"000"	=> COL <=	"00010000"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00110000"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00010000"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00010000"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00010000"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00010000"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00010000"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00111000"	;	REN <=	"11111110"	;

						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "101" => 
					case Q2 is			  
						when	"000"	=> COL <=	"00111000"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"01000100"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00000100"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00000100"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00001000"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00010000"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00100000"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"01111100"	;	REN <=	"11111110"	;
						
						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "110" => 
					case Q2 is			  
						when	"000"	=> COL <=	"00111000"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"01000100"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00000100"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00011000"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00000100"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00000100"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"01000100"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00111000"	;	REN <=	"11111110"	;

						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "111" => 
					case Q2 is			  
						when	"000"	=> COL <=	"00000100"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00001100"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00010100"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00100100"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"01000100"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"01111100"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00000100"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00000100"	;	REN <=	"11111110"	;

						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
			end case;
			
		end process matriz1088as;
		
		
	end eduardo;