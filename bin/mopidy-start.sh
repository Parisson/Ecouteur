#!/bin/bash

DOW=$(date +%u)

declare -A playlists

playlists=([1]="lundi" [2]="mardi" [3]="mercredi" [4]="jeudi" [5]="vendredi" [6]="samedi" [0]="dimanche")

playlist=${playlists[$DOW]}

mopidy&
sleep 6
mpc clear
sleep 1
mpc load $playlist
sleep 1
mpc play

