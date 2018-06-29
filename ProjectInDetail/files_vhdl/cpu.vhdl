 
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity Processador is
   port (rst           : in STD_LOGIC;
    	   start         : in STD_LOGIC;
			clk        : in STD_LOGIC;
			Q1,Q2 : out std_logic_vector (6 downto 0);
			disp1, disp2, disp3, disp4 : out std_logic_vector (6 downto 0)
        );
end Processador;

architecture struc of Processador is
component ctrl 
   port ( rst   : in STD_LOGIC;
         start : in STD_LOGIC;
         clk   : in STD_LOGIC;       
         imm   : out std_logic_vector(3 downto 0);
			enb_rf   : out std_logic;
			enb_acc   : out std_logic;
			CODE  : out std_logic_vector(3 downto 0);
			ADDRESS_OUT: out std_logic_vector(1 downto 0)
       );
end component;

component dp
   port ( rst : in STD_LOGIC;
         clk : in STD_LOGIC;
         imm : in std_logic_vector(3 downto 0);
         output_dp: out STD_LOGIC_VECTOR (3 downto 0);
			opcode : in std_logic_vector(3 downto 0);
         enb_rf: in std_logic;
			enb_acc: in std_logic;
			address: in std_logic_vector(1 downto 0)
       );
end component;

component Conv_Op_to_Display
	port(
		clk : in std_logic;
		opcode : in std_logic_vector(3 downto 0);
		display1,display2,display3,display4 : out std_logic_vector(6 downto 0)
);
end component;

component Conv_to_Outs
	port
	(
		clk : in std_logic;
		cin : in std_logic_vector(3 downto 0);
		Q1,Q2 : out std_logic_vector(6 downto 0)
	);
end component;

signal immediate : std_logic_vector(3 downto 0);
signal cpu_out : std_logic_vector(3 downto 0);
signal enb_rf_aux : std_logic;
signal enb_acc_aux : std_logic;
signal code_aux : std_logic_vector(3 downto 0);
signal address_aux : std_logic_vector(1 downto 0);

begin

  controller: ctrl port map(rst, start, clk, immediate, enb_rf_aux, enb_acc_aux, code_aux, address_aux);
  datapath: dp port map(rst, clk, immediate, cpu_out, code_aux, enb_rf_aux, enb_acc_aux, address_aux);
  Conversor_Number: Conv_to_Outs port map (clk, cpu_out, Q1, Q2);
  Conversor_Op: Conv_Op_to_Display port map (clk, code_aux, disp1, disp2, disp3, disp4);
  

  process(rst, clk, cpu_out)
  begin
	
  end process;							
end struc;



