#!/usr/bin/env bash

r=0
b=0
g=0
randr=$(expr $RANDOM % 3)
randb=$(expr $RANDOM % 3)
randg=$(expr $RANDOM % 3 - 3)

# coproc read -t $(expr $RANDOM % 50 + 10) && wait "$!" || true

function increasecolors {
    ret=$(expr $1 + $2)
    if [ $1 -gt 255 ]
    then
        ret=`expr $1 % 256`
    fi
    if [ $1 -lt 0 ]
    then
        ret=`expr $1 + 256`
    fi
    echo $ret
}

while [ 1 ];
do
    r=`increasecolors $r $randr`
    b=`increasecolors $b $randb`
    g=`increasecolors $g $randg`
    # (echo -n $(printf '\033]11;#%x%x%x\007' "$r" "$g" "$b" ) > /proc/$trupid/fd/1) || exit
    (echo -n $(printf '\033]10;#%x%x%x\007' "$b" "$r" "$g" ) > /proc/$trupid/fd/1) || exit
    coproc read -t 0.1 && wait "$!" || true
done
