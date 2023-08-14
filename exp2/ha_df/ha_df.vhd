--Half adder usind Dataflow modeling
library ieee;
use ieee.std_logic_1164.all;
entity ha_df is
port(a ,b: in std_logic;
sum , carry_out: out std_logic);
end ha_df;
architecture dataflow of ha_df is
begin
sum <= a xor b;
carry_out <= a and b;
end dataflow;