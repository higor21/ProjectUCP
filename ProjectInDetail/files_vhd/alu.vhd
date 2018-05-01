library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity alu is -- ALU
  port ( clk   : in STD_LOGIC;
			input_rf: in std_LOGIC_VECTOR(3 downto 0);
			sel_opcode : in std_LOGIC_VECTOR(3 downto 0);
			input_acc: in std_LOGIC_VECTOR(3 downto 0);
         output: out STD_LOGIC_VECTOR (3 downto 0)
         -- add ports as required
    );
end alu;

architecture bhv of alu is

component somador_4bits
	port 
	(
		A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0);
		cin : in std_logic;                  
		s   : out std_logic_vector(3 downto 0);  		
		cout : out std_logic       
	);
end component;

signal result_soma , result_sub : std_logic_vector(3 downto 0);
signal cout : std_logic;

begin

	soma : somador_4bits port map(input_acc,input_rf, '0', result_soma, cout);
	sub : somador_4bits port map(input_acc, not (input_rf),'1', result_sub, cout);
	
	process (clk)
	begin	
		if(clk = '1' and clk'event) then
			case sel_opcode is
				when "0000" => output <= input_rf;
				when "0001" => output <= input_acc;
				when "0010" => output <= input_rf;
				when "0011" => output <= result_soma;
				when "0100" => output <= result_sub;
				when "0101" => output <= input_acc AND input_rf;
				when "0110" => output <= input_acc OR input_rf;
				when "1000" => output <= NOT(input_acc);
				when others =>
			end case;
		end if;
	end process;
end bhv;