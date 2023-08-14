-- Half adder using Strutural modeling approach
library ieee;
use ieee.std_logic_1164.all;

entity andgate is
    port(a, b: in std_logic;
    z: out std_logic);
end andgate;

architecture e1 of andgate is
    begin
    z<= a and b;
end e1;

library ieee;
use ieee.std_logic_1164.all;

entity xorgate is
    port(a, b: in std_logic;
    z: out std_logic);
end xorgate;

architecture e2 of xorgate is
    begin
    z <= a xor b;
end e2;

library ieee;
use ieee.std_logic_1164.all;

entity ha_st is
    port(a, b : in std_logic; s, c: out std_logic);
end ha_st;

architecture structural of ha_st is
    component andgate
    port(a, b: in std_logic; z: out std_logic);
end component;

component xorgate
    port(a, b: in std_logic; z: out std_logic);
end component;

begin
    u1: andgate port map(a, b, c);
    u2: xorgate port map(a, b, s);
end structural;