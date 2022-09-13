#!/bin/bash

IFACE_NAME=$(ip route get 1.1.1.1 | grep -Po '(?<=dev\s)\w+' | cut -f1 -d ' ')

if [ -z "$IFACE_NAME" ]
then
	echo $IFACE_NAME
	echo down
	echo \#FF5722
	exit
fi

if echo $IFACE_NAME | grep -q Cloudflare
then
	POSTFIX=" [$IFACE_NAME]"
	IFACE_NAME="$(warp-cli network | grep WiFi | cut -f2 -d ' ' | cut -c 2- | rev | cut -c 2- | rev)"
fi

if echo $IFACE_NAME | grep -q wlan
then
	IFACE_NAME=$IFACE_NAME/$(iw dev $IFACE_NAME link | awk '/SSID/{print $2}')
fi

echo $IFACE_NAME$POSTFIX
echo $IFACE_NAME$POSTFIX
