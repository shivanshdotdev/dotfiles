#!/bin/bash

i3-msg 'workspace 2; exec brave'
sleep 2.0
i3-msg 'workspace 3; exec obsidian'
sleep 2.0
i3-msg 'workspace 10; exec code'
sleep 2.5
i3-msg 'workspace 2'
