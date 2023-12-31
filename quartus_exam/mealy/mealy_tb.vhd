-- testbench for mealy
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY mealy_tb IS
END mealy_tb;
ARCHITECTURE behavior OF mealy_tb IS
--Component Declaration for the Unit Under Test (UUT)
COMPONENT mealy
PORT(
clk : IN std_logic;
din : IN std_logic;
rst : IN std_logic;
dout : OUT std_logic
);
END COMPONENT;
--Inputs
signal clk : std_logic := '0';
signal din : std_logic := '0';
signal rst : std_logic := '0';

--Outputs
signal dout : std_logic;
--Clock period definitions
constant clk_period : time := 100 ps;
BEGIN
--Instantiate the Unit Under Test (UUT)
uut: mealy PORT MAP (
clk => clk,
din => din,
rst => rst,
dout => dout
);
--Clock process definitions
clk_process :process
begin
clk <= '1';
wait for clk_period/2;
clk <= '0';
wait for clk_period/2;
end process;
--Stimulus process
stim_proc: process
begin
rst <= '1';
wait for 100 ps;

rst <= '0';
din <= '0';
wait for 100 ps;
din <= '1';
wait for 100 ps;
din <= '0';
wait for 100 ps;
din <= '1';
wait for 100 ps;
din <= '1';
wait for 100 ps;
din <= '0';
wait for 100 ps;
din <= '1';
wait for 100 ps;
din <= '1';
wait for 100 ps;
din <= '1';
wait for 100 ps;
din <= '0';
wait for 100 ps;
din <= '1';
wait for 100 ps;
end process;
END;