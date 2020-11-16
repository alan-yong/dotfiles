#
# emacs mode: -*- csh -*-
# vim: syntax=csh

# Author : Alan YONG

echo "Start of .cshrc"

# source user .cshrc if exist
if ( -e ~/.cshrc.${USER} ) then
	source ~/.cshrc.${USER}
endif
