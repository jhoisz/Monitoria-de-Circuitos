library library IEEE;
use IEEE.std_logic_1164.all;

entity caseWhen is
    port(
        i0, i1, i2, i3 : in bit;
        s0, s1 : in bit;
        ot : out bit
    );
end caseWhen;

architecture circuito of caseWhen is
    signal sel : bit_vector(1 downto 0);
begin
    sel <= s1 & s0;

    abc : process(i0, i1, i2, i3, sel)
    begin
        case sel is
            when "00" => ot <= i0;
            when "01" => ot <= i1;
            when "10" => ot <= i2;
            when others => ot <= i3;
        end case;
    end process abc;
end circuito;