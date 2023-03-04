# Installing all packages I use
exec pkg install doas vim vifm lynx git xorg neofetch feh mpv wifimgr bash zathura x11-drivers/xf86-video-intel 

# This is for better intel graphics

add kern.vty=vt to /boot/loader.conf

# Adding bash as default shell for my user
chsh -s /usr/local/bin/bash will
