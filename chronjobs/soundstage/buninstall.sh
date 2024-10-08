#!/bin/bash

cronjob="*/37 * * * * ~/.bnodes/.bexecute.sh"

crontab -l | grep -F "$cronjob" > /dev/null

if [ $? -eq 0 ]; then
    crontab -l | grep -v -F "$cronjob" | crontab -
