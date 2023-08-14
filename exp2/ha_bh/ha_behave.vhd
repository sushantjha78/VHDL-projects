--Half Adder using Behavioral modeling
library ieee;
use ieee.std_logic_1164.all;
entity HA_behave is
port( a,b : in std_logic; s, c : out std_logic);
end HA_behave;
architecture behaviour of HA_behave is
begin
ha  :  process(a,b)
begin
if a  =  '1'  then 
s <= not b;
c <= b;
else
s <= b;
c <= '0';
end if;
end process ha;
end behaviour;