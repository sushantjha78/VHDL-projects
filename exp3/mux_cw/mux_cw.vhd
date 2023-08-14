library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux_cw is
    port (
      D : in std_logic_vector(0 to 3);
      sel : in std_logic_vector(0 to 1);
      y : out std_logic
    ) ;
end Mux_cw ;

architecture Mux_arch_case_when of Mux_cw is
begin
    process(sel)
    begin
      case sel is
        when "00" => y <= D(0);
        when "01" => y <= D(1);
        when "10" => y <= D(2);
        when "11" => y <= D(3);
        when others => y <= '0';
      end case;
    end process;
end Mux_arch_case_when ;