library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

	entity matrixSQ is
	
		port(
		
			clk,rst: in std_logic; -- Entradada del reloj r eset

			Q1: inout std_logic_vector(2 downto 0);  --	matrizador al 7
 			Q2: inout std_logic_vector(2  downto 0); --	matrizador al 7
			Q3: inout std_logic_vector(10 downto 0); --	matrizador al 2047
			
			REN : out std_logic_vector (7 downto 0);
			COL : out std_logic_vector (7 downto 0));

	end matrixSQ;

	architecture eduardo of matrixSQ is
	begin
		contadores: process(clk,rst) --Proceso de matrizador
		begin
			if(clk'event and clk='1')then --Si el pulso de reloj es 1
				if(rst='1' or ((Q1="111") and (Q2="111")and (Q3="11111111111")))then --Resetero
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
						when	"000"	=> COL <=	"11111111"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"11111111"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00011000"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00011000"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00011000"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00011000"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"11111000"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"11111000"	;	REN <=	"11111110"	;
	
						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					
					end case;
					
				when "001" => 
					case Q2 is			  
						when	"000"	=> COL <=	"11111111"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"11111111"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"11000011"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"11000011"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"11000011"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"11000011"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"11111111"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"11111111"	;	REN <=	"11111110"	;

						
						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;		
					
				when "010" =>  
									
					case Q2 is 				
						when	"000"	=> COL <=	"11111111"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"11111111"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"11000000"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"11111111"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"11111111"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00000011"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"11111111"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"11111111"	;	REN <=	"11111110"	;


						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "011" => 
					case Q2 is			  
						when	"000"	=> COL <=	"11111111"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"11111111"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"11000000"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"11111000"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"11111000"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"11000000"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"11111111"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"11111111"	;	REN <=	"11111110"	;


						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "100" => 
					case Q2 is		  
						when	"000"	=> COL <=	"00011000"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"00111000"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"01111000"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00011000"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00011000"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00011000"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00011000"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00011000"	;	REN <=	"11111110"	;

						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "101" => 
					case Q2 is			  
						when	"000"	=> COL <=	"11111111"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"11111111"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00000011"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"11111111"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"11111111"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"11000000"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"11111111"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"11111111"	;	REN <=	"11111110"	;

						
						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "110" => 
					case Q2 is			  
						when	"000"	=> COL <=	"11111111"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"11111111"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"00000011"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"00011111"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"00011111"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00000011"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"11111111"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"11111111"	;	REN <=	"11111110"	;

						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when "111" => 
					case Q2 is			  
						when	"000"	=> COL <=	"11000011"	;	REN <=	"01111111"	;
						when	"001"	=> COL <=	"11000011"	;	REN <=	"10111111"	;
						when	"010"	=> COL <=	"11000011"	;	REN <=	"11011111"	;
						when	"011"	=> COL <=	"11111111"	;	REN <=	"11101111"	;
						when	"100"	=> COL <=	"11111111"	;	REN <=	"11110111"	;
						when	"101"	=> COL <=	"00000011"	;	REN <=	"11111011"	;
						when	"110"	=> COL <=	"00000011"	;	REN <=	"11111101"	;
						when	"111"	=> COL <=	"00000011"	;	REN <=	"11111110"	;

						when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
					end case;
					
				when 	others 	=> COL <= 	"00000000"	;	REN <=	"11111111"	;
			end case;
			
		end process matriz1088as;
		
		
	end eduardo;