
//{{BLOCK(instructions)

//======================================================================
//
//	instructions, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 539 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 34496 + 2048 = 37056
//
//	Time-stamp: 2010-12-06, 04:56:46
//	Exported by Cearn's GBA Image Transmogrifier
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef __INSTRUCTIONS__
#define __INSTRUCTIONS__

#define instructionsTilesLen 34496
extern const unsigned short instructionsTiles[17248];

#define instructionsMapLen 2048
extern const unsigned short instructionsMap[1024];

#define instructionsPalLen 512
extern const unsigned short instructionsPal[256];

#endif // __INSTRUCTIONS__

//}}BLOCK(instructions)
