-- Nama         : William Anthony
-- NIM          : 13223048
-- Tanggal      : 13 Desember 2024
-- Fungsi       : Melakukan Left Shifting untuk Algoritma Cordic

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity W_LShift is

    generic(
        Size : integer := 15
    );

    port(
        A : in signed(Size downto 0);
        Shift : in integer;
        Result : out signed(Size downto 0)
    );
end entity W_LShift;

-- architecture of W_LShift
architecture rtl of W_LShift is
    begin
    Result <= shift_left(A, Shift);
    
-- Perhatikan bisa Overflow, will be fixed in the next version
end architecture rtl;