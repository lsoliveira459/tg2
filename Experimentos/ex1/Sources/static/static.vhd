library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity static is
	port(	clk_in	: in 	std_logic;
        	led		: out 	std_logic);
end static;

architecture Behavioral of static is
	signal output	: std_logic := '0';
begin
	process (clk_in)
	begin
		if rising_edge(clk_in) then
			output <= not(output);
		end if;

		led <= output;
	end process;
end Behavioral;
