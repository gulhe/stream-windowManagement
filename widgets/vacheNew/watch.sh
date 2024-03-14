#!/usr/bin/env bash

clear

tput civis #tput civis => suppression du curseur qui casse les iepds

vacheBuffer=$(mktemp)

function updateVachePeriodically() {

  while true
  do
    chiantBuffer="$(mktemp)"
    ./main.sh > "${chiantBuffer}"
    mv "${chiantBuffer}" "${vacheBuffer}"

    sleep 1
  done

}

function currentVache() {
  cat "${vacheBuffer}"
}

function cleanVache() {
  ./trimAround.sh .sh "${1}" "${2}"
}


function wash() {
  local seed=0

  local buffer
  buffer="$(currentVache)"

  local currentValue
  currentValue="$(currentVache)"

  while true
  do
    currentValue="$(currentVache)"

    if [[ "${currentValue}" != "${buffer}" ]]
    then
      cleanVache "${buffer}" "${currentValue}"
      buffer="${currentValue}"
    fi

    ./pretty.sh "$(( seed * 2 ))" "$(expand <(echo -e "${buffer}"))" #TODO: Changer l'endroit où je fais le expand pour que ce soit plus clair :)
    ((++seed))
    sleep .31 #becaus prime number I'll use primes in all sleep-ed scripts

  done
}

trap 'kill 0' SIGINT;

updateVachePeriodically &
wash
