#!/bin/bash

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export DISPLAY=:0    # Required if running in GUI session
export XDG_RUNTIME_DIR=/run/user/$(id -u)    # PulseAudio environment


{
    /usr/bin/amixer -q set Master unmute
    /usr/bin/amixer -q set Master 100%
    /usr/bin/wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/chronjobs/soundstage/huh.wav | /usr/bin/aplay -q
} > ~/dev/null 2>&1
