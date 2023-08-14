library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux_ifte is
    port (
      D : in std_logic_vector(0 to 3);
      sel : in std_logic_vector(0 to 1);
      y : out std_logic
    ) ;
  end Mux_ifte ;

architecture Mux_arch_if_then_else of Mux_ifte is
  begin
    process(sel)
    begin
      if sel = "00" then
        y <= D(0);
      elsif sel = "01" then
        y <= D(1);
      elsif sel = "10" then
        y <= D(2);
      elsif sel = "11" then
        y <= D(3);
      else
        y <= '0';
      end if;
    end process;
end Mux_arch_if_then_else ;