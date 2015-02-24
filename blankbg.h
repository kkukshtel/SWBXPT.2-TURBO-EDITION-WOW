
//{{BLOCK(blankbg)

//======================================================================
//
//	blankbg, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 1 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 64 + 2048 = 2624
//
//	Time-stamp: 2010-12-04, 22:37:21
//	Exported by Cearn's GBA Image Transmogrifier
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef __BLANKBG__
#define __BLANKBG__

#define blankbgTilesLen 64
extern const unsigned short blankbgTiles[32];

#define blankbgMapLen 2048
extern const unsigned short blankbgMap[1024];

#define blankbgPalLen 512
extern const unsigned short blankbgPal[256];

#endif // __BLANKBG__

//}}BLOCK(blankbg)
