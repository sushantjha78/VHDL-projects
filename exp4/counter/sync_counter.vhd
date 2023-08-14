--8-bit unsigned up counter with synchronous clear

library  IEEE;
use  IEEE.STD_LOGIC_1164.ALL;
use  IEEE.STD_LOGIC_ARITH.ALL;
use  IEEE.STD_LOGIC_UNSIGNED.ALL;

0port (
    clk  :  in  std_logic;
    reset  :  in  std_logic; enable  :  in  std_logic;
    q  :  out  integer  range  0  to  255
);
end  sync_counter;


architecture  rtl  of  sync_counter  is
    begin
    process  (clk)
        variable  cnt  :  integer  range  0  to  255; begin
        if  (clk='1')  then
            if  reset  =  '1'  then
                cnt  :=  15; --  Reset to  15
            elsif  enable  =  '1'  then
            cnt  :=  cnt  +  1;
            end  if;
        end  if;
        q  <=  cnt;
    end  process;
end  rtl;