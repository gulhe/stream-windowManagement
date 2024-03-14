#!/usr/bin/env bash

clear
previous="${1:-$(echo -e "Qul:	Prout !\nA:	312 toit même tu C dit le camarade couvreur")}"
next="${2:-$(echo -e "caca !\nboudin")}"

tput -x cup 0 0
echo -e "${previous}" | lolcat

sleep 1
./textHardDiff.sh "${previous}" "${next}" y

sleep 1
tput -x cup 0 0
echo -e "${next}"
