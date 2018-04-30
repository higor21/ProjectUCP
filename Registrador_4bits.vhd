library ieee;
use ieee.std_logic_1164.all;

entity Registrador_4bits is port
(
	I    : in std_logic_vector(3 downto 0);
	load : in std_logic;
	reset: in std_logic;
	clk  : in std_logic;
	Q    : out std_logic_vector(3 downto 0)	
);
end registrador_4bits;

architecture hardware of registrador_4bits is

component register_LR port
(
	load, reset, clk, I : in std_logic;
	Q : out std_logic
);

end component;

begin 
	Reg_0 : register_LR port map(load => load, reset => reset, clk => clk, I => I(0), Q => Q(0));
	Reg_1 : register_LR port map(load => load, reset => reset, clk => clk, I => I(1), Q => Q(1));
	Reg_2 : register_LR port map(load => load, reset => reset, clk => clk, I => I(2), Q => Q(2));
	Reg_3 : register_LR port map(load => load, reset => reset, clk => clk, I => I(3), Q => Q(3));
end hardware;