library library IEEE;
use IEEE.std_logic_1164.all;

entity atrib is
    port(
        x1 : in integer;
        y1, z1 : out integer
    );
end atrib;

architecture circuito of atrib is
    signal s1 : integer; -- declaracao de um inteiro
    constant c1 : integer := 7; -- declaracao de uma constante inteira
begin -- inicio do codigo concorrente
    y1 <= s1;
    s1 <= x1;

    z1 <= c1;
end circuito;