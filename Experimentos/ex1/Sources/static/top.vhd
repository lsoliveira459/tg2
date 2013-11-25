library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
    port(   SYSCLK_P    : in    std_logic;
            SYSCLK_N    : in    std_logic;
            GPIO_LED    : out   std_logic_vector (6 downto 0));
end top;

architecture Behavioral of top is
signal clk_20mhz    : std_logic;
signal clk_2hz      : std_logic;
signal clk_1hz      : std_logic;

signal max_cnt_2_hz : integer := 4999999; -- divide o clock por 10M, gerando 2Hz no clk_out
signal cnt_2_hz     : integer range 0 to max_cnt_2_hz := 0;
signal temp_2_hz    : std_logic;

signal max_cnt_1_hz : integer := 9999999; -- divide o clock por 20M, gerando 1Hz no clk_out
signal cnt_1_hz     : integer range 0 to max_cnt_1_hz := 0;
signal temp_1_hz    : std_logic;

component dynamic
    port ( clk  : in  std_logic;
           leds : out std_logic_vector (3 downto 0));
end component;
begin
    clocks_i  : entity work.clocks port map(SYSCLK_P,SYSCLK_N,clk_20mhz);
    static_i  : entity work.static port map(clk_2hz,GPIO_LED(6));
    dynamic_i : dynamic port map(clk_1hz,GPIO_LED(3 downto 0));

    process (clk_20mhz)
    begin
        if rising_edge(clk_20mhz) then
            if (cnt_1_hz = max_cnt_1_hz) then
                temp_1_hz <= not(temp_1_hz);
                cnt_1_hz <= 0;
            else
                cnt_1_hz <= cnt_1_hz + 1;
            end if;
            if (cnt_2_hz = max_cnt_2_hz) then
                temp_2_hz <= not(temp_2_hz);
                cnt_2_hz <= 0;
            else
                cnt_2_hz <= cnt_2_hz + 1;
            end if;
        end if;
    end process;

    clk_1hz <= temp_1_hz;
    clk_2hz <= temp_2_hz;
    GPIO_LED(5) <= '0';
    GPIO_LED(4) <= '0';

end Behavioral;