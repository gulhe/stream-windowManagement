#!/usr/bin/env bash

fullScriptPath=$(readlink -f "${0}")
src="$(dirname "${fullScriptPath}")"
export src

trap 'kill 0' SIGINT;

# Hypothèse peut être que le wmctrl est tout perdu à cause que ça s'ouvre dans un ordre à la con
# demander sur les forums de OBS

"${src}"/commons/termIt.sh "${src}/widgets/horloge" 🕰️ "58x34" &
sleep 1
"${src}"/commons/termIt.sh "${src}/widgets/qr" 🟦 "500x500" &
sleep 1
"${src}"/commons/termIt.sh "${src}/widgets/train" 🚂 "2978x346" &
sleep 1
"${src}"/commons/termIt.sh "${src}/widgets/vache" 🐮 "300x500" &

wait -n
