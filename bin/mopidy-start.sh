#!/bin/bash

sleep 5

DOW=$(date +%u)

declare -A playlists

playlists=([1]="lundi" [2]="mardi" [3]="mercredi" [4]="jeudi" [5]="vendredi" [6]="samedi" [0]="dimanche")

playlist=${playlists[$DOW]}

mopidy&

sleep 5

# 4 channels
#jack_connect mopidy:out_jackaudiosink0_1 system:playback_3
#jack_connect mopidy:out_jackaudiosink0_2 system:playback_4

#mpc clear
mpc load $playlist
mpc consume off
mpc repeat on
mpc play

sleep 1

piplayer-mpd &

epiphany-browser http://localhost/ecouteur/ &

sleep 5

xte 'key F11'


