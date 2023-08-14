library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux_wsw is
	port (
	  D : in std_logic_vector(0 to 1);
	  sel : in std_logic;
	  y : out std_logic
	) ;
  end Mux_wsw ;

architecture Mux_arch_with_select of Mux_wsw is
	begin
	  with sel select
		y<= D(0) when "0",
			D(1) when "1",
			'0' when others;
end Mux_arch_with_select ;


-- library ieee;
-- use ieee.std_logic_1164.all;
-- use ieee.numeric_std.all;


-- entity mux4x1 is
-- 	port (
-- 		D : in std_logic_vector(0 to 3);
-- 		sel : in std_logic_vector(0 to 1);
-- 		y : out std_logic;
-- 	) ;
-- 	end mux4x1 ;

-- architecture Mux_4_to_1 of mux4x1 is
-- 	component Mux_wsw
-- 	port(D, sel: in std_logic; y: out std_logic);
-- 	end component;

-- 	begin
-- 		u1: mux_wsw port map (D(0,1));
-- 		u2: mux_wsw port map (D(2,3));

-- 	end mux_4_to_1;
