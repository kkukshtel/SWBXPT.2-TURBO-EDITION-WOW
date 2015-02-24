
//{{BLOCK(splash)

//======================================================================
//
//	splash, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 335 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 21440 + 2048 = 24000
//
//	Time-stamp: 2010-11-16, 20:53:58
//	Exported by Cearn's GBA Image Transmogrifier
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef __SPLASH__
#define __SPLASH__

#define splashTilesLen 21440
extern const unsigned short splashTiles[10720];

#define splashMapLen 2048
extern const unsigned short splashMap[1024];

#define splashPalLen 512
extern const unsigned short splashPal[256];

#endif // __SPLASH__

//}}BLOCK(splash)
