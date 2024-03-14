#!/usr/bin/env bash

for flags in -{,a}le
do
  sl "${flags}"
  sleep 1
done
