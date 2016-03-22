#!/bin/bash 
# This resizes the screen if you're using a terrible TV as a monitor and it has no overscan correction.
# You might need to mess with the window_axis values a small amount.
echo "100 100 1919 1079" > /sys/class/graphics/fb0/window_axis 
echo "0x10001" > /sys/class/graphics/fb0/free_scale

# To run this at boot, do the following. It might not work, because it is an odroid c2.
# root@odroid:~# cp overscan.sh /etc/init.d/ 
# root@odroid:~# sudo update-rc.d overscan.sh defaults
