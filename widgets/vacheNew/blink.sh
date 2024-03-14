#!/usr/bin/env bash

for i in $(seq 0 "${3:-1}")
do
  tput -x cup "${1}" "${2}"
  echo " "
  sleep .1
  tput -x cup "${1}" "${2}"
  echo "X"
  sleep .1
done