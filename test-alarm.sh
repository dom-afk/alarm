#!/bin/sh
PATH=$PATH:/usr/bin/
set -e

#"${inputs[@]}"

printf "HERE IS TEST ALARM"
readarray inputs < $1.test
rm -f $1.out
printf "$1.out"
sleep 1
unbuffer timeout -s SIGINT 30s ./My_Alarm "${inputs[@]}" >> $1.out

# I HATE SHELL this line shoud work but it doesnt 
