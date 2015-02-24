
//{{BLOCK(title)

//======================================================================
//
//	title, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 457 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 29248 + 2048 = 31808
//
//	Time-stamp: 2010-12-06, 04:34:39
//	Exported by Cearn's GBA Image Transmogrifier
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef __TITLE__
#define __TITLE__

#define titleTilesLen 29248
extern const unsigned short titleTiles[14624];

#define titleMapLen 2048
extern const unsigned short titleMap[1024];

#define titlePalLen 512
extern const unsigned short titlePal[256];

#endif // __TITLE__

//}}BLOCK(title)
