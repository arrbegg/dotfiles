xrdb -merge $HOME/.config/X11/.Xresources
urxvtd -o -q -f
xset r rate 200 30
exec i3
