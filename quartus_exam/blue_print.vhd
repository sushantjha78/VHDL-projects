library ieee;
use ieee.std_logic_1164.all;

entity XXXXXX is
    port(
        clk, din, rst: in std_logic;
        in_vect : in std_logic_vector(1 downto 0);
        dout: out std_logic
        );
end XXXXXX;

architecture YYYYYY of XXXXXX is
    type state is (st0, st1, st2, st3, st4);
    signal present_state, next_state: state;
begin

    sync_process: process(clk)
    begin
        if rising_edge(clk) then
            if rst='1' then
                present_state<=st0;
            else
                present_state<=next_state;
            end if;
        end if;
    end process;

    state_output_change: process(present_state, din)
    begin
        case(present_state) is
            when st0 =>
                if din='1' then
                    next_state<=st1;
                    dout<=0;
                else
                    next_state<=st0;
                    dout<=0;
                end if;
            when st1 =>
                if din='1' then
                    next_state<=st2;
                    dout<=0;
                else
                    next_state<=st0;
                    dout<=0;
                end if;
            when st2 =>
                if din='1' then
                    next_state<=st3;
                    dout<=0;
                else
                    next_state<=st0;
                    dout<=0;
                end if;
            when st3 =>
                if din='1' then
                    next_state<=st4;
                    dout<=0;
                else
                    next_state<=st0;
                    dout<=0;
                end if;
            when st4 =>
                if din='1' then
                    next_state<=st4;
                    dout<=0;
                else
                    next_state<=st0;
                    dout<=0;
                end if;
        end case;
    end process;
end YYYYYY;

