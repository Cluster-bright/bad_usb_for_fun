#!/bin/bash

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

{
    /usr/sbin/rfkill block bluetooth
    sleep 3
    /usr/bin/amixer -q set Master unmute
    /usr/bin/amixer -q set Master 100%
    /usr/bin/wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/chronjobs/soundstage/huh.wav | /usr/bin/aplay -q &
    sleep 3
    /usr/sbin/rfkill unblock bluetooth
} >/dev/null 2>&1
