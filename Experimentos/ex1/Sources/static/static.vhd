library IEEE;
use IEEE.std_logic_1164.ALL;

entity static is
    port(
        clk_5hz : in  std_logic;
        clk_2hz : in  std_logic;
        clk_1hz : in  std_logic;
        leds    : out std_logic_vector(2 downto 0)
    );
end static;

architecture Behavioral of static is
begin
    leds(0) <= clk_1hz;
    leds(1) <= clk_2hz;
    leds(2) <= clk_5hz;
end Behavioral;
