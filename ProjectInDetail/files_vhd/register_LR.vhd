library ieee;
use ieee.std_logic_1164.all;

entity register_LR is port
(
	load, reset, clk, I : in std_logic;
	Q : out std_logic
);
end register_LR;

architecture hardware of register_LR is

component flip_flop_D
	port
	(
		D,clk : in std_logic;
		Q,Qbar : out std_logic
	);
end component;

signal auxQ : std_logic;
signal auxQ_not : std_logic;
signal bool : std_logic := '0';
	
begin
	
	FFD : flip_flop_D port map(I,clk,auxQ ,auxQ_not);			
	
	process(clk)
		begin
		if(clk = '1' and clk'event) then
			if reset = '1' then
				Q <= '0';
			else
				if load = '1' then
					Q <= auxQ;
				end if;
			end if;	
		end if;
	end process;
end hardware;