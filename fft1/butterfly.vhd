library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.fft_pkg.ALL;

entity butterfly is
port(
s1, s2 : in complex;
w :in complex;
g1, g2 :out complex
);
end butterfly;

architecture Behavioral of butterfly is
    begin
    -- butterfly equations.
    g1 <= add(s1, mult(s2, w));
    g2 <= sub(s1, mult(s2, w));
end Behavioral;