library ieee;
use ieee.std_logic_1164.all;

entity XXXXXX is
end entity;

architecture YYYYYY of XXXXXX is
    component test_prep
        port (
            din ,rst, clk : in std_logic;
            state : buffer std_logic_vector(3 downto 0)
        );
    end component;

    signal din, clk, rst: std_logic:= '0';
    signal state: std_logic_vector(3 downto 0) := "0000";
    begin
        dut: TTTTTTT
        portmap(din => din, rst => rst, state => state,clk => clk);
        process
        begin
        rst <= '1';
        clk <= '1';
        wait for 50 ps;
        clk <= '0';
        wait for 50 ps;

        rst <= '0';
        clk <= '1';
        din <= '1';
        wait for 50 ps;
        clk <= '0';
        wait for 50 ps;

        rst <= '0';
        clk <= '1';
        din <= '0';
        wait for 50 ps;
        clk <= '0';
        wait for 50 ps;

        rst <= '0';
        clk <= '1';
        din <= '1';
        wait for 50 ps;
        clk <= '0';
        wait for 50 ps;

        rst <= '0';
        clk <= '1';
        din <= '0';
        wait for 50 ps;
        clk <= '0';
        wait for 50 ps;

        rst <= '0';
        clk <= '1';
        din <= '1';
        wait for 50 ps;
        clk <= '0';
        wait for 50 ps;

        rst <= '0';
        clk <= '1';
        din <= '1';
        wait for 50 ps;
        clk <= '0';
        wait for 50 ps;

        rst <= '0';
        clk <= '1';
        din <= '0';
        wait for 50 ps;
        clk <= '0';
        wait for 50 ps;

        end process;
end YYYYYY ;