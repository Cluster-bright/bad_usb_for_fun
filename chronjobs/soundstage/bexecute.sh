#!/bin/bash

rfkill block bluetooth
sleep 3
(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO-  | aplay -q &)
sleep 3
rfkill unblock bluetooth
