Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;

Entity ejercicioA is
    Port (
	    SW1 : in STD_LOGIC;
		 SW2 : in STD_LOGIC;
		 LED : out STD_LOGIC);
		 
End ejercicioA;

Architecture comportamiento of ejercicioA is
Begin 
LED <= not (SW1 and SW2);
end comportamiento;
	
