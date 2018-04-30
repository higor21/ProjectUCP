 ***********************************************************************
-- the following is code for a register file. you may use your own design.
-- you also need to figure out how to connect this inyour datapath.

-- the way the rf works is: it 1st checks for the enable, then checks to
-- see which register is selected and outputs the input into the file. 
-- otherwise, the output will be whatever is stored in the selected register.
-- ***********************************************************************
library IEEE;
use IEEE.std_logic_1164.all;

entity rf is
  port ( rst    : in STD_LOGIC;
         clk    : in STD_LOGIC;
         input  : in std_logic_vector(3 downto 0);
         sel    : in std_logic_vector(1 downto 0);
         enb    : in std_logic;
         output : out std_logic_vector(3 downto 0)
       );
		
end rf;

architecture bhv of rf is
signal out0, out1, out2, out3 : std_logic_vector(3 downto 0);
begin
	process (rst, clk)
	begin
	
	  -- take care of rst state
	  
	  if(clk'event and clk = '1')then
		 if enb = '0' then
			case (sel) is
			  when "00" => 
				 out0 <= input;
			  when "01" => 
				 -- insert proper statement here
				 
			  when "10" => 
				 -- insert proper statement here
				 
			  when "11" =>
				 -- insert proper statement here
				 
			  when others =>
			end case;
		 else
			case (sel) is
			  when "00" =>
				 output <= out0;
			  when "01" =>
				 output <= out1;
			  when "10" =>
				 output <= out2;
			  when "11" =>
				 output <= out3;
			  when others =>
			end case;
		 end if;
	  end if;
	end process;	
end bhv;