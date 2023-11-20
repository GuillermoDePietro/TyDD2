library ieee;
use ieee. std_logic_1164.all;

entity tb_ejA is
end tb_ejA;


Architecture comportamiento of tb_ejA is

   Component ejercicioA 
	   Port(
		 SW1 : in STD_LOGIC;
		 SW2 : in STD_LOGIC;
		 LED : out STD_LOGIC);
	end component;
	
	
	signal SW1 : std_logic :='0';
	signal SW2 : std_logic :='0';
	
	signal LED : std_logic;
	
Begin 
   uut: ejercicioA port map (
	   SW1 => SW1,
		SW2 => SW2,
		LED => LED
	);
	
	s_proc : process 
	begin 
	   SW1 <= '0'; SW2 <= '0'; wait for 10ns;
		SW1 <= '0'; SW2 <= '1'; wait for 10ns;
		SW1 <= '1'; SW2 <= '0'; wait for 10ns;
		SW1 <= '1'; SW2 <= '1'; wait for 10ns;
	wait;
	end process;
	end;