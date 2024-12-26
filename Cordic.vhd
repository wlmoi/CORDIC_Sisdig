Willi
wlmoi
Idle



Text Channel
seventeen el kece:general
Search

general chat
Welcome to #general!
This is the start of the #general channel.
November 5, 2024

Rifki_Afriadi(👌) — 11/5/2024 3:11 PM
!Info
Everyone welcome Willi! — 11/5/2024 3:16 PM

Wave to say hi!
Everyone welcome Willi!

Rifki_Afriadi(👌) — 11/5/2024 3:18 PM

Daw is here. — 11/5/2024 3:37 PM


Wave to say hi!
A wild Aruk2 appeared. — 11/5/2024 3:37 PM

Wave to say hi!
November 14, 2024
Good to see you, ChatGPT. — 11/14/2024 2:27 PM

Rifki_Afriadi(👌)
 used 
chat

ChatGPT
APP
 — 11/14/2024 2:29 PM
New ChatGPT conversation started. Reply in this thread to start the conversation. Start your message with ** to tell the bot not to respond. Type /settings to change the model and restart the conversation.
Thread
ChatGPT | Conversation
17 Messages ›
There are no recent messages in this thread.

Rifki_Afriadi(👌) — 11/14/2024 2:29 PM
can you write vhdl code?

Rifki_Afriadi(👌)
 used 
chat

ChatGPT
APP
 — 11/14/2024 2:29 PM
New ChatGPT conversation started. Reply in this thread to start the conversation. Start your message with ** to tell the bot not to respond. Type /settings to change the model and restart the conversation.
Thread
ChatGPT | Conversation
1 Message ›
There are no recent messages in this thread.

Willi — 11/14/2024 4:36 PM
Yamete kudasai
December 25, 2024

Willi — Yesterday at 1:19 PM
@Rifki_Afriadi(👌)

Cordic.zip
35.71 KB

Willi — Yesterday at 1:37 PM
@Rifki_Afriadi(👌)        Cordic_angles = [ ...
            45.0, 26.5651, 14.0362, 7.1250, 3.5763, ...
            1.7899, 0.8952, 0.4476, 0.2238, 0.1119, ...
            0.0560, 0.0280, 0.0140, 0.0070, 0.0035, ...
            0.0017, 0.0009, 0.0004, 0.0002, 0.0001, ...
            0.00005, 0.00002, 0.00001, 0.000005, ...
            0.000002, 0.000001, 0.0000005, 0.0000002, ...
            0.0000001, 0.00000005, 0.00000002];
NEW
December 26, 2024

Willi — Today at 2:48 PM
0.607253
NEW

Willi — Today at 3:14 PM
Test for x_in < 0 rotate 0,+90, or-90 degrees
IF x_in >= 0 THEN
x(0) := x_in;
y(0) := y_in;
z(0) := 0;
ELSIF y_in >= 0 THEN
x(0) := y_in;
y(0) :=- x_in;
z(0) := 90;
ELSE
x(0) :=- y_in;
y(0) := x_in;
z(0) :=-90;
END IF;
END IF;
END PROCESS;
NEW
[3:14 PM]
@Rifki_Afriadi(👌)
NEW
[3:20 PM]
ok boi

Rifki_Afriadi(👌) — Today at 3:20 PM
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Cordic IS
  PORT(
    clk             : IN  std_logic;
    reset           : IN  std_logic;
    clk_enable      : IN  std_logic;
    cordic_on       : IN  std_logic;
    x_in            : IN  SIGNED(10 DOWNTO 0);
    y_in            : IN  SIGNED(10 DOWNTO 0);
    clk_enable_out  : OUT std_logic := '0';
    z               : OUT std_logic;
    r_cordic        : OUT SIGNED(29 DOWNTO 0) ; -- 15 bit di belakang koma
    p_cordic        : OUT SIGNED(16 DOWNTO 0) := (OTHERS => '0'); -- 7 bit di depan koma, 10 bit di belakang koma
    x_out           : OUT SIGNED(13 DOWNTO 0);
    y_out           : OUT SIGNED(13 DOWNTO 0)
  );
END Cordic;

ARCHITECTURE Behavioral OF Cordic IS
  TYPE state_type IS (IDLE, START, CALCULATE, STOP);
  SIGNAL state : state_type := IDLE;

  SIGNAL x, y : SIGNED(13 DOWNTO 0) := (OTHERS => '0');
  SIGNAL px, py : SIGNED(13 DOWNTO 0) := (OTHERS => '0');
  SIGNAL iteration : SIGNED(5 DOWNTO 0) := (OTHERS => '0');
  SIGNAL arc_tan_lut : SIGNED(31 DOWNTO 0) := (OTHERS => '0');
  SIGNAL r_unadjusted : SIGNED(27 DOWNTO 0) := (OTHERS => '0');
  SIGNAL shifted_x, shifted_y : SIGNED(13 DOWNTO 0);
  SIGNAL z_internal : SIGNED (32 DOWNTO 0) := (OTHERS => '0');
  SIGNAL r_mulitpler : SIGNED (15 DOWNTO 0) := "0100110110110010" ;

  TYPE lut_array IS ARRAY(0 TO 31) OF SIGNED(31 DOWNTO 0);

    -- Deklarasi konstanta LUT dengan nilai ArcTan (16-bit fixed-point)
    CONSTANT LUT_VALUES : lut_array := (
        ("10110100000000000000000000000000"),  -- ArcTan(2^0) = atan(1) ≈ 45° -> 45 * 2^13
        ("01101010010000101010100110010011"),   -- ArcTan(2^-1) = atan(0.5) ≈ 26.565° -> 26.565 * 2^13
        ("00111000001001010001000110011100"),   -- ArcTan(2^-2) = atan(0.25) ≈ 14.036° -> 14.036 * 2^13
        ("00011100100000000000010001001001"),   -- ArcTan(2^-3) = atan(0.125) ≈ 7.125° -> 7.125 * 2^13
        ("00001110010011100010000110010110"),    -- ArcTan(2^-4) = atan(0.0625) ≈ 3.576° -> 3.576 * 2^13
        ("00000111001010001101111001010011"),    -- ArcTan(2^-5) = atan(0.03125) ≈ 1.790° -> 1.790 * 2^13
        ("00000011100101001010100001101010"),    -- ArcTan(2^-6) = atan(0.015625) ≈ 0.895° -> 0.895 * 2^13
        ("00000001110010100101101101011110"),    -- ArcTan(2^-7) = atan(0.0078125) ≈ 0.448° -> 0.448 * 2^13
        ("00000000111001010010111010010100"),     -- ArcTan(2^-8) = atan(0.00390625) ≈ 0.224° -> 0.224 * 2^13
        ("00000000011100101001011101100110"),     -- ArcTan(2^-9) = atan(0.001953125) ≈ 0.112° -> 0.112 * 2^13
        ("00000000001110010100101110110111"),     -- ArcTan(2^-10) = atan(0.0009765625) ≈ 0.056° -> 0.056 * 2^13
        ("00000000000111001010010111011011"),      -- ArcTan(2^-11) = atan(0.00048828125) ≈ 0.028° -> 0.028 * 2^13
        ("00000000000011100101001011101110"),      -- ArcTan(2^-12) = atan(0.000244140625) ≈ 0.014° -> 0.014 * 2^13
        ("00000000000001110010100101110111"),      -- ArcTan(2^-13) = atan(0.0001220703125) ≈ 0.007° -> 0.007 * 2^13
        ("00000000000000111001010010111011"),      -- ArcTan(2^-14) = atan(0.00006103515625) ≈ 0.0035° -> 0.0035 * 2^13
        ("00000000000000011100101001011101"),      -- ArcTan(2^-15) = atan(0.000030517578125) ≈ 0.0018° -> 0.0018 * 2^13
        ("00000000000000001110010100101110"),      -- ArcTan(2^-16) ≈ 0.0009° -> 0.0009 * 2^13
        ("00000000000000000111001010010111"),      -- ArcTan(2^-17)
        ("00000000000000000011100101001011"),      -- ArcTan(2^-18)
        ("00000000000000000001110010100101"),      -- ArcTan(2^-19)
        ("00000000000000000000111001010010"),      -- ArcTan(2^-20)
        ("00000000000000000000011100101001"),      -- ArcTan(2^-21)
        ("00000000000000000000001110010100"),      -- ArcTan(2^-22)
        ("00000000000000000000000111001010"),      -- ArcTan(2^-23) 0.00001
        ("00000000000000000000000011100101"),      -- ArcTan(2^-24) 0.000005
        ("00000000000000000000000001110010"),      -- ArcTan(2^-25) 0.000002
        ("00000000000000000000000000111001"),      -- ArcTan(2^-26) 0.000001
        ("00000000000000000000000000011100"),      -- ArcTan(2^-27)
        ("00000000000000000000000000001110"),      -- ArcTan(2^-28)
        ("00000000000000000000000000000111"),      -- ArcTan(2^-29)
        ("00000000000000000000000000000011"),      -- ArcTan(2^-30)
        ("00000000000000000000000000000001")       -- ArcTan(2^-31)
    );

  COMPONENT W_RShift IS
    GENERIC(Size : INTEGER := 13);
    PORT(A : IN SIGNED(Size DOWNTO 0); Shift : IN INTEGER; Result : OUT SIGNED(Size DOWNTO 0));
  END COMPONENT;

  COMPONENT W_Multiplier IS
    GENERIC(Size : INTEGER := 14);
    PORT(A : IN SIGNED(Size DOWNTO 0); B : IN SIGNED(Size DOWNTO 0); Result : OUT SIGNED((2*Size) DOWNTO 0));
  END COMPONENT;

  COMPONENT LutTan IS
    PORT(
        iterasi  : IN  signed(5 downto 0);
        HasilLUT : OUT signed(31 downto 0)
    );
  END COMPONENT;

BEGIN
  -- Port mapping for W_RShift
  
  RShiftX_Instance: W_RShift GENERIC MAP (Size => 13) PORT MAP (A => x, Shift => to_integer((iteration)), Result => shifted_x);
  RShiftY_Instance: W_RShift GENERIC MAP (Size => 13) PORT MAP (A => y, Shift => to_integer((iteration)), Result => shifted_y);

  -- Multiplier for scaling x
  -- Multiplier_Instance: W_Multiplier GENERIC MAP (Size => 14) PORT MAP (A => x, B => to_signed(6072, 14), Result => r_unadjusted);

  -- LutTan instance
  LutTan_Instance: LutTan PORT MAP(iterasi => iteration, HasilLUT => arc_tan_lut);
... (63 lines left)
Collapse
message.txt
8 KB
NEW

Message #general
﻿





Members list for general (channel)
ONLINE, 4 MEMBERSONLINE — 4

Aruk2

ChatGPT
APP
Playing /chat for ChatGPT

Rifki_Afriadi(👌)

Willi
OFFLINE, 1 MEMBEROFFLINE — 1

Daw
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Cordic IS
  PORT(
    clk             : IN  std_logic;
    reset           : IN  std_logic;
    clk_enable      : IN  std_logic;
    cordic_on       : IN  std_logic;
    x_in            : IN  SIGNED(10 DOWNTO 0);
    y_in            : IN  SIGNED(10 DOWNTO 0);
    clk_enable_out  : OUT std_logic := '0';
    z               : OUT std_logic;
    r_cordic        : OUT SIGNED(29 DOWNTO 0) ; -- 15 bit di belakang koma
    p_cordic        : OUT SIGNED(16 DOWNTO 0) := (OTHERS => '0'); -- 7 bit di depan koma, 10 bit di belakang koma
    x_out           : OUT SIGNED(13 DOWNTO 0);
    y_out           : OUT SIGNED(13 DOWNTO 0)
  );
END Cordic;

ARCHITECTURE Behavioral OF Cordic IS
  TYPE state_type IS (IDLE, START, CALCULATE, STOP);
  SIGNAL state : state_type := IDLE;

  SIGNAL x, y : SIGNED(13 DOWNTO 0) := (OTHERS => '0');
  SIGNAL px, py : SIGNED(13 DOWNTO 0) := (OTHERS => '0');
  SIGNAL iteration : SIGNED(5 DOWNTO 0) := (OTHERS => '0');
  SIGNAL arc_tan_lut : SIGNED(31 DOWNTO 0) := (OTHERS => '0');
  SIGNAL r_unadjusted : SIGNED(27 DOWNTO 0) := (OTHERS => '0');
  SIGNAL shifted_x, shifted_y : SIGNED(13 DOWNTO 0);
  SIGNAL z_internal : SIGNED (32 DOWNTO 0) := (OTHERS => '0');
  SIGNAL r_mulitpler : SIGNED (15 DOWNTO 0) := "0100110110110010" ;
  SIGNAL x_hout, y_hout : SIGNED(14 DOWNTO 0) := (OTHERS => '0');

  TYPE lut_array IS ARRAY(0 TO 31) OF SIGNED(31 DOWNTO 0);

    -- Deklarasi konstanta LUT dengan nilai ArcTan (16-bit fixed-point)
    CONSTANT LUT_VALUES : lut_array := (
        ("10110100000000000000000000000000"),  -- ArcTan(2^0) = atan(1) ≈ 45° -> 45 * 2^13
        ("01101010010000101010100110010011"),   -- ArcTan(2^-1) = atan(0.5) ≈ 26.565° -> 26.565 * 2^13
        ("00111000001001010001000110011100"),   -- ArcTan(2^-2) = atan(0.25) ≈ 14.036° -> 14.036 * 2^13
        ("00011100100000000000010001001001"),   -- ArcTan(2^-3) = atan(0.125) ≈ 7.125° -> 7.125 * 2^13
        ("00001110010011100010000110010110"),    -- ArcTan(2^-4) = atan(0.0625) ≈ 3.576° -> 3.576 * 2^13
        ("00000111001010001101111001010011"),    -- ArcTan(2^-5) = atan(0.03125) ≈ 1.790° -> 1.790 * 2^13
        ("00000011100101001010100001101010"),    -- ArcTan(2^-6) = atan(0.015625) ≈ 0.895° -> 0.895 * 2^13
        ("00000001110010100101101101011110"),    -- ArcTan(2^-7) = atan(0.0078125) ≈ 0.448° -> 0.448 * 2^13
        ("00000000111001010010111010010100"),     -- ArcTan(2^-8) = atan(0.00390625) ≈ 0.224° -> 0.224 * 2^13
        ("00000000011100101001011101100110"),     -- ArcTan(2^-9) = atan(0.001953125) ≈ 0.112° -> 0.112 * 2^13
        ("00000000001110010100101110110111"),     -- ArcTan(2^-10) = atan(0.0009765625) ≈ 0.056° -> 0.056 * 2^13
        ("00000000000111001010010111011011"),      -- ArcTan(2^-11) = atan(0.00048828125) ≈ 0.028° -> 0.028 * 2^13
        ("00000000000011100101001011101110"),      -- ArcTan(2^-12) = atan(0.000244140625) ≈ 0.014° -> 0.014 * 2^13
        ("00000000000001110010100101110111"),      -- ArcTan(2^-13) = atan(0.0001220703125) ≈ 0.007° -> 0.007 * 2^13
        ("00000000000000111001010010111011"),      -- ArcTan(2^-14) = atan(0.00006103515625) ≈ 0.0035° -> 0.0035 * 2^13
        ("00000000000000011100101001011101"),      -- ArcTan(2^-15) = atan(0.000030517578125) ≈ 0.0018° -> 0.0018 * 2^13
        ("00000000000000001110010100101110"),      -- ArcTan(2^-16) ≈ 0.0009° -> 0.0009 * 2^13
        ("00000000000000000111001010010111"),      -- ArcTan(2^-17)
        ("00000000000000000011100101001011"),      -- ArcTan(2^-18)
        ("00000000000000000001110010100101"),      -- ArcTan(2^-19)
        ("00000000000000000000111001010010"),      -- ArcTan(2^-20)
        ("00000000000000000000011100101001"),      -- ArcTan(2^-21)
        ("00000000000000000000001110010100"),      -- ArcTan(2^-22)
        ("00000000000000000000000111001010"),      -- ArcTan(2^-23) 0.00001
        ("00000000000000000000000011100101"),      -- ArcTan(2^-24) 0.000005
        ("00000000000000000000000001110010"),      -- ArcTan(2^-25) 0.000002
        ("00000000000000000000000000111001"),      -- ArcTan(2^-26) 0.000001
        ("00000000000000000000000000011100"),      -- ArcTan(2^-27)
        ("00000000000000000000000000001110"),      -- ArcTan(2^-28)
        ("00000000000000000000000000000111"),      -- ArcTan(2^-29)
        ("00000000000000000000000000000011"),      -- ArcTan(2^-30)
        ("00000000000000000000000000000001")       -- ArcTan(2^-31)
    );

  COMPONENT W_RShift IS
    GENERIC(Size : INTEGER := 13);
    PORT(A : IN SIGNED(Size DOWNTO 0); Shift : IN INTEGER; Result : OUT SIGNED(Size DOWNTO 0));
  END COMPONENT;

  COMPONENT W_Multiplier IS
    GENERIC(Size : INTEGER := 14);
    PORT(A : IN SIGNED(Size DOWNTO 0); B : IN SIGNED(Size DOWNTO 0); Result : OUT SIGNED((2*Size) DOWNTO 0));
  END COMPONENT;

  COMPONENT LutTan IS
    PORT(
        iterasi  : IN  signed(5 downto 0);
        HasilLUT : OUT signed(31 downto 0)
    );
  END COMPONENT;

BEGIN
  -- Port mapping for W_RShift
  
  RShiftX_Instance: W_RShift GENERIC MAP (Size => 13) PORT MAP (A => x, Shift => to_integer((iteration)), Result => shifted_x);
  RShiftY_Instance: W_RShift GENERIC MAP (Size => 13) PORT MAP (A => y, Shift => to_integer((iteration)), Result => shifted_y);
  MinusX_in : W_Subtractor GENERIC MAP (Size => 14) PORT MAP (A => 0, B => x_in, Result => x_hout);
  MinusY_in : W_Subtractor GENERIC MAP (Size => 14) PORT MAP (A => 0, B => y_in, Result => y_hout);
  -- Multiplier for scaling x
  -- Multiplier_Instance: W_Multiplier GENERIC MAP (Size => 14) PORT MAP (A => x, B => to_signed(6072, 14), Result => r_unadjusted);

  -- LutTan instance
  LutTan_Instance: LutTan PORT MAP(iterasi => iteration, HasilLUT => arc_tan_lut);
  PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      state <= IDLE;
      x <= (OTHERS => '0');
      y <= (OTHERS => '0');
      z_internal <= (OTHERS => '0');
      iteration <= (OTHERS => '0');
      z <= '0';
    ELSIF rising_edge(clk) THEN
    
    
      CASE state IS
        WHEN IDLE =>
          IF cordic_on = '1' THEN state <= START; END IF;

        WHEN START =>
          x <= RESIZE(x_in, 14);
          y <= RESIZE(y_in, 14);
          z_internal <= (OTHERS => '0');
          iteration <= (OTHERS => '0');
          
          -- -- Konverter Kuadran untuk semua kemungkinan!!!
            IF x_in >= 0 THEN -- Kuadran 1 dan Kuadran 4
            
                x <= RESIZE(x_in, 14);
                y <= RESIZE(y_in, 14);
                z_internal <= to_signed(0, 32);
            ELSIF y_in >= 0 THEN -- Kuadran 2
            
                x <= RESIZE(x_hout, 14);
                y <= RESIZE(y_in, 14);
                z_internal <= to_signed(90, 32);
            ELSE -- Kuadran 3
            x <= RESIZE(x_hout, 14);
            y <= RESIZE(y_hout, 14);
            z_internal <= resize(-90, 32);
            END IF;

          state <= CALCULATE;

        WHEN CALCULATE =>
          IF to_integer(unsigned(iteration)) < 16 THEN
            px <= shifted_x;
            py <= shifted_y;
            IF y < 0 THEN
              z_internal <= z_internal - (('0') & signed(LUT_VALUES(to_integer(iteration)))); -- Gunakan LUT
              x <= x - shifted_y;
              y <= y + shifted_x;
            ELSE
              z_internal <= z_internal + (('0') & signed(LUT_VALUES(to_integer(iteration)))); -- Gunakan LUT
              x <= x + shifted_y;
              y <= y - shifted_x;
            END IF;
            iteration <= iteration + 1;
          ELSE
            state <= STOP;
          END IF;

        WHEN STOP =>
          r_cordic <= (x) * (r_mulitpler);
          p_cordic <= z_internal(32 DOWNTO 16 );
          x_out <= x;
          y_out <= y;
          z <= '1';
          state <= IDLE;

        WHEN OTHERS =>
          state <= IDLE;
      END CASE;
    END IF;
  END PROCESS;

END Behavioral;