###################################################################
#	Make file for FinalProject.						  
#																  
#	NOTE: Do not change this file unless otherwise instructed.    
#																  
###################################################################

DIR = /cygdrive/c/gba_studio
include $(DIR)/system/master.mak



 ####################
# GBA ROM Image Name #
 ####################

PROGNAME="FinalProject"



 #########################################
# Set a list of files you want to compile #
 #########################################
 
OFILES += main.o myLib.o sprites.o background.o splash.o collisionmap.o itemsoverlay.o title.o instructions.o blankbg.o settings.o intromusic.o chop.o



 #########################################################
# Compile using Krawall (sound stuff, don't mess with it) #
 #########################################################
 
USE_KRAWALL=no
KRAWALL_IS_REGISTERED=no
KRAWALL_FILES=



 ######################################
# Standard Makefile targets start here #
 ######################################
all : $(PROGNAME).$(EXT) clean



 ##############################################
# Most Makefile targets are predefined for you,#
# such as vba, clean ... in the following file #
 ##############################################

include $(DIR)/system/standard-targets.mak



 #####################################
# Custom  Makefile targets start here #
 #####################################

gfx: makefile




