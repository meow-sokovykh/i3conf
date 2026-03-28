#!/bin/bash
percentage=$((echo info) | bluetoothctl | grep -oP "Battery\ Percentage:\ 0x\d+\ \(\K[^\)]*")

if [[ "$percentage" -ge 60 ]]; then
    icon=" "
    color="#4CAF50"
elif [[ "$QUALITY" -ge 30 ]]; then
    icon=" "
    color="#FF9800"
else
    icon=" "
    color="#FF5722"
fi

fulltext="$icon : $percentage%"

echo "$fulltext"
echo "$fulltext"
echo $color
