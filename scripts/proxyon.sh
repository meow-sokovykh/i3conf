#!/bin/bash
warp-cli connect
nohup bash -c "sleep 2; pkill -RTMIN+2 i3blocks" &