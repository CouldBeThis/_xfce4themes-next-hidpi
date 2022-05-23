#!/bin/bash

## ====== text styles ====== ##
	## Set some colors
	StyleFGBlue=$(tput setaf 4)		# text			= blue
	StyleFGMagenta=$(tput setaf 5)	# text			= magenta
	StyleBGWhite=$(tput setab 7)	# background	= white
	StyleBGBlue=$(tput setab 4)		# background	= blue
## make all the output text blue
echo "$StyleFGMagenta"


## ====== declarations ====== ##
##
echo " * Declaring variables"
### Date stamps
	DateTimeStamp=$(date +"%y%m%d-%H%M%S")
	DateStamp=$(date +"%y%m%d")
	DatePlain=$(date)
###	Metadata
	WorkingDir=$PWD
	ThisScript=$(basename "$0")
	CurrentUser=$(whoami)
### Script specific requirements
	ThemeDir=$WorkingDir ## must start in `xfwm` directory! Do not run from elsewhere
echo " * ThemeDir is $ThemeDir"
	CustomDir=$ThemeDir/pressed-custom
echo " * CustomDir is $CustomDir"

echo " * Going into CustomDir"
cd $CustomDir

echo " * adding GTK color pickup to known colors (pressed)"
sed -i \
-e 's/FIND"/REPLACE"/g' \
-e 's/#0000EE"/#0000EE s active_hilight_1"/g' \
-e 's/#000088"/#000088 s active_color_1"/g' \
-e 's/#000044"/#000044 s active_shadow_1"/g' \
-e 's/#FFFFFF"/#FFFFFF s active_hilight_2"/g' \
-e 's/#BFBFBF"/#BFBFBF s active_color_2"/g' \
-e 's/#8F8F8F"/#8F8F8F s active_shadow_2"/g' \
*-pressed.xpm

 cp *.xpm ../
echo "$StyleFGBlue"
