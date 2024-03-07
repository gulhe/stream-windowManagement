#!/usr/bin/env bash

wd=$1
termTitle="OBSWM - $2"
dims=$3

trap 'kill 0' SIGINT;

terminator \
  -b \
  -u \
  --working-directory="${wd}" \
  --geometry "${dims}+0+0" \
  -T "${termTitle}" \
  -x "./watch.sh" \
  &

until wmctrl -r "${termTitle}" -t 3
do
  sleep 1
done

wait -n
