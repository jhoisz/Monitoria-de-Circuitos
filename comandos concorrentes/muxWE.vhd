library library IEEE;
use IEEE.std_logic_1164.all;

entity muxWE is
    port(
        i0, i1, i2, i3 : in bit;
        s0, s1 : in bit;
        ot : out bit
    );
end muxWE;

architecture circuito of muxWE is
    signal s1_s0 : bit_vector(1 downto 0);
begin
    s1_s0 <= s1 & s0;

    ot <=   i0 when s1 = '0' and s0='0' else
            i1 when s1 = '0' and s0='0' else
            i2 when s1_s0 = "10" else
            i3;
end circuito;