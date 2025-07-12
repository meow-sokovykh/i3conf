#!/bin/bash
pactl set-sink-mute "@DEFAULT_SINK@" 0
pactl set-sink-volume "@DEFAULT_SINK@" +10%
pkill -RTMIN+1 i3blocks
