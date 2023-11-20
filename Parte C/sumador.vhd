library ieee;
Use ieee. std_logic_1164.all;

entity sumador is
port(
a,b,c: in std_logic;
s,carry: out std_logic);
end sumador;

architecture conducta of sumador is 
 begin
  s <= a xor b xor c;
  carry <= (a and b) or (c and (a or b));
 end conducta;