#!/bin/bash
# fix web browser ko sử dụng notification của quickshell
sleep 3

jq '.notifications = false' ../modules/dotfiles/dotfiles/noctalia/settings.json >../modules/dotfiles/dotfiles/noctalia/settings.json.tmp && mv ../modules/dotfiles/dotfiles/noctalia/settings.json.tmp ../modules/dotfiles/dotfiles/noctalia/settings.json

sleep 1

jq '.notifications = true' ../modules/dotfiles/dotfiles/noctalia/settings.json >../modules/dotfiles/dotfiles/noctalia/settings.json.tmp && mv ../modules/dotfiles/dotfiles/noctalia/settings.json.tmp ../modules/dotfiles/dotfiles/noctalia/settings.json
