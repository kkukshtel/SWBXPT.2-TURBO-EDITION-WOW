#include "myLib.h"
#include "gameFunctions.h"
#include "background.h"
#include "splash.h"
#include "sprites.h"
#include "itemsoverlay.h"
#include "collisionmap.h"
#include "title.h"
#include "instructions.h"
#include "blankbg.h"
#include "gamemusic.h"
#include "intromusic.h"
#include "settings.h"
#include "chop.h"


//SUPER WOOD BEATER EXTREME: PART 2: TURBO EDITION: WOW!
//BY KYLE KUKSHTEL

int state;
unsigned int buttons;
unsigned int oldButtons;

#define SPLASH 0
#define GAMESCREEN 1
#define WINSCREEN 3
#define PAUSESCREEN 4
#define HELPSCREEN 5
#define LOSESCREEN 6
#define SETTINGS 7
#define YES 100
#define NO 200

void splash();
void game();
void win();
void pause();
void help();
void lose();
void updateCursor();
void checkTreeCollision();
void setupTrees();
void setupBorderTrees();
void setupMiddleTrees();
void initialize();
void updateNumbers();
void placeBomb();
void placeBarrier();
void setupBarriers();
void updateBarriers();
void checkBarrierCollision();
void updateBombs();
void setupBombs();
void checkBombCollision();
void settings();

//bg 0 offsets bg
int hOff=0;
int vOff=0;

//bg 1 offsets toolbar


OBJ_ATTR shadowOAM[128];

//character
/*int characterRow = 20;
int characterCol = 20;
int characterWidth = 16;
int characterHeight = 16;
int characterRVel = 1;
int characterCVel = 1;*/
CHARACTER player;
int totalWoodCollected;
int colliding;
int upgraded = 0;
int nextRow,nextCol;

//tree stuff
#define FULL 0
#define HALF 1
#define STUMP 2


//tree collision
#define WITHTOP 10 //of sprite
#define WITHBOTTOM 11 //of sprite
#define WITHRIGHT 12 //of sprite
#define WITHLEFT 13 //of sprite

//setup trees
//make num trees not just border trees numbers
//32 border trees & 53 inner trees = 85 total trees
#define NUMTREES 83
TREE theTrees[NUMTREES];
//TREE testTree1 = {24,72,0,0,10,16,32,FULL};
//TREE testTree2 = {24,88,0,0,10,16,32,FULL};
//TREE testTree3 = {24,104,0,0,10,16,32,FULL};



//map
int bigRow, bigCol;
int collMapSize = 256;

#define ROWMASK 0xFF
#define COLMASK 0x1FF

//enum { CHARFRONT, CHARBACK, CHARRIGHT, CHARLEFT, CHARIDLE };
#define CHARFRONT 0
#define CHARBACK 2
#define CHARRIGHT 4
#define CHARLEFT 6
#define CHARIDLE 8

//animation
int CharAniCounter = 0;
int frame = 0;
int CharAniState = CHARFRONT;
int CharPrevAniState = CHARFRONT;

unsigned int buttons;
unsigned int oldButtons;

//item stuff
int itemCursorState = 0;
BARRIER theBarriers[5];

#define ABOMB 0
#define CLOUD 1
#define MULTI 2
#define BLAST 4
BOMB theBombs[5];
int barrierCounter = 0;
int bombCounter = 0;
int bombAniCounter = 0;



//sound stuff
int vblankCounter = 0;
char *soundA;
int soundAStart = 0;
int soundALooping = 0;
int soundALength = 0;
int soundAFrequency = 0;
int soundADuration = 0;
int soundAPlaying = 0;

char* soundB;
int soundBStart = 0;
int soundBLooping = 0;
int soundBLength = 0;
int soundBFrequency = 0;
int soundBDuration = 0;
int soundBPlaying = 0;

void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int isLooping );
void playSoundB( const unsigned char* sound, int length, int frequency, int isLooping );
void setupInterrupts();
void interruptHandler();

//timer stuff
void updateTimer();
int timerCounter;
int actualTimer = 50;

//cheats
int show1 = 0;
int show2 = 0;
int show3 = 0;
#define ON 1
#define OFF 0

//infinite bombs, super strength, impossible mode
int infiniteBombs = OFF;
int superStrength = OFF;
int impossibleMode = OFF;

int main()
{
	REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;
	REG_BG0CNT = CBB(0) | SBB(27) | BG_SIZE0 | COLOR256 | 1; //toolbar
	REG_BG1CNT = CBB(1) | SBB(28) | BG_SIZE0 | COLOR256 | 3; //bg

	state = SPLASH;

	// load the sprites into memory
	DMANow(3, (unsigned int*)spritesTiles, &CHARBLOCKBASE[4], spritesTilesLen/2);
	
	//load the sprite pallete into memory
	DMANow(3, (unsigned int*)spritesPal, SPRITE_PALETTE, 256);

	buttons = BUTTONS;

	setupInterrupts();
	setupSounds();
	

	while(1)
	{
				
		switch(state)
		{
			case SPLASH:
				playSoundB(intromusic,INTROMUSICLEN,INTROMUSICFREQ,1);
				REG_BG1HOFS = 0;
				REG_BG1VOFS = 0;
				loadPalette(titlePal);
				DMANow(3, (unsigned int*)blankbgMap, &SCREENBLOCKBASE[27], blankbgMapLen/2);
				DMANow(3, (unsigned int*)blankbgTiles, &CHARBLOCKBASE[0], blankbgTilesLen/2);
				DMANow(3, (unsigned int*)titleMap, &SCREENBLOCKBASE[28], titleMapLen/2);
				DMANow(3, (unsigned int*)titleTiles, &CHARBLOCKBASE[1], titleTilesLen/2);
				splash();
				break;
			case GAMESCREEN:
				setupInterrupts();
				setupSounds();
				loadPalette(backgroundPal);
				DMANow(3, (unsigned int*)itemsoverlayTiles, &CHARBLOCKBASE[0], itemsoverlayTilesLen/2);
				DMANow(3, (unsigned int*)backgroundTiles, &CHARBLOCKBASE[1], backgroundTilesLen/2);
				DMANow(3, (unsigned int*)itemsoverlayMap, &SCREENBLOCKBASE[27], itemsoverlayMapLen/2);
				DMANow(3, (unsigned int*)backgroundMap, &SCREENBLOCKBASE[28], backgroundMapLen/2);
				game();
				break;
			case WINSCREEN:
				win();
				break;
			case PAUSESCREEN:
				pause();
				break;
			case HELPSCREEN:
				loadPalette(instructionsPal);
				DMANow(3, (unsigned int*)blankbgMap, &SCREENBLOCKBASE[27], blankbgMapLen/2);
				DMANow(3, (unsigned int*)blankbgTiles, &CHARBLOCKBASE[0], blankbgTilesLen/2);
				DMANow(3, (unsigned int*)instructionsMap, &SCREENBLOCKBASE[28], instructionsMapLen/2);
				DMANow(3, (unsigned int*)instructionsTiles, &CHARBLOCKBASE[1], instructionsTilesLen/2);
				help();
				break;
			case SETTINGS:
				loadPalette(settingsPal);
				DMANow(3, (unsigned int*)blankbgMap, &SCREENBLOCKBASE[27], blankbgMapLen/2);
				DMANow(3, (unsigned int*)blankbgTiles, &CHARBLOCKBASE[0], blankbgTilesLen/2);
				DMANow(3, (unsigned int*)settingsMap, &SCREENBLOCKBASE[28], settingsMapLen/2);
				DMANow(3, (unsigned int*)settingsTiles, &CHARBLOCKBASE[1], settingsTilesLen/2);
				settings();
				break;
			case LOSESCREEN:
				lose();
				break;
		}
	}

	return 0;
}

void splash()
{
	//code for the intro screen, with options to go to the help screen
	//and to start the game.
	initialize();
	
	int startstate = 0;
	while(1)
	{
		oldButtons = buttons;
		buttons = BUTTONS;

		if (BUTTON_PRESSED(BUTTON_A))
        {
			if(startstate == 0)
			{
				state = GAMESCREEN;
				OAM[123].attr0 = ATTR0_HIDE;
				break;
			}
			if(startstate == 1)
			{
				state = HELPSCREEN;
				OAM[123].attr0 = ATTR0_HIDE;
				break;
			}
			if(startstate == 2)
			{
				state = SETTINGS;
				OAM[123].attr0 = ATTR0_HIDE;
				break;
			}
        }

		
		//three splash state code
		if (BUTTON_PRESSED(BUTTON_DOWN))
        {
			if(startstate >= 0 && startstate < 2)
			{
				startstate += 1;
				
			}
		}
		if (BUTTON_PRESSED(BUTTON_UP))
        {
			if(startstate <= 2 && startstate > 0)
			{
				startstate -= 1;
			}
		}
		
		shadowOAM[123].attr0 = (ROWMASK & (89 + (13*startstate))) | ATTR0_8BPP | ATTR0_SQUARE;
		shadowOAM[123].attr1 = (COLMASK & 31) | ATTR1_SIZE16;
		shadowOAM[123].attr2 = SPRITEOFFSET16(8,0);
		OAM[123] = shadowOAM[123];

	}
	
}
void game()
{
	//code to hold the game in. need to figure out specifics of editing tiles.
	//possibly put inventory screen on side, can act as a seperate bg layer so it
	//can float independtly of game screen

	

	while(state == GAMESCREEN)
	{
		player.bigRow = player.row + vOff;
		player.bigCol = player.col + hOff;

		//took -vOff out from the row statements
		/*testTree1.bigRow = testTree1.row;
		testTree1.bigCol = testTree1.col;
		testTree2.bigRow = testTree2.row;
		testTree2.bigCol = testTree2.col;
		testTree3.bigRow = testTree3.row;
		testTree3.bigCol = testTree3.col;*/

		CharPrevAniState = CharAniState;
		CharAniState = CHARIDLE;

		oldButtons = buttons;
		buttons = BUTTONS;		
		
		
		if(CharAniCounter > 20) //update the frame
		{
			frame++;
			frame = frame%2;
			CharAniCounter = 0;
		}
		
		colliding  = NO;
		nextRow = 0;
		nextCol = 0;
		

		if (BUTTON_HELD(BUTTON_UP))
		{
			nextRow = -1;		
		}
		if (BUTTON_HELD(BUTTON_DOWN))
		{
			nextRow = 1;			
		}

		if (BUTTON_HELD(BUTTON_LEFT))
		{
			nextCol = -1;
		}
		if (BUTTON_HELD(BUTTON_RIGHT))
		{
			nextCol = 1;
		}

		checkTreeCollision();
		checkBarrierCollision();
		
		
		//moving up
		if(nextRow == -1)
		{
			CharAniState = CHARBACK;

			if(vOff >= 1 && player.row < 20)
			{
				vOff--;
			}
			else if(player.row >= 1)
			{
				player.row = player.row + nextRow;
			}
		}
		//moving down
		if(nextRow == 1)
		{
			if((player.bigRow + player.height < 240))
			{
				CharAniState = CHARFRONT;

				if(vOff <= 256-161 && player.row > 100)
				{
					vOff++;
				}
				else if(player.row <= 161 -16)
				{
					player.row = player.row + nextRow;
				
				}
			}
		
		}
		//moving left
		if(nextCol == -1)
		{
			CharAniState = CHARLEFT;

			if(hOff >= 1 && player.col < 20)
			{
				hOff--;
			}
			else if(player.col >= 1)
			{
				player.col = player.col + nextCol;
			}
		}
		//moving right
		if(nextCol == 1)
		{
			CharAniState = CHARRIGHT;

			if(hOff <= 256 - 241 - 16 && player.col > 220)
			{
				hOff++;
			}
			else if(player.col <= 241 - 16)
			{
				player.col = player.col + nextCol;
			}
		}
		

		if (BUTTON_PRESSED(BUTTON_R))
		{
			if(itemCursorState < 2)
			{
				itemCursorState++;
			}
		}
	
		if (BUTTON_PRESSED(BUTTON_L))
		{
			if(itemCursorState > 0)
			{
				itemCursorState--;
			}
		}

		if (BUTTON_PRESSED(BUTTON_B))
		{
			if(itemCursorState == 0 && player.carriedWood >= 5 && barrierCounter <= 4)
			{
				placeBarrier();	
				player.carriedWood = player.carriedWood - 5;
				barrierCounter++;
			}
			
			if(itemCursorState == 1 && bombCounter <= 4)
			{
				if(infiniteBombs == OFF)
				{
					if(player.carriedWood >= 10)
					{
						placeBomb();
						player.carriedWood = player.carriedWood - 10;
						bombCounter++;
					}
				}
				if(infiniteBombs == ON)
				{
					placeBomb();
					bombCounter++;
				}
			}

			if(itemCursorState == 2 && player.carriedWood >= 40 && upgraded == 0)
			{
				player.strength = 2;
				player.carriedWood = player.carriedWood - 40;
				upgraded = 1;
			}

		}
		

		if (BUTTON_PRESSED(BUTTON_START))
        {
			state = PAUSESCREEN;
		}



		switch(CharAniState)
		{
			case CHARIDLE:
				CharAniState = CharPrevAniState;
				frame = 0;
				break;
			default:
				CharAniCounter++;
		}

		
		// Update the shadowOAM for character
		shadowOAM[127].attr0 = (ROWMASK & player.row) | ATTR0_8BPP | ATTR0_SQUARE;
		shadowOAM[127].attr1 = (COLMASK & player.col) | ATTR1_SIZE16;
		shadowOAM[127].attr2 = SPRITEOFFSET16(4 + (frame) * 2 , CharAniState * 2) | (SETPRIORITY(2));
		

		//update shadow OAM for trees
		int i;
		for(i=0;i<NUMTREES;i++)//-(NUMTREES-3));i++)
		{
			shadowOAM[i].attr0 = (ROWMASK & (theTrees[i].row-vOff)) | ATTR0_8BPP | ATTR0_TALL;
			shadowOAM[i].attr1 = (COLMASK & theTrees[i].col) | ATTR1_SIZE32;
			if(theTrees[i].treeState == FULL)
			{
				shadowOAM[i].attr2 = 0 | SETPRIORITY(2);
			}
			if(theTrees[i].treeState == HALF)
			{
				shadowOAM[i].attr2 = 4 | SETPRIORITY(2);
			}
			if(theTrees[i].treeState == STUMP)
			{
				shadowOAM[i].attr2 = 8 | SETPRIORITY(2);
			}
		}
		
		updateNumbers();

		waitForVblank();///////////////////////////////////////////////////VBLANK////////////////////////

		bombAniCounter++;
		timerCounter++;
		updateTimer();
		updateBombs();
		
		updateCursor();
		updateBarriers();
		

		//player OAM
		OAM[127] = shadowOAM[127];
		
		//right number
		OAM[126] = shadowOAM[126];
		
		//left number
		OAM[125] = shadowOAM[125];

		for(i=0;i<NUMTREES;i++)//-(NUMTREES-3);i++)
		{
			OAM[NUMTREES-i] = shadowOAM[i];
		}
/*
		for(i = 0; i < 128; i++)
		{
			OAM[127-i] = shadowOAM[i];
		}
*/
        REG_BG1HOFS = hOff;
        REG_BG1VOFS = vOff;

		//change this win check to be total trees cut down, not wood in inventory,
		//as that will change when you purchase things
		if(totalWoodCollected >= NUMTREES-4)
		{
			state = WINSCREEN;
		}
		
	}
}
void win()
{
	//after all the trees are gone, you win.
	shadowOAM[122].attr0 = (ROWMASK & 64) | ATTR0_8BPP | ATTR0_SQUARE;
	shadowOAM[122].attr1 = (COLMASK & 96) | ATTR1_SIZE32;
	shadowOAM[122].attr2 = SPRITEOFFSET16(16, 12);
	OAM[122] = shadowOAM[122];

	 if (BUTTON_HELD(BUTTON_SELECT))
     {
		 state = SPLASH;
		 OAM[122].attr0 = ATTR0_HIDE;
	 }
}
void pause()
{
	//game will pause, simply by overlaying the words pause over the screen.
	shadowOAM[122].attr0 = (ROWMASK & 64) | ATTR0_8BPP | ATTR0_SQUARE;
	shadowOAM[122].attr1 = (COLMASK & 96) | ATTR1_SIZE32;
	shadowOAM[122].attr2 = SPRITEOFFSET16(12, 12);
	OAM[122] = shadowOAM[122];
	while(state == PAUSESCREEN)
	{
		oldButtons = buttons;
		buttons = BUTTONS;

		if (BUTTON_PRESSED(BUTTON_START))
		{
		 state = GAMESCREEN;
		 OAM[122].attr0 = ATTR0_HIDE;
		}
	}
	
}
void help()
{
	while(state == HELPSCREEN)
	{
		oldButtons = buttons;
		buttons = BUTTONS;

		if (BUTTON_PRESSED(BUTTON_SELECT))
		{
			state = SPLASH;
		}
	}

}

void lose()
{
	//game is over when you are killed by the snake (or maybe give three lives?)
	while(state == LOSESCREEN)
	{
		shadowOAM[122].attr0 = (ROWMASK & 64) | ATTR0_8BPP | ATTR0_SQUARE;
		shadowOAM[122].attr1 = (COLMASK & 96) | ATTR1_SIZE32;
		shadowOAM[122].attr2 = SPRITEOFFSET16(20, 12);
		OAM[122] = shadowOAM[122];
		dma[2].cnt = 0;
		REG_TM1CNT = 0;
		soundBPlaying = 0;

		 if (BUTTON_HELD(BUTTON_SELECT))
		 {
			state = SPLASH;
			OAM[122].attr0 = ATTR0_HIDE;
		 }
	}
}

void updateCursor()
{
	
	shadowOAM[123].attr0 = (ROWMASK & (147)) | ATTR0_8BPP | ATTR0_SQUARE;
	shadowOAM[123].attr1 = (COLMASK & (67 + (20*itemCursorState))) | ATTR1_SIZE16;
	shadowOAM[123].attr2 = SPRITEOFFSET16(8,0);
	OAM[123] = shadowOAM[123];
	//judging on global variables, action cursor is moved.
	//cursor moves indepently of player.
}

void checkTreeCollision()
{
	int i;
	for(i=0;i<NUMTREES;i++)
	{
		if(theTrees[i].treeState != STUMP)
		{
			/*if(((theTrees[i].row+24)+8 > player.bigRow) && (theTrees[i].col+theTrees[i].width> player.bigCol)
				&& (theTrees[i].row+24 < player.bigRow + player.height) && (theTrees[i].col < player.bigCol+player.width))
			{*/
			
			if((theTrees[i].row+theTrees[i].height >= player.bigRow + nextRow) && 
				(theTrees[i].col+theTrees[i].width>= player.bigCol + nextCol) &&
				(theTrees[i].row <= player.bigRow + nextRow + player.height) && 
				(theTrees[i].col <= player.bigCol+player.width + nextCol))
			{
				
			/*if(player.bigRow + nextRow <= theTrees[i].row + theTrees[i].height &&
				player.bigRow + player.height + nextRow >= theTrees[i].row + theTrees[i].height/2 &&
				player.bigCol + nextCol <= theTrees[i].col + theTrees[i].width &&
				player.bigCol + player.width + nextCol >= theTrees[i].col){{*/
			

			
				if((player.bigRow + player.height + nextRow == theTrees[i].row) || 
					(player.bigRow + nextRow == theTrees[i].row + theTrees[i].height))
				{
					nextRow = 0;
				}
				
				if((player.bigCol + player.width == theTrees[i].col) || 
					(player.bigCol == theTrees[i].col + theTrees[i].width))
				{
					nextCol = 0;
				}
				
				if (BUTTON_PRESSED(BUTTON_A))
				{
					theTrees[i].life = theTrees[i].life-player.strength;
					playSoundA(chop, CHOPLEN, CHOPFREQ, 0);
					
				}
				if(player.strength == 1)
				{
					if(theTrees[i].life==5)
					{
						theTrees[i].treeState = HALF;
					}
				}
				if(player.strength == 2)
				{
					if(theTrees[i].life== 4)
					{
						theTrees[i].treeState = HALF;
					}
				}
				if(theTrees[i].life==0)
				{
					theTrees[i].treeState = STUMP;
					player.carriedWood += 1;
					totalWoodCollected += 1;
				}
				
			}
		}
	}

	
}


void setupTrees()
{
	int i;
	for(i=0;i<NUMTREES;i++)
	{
		theTrees[i].bigRow = 0;
		theTrees[i].bigCol = 0;
		if(impossibleMode == OFF)
		{
			theTrees[i].life = 10;
		}
		if(impossibleMode == ON)
		{
			theTrees[i].life = 20;
		}
		theTrees[i].width = 16;
		theTrees[i].height = 32;
		theTrees[i].treeState = FULL;
	}

	//next functions define their Row and Col
	setupBorderTrees();
	setupMiddleTrees();
}

void setupBorderTrees()
{
	//42 elements in border rows
	int borderRows[] = {3,5,6,7,8,9,10,14,14,14,14,14,//1,2,3,5,6,7,8,9,10,14,14,14,14,14,
						14,14,14,14,14,14,14,14,3,4,5,
						6,8,9,10,11,13,14};
	int col = 0;
	int i;
	int done;
	for(i=0;i<30;i++)
	{
		//need to make a trees array
		done = 0;
		theTrees[i].col = col*16;
		theTrees[i].row = (borderRows[i]*16)-16;
		if(borderRows[i] == 14 && done != 1)
		{
			col++;
			done = 1;
		}
		if(col == 13)
		{
			col++;
		}
	}
}
	
void setupMiddleTrees()
{

	int centerRows[] = {1,2,4,5,8,9,2,4,5,9,0,1,2,5,8,9,0,2,0,1,2,5,7,8,9,
						1,2,5,7,8,9,2,4,5,0,1,2,4,5,7,8,0,1,2,4,8,9,
						0,1,5,7,8,9};

	int col = 0;
	int i;
	int borderrowslength = 30 - 1;//minus one to properly put trees in array
	for(i=0;i<53;i++)
	{
		theTrees[i+(borderrowslength)].col = 40 + (col*16);
		theTrees[i+(borderrowslength)].row = 40+(centerRows[i]*16)-16;
		if(centerRows[i] == 9)
		{
			col++;
		}
		//col 3
		if(centerRows[i] == 2 && col == 3)
		{
			col++;
		}
		//col 6
		if(centerRows[i] == 5 && col == 6)
		{
			col++;
		}
		//col 7
		if(centerRows[i] == 8 && col == 7)
		{
			col++;
		}
	}
}	

void initialize()
{
	// hide all sprites
	int i;
	for(i = 0; i < 128; i++)
	{
		OAM[i].attr0 = ATTR0_HIDE;
	}
	
	totalWoodCollected = 0;
	player.row = 88;
	player.col = 112;
	player.width = 16;
	player.height = 16;
	player.rvel = 1;
	player.cvel = 1;
	player.bigRow = 0;
	player.bigCol = 0;
	if(superStrength == OFF)
	{
		player.strength = 1;
	}
	if(superStrength == ON)
	{
		player.strength = 5;
	}
	player.carriedWood = 10;
	barrierCounter = 0;
	bombCounter = 0;
	bombAniCounter = 0;
	timerCounter = 0;
	actualTimer = 50;

	hOff = 0;
	vOff = 0;
	buttons = BUTTONS;

	setupTrees();
	setupBarriers();
	setupBombs();
}

void updateNumbers()
{
	int leftnum = (player.carriedWood)/10;
	int rightnum = (player.carriedWood)%10;
	//126 is the left number
	shadowOAM[126].attr0 = (ROWMASK & 144) | ATTR0_8BPP | ATTR0_SQUARE;
	shadowOAM[126].attr1 = (COLMASK & 160) | ATTR1_SIZE16;
	shadowOAM[126].attr2 = SPRITEOFFSET16(10+(2*leftnum),0);

	//125 is the right number
	shadowOAM[125].attr0 = (ROWMASK & 144) | ATTR0_8BPP | ATTR0_SQUARE;
	shadowOAM[125].attr1 = (COLMASK & 165) | ATTR1_SIZE16;
	shadowOAM[125].attr2 = SPRITEOFFSET16(10+(2*rightnum),0);
}

//ITEM FUNCTIONS///////////////////////////////////////////////////////////////////////
void placeBomb()
{
	int bombSelected = 0;
	int i;
	for(i=0;i<5;i++)
	{
		if((theBombs[i].placed == 0) && (bombSelected == 0))
		{
			theBombs[i].placed = 1;
			theBombs[i].row = player.bigRow - 8;
			theBombs[i].col = player.col - 8;
			bombSelected = 1;

			shadowOAM[theBombs[i].OAMnum].attr0 = (ROWMASK & (theBombs[i].row)) | ATTR0_8BPP | ATTR0_SQUARE;
			shadowOAM[theBombs[i].OAMnum].attr1 = (COLMASK & (theBombs[i].col)) | ATTR1_SIZE32;
			shadowOAM[theBombs[i].OAMnum].attr2 = SPRITEOFFSET16(10,4) | (SETPRIORITY(2));
			OAM[theBombs[i].OAMnum] = shadowOAM[theBombs[i].OAMnum];
		}
	}

}

void updateBombs()
{
	int i;
	int updated = 0;
	int dontUpdate = 0;
	for(i=0;i<5;i++)
	{
		updated = 0;
		if(theBombs[i].placed == 1)
		{
			if(bombAniCounter%100 == 0 && theBombs[i].aniState == ABOMB && updated == 0)
			{
				theBombs[i].aniState = CLOUD;
				updated = 1;
				shadowOAM[theBombs[i].OAMnum].attr2 = SPRITEOFFSET16(14,4) | (SETPRIORITY(2));
			}

			if(bombAniCounter%5 == 0 && theBombs[i].aniState == CLOUD && updated == 0)
			{
				theBombs[i].aniState = MULTI;
				updated = 1;
				shadowOAM[theBombs[i].OAMnum].attr2 = SPRITEOFFSET16(18,4)  | (SETPRIORITY(2));
			}

			if(bombAniCounter%5 == 0 && theBombs[i].aniState == MULTI && updated == 0)
			{
				theBombs[i].aniState = BLAST;
				updated = 1;
				shadowOAM[theBombs[i].OAMnum].attr2 = SPRITEOFFSET16(22,4)  | (SETPRIORITY(2));
				checkBombCollision();
			}
			
			//hide blast and reset bomb
			if(bombAniCounter%5 == 0 && theBombs[i].aniState == BLAST && updated == 0)
			{
				theBombs[i].aniState = ABOMB;
				theBombs[i].placed = 0;
				updated = 1;
				dontUpdate = 1;
				OAM[theBombs[i].OAMnum].attr0 = ATTR0_HIDE;
				bombCounter--;
			}
			
			shadowOAM[theBombs[i].OAMnum].attr0 = (ROWMASK & (theBombs[i].row - vOff)) | ATTR0_8BPP | ATTR0_SQUARE;
			shadowOAM[theBombs[i].OAMnum].attr1 = (COLMASK & (theBombs[i].col)) | ATTR1_SIZE32;
			if(updated == 0 && dontUpdate != 1)
			{
				OAM[theBombs[i].OAMnum] = shadowOAM[theBombs[i].OAMnum];
			}
		}
	}
}

void setupBombs()
{
	int i;
	for(i=0;i<5;i++)
	{
		theBombs[i].row = 0;
		theBombs[i].col = 0;
		theBombs[i].width = 32;
		theBombs[i].height = 32;
		theBombs[i].aniState = ABOMB;
		theBombs[i].OAMnum = 116 - i;
		theBombs[i].placed = 0;
	}
}

void checkBombCollision()
{
	int i;
	int k;
	
	//barrier collision
	for(i=0;i<5;i++)
	{
		for(k=0;k<5;k++)
		{

			if((theBombs[i].placed == 1) && (theBarriers[k].placed == 1) && 
				(theBarriers[k].row+theBarriers[k].height >= theBombs[i].row) && (theBarriers[k].col+theBarriers[k].width>= theBombs[i].col)
					&& (theBarriers[k].row <= theBombs[i].row + theBombs[i].height) && (theBarriers[k].col <= theBombs[i].col+theBombs[i].width))
			{
				theBarriers[k].barrierState = FULL;
				theBarriers[k].life = 5;
				theBarriers[k].placed = 0;
				barrierCounter--;
				OAM[theBarriers[k].OAMnum].attr0 = ATTR0_HIDE;
				actualTimer = actualTimer - 15;
			}
		}
	}

	//tree collision
	for(i=0;i<5;i++)
	{
		for(k=0;k<NUMTREES;k++)
		{
			if((theBombs[i].placed == 1) && (theTrees[k].treeState != STUMP) &&(theTrees[k].row+theTrees[k].height >= theBombs[i].row) && (theTrees[k].col+theTrees[k].width>= theBombs[i].col)
				&& (theTrees[k].row <= theBombs[i].row + theBombs[i].height) && (theTrees[k].col <= theBombs[i].col+theBombs[i].width))
			{
				theTrees[k].treeState = STUMP;
				player.carriedWood += 1;
				totalWoodCollected += 1;
			}
		}


	}
}


void placeBarrier()
{
	int i;
	int barrierSelected = 0;
	if((CharAniState == CHARFRONT || (CharPrevAniState == CHARFRONT && CharAniState == CHARIDLE)) && barrierSelected == 0)
	{
		for(i=0;i<5;i++)
		{
			if((theBarriers[i].placed == 0) && (barrierSelected == 0))
			{
				theBarriers[i].placed = 1;
				theBarriers[i].row = player.bigRow + player.height + 2;
				theBarriers[i].col = player.col;
				barrierSelected = 1;
				actualTimer = actualTimer + 10;

			}
		}
	}
	if((CharAniState == CHARBACK || (CharPrevAniState == CHARBACK && CharAniState == CHARIDLE)) && barrierSelected == 0)
	{
		for(i=0;i<5;i++)
		{
			if((theBarriers[i].placed == 0) && (barrierSelected == 0))
			{
				theBarriers[i].placed = 1;
				theBarriers[i].row = player.bigRow - theBarriers[i].height - 2;
				theBarriers[i].col = player.col;
				barrierSelected = 1;
				actualTimer = actualTimer + 10;
			}
		}
	}
	if((CharAniState == CHARLEFT || (CharPrevAniState == CHARLEFT && CharAniState == CHARIDLE)) && barrierSelected == 0)
	{
		for(i=0;i<5;i++)
		{
			if((theBarriers[i].placed == 0) && (barrierSelected == 0))
			{
				theBarriers[i].placed = 1;
				theBarriers[i].row = player.bigRow;
				theBarriers[i].col = player.col - theBarriers[i].width - 2;
				barrierSelected = 1;
				actualTimer = actualTimer + 10;
			}
		}
	}
	if((CharAniState == CHARRIGHT || (CharPrevAniState == CHARRIGHT && CharAniState == CHARIDLE)) && barrierSelected == 0)
	{
		for(i=0;i<5;i++)
		{
			if((theBarriers[i].placed == 0) && (barrierSelected == 0))
			{
				theBarriers[i].placed = 1;
				theBarriers[i].row = player.bigRow;
				theBarriers[i].col = player.col + player.width + 2;
				barrierSelected = 1;
				actualTimer = actualTimer + 10;
			}
		}
	}

}

void checkBarrierCollision()
{
	int i;
	for(i=0;i<5;i++)
	{
		if((theBarriers[i].row+theBarriers[i].height >= player.bigRow + nextRow) && (theBarriers[i].col+theBarriers[i].width>= player.bigCol + nextCol)
					&& (theBarriers[i].row <= player.bigRow + nextRow + player.height) && (theBarriers[i].col <= player.bigCol+nextCol+player.width)
					&& (theBarriers[i].placed == 1))
				{
					if((player.bigRow == theBarriers[i].row+theBarriers[i].height) || (player.bigRow + player.height == theBarriers[i].row))
					{
						nextRow = 0;
					}
					if((player.bigCol + player.width == theBarriers[i].col) || (player.bigCol == theBarriers[i].col + theBarriers[i].width))
					{
						nextCol = 0; //of sprite
					}
					if (BUTTON_PRESSED(BUTTON_A))
					{
						theBarriers[i].life = theBarriers[i].life-player.strength;
						
					}
					if(player.strength == 1)
					{
						if(theBarriers[i].life == 3)
						{
							theBarriers[i].barrierState = HALF;
						}
					}
					if(player.strength == 2)
					{
						if(theBarriers[i].life == 1)
						{
							theBarriers[i].barrierState = HALF;
						}
					}
					if(theBarriers[i].life <= 0)
					{
						theBarriers[i].barrierState = FULL;
						theBarriers[i].life = 5;
						theBarriers[i].placed = 0;
						barrierCounter--;
						OAM[theBarriers[i].OAMnum].attr0 = ATTR0_HIDE;
						actualTimer = actualTimer - 15;
					}

				}
	}
}

void updateTimer()
{
	if(timerCounter % 100 == 0 && actualTimer >= 0)
	{
		actualTimer--;
	}
	
	int leftnum = (actualTimer)/10;
	int rightnum = (actualTimer)%10;
	//126 is the left number
	shadowOAM[111].attr0 = (ROWMASK & 144) | ATTR0_8BPP | ATTR0_SQUARE;
	shadowOAM[111].attr1 = (COLMASK & 19) | ATTR1_SIZE16;
	shadowOAM[111].attr2 = SPRITEOFFSET16(10+(2*leftnum),0);

	//125 is the right number
	shadowOAM[110].attr0 = (ROWMASK & 144) | ATTR0_8BPP | ATTR0_SQUARE;
	shadowOAM[110].attr1 = (COLMASK & 24) | ATTR1_SIZE16;
	shadowOAM[110].attr2 = SPRITEOFFSET16(10+(2*rightnum),0);

	OAM[111] = shadowOAM[111];
	OAM[110] = shadowOAM[110];

	if(actualTimer <= 0)
	{
		state = LOSESCREEN;
	}
}



void updateBarriers()
{
	int i;
	for(i=0;i<5;i++)
	{
		shadowOAM[theBarriers[i].OAMnum].attr0 = (ROWMASK & (theBarriers[i].row-vOff)) | ATTR0_8BPP | ATTR0_SQUARE;
		shadowOAM[theBarriers[i].OAMnum].attr1 = (COLMASK & theBarriers[i].col) | ATTR1_SIZE16;
		
		if(theBarriers[i].barrierState == FULL)
		{
			shadowOAM[theBarriers[i].OAMnum].attr2 = 12  | SETPRIORITY(2);
		}
		if(theBarriers[i].barrierState == HALF)
		{
			shadowOAM[theBarriers[i].OAMnum].attr2 = 16 | SETPRIORITY(2);
		}
	}
	

	for(i=0;i<5;i++)
	{
		if(theBarriers[i].placed == 1)
		{
			OAM[theBarriers[i].OAMnum] = shadowOAM[theBarriers[i].OAMnum];
		}
	}

}
//might need to make a shadowbarriers function

void setupBarriers()
{
	int i;
	for(i=0;i<5;i++)
	{
		theBarriers[i].row = 0;
		theBarriers[i].col = 0;
		theBarriers[i].bigRow = 0;
		theBarriers[i].bigCol = 0;
		theBarriers[i].width = 16;
		theBarriers[i].height = 16;
		theBarriers[i].life = 5;
		theBarriers[i].placed = 0;
		theBarriers[i].OAMnum = 121 - i;
		theBarriers[i].barrierState = FULL;
	}

	updateBarriers();
}

void settings()
{
	int settingsstate = 0;
	
	while(state == SETTINGS)
	{
		oldButtons = buttons;
		buttons = BUTTONS;

		if (BUTTON_PRESSED(BUTTON_A))
        {
			if(settingsstate == 0)
			{
				if(show1 == 0)
				{
					show1 = 1;
					infiniteBombs = ON;
				}
				else
				{
					show1 = 0;
					infiniteBombs = OFF;
				}
			}
			if(settingsstate == 1)
			{
				if(show2 == 0)
				{
					show2 = 1;
					superStrength = ON;
				}
				else
				{
					show2 = 0;
					superStrength = OFF;
				}
			}
			if(settingsstate == 2)
			{
				if(show3 == 0)
				{
					show3 = 1;
					impossibleMode = ON;
				}
				else
				{
					show3 = 0;
					impossibleMode = OFF;
				}
			}
        }

		if (BUTTON_PRESSED(BUTTON_DOWN))
        {
			if(settingsstate >= 0 && settingsstate < 2)
			{
				settingsstate += 1;
				
			}
		}
		if (BUTTON_PRESSED(BUTTON_UP))
        {
			if(settingsstate <= 2 && settingsstate > 0)
			{
				settingsstate -= 1;
			}
		}
		if (BUTTON_PRESSED(BUTTON_SELECT))
        {
			state = SPLASH;
			OAM[104].attr0 = ATTR0_HIDE;
			OAM[103].attr0 = ATTR0_HIDE;
			OAM[102].attr0 = ATTR0_HIDE;
			break;
		}
		

		shadowOAM[123].attr0 = (ROWMASK & (89 + (13*settingsstate))) | ATTR0_8BPP | ATTR0_SQUARE;
		shadowOAM[123].attr1 = (COLMASK & 31) | ATTR1_SIZE16;
		shadowOAM[123].attr2 = SPRITEOFFSET16(8,0);

		shadowOAM[104].attr0 = (ROWMASK & (89 + (0))) | ATTR0_8BPP | ATTR0_SQUARE;
		shadowOAM[104].attr1 = (COLMASK & 23) | ATTR1_SIZE16;
		shadowOAM[104].attr2 = SPRITEOFFSET16(8,4);

		shadowOAM[103].attr0 = (ROWMASK & (89 + (13))) | ATTR0_8BPP | ATTR0_SQUARE;
		shadowOAM[103].attr1 = (COLMASK & 23) | ATTR1_SIZE16;
		shadowOAM[103].attr2 = SPRITEOFFSET16(8,4);

		shadowOAM[102].attr0 = (ROWMASK & (89 + (26))) | ATTR0_8BPP | ATTR0_SQUARE;
		shadowOAM[102].attr1 = (COLMASK & 23) | ATTR1_SIZE16;
		shadowOAM[102].attr2 = SPRITEOFFSET16(8,4);

		OAM[104].attr0 = ATTR0_HIDE;
		OAM[103].attr0 = ATTR0_HIDE;
		OAM[102].attr0 = ATTR0_HIDE;

		//waitForVblank();

		if(show1 == 1)
		{
			OAM[104] = shadowOAM[104];
		}

		if(show2 == 1)
		{
			OAM[103] = shadowOAM[103];
		}
		if(show3 == 1)
		{
			OAM[102] = shadowOAM[102];
		}

		OAM[123] = shadowOAM[123];
		
	

	}
}

//SOUND FUNCTIONS//////////////////////////////////////////////////////////////////////
void setupSounds()
{
       REG_SOUNDCNT_X = SND_ENABLED;

       REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 |
                        DSA_OUTPUT_RATIO_100 |
                        DSA_OUTPUT_TO_BOTH |
                        DSA_TIMER0 |
                        DSB_OUTPUT_RATIO_100 |
                        DSB_OUTPUT_TO_BOTH |
                        DSB_TIMER1 |
                        DSA_FIFO_RESET |
                        DSB_FIFO_RESET;

       REG_SOUNDCNT_L = 0;
}

void playSoundA( const unsigned char* sound, int length, int frequency, int isLooping ) {

       if(soundAPlaying)
       {
               return;
       }

       
       int timerInterval = -16777216/ (frequency);
       
       DMANow(1, (unsigned int)sound, (unsigned int) REG_FIFO_A, DMA_ON | DMA_32 | DMA_DESTINATION_FIXED | DMA_REPEAT | DMA_AT_REFRESH);
       
       REG_TM0CNT = 0;
       REG_TM0D = timerInterval;
       REG_TM0CNT = TIMER_ON;
       
       soundAStart = vblankCounter;
       soundA = sound;
	   soundAPlaying = 1;
       soundAFrequency = frequency;
       soundALength = length;
       soundADuration = ((length*60) / frequency) - 1;
       soundALooping = isLooping;
       
}


void playSoundB( const unsigned char* sound, int length, int frequency, int isLooping ) {

       if(soundBPlaying)
       {
               return;
       }
       

       int timerInterval = -16777216/ (frequency);
       
       DMANow(2, (unsigned int)sound, (unsigned int) REG_FIFO_B, DMA_ON | DMA_32 | DMA_DESTINATION_FIXED | DMA_REPEAT | DMA_AT_REFRESH);
       REG_TM1CNT = 0;
       REG_TM1D = timerInterval;
       REG_TM1CNT = TIMER_ON;

       soundBStart = vblankCounter;
       soundB = sound;
	   soundBPlaying = 1;
       soundBFrequency = frequency;
       soundBLength = length;
       soundBDuration = ((length*60) / frequency) - 5;
       soundBLooping = isLooping;
       

}

void setupInterrupts()
{
	REG_IME = 0;
	REG_INTERRUPT = (unsigned int)interruptHandler;
	REG_IE |= INT_VBLANK;
	REG_DISPSTAT |= INT_VBLANK_ENABLE;

	REG_IME = 1;
}


void interruptHandler()
{
	REG_IME = 0;

	if(REG_IF & INT_VBLANK)
	{
		vblankCounter++;

		if((vblankCounter > soundAStart + soundADuration) && !soundALooping && soundAPlaying)
		{
			dma[1].cnt = 0;
			soundAPlaying = 0;
		}

		if((vblankCounter > soundBStart + soundBDuration) && !soundBLooping && soundBPlaying)
		{
			dma[2].cnt = 0;
			soundBPlaying = 0;
		}

		if((vblankCounter > soundBStart + soundBDuration) && soundBLooping && soundBPlaying)
		{
			dma[2].cnt = 0;
			soundBPlaying = 0;
		
			if(soundBPlaying == 0)
			{
				dma[2].cnt = DMA_ON | DMA_32 | DMA_DESTINATION_FIXED | DMA_REPEAT | DMA_AT_REFRESH;
				soundBPlaying = 1;
				soundBPlaying = 0;
			}
		}

		REG_IF = INT_VBLANK; 
	}

	REG_IME = 1;
}

