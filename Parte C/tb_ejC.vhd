--La simulacion no me correcto si utilizo el .bdf
--pero si utilizo el .vhd si da correcto
--pero no me deja tener los dos en files porque poseen el mismo nombre
--dejo el .bdf porque me parece mas lindo a la vista :)
Library ieee;
use ieee.std_logic_1164.all;

entity tb_ejC is 
end tb_ejC;

architecture comportamiento of tb_ejC is
 component EjercicioC
	    port (
	     A0   : in STD_LOGIC;
		  B0   : in STD_LOGIC;
		  A1   : in STD_LOGIC;
		  B1   : in STD_LOGIC;
		  A2   : in STD_LOGIC;
		  B2   : in STD_LOGIC;
		  A3   : in STD_LOGIC;
		  B3   : in STD_LOGIC;
		  SoR : in STD_LOGIC;
		  clk    : in STD_LOGIC;
		  S0    : out STD_LOGIC;
		  S1    : out STD_LOGIC;
		  S2    : out STD_LOGIC;
		  S3    : out STD_LOGIC;
		  C : out STD_LOGIC;
		  V : out STD_LOGIC;
		  Z : out STD_LOGIC;
		  N : out STD_LOGIC
	      );
	end component;
	
	signal A0   : std_logic := '0';
	signal B0   : std_logic := '0';
	signal A1   : std_logic := '0';
	signal B1   : std_logic := '0';
   signal A2   : std_logic := '0';
	signal B2   : std_logic := '0';
   signal A3   : std_logic := '0';
	signal B3   : std_logic := '0';
	signal SoR  : std_logic := '0';
	signal clk  : std_logic := '0';
	
	signal S0    : std_logic;
	signal S1    : std_logic;
	signal S2    : std_logic;
	signal S3    : std_logic;
	signal C : std_logic;
	signal V    : std_logic;
	signal Z    : std_logic;
	signal N    : std_logic;

Constant clk_p : time := 40ns;
	
begin
	uut : EjercicioC port map (
	    A0 => A0,
		 A1 => A1,
		 A2 => A2,
		 A3 => A3,
		 B0 => B0,
		 B1 => B1,
		 B2 => B2,
		 B3 => B3,
		 SoR => SoR,
		 clk => clk,
		 S0 => S0,
		 S1 => S1,
		 S2 => S2,
		 S3 => S3,
		 C => C,
		 V => V,
		 Z => Z,
		 N => N
	    );
		 
	clok_pro: process
begin
clk <='0';
wait for clk_p/2;
clk <='1';
wait for clk_p/2;
end process;
	
	s_pr: process 
	begin 
	A0 <= '0';A1 <= '0';A2 <= '0';A3 <= '0';B0 <= '0';B1 <= '0'; B2 <= '0'; B3 <= '0'; SoR <= '0'; wait for 30ns;
	A0 <= '1';A1 <= '0';A2 <= '1';A3 <= '0';B0 <= '0';B1 <= '1'; B2 <= '0'; B3 <= '0'; SoR <= '1';wait for 30ns;
	A0 <= '0';A1 <= '1';A2 <= '1';A3 <= '1';B0 <= '1';B1 <= '1'; B2 <= '0'; B3 <= '0'; SoR <= '0';wait for 30ns;
	A0 <= '1';A1 <= '1';A2 <= '0';A3 <= '0';B0 <= '0';B1 <= '1'; B2 <= '1'; B3 <= '1'; SoR <= '1';wait for 30ns;
	wait;
	end process;
	end;
	