xrdb -merge $HOME/.config/X11/.Xresources
urxvtd -o -q -f
xset r rate 300 50
exec i3
