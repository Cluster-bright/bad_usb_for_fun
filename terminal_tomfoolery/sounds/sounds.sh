#!/usr/bin/env bash

# Function to create the sound-playing command
create_sound_command() {
    echo "( amixer -q set Master unmute 100% && wget -qO- '$1' | aplay ) > /dev/null 2>&1 &"
}

# Function to add alias to a file
add_alias() {
    local file=$1
    local command=$2
    local sound_url=$3
    echo "alias $command='$(create_sound_command "$sound_url") ; $command'" >> "$file"
}

# List of commands and their corresponding sound URLs
declare -A commands=(
    ["ls"]="https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/yay.wav"
    ["clear"]="https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/fart.wav"
    ["cd"]="https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/spring.wav"
    ["rm"]="https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/creeper.wav"
    ["mkdir"]="https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/mail.wav"
    ["mv"]="https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/pipe.wav"
    ["emacs"]="https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/yamete.wav"
    ["gcc"]="https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/my-code-is-broken.wav"
    ["man"]="https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/book.wav"
    ["cp"]="https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/amogus.wav"
    ["valgrind"]="https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/skill.wav"
    ["make"]="https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/nanomachines.wav"
    ["git"]="https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/git_gud.wav"
    ["get"]="https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/get_here.wav"
)

# Add aliases to .bash_aliases and .zshrc
for file in ~/.bash_aliases ~/.zshrc; do
    for command in "${!commands[@]}"; do
        add_alias "$file" "$command" "${commands[$command]}"
    done
done

source ~/.bash_aliases
