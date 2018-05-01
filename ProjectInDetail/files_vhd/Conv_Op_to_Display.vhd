library ieee;
use ieee.std_logic_1164.all;

entity Conv_Op_to_Display is port
(
	clk : in std_logic;
	opcode : in std_logic_vector(3 downto 0);
	display1,display2,display3,display4 : out std_logic_vector(6 downto 0)
);
end Conv_Op_to_Display;

architecture hardware of Conv_Op_to_Display is 
begin
	process(clk)
	begin
		if(clk'event and clk='1') then
			 case opcode is
				when "0000" =>
					display1 <= "1000010";
					display2 <= "1000010";
					display3 <= "0001000";
					display4 <= "0110001";
				when "0001" =>
					display1 <= "0001000";
					display2 <= "0110001";
					display3 <= "1000010";
					display4 <= "1000010";
				when "0010" =>
					display1 <= "1110001";
					display2 <= "0000001";
					display3 <= "0001000";
					display4 <= "0000001";
				when "0011" =>
					display1 <= "0001000";
					display2 <= "1000010";
					display3 <= "1000010";
					display4 <= "1111111";
				when "0100" =>
					display1 <= "0100100";
					display2 <= "1100011";
					display3 <= "1100000";
					display4 <= "1111111";
				when "0101" =>
					display1 <= "0001000";
					display2 <= "1101010";
					display3 <= "1000010";
					display4 <= "0001000";
				when "0110" =>
					display1 <= "0000001";
					display2 <= "0001000";
					display3 <= "0001000";
					display4 <= "1111111";
				when "1000" =>	-- INV
					display1 <= "1001111";
					display2 <= "1101010";
					display3 <= "1100011";
					display4 <= "1111111";
				when others => 
					display1 <= "1111111";
					display2 <= "1111111";
					display3 <= "1111111";
					display4 <= "1111111";
			 end case;
		 end if;
	end process;
end hardware;