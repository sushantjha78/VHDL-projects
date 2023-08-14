library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux_wsw is
	port (
	  D1, D2 : in std_logic;
	  sel : in std_logic;
	  y : out std_logic
	) ;
  end Mux_wsw ;

architecture Mux_arch_with_select of Mux_wsw is
	begin
	  with sel select
		y<= D1 when '0',
			D2 when '1',
			'0' when others;
end Mux_arch_with_select ;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity mux4x1 is
	port (
		D1, D2, D3, D4 : in std_logic;
		sel1,sel2 : in std_logic;
		y: out std_logic
	) ;
	end mux4x1 ;

architecture Mux_4_to_1 of mux4x1 is
	component Mux_wsw
	port(D1,D2, sel1: in std_logic; y: out std_logic);
	end component;

	begin
	signal sig1: std_logic;
	signal sig2: std_logic;
	
		u1: mux_wsw port map (D1, D2, sel1: sel1, sig1);
		u2: mux_wsw port map (D3, D4, sel1: sel1, sig2);
		u3: mux_wsw port map (sig1, sig2, sel1: sel2, y);

	end mux_4_to_1;
