#!/bin/bash

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

{
    echo "Starting script..."
    /usr/sbin/rfkill block bluetooth || echo "Failed to block Bluetooth"
    sleep 3
    /usr/bin/amixer -q set Master unmute || echo "Failed to unmute"
    /usr/bin/amixer -q set Master 100% || echo "Failed to set volume"
    /usr/bin/wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/chronjobs/soundstage/huh.wav | /usr/bin/aplay -q || echo "Failed to play sound"
    sleep 3
    /usr/sbin/rfkill unblock bluetooth || echo "Failed to unblock Bluetooth"
    echo "Script completed."
} > ~/glogfile.log 2>&1
