library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my.all;
use work.spaceInvadersConstants.all;

ENTITY SYNC IS
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
END SYNC;


ARCHITECTURE MAIN OF SYNC IS
CONSTANT Vmin: INTEGER := 42;
CONSTANT Hmin: INTEGER := 408;
CONSTANT infosHeight: INTEGER := 64;
CONSTANT pieceSize: INTEGER := 80;
-----1280x1024 @ 60 Hz pixel clock 108 MHz
SIGNAL HPOS: INTEGER RANGE 0 TO 1688:=0;
SIGNAL VPOS: INTEGER RANGE 0 TO 1066:=0;
SIGNAL VSCREENPOS: INTEGER RANGE -Vmin TO 1024;
SIGNAL HSCREENPOS: INTEGER RANGE -Hmin TO 1280;
BEGIN
	HSCREENPOS <= HPOS - Hmin;
	VSCREENPOS <= VPOS - Vmin;	
	syncProcess: PROCESS(CLK)
	BEGIN
		IF(CLK'EVENT AND CLK='1')THEN
			IF(HPOS<1688)THEN
				HPOS<=HPOS+1;
			ELSE
				HPOS<=0;
				IF(VPOS<1066)THEN
					VPOS<=VPOS+1;
				ELSE
					VPOS<=0;   
				END IF;
			END IF;
			
			IF(HPOS>48 AND HPOS<160)THEN----HSYNC
				HSYNC<='0';
			ELSE
				HSYNC<='1';
			END IF;
			IF(VPOS>0 AND VPOS<4)THEN----------vsync
				VSYNC<='0';
			ELSE
				VSYNC<='1';
			END IF;
		END IF;
	END PROCESS;

	drawProcess: PROCESS(CLK)
	variable enemyIsListed: STD_LOGIC := '0';
	variable playerIsListed: integer range 0 to 3 := 0;
	BEGIN
		IF RST = '0' THEN
			enemyIsListed := '0';
			playerIsListed := 0;
		ELSIF (CLK'EVENT AND CLK='1') THEN
			IF(VSCREENPOS < infosHeight) THEN
				-- desenha coracoes e pontuação
			ELSIF VSCREENPOS = infosHeight THEN
				R<=(others=>'1');
				G<=(others=>'1');
				B<=(others=>'0');
			ELSIF (VSCREENPOS > infosHeight) AND (VSCREENPOS < (1024 - 80)) THEN -- se for maior que infosHeight, estamos na area dos inimigos do jogo
				
				enemyIsListed := '0';
				FOR enemy in 0 to N_ENEMIES - 1  LOOP
					IF integer((VSCREENPOS - infosHeight)/80) = enemies(enemy)(0) and integer(HSCREENPOS/80) = enemies(enemy)(1) THEN
						enemyIsListed := enemyIsListed or enemiesRunning(enemy);
					END IF;
				END LOOP;
				
				IF enemyIsListed = '1' and enemySprite(((VSCREENPOS - infosHeight) mod 80)/8)((HSCREENPOS mod 80)/8) = '1' THEN -- se inismigo esta listado, permite desenho do sprite do inimigo
					R<=(others=>'0');
					G<=(others=>'1');
					B<=(others=>'0');
				ELSE
					IF(VSCREENPOS mod 45 = 0) and (HSCREENPOS mod 47 = 0) THEN
						R<=(others=>'1');
						G<=(others=>'1');
						B<=(others=>'1');
					ELSE
						R<=(others=>'0');
						G<="0000";
						B<="0000";
					END IF;
				END IF;
			ELSE ------------------------------------------------------------------- estamos na area dos players
				playerIsListed := 0;
				FOR player in 0 to N_PLAYERS - 1  LOOP
					IF integer((VSCREENPOS - infosHeight)/80) = players(player)(0) and integer(HSCREENPOS/80) = players(player)(1) THEN
						IF playerIsListed = 0 THEN
							playerIsListed := player+1;
						END IF;
					END IF;
				END LOOP;
				
				IF playerIsListed = 1 THEN
					R<=(others=>'1');
					G<=(others=>'1');
					B<=(others=>'0');
				ELSIF playerIsListed = 2 THEN
					R<=(others=>'0');
					G<=(others=>'1');
					B<=(others=>'1');
				ELSE
					IF(VSCREENPOS mod 45 = 0) and (HSCREENPOS mod 47 = 0) THEN
						R<=(others=>'1');
						G<=(others=>'1');
						B<=(others=>'1');
					ELSE
						R<=(others=>'0');
						G<="0000";
						B<="0000";
					END IF;
				END IF;
			END IF;

			IF((HPOS>0 AND HPOS<408) OR (VPOS>0 AND VPOS<42))THEN
				R<=(others=>'0');
				G<=(others=>'0');
				B<=(others=>'0');
			END IF;
		END IF;
	END PROCESS;

 END MAIN;