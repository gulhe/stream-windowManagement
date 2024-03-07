#!/usr/bin/env bash

tput civis
seed=0
while true
do
  ./pretty.sh "$(( seed * 2 ))"
  ((++seed))
done
