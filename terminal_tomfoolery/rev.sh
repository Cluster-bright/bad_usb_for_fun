#!/bin/bash

rtl_mark='\‮'
bashrc_file="$HOME/.bashrc"
sed -i '/PS1=/ s/\(PS1="[^"]*\)/\1'"$rtl_mark"'/' "$bashrc_file"
source "$bashrc_file"
