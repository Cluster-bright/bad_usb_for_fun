#!/usr/bin/env bash

if [ `expr $RANDOM % 10` -lt 8 ]
then
    gnome-terminal
fi