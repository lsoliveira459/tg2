library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity top is
    port(   
        SYSCLK_P    : in    std_logic;
        SYSCLK_N    : in    std_logic;
        GPIO_LED    : out   std_logic_vector (6 downto 0));
end top;

architecture Behavioral of top is
    signal clk_200Mhz   : std_logic;
    signal clk_5hz      : std_logic;
    signal clk_2hz      : std_logic;
    signal clk_1hz      : std_logic;

    component dynamic
        port (
            clk_1hz : in  std_logic;
            leds    : out std_logic_vector (3 downto 0)
        );
    end component;
begin
    clock_station_i  : entity work.clock_station port map(
        clk_p       => SYSCLK_P,
        clk_n       => SYSCLK_N,
        clk_5hz     => clk_5hz,
        clk_2hz     => clk_2hz,
        clk_1hz     => clk_1hz
    );
    static_i  : entity work.static port map(
        clk_5hz => clk_5hz,
        clk_2hz => clk_2hz,
        clk_1hz => clk_1hz,
        leds    => GPIO_LED(6 downto 4)
    );
    dynamic_i : dynamic port map(
        clk_1hz => clk_1hz,
        leds    => GPIO_LED(3 downto 0)
    );

end Behavioral;