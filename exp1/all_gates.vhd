-- Logic gates
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity logic_gates is
port(
    a: in STD_LOGIC;
    b: in STD_LOGIC;
    c: out STD_LOGIC;
    c1: out STD_LOGIC;
    c2: out STD_LOGIC;
    c3: out STD_LOGIC;
    c4: out STD_LOGIC;
    c5: out STD_LOGIC;
    c6: out STD_LOGIC);
end logic_gates;

architecture Behavioral of logic_gates is
begin 
    c <= a and b;
    c1 <= a or b;
    c2 <= a nand b;
    c3 <= a nor b;
    c4 <= a xor b;
    c5 <= a xnor b;
    c6 <= not b;
end behavioral;