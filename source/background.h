
//{{BLOCK(background)

//======================================================================
//
//	background, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 110 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 7040 + 2048 = 9600
//
//	Time-stamp: 2010-11-30, 04:20:16
//	Exported by Cearn's GBA Image Transmogrifier
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef __BACKGROUND__
#define __BACKGROUND__

#define backgroundTilesLen 7040
extern const unsigned short backgroundTiles[3520];

#define backgroundMapLen 2048
extern const unsigned short backgroundMap[1024];

#define backgroundPalLen 512
extern const unsigned short backgroundPal[256];

#endif // __BACKGROUND__

//}}BLOCK(background)
