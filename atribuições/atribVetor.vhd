library library IEEE;
use IEEE.std_logic_1164.all;

entity atribVetor is 
port(
    s1, s2, s3, s4, s5 : out bit_vector(3 downto 0)
);
end atribVetor;

architecture circuito of atribVetor is
    constant c1 : bit_vector(3 downto 0) := "1011";
begin
    s1 <= c1;                              -- definindo atraves de uma constante
    s2 <= "1011";                          -- definindo bit a bit
    s3 <= B"1_0_11";                       -- binario default com separadores
    s4 <= X"B";                            -- hexadecinal
    s5 <= (3 => '1', 2 '0', others => '1');-- uso da palavra reservada others
end circuito;