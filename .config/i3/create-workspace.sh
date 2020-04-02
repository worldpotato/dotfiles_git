#!/bin/bash

i3-msg "workspace ; append_layout ~/.config/i3/workspace-clean.json"

st -c first &
st -c gotop -e /usr/bin/gotop &
st -c clock -e /usr/bin/tty-clock -sbcDC2 -f %d.%m.%Y &

i3-msg restart
