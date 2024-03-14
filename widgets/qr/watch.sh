#!/usr/bin/env bash

tput civis
seed=0
while true
do
  ./pretty.sh "$(( seed * 2 ))"
  ((++seed))
  sleep 3.07 #because prime number I'll use primes in all sleep-ed scripts
done
