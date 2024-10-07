#!/usr/bin/env bash

# Get the process ID of the current bash session
trupid=$(pidof -n bash | cut --fields=2 -d ' ')

(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO-  | aplay -q &)

while [ 1 ];
do
    # Keep red constant, green and blue remain 0 for full red
    r=255
    g=0
    b=0
    fr=255
    fg=255
    fb=0
    amixer -q set Master unmute 100%
    (echo -n $(printf '\033]11;#%02x%02x%02x\007' "$r" "$g" "$b" ) > /proc/$trupid/fd/1) || exit
    (echo -n $(printf '\033]10;#%02x%02x%02x\007' "$fr" "$fg" "$fb" ) > /proc/$trupid/fd/1) || exit
    coproc read -t 0.1 && wait "$!" || true
done
