#!/usr/bin/env bash

(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/tardis/tardis.wav | aplay -q &)
echo "        ___
_______(_@_)_______
| POLICE      BOX |
|_________________|
 | _____ | _____ |
 | |###| | |###| |
 | |###| | |###| |   
 | _____ | _____ |   
 | || || | || || |
 | ||_|| | ||_|| |  
 | _____ | _____ |  
 | || || | || || |  
 | ||_|| | ||_|| | 
 | _____ | _____ |
 | || || | || || |   
 | ||_|| | ||_|| |         
 |       |       |        
 *****************"
gsettings set org.blueman.plugins.powermanager auto-power-on false
gsettings set org.blueman.plugins.powermanager auto-power-off true
while [ 1 ];
do
    r=0
    g=255
    b=0
    fr=255
    fg=255
    fb=255


    (echo -n $(printf '\033]11;#%02x%02x%02x\007' "$r" "$g" "$b" ) > /dev/stdout) || exit
    (echo -n $(printf '\033]10;#%02x%02x%02x\007' "$fr" "$fg" "$fb" ) > /dev/stdout) || exit
    coproc read -t 0.1 && wait "$!" || true
done &