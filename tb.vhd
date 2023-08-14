LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
library work;
use work.fft_pkg.all;

ENTITY tb IS
END tb;

ARCHITECTURE behavior OF tb IS
   signal s,y : comp_array;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
   uut: entity work.fft8 PORT MAP (
          s => s,
             y => y
        );
   
   -- Stimulus process
   stim_proc: process
   begin       
    --sample inputs in time domain.
      s(0) <= (-2.0,1.2);  
        s(1) <= (-2.2,1.7);
        s(2) <= (1.0,-2.0);
        s(3) <= (-3.0,-3.2);   
        s(4) <= (4.5,-2.5);
        s(5) <= (-1.6,0.2);
        s(6) <= (0.5,1.5); 
        s(7) <= (-2.8,-4.2);   
      wait;
   end process;

END;