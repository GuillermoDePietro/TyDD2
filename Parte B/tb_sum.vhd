library ieee;
use ieee. std_logic_1164.all;

entity tb_sum is
end tb_sum;

architecture conducta of tb_sum is
component sum
port(in_a,in_b,in_c,clk: in std_logic;
o_ca,o_s: out std_logic);
end component;

signal in_a: std_logic :='0';
signal in_b: std_logic :='0';
signal in_c: std_logic :='0';
signal clk: std_logic :='0';
signal o_ca: std_logic :='0';
signal o_s: std_logic :='0';

constant clok_p : time := 20ns;

BEGIN
uut: sum port map(
in_a => in_a,
in_b => in_b,
in_c => in_c,
clk => clk,
o_ca => o_ca,
o_s => o_s);

clok_pro: process
begin
clk <='0';
wait for clok_p/2;
clk <='1';
wait for clok_p/2;
end process;

s_pr: process
begin
in_a <= '0'; in_b <= '0'; in_c <= '0'; wait for 30ns;
in_a <= '0'; in_b <= '0'; in_c <= '1'; wait for 30ns;
in_a <= '0'; in_b <= '1'; in_c <= '0'; wait for 30ns;
in_a <= '0'; in_b <= '1'; in_c <= '1'; wait for 30ns;
in_a <= '1'; in_b <= '0'; in_c <= '0'; wait for 30ns;
in_a <= '1'; in_b <= '0'; in_c <= '1'; wait for 30ns;
in_a <= '1'; in_b <= '1'; in_c <= '0'; wait for 30ns;
in_a <= '1'; in_b <= '1'; in_c <= '1'; wait for 30ns;
wait;
end process;
END;