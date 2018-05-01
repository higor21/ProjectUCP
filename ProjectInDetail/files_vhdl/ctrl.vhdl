-- controller
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity ctrl is
  port ( rst   : in STD_LOGIC;
         start : in STD_LOGIC;
         clk   : in STD_LOGIC;       
         imm   : out std_logic_vector(3 downto 0);
			enb_rf   : out std_logic;
			enb_acc   : out std_logic;
			CODE  : out std_logic_vector(3 downto 0);
			ADDRESS_OUT: out std_logic_vector(1 downto 0)
       );
end ctrl;

architecture fsm of ctrl is
  type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,done);
  signal state : state_type; 		

	-- constants declared for ease of reading code
	
	constant mova    : std_logic_vector(3 downto 0) := "0000"; -- s6
	constant movr    : std_logic_vector(3 downto 0) := "0001"; -- s7
	constant load    : std_logic_vector(3 downto 0) := "0010"; -- s5
	constant add	  : std_logic_vector(3 downto 0) := "0011"; -- s8
   constant sub	  : std_logic_vector(3 downto 0) := "0100"; -- s9
	constant andr    : std_logic_vector(3 downto 0) := "0101"; -- s10
   constant orr     : std_logic_vector(3 downto 0) := "0110"; -- s11
   constant jmp	  : std_logic_vector(3 downto 0) := "0111"; -- s12
	constant inv     : std_logic_vector(3 downto 0) := "1000"; -- s13
	constant halt	  : std_logic_vector(3 downto 0) := "1001"; -- 


	-- as you add more code for your algorithms make sure to increase the
	-- array size. ie. 2 lines of code here, means array size of 0 to 1.
	type PM_BLOCK is array (0 to 4) of std_logic_vector(7 downto 0);
	constant PM : PM_BLOCK := (	

	-- This algorithm loads an immediate value of 3 and then stops
	 "00100101",-- load 4
	 "00010000",
	 "00101001",
	 "00000000",
	 "10011111"		-- halt
    );
  		 
begin
	process (clk)
	-- these variables declared here don't change.
	-- these are the only data allowed inside
	-- our otherwise pure FSM
  
	variable IR : std_logic_vector(7 downto 0);
	variable OPCODE : std_logic_vector( 3 downto 0);
	variable ADDRESS : std_logic_vector (3 downto 0);
	variable PC : integer;
    
	begin
		-- don't forget to take care of rst
    
		if (clk'event and clk = '1') then			
      --
      -- steady state
      --
    
      case state is
        
         when s0 =>    						-- INITIAL STATE
          PC := 0;
          imm <= "0000";
          if start = '1' then
            state <= s1;
          else 
            state <= s0;
          end if;
          
         when s1 =>						   -- FETCH INSTRUCTION
          IR := PM(PC);
          OPCODE := IR(7 downto 4);
          ADDRESS := IR(3 downto 0);
			 imm <= 	ADDRESS;
			 enb_rf <= '0';
			 enb_acc <= '0';
          state <= s2;
          
			when s2 =>						   	-- INCREMENT PC
          PC := PC + 1;
          state <= s4;
          
          
         when s4 =>										-- DECODER
          case OPCODE is
            when load =>                        -- notice we can use -- the instruction
              state <= s5;   
				when mova	=>
				  state <= s6;
				when movr =>
					state <= s7;
				when add =>
					state <= s8;
				when sub =>
					state <= s9;
				when andr =>
					state <= s10;
				when orr =>
					state <= s11;
				when jmp =>
					state <= s12;
				when inv =>
					state <= s13;
				when halt => state <= done;              -- and the machine code         
            when others =>
              state <= s1;
          end case;

			-- these states are the ones in which you actually
			-- start sending signals across
			-- to the datapath depending on what opcode is decoded.
			-- you add more states here.

         when s5 =>  -- LOAD iiii
				enb_acc <= '1';
				imm <= ADDRESS;
				state <= s1;
         
			when s6 =>  
				enb_acc <= '1';
				ADDRESS_OUT <= ADDRESS(3 downto 2);
				state <= s1;
				
			when s7 =>
				enb_rf <= '1';
				ADDRESS_OUT <= ADDRESS(3 downto 2);
				state <= s1;
				
			when s8 =>  
				enb_acc <= '1';
				ADDRESS_OUT <= ADDRESS(3 downto 2);
				state <= s1;

			when s9 =>  
				enb_acc <= '1';
				ADDRESS_OUT <= ADDRESS(3 downto 2);
				state <= s1;
			
			when s10 =>  
				enb_acc <= '1';
				ADDRESS_OUT <= ADDRESS(3 downto 2);
				state <= s1;
				
			when s11 =>
				enb_acc <= '1';
				ADDRESS_OUT <= ADDRESS(3 downto 2);
				state <= s1;
				
			when s12 =>  --JUMP
				PC := conv_integer(ADDRESS);
				state <= s1;
				
			
			when s13 =>   
				enb_acc <= '1';
				state <= s1;
				
         when done => -- HALT
				state <= done;

         when others =>
          
      end case;
		CODE <= OPCODE;
    end if;
  end process;				
end fsm;