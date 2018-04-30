library ieee;
use ieee.std_logic_1164.all;

entity Conv_to_Outs is port
(
	clk : in std_logic;
	cin : in std_logic_vector(3 downto 0);
	Q1,Q2 : out std_logic_vector(6 downto 0)
);
end Conv_to_Outs;

architecture hardware of Conv_to_Outs is 
begin
	process(clk)
	begin
		if(clk'event and clk='1') then
			 case cin is
				when "0000" =>
					Q1 <= "0000001";
					Q2 <= "0000001";
				when "0001" =>
					Q1 <= "0000001";
					Q2 <= "1001111";
				when "0010" =>
					Q1 <= "0000001";
					Q2 <= "0010010";
				when "0011" =>
					Q1 <= "0000001";
					Q2 <= "0000110";
				when "0100" =>
					Q1 <= "0000001";
					Q2 <= "1001100";
				when "0101" =>
					Q1 <= "0000001";
					Q2 <= "0100100";
				when "0110" =>
					Q1 <= "0000001";
					Q2 <= "0100000";
				when "0111" =>	
					Q1 <= "0000001";
					Q2 <= "0001111";
				when "1000" =>
					Q1 <= "0000001";
					Q2 <= "0000000";
				when "1001" =>
					Q1 <= "0000001";
					Q2 <= "0000010";
				when "1010" =>
					Q1 <= "1001111";
					Q2 <= "0000001";	
				when "1011" =>
					Q1 <= "1001111";
					Q2 <= "1001111";
				when "1100" =>
					Q1 <= "1001111";
					Q2 <= "0010010";
				when "1101" =>	
					Q1 <= "1001111";
					Q2 <= "0000110";
				when "1110" =>
					Q1 <= "1001111";
					Q2 <= "1001100";
				when "1111" =>
					Q1 <= "1001111";
					Q2 <= "0100100";
				when others =>
					Q1 <= "1111111";
					Q2 <= "1111111";
			 end case;
		 end if;
	end process;
end hardware;