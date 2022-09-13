#!/bin/bash
warp-cli disconnect
nohup bash -c "sleep 1; pkill -RTMIN+2 i3blocks" &