
//{{BLOCK(itemsoverlay)

//======================================================================
//
//	itemsoverlay, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 32 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2048 + 2048 = 4608
//
//	Time-stamp: 2010-11-30, 04:38:46
//	Exported by Cearn's GBA Image Transmogrifier
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef __ITEMSOVERLAY__
#define __ITEMSOVERLAY__

#define itemsoverlayTilesLen 2048
extern const unsigned short itemsoverlayTiles[1024];

#define itemsoverlayMapLen 2048
extern const unsigned short itemsoverlayMap[1024];

#define itemsoverlayPalLen 512
extern const unsigned short itemsoverlayPal[256];

#endif // __ITEMSOVERLAY__

//}}BLOCK(itemsoverlay)
