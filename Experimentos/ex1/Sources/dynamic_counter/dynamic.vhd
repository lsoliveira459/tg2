library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity dynamic is
    port ( clk :  in  STD_LOGIC;
           leds : out  STD_LOGIC_VECTOR (3 downto 0));
end dynamic;

architecture Behavioral of dynamic is

signal output : std_logic_vector(3 downto 0) := "0000";

begin
	process (clk)
	begin
		if rising_edge(clk) then
			output <= output + "1";
		end if;
	end process;
	
	leds <= output;

end Behavioral;

