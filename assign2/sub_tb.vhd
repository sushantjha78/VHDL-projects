
-- testbench substractor
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sub_tb is
end sub_tb;

architecture tb of sub_tb is
--Component Declaration for the Unit Under Test (UUT)
component substract
port(
    inp1 : in std_logic_vector(7 downto 0);
    inp2 : in std_logic_vector(7 downto 0);
    output : out std_logic_vector(7 downto 0);
    borrow_out : out std_logic
);
end component;

--Inputs
signal inp1 : std_logic_vector(7 downto 0) := "00000000";
signal inp2 : std_logic_vector(7 downto 0) := "00000000";
signal output : std_logic_vector(7 downto 0) := "00000000";
signal borrow_out : std_logic := '0';

begin
--Instantiate the Unit Under Test (UUT)
uut: substract PORT MAP (
                        inp1 => inp1,
                        inp2 => inp2,
                        output => output,
                        borrow_out => borrow_out);

test_case: process
begin
    inp1 <= "10101010";
    inp2 <= "01010101";
    wait for 200 ps;
    inp1 <= "10000011";
    inp2 <= "01011101";
    wait for 200 ps;
end process;
end tb;