#!/bin/bash

JSONFILE="../modules/dotfiles/dotfiles/noctalia/settings.json"
JSONFILETMP="../modules/dotfiles/dotfiles/noctalia/settings.json.tmp"
TRUE="../modules/dotfiles/dotfiles/noctalia/settings.json.true"
FALSE="../modules/dotfiles/dotfiles/noctalia/settings.json.false"

sleep 3
cp $FALSE $JSONFILE
# jq '.notifications.enabled = false' $JSONFILE >$JSONFILETMP && mv $JSONFILETMP $JSONFILE
#
sleep 1
cp $TRUE $JSONFILE
# jq '.notifications.enabled = true' $JSONFILE >$JSONFILETMP && mv $JSONFILETMP $JSONFILE
