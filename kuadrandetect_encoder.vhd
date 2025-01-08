LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY kuadrandetect_encoder IS
    PORT (
        degree   : IN signed (19 downto 0);
        kuadran  : OUT unsigned (1 downto 0);
        newdegree: OUT signed (16 downto 0);
        x_in     : IN signed (16 downto 0);
        y_in     : IN signed (16 downto 0);
        x_prev   : IN signed (16 downto 0);
        y_prev   : IN signed (16 downto 0);
        x_out    : OUT signed (16 downto 0);
        y_out    : OUT signed (16 downto 0)
        );
END kuadrandetect_encoder;

ARCHITECTURE behavioral OF kuadrandetect_encoder IS
    CONSTANT sembilanpuluh   : signed (19 downto 0) := "00010110100000000000";
    CONSTANT satudelapanpuluh: signed (19 downto 0) := "00101101000000000000";
    CONSTANT duatujuhpuluh   : signed (19 downto 0) := "01000011100000000000";
    CONSTANT tigaenampuluh   : signed (19 downto 0) := "01011010000000000000";
    signal x_delta , y_delta : signed (18 downto 0) ;

BEGIN
    PROCESS (degree)
        VARIABLE kuadrandua   : signed (19 downto 0);
        VARIABLE kuadrantiga  : signed (19 downto 0);
        VARIABLE kuadranempat : signed (19 downto 0);
    BEGIN
    -- Handle Delta_x dan Delta_y menentukan dia arahnya ke kuadran mana
    x_delta <= x_in - x_prev;
    y_delta <= y_in - y_prev;

-- 1. 0 <= x_delta <= 0 dan 0 <= y_delta (Kuadran 1)
IF (x_delta >= 0 AND y_delta >= 0) then
        x_out <= resize(x_delta,16);
        y_out <= y_delta;
    END IF;

-- 2. x_delta < 0 dan 0 <= y_delta (Kuadran 2)
-- 3. x_delta < 0 dan y_delta < 0 (Kuadran 3)
-- 4. 0 <= x_delta dan y_delta < 0 (Kuadran 4)
    --- Handle Degrees and Quadrants
    --- Cara Kerjanya akan diubah semua ke 0<= degree <= 90 agar bisa dicordickan
        IF degree <= sembilanpuluh THEN
            kuadran <= "00"; -- Kuadran 1
            newdegree <= degree(16 downto 0);
        ELSIF degree > sembilanpuluh AND degree <= satudelapanpuluh THEN
            kuadran <= "01"; -- Kuadran 2
            kuadrandua := satudelapanpuluh - degree;
            newdegree <= kuadrandua(16 downto 0);
        ELSIF degree > satudelapanpuluh AND degree <= duatujuhpuluh THEN
            kuadran <= "10"; -- Kuadran 3
            kuadrantiga := degree - satudelapanpuluh;
            newdegree <= kuadrantiga(16 downto 0);
        ELSIF degree > duatujuhpuluh AND degree <= tigaenampuluh THEN
            kuadran <= "11"; -- Kuadran 4
            kuadranempat := tigaenampuluh - degree;
            ELSE
                kuadran <= (OTHERS => '0');
                newdegree <= (OTHERS => '0');
            END IF;


    END PROCESS;
    
END behavioral;
