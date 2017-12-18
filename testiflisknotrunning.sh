#!/bin/bash


RUNNING=$(bash $HOME/lisk-test/lisk.sh status |grep "Lisk")

dt="LISK_STATUS "$(date)

TOKEN=
CHAT_ID=

URL="https://api.telegram.org/bot$TOKEN/sendMessage"


if [[ $RUNNING != *"Lisk is running as PID:"* ]]
	
then
	MESSAGE=$dt" "$(bash $HOME/lisk-test/lisk.sh status)" Starting Node now!"
	
		curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MESSAGE"
	
		bash $HOME/lisk-test/lisk.sh start
	
		bash $HOME/checknode_telegram.sh


fi