#!/bin/bash

sleep 6

DOW=$(date +%u)

declare -A playlists

playlists=([1]="lundi" [2]="mardi" [3]="mercredi" [4]="jeudi" [5]="vendredi" [6]="samedi" [0]="dimanche")

playlist=${playlists[$DOW]}

mopidy&

sleep 6

# 4 channels
#jack_connect mopidy:out_jackaudiosink0_1 system:playback_3
#jack_connect mopidy:out_jackaudiosink0_2 system:playback_4

#mpc clear
mpc load $playlist
mpc consume off
mpc repeat on
mpc play

epiphany-browser http://localhost/ecouteur/ &

sleep 6

xte 'key F11'


