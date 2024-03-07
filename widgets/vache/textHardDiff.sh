#!/usr/bin/env bash

#awec du avk et du paste et ce sera coolax :)
# merci Belynn__ pour les idées !

tput -x cup 0 0

lolcat 1

lineNumber=0
for line in $(paste -d , <(awk '{ print length }' 1)  <(awk '{ print length }' 2))
do
  before=${line%%,*}
  after=${line##*,}
  if [[ $before > $after ]]
  then
    for colNumber in $(seq $after $((before -1)))
    do
      tput -x cup "${lineNumber}" "${colNumber}"
      echo " "
    done
  fi

((++lineNumber))
done

tput -x cup 0 0

cat 2