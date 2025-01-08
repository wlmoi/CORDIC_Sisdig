library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity verificator is
    Generic (
        WIDTH : integer := 10 -- Panjang bit input
    );
    Port (
        x           : in  signed(WIDTH downto 0);  -- Input x
        y           : in  signed(WIDTH downto 0);  -- Input y
        r_cordic    : out signed(29 downto 0);     -- Resultant magnitude
        teta_asli   : out signed(19 downto 0);     -- Phase (angle)
        cordic_on   : out std_logic               -- CORDIC enable signal
    );
end verificator;

architecture Behavioral of verificator is

    -- Sinyal untuk hasil pergeseran x
    signal fixed_R : signed(29 downto 0);

    -- Sinyal sementara untuk hasil perhitungan
    signal temp_x       : signed(29 downto 0);
    signal temp_abs_x   : signed(29 downto 0);

    -- Komponen W_LShift
    component W_LShift
        generic(
            Size : INTEGER := 29
        );
        port(
            A      : in  signed(Size downto 0);
            Shift  : in  integer;
            Result : out signed(Size downto 0)
        );
    end component;

begin

    -- Main Process untuk menghitung nilai sinyal sementara
    process(x)
    begin
        temp_abs_x <= resize(to_signed(abs(to_integer(x)), 30), 30); -- Absolute value of x, potong ke 29 bit
    end process;

    -- Instansiasi W_LShift untuk fixed_R
    SignedX2: W_LShift
        generic map (Size => 29)
        port map (
            A      => temp_abs_x,
            Shift  => 15, -- Ubah agar ke integer nya gimana
            Result => fixed_R
        );

    -- Main Process untuk menghitung output
    process(x, y)
    begin
        -- Nilai default
        cordic_on <= '0';
        r_cordic <= (others => '0');
        teta_asli <= (others => '0');

        -- Cek batas nilai x dan y
        if abs(to_integer(x)) > 1000 or abs(to_integer(y)) > 1000 then
            r_cordic <= to_signed(0, 30); -- Sesuaikan panjang bit dengan r_cordic
            teta_asli <= to_signed(0, 20); -- Sesuaikan panjang bit dengan teta_asli
        elsif y = 0 then
            -- Kasus khusus pada sumbu x
            if x > 0 then
                r_cordic <= fixed_R; -- Gunakan hasil langsung dari fixed
                teta_asli <= to_signed(0, 20); -- Sudut 0 derajat
            elsif x < 0 then
                r_cordic <= fixed_R; -- Gunakan hasil langsung dari fixed
                teta_asli <= "0010110100000000000"; -- Sudut 180 derajat
            else
                r_cordic <= to_signed(0, 30);
                teta_asli <= to_signed(0, 20); -- Tidak bergerak (origin)
            end if;
        else
            -- Aktifkan CORDIC jika nilai valid (Hidupkan sebentar agar Cordic kerja dan ubah mode penerimaan r_cordic dan teta ke Cordic)
            cordic_on <= '1';
        end if;
    end process;

end Behavioral;
