library ieee;
use ieee.std_logic_1164.all;

entity somador_4bits is port 
(
	A : in std_logic_vector(3 downto 0);
	B : in std_logic_vector(3 downto 0);
	
	cin : in std_logic;                  
	s   : out std_logic_vector(3 downto 0);  		
	cout : out std_logic       
);
end somador_4bits;

architecture hardware of somador_4bits is

component FA port
(
	a,b,cin : in std_logic;
	s,cout : out std_logic
);
end component;

signal cout_0to1 : std_logic;
signal cout_1to2 : std_logic;
signal cout_2to3 : std_logic;

begin

	FA_0 : FA port map(a => A(0), b => B(0), cin => cin, s => S(0), cout => cout_0to1);
	FA_1 : FA port map(a => A(1), b => B(1), cin => cout_0to1, s => S(1), cout => cout_1to2);
	FA_2 : FA port map(a => A(2), b => B(2), cin => cout_1to2, s => S(2), cout => cout_2to3);
	FA_3 : FA port map(a => A(3), b => B(3), cin => cout_2to3, s => S(3), cout => cout);

end hardware;