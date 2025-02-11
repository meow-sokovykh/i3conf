#!/bin/bash

special_chars="*~=@@o#$%&"
rnd_id=$(shuf -i 1-10 -n 1)
rnd_char=$(echo "$special_chars" | cut -c $rnd_id)

IP="$(wget http://ipinfo.io/ip -qO -)"
status=$?

if [[ "$IP" == "" ]]; then
if [[ "$status" == "4" ]]; then 
	echo -e "rslv.err"
	echo -e "rslv.err"
else
	echo -e "down"
	echo -e "down"
fi
	echo -e "#FF5722"
else
if [[ "$(echo "$IP" | grep '<')" != "" ]]; then
	echo -e "prov.block"
	echo -e "prov.block"
	echo -e "#FF5722"
else # everything is fine
	CACHEDIR="/tmp/ip_to_country_cache"
	if [ ! -d "$CACHEDIR" ]; then
		mkdir -p "$CACHEDIR"
	fi
	if [ ! -f "$CACHEDIR/$IP" ]; then
		curl -s ipinfo.io/$IP/country | cut -c 1-2 > "$CACHEDIR/$IP"
	fi

	COUNTRY=$(cat "$CACHEDIR/$IP")
	echo -e "$IP [$COUNTRY] $rnd_char"
	echo -e "$IP [$COUNTRY] $rnd_char"
	echo -e "#4CAF50"
fi
fi
