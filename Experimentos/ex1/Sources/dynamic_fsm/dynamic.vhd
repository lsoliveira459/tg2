library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dynamic is
    Port ( clk : in  STD_LOGIC;
           leds : out  STD_LOGIC_VECTOR (3 downto 0));
end dynamic;

architecture Behavioral of dynamic is

type state_type is (s0,s1);
signal current_s,next_s: state_type;
signal output : STD_LOGIC_VECTOR (3 downto 0);

begin
   process (clk)
	begin
		if (rising_edge(clk)) then
			current_s <= next_s;
		end if;
	end process;

	process (current_s)
	begin
		case current_s is
			when s0 =>
				next_s <= s1;
				output <= "0011";
			when s1 =>
				next_s <= s0;
				output <= "1100";
		end case;
	end process;
	
	leds <= output;
	
end Behavioral;