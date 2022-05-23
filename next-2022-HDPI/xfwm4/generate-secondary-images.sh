#!/bin/bash

## this is a skeleton I am making as I work through the steps manually; to be actually written later
## helpful information:
## https://blockofcode.wordpress.com/2009/02/09/making-a-theme-for-xfwm4/

## ====== Define Variables
##
## $ThemeDirs # base theme directory (including /xfwm)

## ====== fix images generated by GIMP ====== ##
##	-	put GTK color pick-up back into customized images
##	-	start with a complete set of *-active.xpm files

## move customized images into own directory
#
# mkdir active && mv *-active.xpm active/
# cd active

## Determine the appropriate find/replace strings (look in files)
##	-	By excluding the charecter definitions from the query,
##		it is not neccissary to fiddle with them; can leave whatever
##		GIMP defined
	## FIND: (in plain text); for reference
	# " 	c #000000",
	# ".	c #0000EE",
	# "+	c #000088",
	# "@	c #000044",
	# "#	c #FFFFFF",
		## FIND (same as above, but only required bits):
		# #000000"
		# #0000EE"
		# #000088"
		# #000044"
		# #FFFFFF"
	##
	## REPLACE WITH (in plain text); for reference ->
	# " 	c #000000",
	# ".	c #0000EE s active_hilight_1",
	# "+	c #000088 s active_color_1",
	# "@	c #000044 s active_shadow_1",
	# "#	c #FFFFFF s active_text_color",
		## REPLACE (same as above,but only required bits):
		# #000000",
		# #0000EE s active_hilight_1"
		# #000088 s active_color_1"
		# #000044 s active_shadow_1"
		# #FFFFFF s active_text_color"

## Find and replace the color definition headers in images
##	-	must leave trailing double quote to prevent the operation
## 		accidentaly being run more than once on the same line; the
## 		double quote indicates the *definate* end of the line
## 	-	must leave the -e at start of each line; it won't work if
##		put into the main command only once
##	-	NOTE this is duplicated for the *-pressed.xpm files below,
##	-	any changes shouldbe updated there as well.
# sed -i \
# -e 's/FIND"/REPLACE"/g' \
# -e 's/#0000EE"/#0000EE s active_hilight_1"/g' \
# -e 's/#000088"/#000088 s active_color_1"/g' \
# -e 's/#000044"/#000044 s active_shadow_1"/g' \
# -e 's/#FFFFFF"/#FFFFFF s active_text_color"/g' \
# *-active.xpm

## ====== create the inactive images ====== ##

## go back to parent directory
# cd $ThemeDir

## duplicate the active directory
# cp -r active inactive

## enter inactive directory
# cd inactive

## change filenames
##	-	must include the backslash escape or will give error
##		(even with double quotes)
#
# rename "\-active" "\-inactive" *

## Run find/replace
##	-	Will leave color codes the same, only change the GTK
##		color pickups
##	-	Therefor: if the theme is ever applied without colors
##		being defined externally, there would be no difference
##		between active and inactive colors
##	Two things being done here:
## 		1. change the GTK color pickup names from active to
##		inactive
## 		2. change the first non-commented line of file, for
##		example:
## 			static char * close_active_xpm[] = {
## 			REPLACE W-->
## 			static char * close_inactive_xpm[] = {
#
# sed -i \
# -e 's/s active_/s inactive_/g' \
# -e 's/_active_xpm/_inactive_xpm/g' \
# *-inactive.xpm


## Find and replace the color definition headers in images
##	-	must leave trailing double quote to prevent the operation
## 		accidentaly being run more than once on the same line; the
## 		double quote indicates the *definate* end of the line
## 	-	must leave the -e at start of each line; it won't work if
##		put into the main command only once
# sed -i \
# -e 's/FIND"/REPLACE"/g' \
# -e 's/#0000EE"/#0000EE s active_hilight_1"/g' \
# -e 's/#000088"/#000088 s active_color_1"/g' \
# -e 's/#000044"/#000044 s active_shadow_1"/g' \
# -e 's/#FFFFFF"/#FFFFFF s active_text_color"/g' \
# *-active.xpm


## ====== create the beginings for pressed images ====== ##
#
## go back to parent directory
# cd $ThemeDir
#
## duplicate the active directory
# cp -r active pressed
#
## enter inactive directory
# cd pressed
#
## change filenames
##	-	must include the backslash escape or will give error
##		(even with double quotes)
## DOESN'T WORK (but I think it id before??)
# rename "\-active" "\-pressed" *
## Use instead:
# rename "active" "pressed" *
#
## Run find/replace
##	-	Will leave color codes the same, only change the GTK
##		color pickups
##	-	Therefor: if the theme is ever applied without colors
##		being defined externally, there would be no difference
##		between active and inactive colors
##	In contrast to creating the *-inactive state images, only ONE
##	 thing being done here:
## 		1. change the first non-commented line of file, for
##		example:
## 			static char * close_active_xpm[] = {
## 			REPLACE W-->
## 			static char * close_pressed_xpm[] = {
##	The colors REMAIN THE SAME - edit the actual image so it changes,
##	rather than the colors.
#
# sed -i \
# -e 's/_active_xpm/_inactive_xpm/g' \
# *-pressed.xpm

## Find and replace the color definition headers in images
##	-	see notes in section where sed is first used, above
##	-	This is primarily for use after images have been hand-edited
#
# sed -i \
# -e 's/FIND"/REPLACE"/g' \
# -e 's/#0000EE"/#0000EE s active_hilight_1"/g' \
# -e 's/#000088"/#000088 s active_color_1"/g' \
# -e 's/#000044"/#000044 s active_shadow_1"/g' \
# -e 's/#FFFFFF"/#FFFFFF s active_text_color"/g' \
# *-pressed.xpm
















## ====== move all files into main theme directory ====== ##
##
## will overwrite any existing files. add -i for interative mode
## which would prompt before destroying anything.
# cd $ThemeDir
cp active/*.xpm .
cp inactive/*.xpm .
cp presed/*.xpm .













