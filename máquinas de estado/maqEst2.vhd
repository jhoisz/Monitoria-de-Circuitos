library library IEEE;
use IEEE.std_logic_1164.all;

entity maqEst2 is
    port(
        clk : in bit;
        sobe : in bit;
        reset : in bit;
        q : out bit_vector(1 downto 0)
    );
end maqEst2;

architecture circuito of maqEst2 is
    signal estado: integer range 3 downto 0;
begin
    abc: process(clk, reset)
    begin
        if reset = '1' then
            estado <= 0;
        elsif (clk'event and clk ='1') then
            case estado is
                when 0 =>
                    if sobe='1' then estado <= 1;
                    else             estado <= 3;
                    end if;
                when 1 =>
                    if sobe='1' then estado <= 2;
                    else             estado <= 0;
                    end if;
                when 2 =>
                    if sobe='1' then estado <= 3;
                    else             estado <= 1;
                    end if;
                when 3 =>
                    if sobe='1' then estado <= 0;
                    else             estado <= 2;
                    end if;
                end case;
            end process abc;

        with estado select
            q <="00" when 0,
                "01" when 1,
                "11" when 2,
                "10" when 3;
end circuito;