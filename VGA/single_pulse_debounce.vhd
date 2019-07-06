--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
--------------------------------------------------------------------------------
ENTITY single_pulse_debounce IS
  GENERIC (time_milis : INTEGER := 100;
           board_clk : INTEGER := 50_000_000);
  PORT (
        key_in : IN std_logic;
        clk : IN std_logic;
        pulse_out : OUT std_logic;
        key_out: OUT std_logic);
END single_pulse_debounce;
--------------------------------------------------------------------------------
ARCHITECTURE single_pulse_debounce OF single_pulse_debounce IS
  CONSTANT reset_value : INTEGER := 0;
  CONSTANT freq_scale : INTEGER := board_clk / 1_000;
BEGIN
  PROCESS (CLK)
  VARIABLE last_in, current_in,enable,pulse,key : STD_logic := '0';
  VARIABLE temp : INTEGER RANGE 0 TO time_milis;
  VARIABLE freq_counter : INTEGER RANGE 0 TO freq_scale;
    BEGIN
      IF (rising_edge(clk)) THEN
        freq_counter := freq_counter + 1;
        current_in := key_in;
        pulse := '0';
        IF (current_in /= last_in) THEN  -- A border must have been occurred
          enable := '1';
          temp := reset_value;
        END IF;
        IF (freq_counter = freq_scale) THEN
          freq_counter := reset_value;
          IF (enable = '1') THEN
            temp := temp + 1;
            IF (temp = time_milis) THEN
              temp := reset_value;
              enable := '0';
              pulse := current_in;
              key := current_in;
            END IF;
          END IF;
        END IF;
        last_in := current_in;
      END IF;
		  pulse_out <= pulse;
      key_out <= key;
    END PROCESS;
END single_pulse_debounce;
--------------------------------------------------------------------------------
