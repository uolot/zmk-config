#!/usr/bin/env sh

set -e

keymap parse -c 10 -z ../config/cradio.keymap > keymap.yaml
keymap draw keymap.yaml > keymap.svg
rsvg-convert keymap.svg -o keymap.png -b white
