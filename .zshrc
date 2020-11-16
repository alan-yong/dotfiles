#
# emacs mode: -*- sh -*-
# vim: syntax=sh

# Author : Alan YONG

echo "Start of .zshrc"

TCSH="/bin/tcsh"

[ -x ${TCSH} ] && exec ${TCSH}

######################################################################
#                   IMPORTANT ENVIROMENT VARIABLE                    #
######################################################################
if [ ${ALAN:-"NULL"} = "NULL" ] ; then
    #ay# setenv ALAN "/home/alan"
    setenv ALAN "/home/alan"
fi

if [ ${USR_LOCAL:-"NULL"} = "NULL" ] ; then
    setenv USR_LOCAL "${ALAN}/local"
fi

if [ ${VCO:-"NULL"} = "NULL" ]; then
    if [ -e ${ALAN}/bin/vco ] ; then
	setenv VCO `${ALAN}/bin/vco`
    else
    	setenv VCO "unknown"
    fi
fi

# source user .zshrc if exist
if [ -e ~/.zshrc.${USER} ] ; then
	source ~/.zshrc.${USER}
fi

