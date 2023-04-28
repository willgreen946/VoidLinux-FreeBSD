#!/bin/bash

# DO NOT USE YET THIS IS UNFINSHED
# Personal Void Linux and FreeBSD post install configuration script by AfricanVoid
# Run as root
# Use at your own risk

# Customise
RED='\033[0;31m'
GREEN='\033[0;32m'
CLEAR='\033[0m' #This will remove color

#VARS
VI="xbps-install -Su"
FI="pkg install"

#Package lists
FPKG="doas vim vifm librewolf"
FXPKG="wayland seatd foot"
FWPKG="xorg"
VPKG="vim vifm qutebrowser"
VXPKG="xorg libX11-devel libXinerama-devel libXft-devel"
VWPKG="wayland seatd foot"
GIT="git" 

#Errors
E0="${RED}Error${CLEAR}: No option specified ... "
E1="${RED}Error${CLEAR}: Unknown OS ... "

# General setup
read -p "What is your username? " username
read -p "Hi $username, what system are you installing for? [BSD/Void] " OS

if [ "$OS" = "BSD" ]; then
	printf "\nInstalling for a ${GREEN}FreeBSD${CLEAR} system ... "
elif [ "$OS" = "Void" ]; then
	printf "\nInstalling for a ${GREEN}Void Linux${CLEAR} system ... "
else
	printf "\n$E0\n"
	exit 127
fi

# Xorg and Wayland support
printf "\nWayland or Xorg? [w/X] "
read displayopt 
if [ "$OS" = "BSD" ]; then
	case $displayopt in
		w|W) exec $FI $FWPKG & ;;
		x|X) exec $FI $FXPKG & ;;
		*) printf "\n$E0\n" exit 127 ;;
	esac
	
elif [ "$OS" = "Void" ]; then
	exec $VI $VXPKG & 
fi

# General package install
printf "\n${GREEN}General Package Install${CLEAR}\n"
printf "${GREEN}Install git? def=N [y/N] ${CLEAR}"
read gitopt

if [ "$OS" = "BSD" ]; then
	exec $FI $FPKG
	case $gitopt in
		y|Y) exec $FI $GIT & ;;
		*) printf "\n" ;;
	esac
elif [ "$OS" = "Void" ]; then
	exec $VI $VPKG
	case $gitopt in
		y|Y) exec $VI $GIT & ;;
		*) printf "\n" ;;
	esac
fi 

# Dotfile install
printf "\n${GREEN}Installing Dotfiles${CLEAR}\n" 
sleep 2
