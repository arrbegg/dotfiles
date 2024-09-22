<<<<<<< HEAD
#!/bin/bash

#img=~/wallpapers/AmigaNostalgia.png
=======
#!/bin/sh
>>>>>>> 0e3d9e3e8632c44b91ded2080d5411415a15e244

img=/tmp/i3lock.png

scrot -o $img
convert $img -scale 10% -scale 1000% $img
<<<<<<< HEAD
=======

>>>>>>> 0e3d9e3e8632c44b91ded2080d5411415a15e244
i3lock -u -i $img
