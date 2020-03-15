library library IEEE;
use IEEE.std_logic_1164.all;

entity conc is 
port(
    bvA, bvB : in bit_vector(1 downto 0);
    intA, intB : in integer range -32 to 31;
    bvC, bvD : in out bit_vector(3 downto 0);
    intC : out integer range -64 to 63
);
end conc;

architecture circuito of conc is
begin 
    bvC <= bvA & bvB;
    bvD <= bvA & '1' & '0';
    intC <= -intA +intB;
end circuito;