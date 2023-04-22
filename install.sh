# Installing all packages I use
exec pkg install doas vim vifm meson ninja lynx git neofetch scrot drm-kmod automake zsh autoconf autotools font-awesome librewolf ungoogled-chromium bash zathura ubuntu-font audio/mixertui 

# wayland packages
exec pkg install wayland seatd foot swaybg

# Run for wayland support
exec sysrc seatd_enable=”YES”
exec service seatd start

# x11 packages uncomment for x11
# exec pkg install xorg wifimgr feh mpv picom  xf86-video-intel

# This is for better intel graphics
add kern.vty=vt to /boot/loader.conf

# This is for intel graphics look at https://wiki.freebsd.org/Graphics for other settings
sysrc -f /etc/rc.conf kld_list+=i915kms

# Adding bash as default shell for my user
chsh -s /usr/local/bin/bash will
