#!/bin/bash

brave --app=https://gemini.google.com &
sleep 1 # so that the gpt will always open on right
brave --app=https://chatgpt.com/?temporary-chat=true &

sleep 1.5 # wait for it to be open and be focused and then resize it
i3-msg "resize set width 15 ppt"


