library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.spaceInvadersConstants.all;


ENTITY VGA IS
PORT(
CLOCK_50, RESET: IN STD_LOGIC;
VGA_HS,VGA_VS:OUT STD_LOGIC;
SW: STD_LOGIC_VECTOR(1 downto 0);
KEY: STD_LOGIC_VECTOR(3 DOWNTO 0);
VGA_R,VGA_B,VGA_G: OUT STD_LOGIC_VECTOR(3 downto 0)
);
END VGA;


ARCHITECTURE MAIN OF VGA IS
	SIGNAL enemies: enemyPositions;
	SIGNAL players: playerPositions;
	CONSTANT enemiesRunning: STD_LOGIC_VECTOR(N_ENEMIES - 1 downto 0) := "11";
	SIGNAL VGACLK:STD_LOGIC;
	COMPONENT SYNC IS
	PORT(
		CLK, RST: IN STD_LOGIC;
		HSYNC: OUT STD_LOGIC;
		VSYNC: OUT STD_LOGIC;
		R: OUT STD_LOGIC_VECTOR(3 downto 0);
		G: OUT STD_LOGIC_VECTOR(3 downto 0);
		B: OUT STD_LOGIC_VECTOR(3 downto 0);
		enemies: IN enemyPositions;
		enemiesRunning: IN STD_LOGIC_VECTOR(N_ENEMIES - 1 downto 0);
		players: IN playerPositions
	);
	END COMPONENT SYNC;

	COMPONENT single_pulse_debounce IS 
	PORT (
        key_in : IN std_logic;
        clk : IN std_logic;
        pulse_out : OUT std_logic;
        key_out: OUT std_logic);
	END COMPONENT single_pulse_debounce;

	SIGNAL dbcOut: STD_LOGIC;

    component pll is
        port (
            clk_out_clk : out std_logic;        -- clk
            clk_in_clk  : in  std_logic := 'X'; -- clk
            reset_reset  : in  std_logic := 'X'  -- reset
        );
	 END COMPONENT pll;
 BEGIN

	enemies <= ((1,5),(0,3));

	PROCESS (CLOCK_50)
	VARIABLE player1x: integer := SCREEN_WIDTH/2;
	VARIABLE player2x: integer := SCREEN_WIDTH/2;
	BEGIN
	IF RESET = '0' THEN
		player1x := SCREEN_WIDTH/2;
		player2x := SCREEN_WIDTH/2;
	ELSIF (CLOCK_50'EVENT AND CLOCK_50 = '1') THEN
		IF(dbcOut = '1') THEN
			player2x := player2x + 1;
			IF player2x > SCREEN_WIDTH THEN
				player2x := 0;
			END IF;
			player1x := player1x - 1;
			IF player1x < 0 THEN
				player2x := SCREEN_WIDTH - 1;
			END IF;
		END IF;
		players(0) <= (player1x,HEIGHT - 1);
		players(1) <= (player2x,HEIGHT - 1);
	END IF;

	END PROCESS;
	dbc: single_pulse_debounce PORT MAP (not KEY(1), CLOCK_50, dbcOut);
 	C: pll PORT MAP (VGACLK,CLOCK_50,RESET);
 	C1: SYNC PORT MAP(VGACLK, RESET,VGA_HS,VGA_VS,VGA_R,VGA_G,VGA_B, enemies, enemiesRunning, players);
 
 END MAIN;
 