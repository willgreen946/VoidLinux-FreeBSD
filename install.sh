# Installing all packages I use
exec pkg install doas vim vifm lynx git neofetch scrot drm-kmod automake autoconf autotools font-awesome ungoogled-chromium bash zathura ubuntu-font audio/mixertui  x11-drivers/xf86-video-intel 

# wayland packages
exec pkg install wayland seatd 

# Run for wayland support
exec sysrc seatd_enable=”YES”
exec service seatd start

# x11 packages uncomment for x11
# exec pkg install xorg wifimgr feh mpv picom

# This is for better intel graphics
add kern.vty=vt to /boot/loader.conf

# This is for intel graphics look at https://wiki.freebsd.org/Graphics for other settings
sysrc -f /etc/rc.conf kld_list+=i915kms

# Adding bash as default shell for my user
chsh -s /usr/local/bin/bash will
