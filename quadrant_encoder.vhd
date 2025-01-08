LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY theta_encoder IS
  PORT (
    clk            : IN  std_logic;           -- Clock
    reset          : IN  std_logic;           -- Reset
    theta_in       : IN  SIGNED(31 DOWNTO 0); -- Theta input dalam fixed-point
    theta_encoded  : OUT SIGNED(31 DOWNTO 0)  -- Theta yang telah disesuaikan
  );
END theta_encoder;

ARCHITECTURE Behavioral OF theta_encoder IS
  CONSTANT PI_FIXED     : SIGNED(31 DOWNTO 0) := "00110010000000000000000000000000"; -- π dalam fixed-point 16.16
  CONSTANT TWO_PI_FIXED : SIGNED(31 DOWNTO 0) := "01100100000000000000000000000000"; -- 2π dalam fixed-point 16.16
  CONSTANT NEG_PI_FIXED : SIGNED(31 DOWNTO 0) := "11001110000000000000000000000000"; -- -π dalam fixed-point 16.16

  TYPE state_type IS (IDLE, ADJUST, NORMALIZE, DONE);
  SIGNAL state : state_type := IDLE;

  SIGNAL temp_theta : SIGNED(31 DOWNTO 0) := (OTHERS => '0');
BEGIN
  PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      state <= IDLE;
      temp_theta <= (OTHERS => '0');
      theta_encoded <= (OTHERS => '0');
    ELSIF rising_edge(clk) THEN
      CASE state IS
        WHEN IDLE =>
          temp_theta <= theta_in;
          state <= ADJUST;

        WHEN ADJUST =>
          -- Tambahkan atau kurangi π jika di kuadran 2 atau 3
          IF temp_theta > PI_FIXED THEN
            temp_theta <= temp_theta - TWO_PI_FIXED; -- Jika θ > π, kurangi 2π
          ELSIF temp_theta < NEG_PI_FIXED THEN
            temp_theta <= temp_theta + TWO_PI_FIXED; -- Jika θ < -π, tambahkan 2π
          END IF;
          state <= NORMALIZE;

        WHEN NORMALIZE =>
          -- Pastikan sudut dalam rentang [-π, π]
          IF temp_theta > PI_FIXED THEN
            temp_theta <= temp_theta - TWO_PI_FIXED; -- Kurangi 2π
          ELSIF temp_theta < NEG_PI_FIXED THEN
            temp_theta <= temp_theta + TWO_PI_FIXED; -- Tambahkan 2π
          ELSE
            state <= DONE;
          END IF;

        WHEN DONE =>
          theta_encoded <= temp_theta;
          state <= IDLE;

        WHEN OTHERS =>
          state <= IDLE;
      END CASE;
    END IF;
  END PROCESS;
END Behavioral;
