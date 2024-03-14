#!/usr/bin/env bash

#awec du avk et du paste et ce sera coolax :)
# merci Belynn__ pour les idées !

previous="$(expand <(echo -e "${1}"))"
next="$(expand <(echo -e "${2}"))"

lineNumber=0

for line in $(paste -d , <(echo -e "${previous}" | awk '{ print length }')  <(echo -e "${next}" | awk '{ print length }'))
do
  before=${line%%,*}
  before=${before:-0}
  after=${line##*,}
  after=${after:-0}
  if [[ $before -gt $after ]]
  then
    tput -x cup "${lineNumber}" "${after}"
    tput ech $(( before - after ))
  fi

((++lineNumber))
done
