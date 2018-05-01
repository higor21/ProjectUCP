library IEEE;
use IEEE.std_logic_1164.all;

entity dp is
  port ( rst : in STD_LOGIC;
         clk : in STD_LOGIC;
         imm : in std_logic_vector(3 downto 0);
         output_dp: out STD_LOGIC_VECTOR (3 downto 0);
			opcode : in std_logic_vector(3 downto 0);
         enb_rf: in std_logic;
			enb_acc: in std_logic;
			address: in std_logic_vector(1 downto 0)
       );
end dp;

architecture rtl2 of dp is

component alu is
  port (
		clk   : in STD_LOGIC;
		input_rf: in std_LOGIC_VECTOR(3 downto 0);
		sel_opcode : in std_LOGIC_VECTOR(3 downto 0);
		input_acc: in std_LOGIC_VECTOR(3 downto 0);
		output: out STD_LOGIC_VECTOR (3 downto 0)
    );
end component;

component acc is 
	port (
		rst   : in STD_LOGIC;
		clk   : in STD_LOGIC;
		input : in STD_LOGIC_VECTOR (3 downto 0);
		enb   : in STD_LOGIC; -- ativa o registrador do acumulador
		output: out STD_LOGIC_VECTOR (3 downto 0)
    );
end component;

component rf is 
	port (
		rst    : in STD_LOGIC;
		clk    : in STD_LOGIC;
		input  : in std_logic_vector(3 downto 0);
		sel    : in std_logic_vector(1 downto 0);
		enb    : in std_logic;
		output : out std_logic_vector(3 downto 0)
	 );
end component;

signal output_acc: std_logic_vector(3 downto 0);
signal output_alu: std_logic_vector(3 downto 0);
signal output_rf: std_logic_vector(3 downto 0);
signal in_rf: std_logic_vector(3 downto 0);


begin
	
	ALU_use: alu port map (clk, in_rf, opcode, output_acc, output_alu); -- ATUALIZAR
	ACC_use: acc port map(rst, clk, output_alu, enb_acc, output_acc);
	RF_use: rf port map (rst, clk, output_alu, address, enb_rf, output_rf);
	--ADICIONAR REGISTER FILE
	
	-- maybe this is were we add the port maps for the other components.....
	
	process (rst, clk)
		begin
			if(clk = '1' and clk'event) then
				if(opcode = "0010") then
					in_rf <= imm; --dando certo
				else
					in_rf <= output_rf;
				end if;
				
				if( rst = '0') then 
					output_dp <= output_acc;
				else
					output_dp <= "0000";
				end if;
			end if;
   end process;
end rtl2;