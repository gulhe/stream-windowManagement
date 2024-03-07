#!/usr/bin/env bash

tput -x cup 0 0
./main.sh | lolcat -ft --seed="${1}"
