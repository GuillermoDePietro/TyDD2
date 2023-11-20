library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity D_FF is
 port(D,clok: in std_logic;
  Q: out std_logic);
 end D_FF;

architecture conducta of D_FF is
 begin 
  process(clok)
   begin
    if (clok='1' and clok'event)then 
     Q <= D;
    end if;
  end process;
 end conducta;
