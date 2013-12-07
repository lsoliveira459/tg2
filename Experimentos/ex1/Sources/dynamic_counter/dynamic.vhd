library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_arith.ALL;

entity dynamic is
    port (
        clk_1hz     : in  std_logic;
        leds    : out std_logic_vector(3 downto 0)
    );
end dynamic;

architecture Behavioral of dynamic is
    signal output : std_logic_vector(3 downto 0) := "0000";
begin
    process (clk_1hz)
    begin
        if rising_edge(clk_1hz) then
            output <= output + 1;
        end if;
    end process;
    
    leds <= output;

end Behavioral;

