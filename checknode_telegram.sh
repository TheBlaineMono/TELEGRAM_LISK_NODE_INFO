#!/bin/bash


dt="LISK_STATUS "$(date)
#MESSAGE=$dt
MESSAGE=$dt" "$(bash $HOME/lisk-test/lisk.sh status)

TOKEN=

CHAT_ID=

URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MESSAGE"