library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity lcd is
 
 port(ck, rst : in std_logic;
		Q : inout std_logic_vector (3 downto 0);
		rs : out std_logic;
		rw : out std_logic;
		D : out std_logic_vector (7 downto 0));
 
 end lcd;
 
 architecture eduardo of lcd is
begin
 contador:process(ck)
			begin
					if(ck'event and ck = '1') then
					Q<=Q + 1;
						if(rst = '1' or Q="1111") then --Q = "0110" or 
							Q <= "0000";
							end if;
					end if;
			end process contador;
 
			
			table:process(Q) begin
			case Q is	--				76543210 0-com,1dat r-0,w-1	 HEX	| Explicacion
				when "0000" => D <= "00111000"; rs<='0'; rw<='0'; -- 38	| Establece interfaz de 8 bits
				when "0001" => D <= "00000001"; rs<='0'; rw<='0'; -- 01	| Limpia la pantalla
				when "0010" => D <= "00000110"; rs<='0'; rw<='0'; -- 06	| Mueve el cursor a la derecha
				when "0011" => D <= "00001110"; rs<='0'; rw<='0'; -- 0E	| Ilumnina la pantalla
				when "0100" => D <= "10000000"; rs<='0'; rw<='0'; -- 80	| Posiciona el cursor en linea 1
				
				when "0101" => D <= "01001010"; rs<='1'; rw<='0'; -- 4A	| Letra J
				when "0110" => D <= "01101111"; rs<='1'; rw<='0'; -- 6F | Letra o
				when "0111" => D <= "01110011"; rs<='1'; rw<='0'; -- 73 | Letra s
				when "1000" => D <= "01100101"; rs<='1'; rw<='0'; -- 65	| Letra e
				when "1001" => D <= "01000000"; rs<='1'; rw<='0'; -- 20	| Espacio 
				when "1010" => D <= "01010011"; rs<='1'; rw<='0'; -- 53	| Letra S
				when "1011" => D <= "01100001"; rs<='1'; rw<='0'; -- 61	| Letra a
				when "1100" => D <= "01101110"; rs<='1'; rw<='0'; -- 6E	| Letra n
				when "1101" => D <= "01100011"; rs<='1'; rw<='0'; -- 63	| Letra c
				when "1110" => D <= "01101000"; rs<='1'; rw<='0'; -- 68	| Letra h
				when "1111" => D <= "01100101"; rs<='1'; rw<='0'; -- 65	| Letra e
				when others => D <= "00000000";
				end case;
			end process table;
			
end eduardo;