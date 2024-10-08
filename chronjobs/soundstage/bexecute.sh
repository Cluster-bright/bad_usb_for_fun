#!/bin/bash

rfkill block bluetooth
sleep 3
(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/chronjobs/soundstage/huh.wav | aplay -q &)
sleep 3
rfkill unblock bluetooth
