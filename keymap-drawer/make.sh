#!/usr/bin/env sh

set -e

keymap -c ../keymap_drawer.config.yaml parse -c 10 -z ../config/cradio.keymap > keymap.yaml
keymap -c ../keymap_drawer.config.yaml draw keymap.yaml > keymap.svg
rsvg-convert keymap.svg -o keymap.png -b white
