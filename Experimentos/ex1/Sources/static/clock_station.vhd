library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity clock_station is
    port(   
        clk_p   : in    std_logic;
        clk_n   : in    std_logic;
        clk_1hz : out   std_logic;
        clk_2hz : out   std_logic;
        clk_5hz : out   std_logic
    );
end clock_station;

architecture Behavioral of clock_station is
    signal clk_200Mhz   : std_logic;
    
    signal max_cnt_5_hz : integer := 19999999; -- divide o clock por 40M, gerando 5Hz no clk_out
    signal cnt_5_hz     : integer range 0 to max_cnt_5_hz := 0;
    signal temp_5_hz    : std_logic;

    signal max_cnt_2_hz : integer := 49999999; -- divide o clock por 100M, gerando 2Hz no clk_out
    signal cnt_2_hz     : integer range 0 to max_cnt_2_hz := 0;
    signal temp_2_hz    : std_logic;

    signal max_cnt_1_hz : integer := 99999999; -- divide o clock por 200M, gerando 1Hz no clk_out
    signal cnt_1_hz     : integer range 0 to max_cnt_1_hz := 0;
    signal temp_1_hz    : std_logic;
  begin
    clocks_i  : entity work.clocks port map(
        CLK_IN_P => clk_p,
        CLK_IN_N => clk_n,
        CLK_OUT  => clk_200Mhz
    );
    process (clk_200Mhz)
    begin
        if rising_edge(clk_200Mhz) then
            if (cnt_1_hz = max_cnt_1_hz) then
                temp_1_hz   <= not(temp_1_hz);
                cnt_1_hz    <= 0;
            else
                cnt_1_hz    <= cnt_1_hz + 1;
            end if;
            if (cnt_2_hz = max_cnt_2_hz) then
                temp_2_hz   <= not(temp_2_hz);
                cnt_2_hz    <= 0;
            else
                cnt_2_hz    <= cnt_2_hz + 1;
            end if;
            if (cnt_5_hz = max_cnt_5_hz) then
                temp_5_hz   <= not(temp_5_hz);
                cnt_5_hz    <= 0;
            else
                cnt_5_hz    <= cnt_5_hz + 1;
            end if;
        end if;
    end process;

    clk_1hz <= temp_1_hz;
    clk_2hz <= temp_2_hz;
    clk_5hz <= temp_5_hz;

end Behavioral;