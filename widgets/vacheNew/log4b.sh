#!/usr/bin/env bash

logFile=/tmp/log4b.log

echo -e "${2-"trouver un jour le parent mais là j'ai la flemme"}:\n$(paste /dev/null <(echo -e "${1}"))" >> "${logFile}"
