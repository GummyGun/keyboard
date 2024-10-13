#!/bin/bash

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
cd $SCRIPTPATH/..
qmk json2c gum.json>keymap.c
cd ~/qmk_firmware
sudo make lily58:GummyGun:dfu
