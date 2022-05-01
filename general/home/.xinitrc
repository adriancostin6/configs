# Multiple monitor setup with xrandr
# xrandr --output LVDS1 --mode 1600x900 --output VGA1 --mode 1920x1080 --right-of LVDS1


# Compositor
 picom -b --backend glx --no-fading-openclose --vsync

# Scripts
# Set random wallpaper
~/repos/src/random/wallpaper.sh
# Statusbar script
~/repos/src/random/set-statusbar.sh

xbindkeys
redshifter 2700k .5
exec dwm
