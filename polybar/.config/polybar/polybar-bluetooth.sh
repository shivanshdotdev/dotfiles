#!/bin/sh
# Get the MAC address of the currently connected device
MAC=$(bluetoothctl devices Connected | awk '{print $2}' | head -n 1)

if [ -n "$MAC" ]; then
    # Get the device name
    NAME=$(bluetoothctl info "$MAC" | grep "Alias:" | cut -d' ' -f2-)
    
    # Get the battery level dynamically
    BATTERY=$(upower -i $(upower -e | grep -E 'headset|bluetooth|blue' | head -n 1) 2>/dev/null | grep percentage | awk '{print $2}')
    
    if [ -n "$BATTERY" ]; then
        echo "$NAME ($BATTERY)"
    else
        echo "$NAME"
    fi
else
    echo "BT off"
fi
