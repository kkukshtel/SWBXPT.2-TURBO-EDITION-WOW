
//{{BLOCK(settings)

//======================================================================
//
//	settings, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 280 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 17920 + 2048 = 20480
//
//	Time-stamp: 2010-12-06, 05:23:52
//	Exported by Cearn's GBA Image Transmogrifier
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef __SETTINGS__
#define __SETTINGS__

#define settingsTilesLen 17920
extern const unsigned short settingsTiles[8960];

#define settingsMapLen 2048
extern const unsigned short settingsMap[1024];

#define settingsPalLen 512
extern const unsigned short settingsPal[256];

#endif // __SETTINGS__

//}}BLOCK(settings)
