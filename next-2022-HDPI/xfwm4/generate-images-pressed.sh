#!/bin/bash


sed -i \
-e 's/FIND"/REPLACE"/g' \
-e 's/#0000EE"/#0000EE s active_hilight_1"/g' \
-e 's/#000088"/#000088 s active_color_1"/g' \
-e 's/#000044"/#000044 s active_shadow_1"/g' \
-e 's/#FFFFFF"/#FFFFFF s active_text_color"/g' \
*-pressed.xpm

 cp *.xpm ../
