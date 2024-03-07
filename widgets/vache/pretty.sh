#!/usr/bin/env bash

tput -x cup 0 0
./main.sh | lolcat -ft --seed="${1}"

# un programme qui change ce que je cherche à écrire en cyclant dans un fichier de phrases
# passage par fold pour le mettre en colonne comme il faut
# lorsqu'on change on fait un textHardDiff (à renommer ce nom de merdre) avec state_precedent et state actuel
# puis on met state actuel dans state precedent
# chinese man !! !!
