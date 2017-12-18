#!/bin/bash


RUNNING=$(bash $HOME/lisk-test/lisk.sh status |grep "Lisk")

dt="LISK_STATUS "$(date)

TOKEN=
CHAT_ID=
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
MESSAGE=$dt" "$(bash $HOME/lisk-test/lisk.sh status)

if [[ $RUNNING == *"Lisk is running as PID:"* ]]

	then
	curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MESSAGE"

fi