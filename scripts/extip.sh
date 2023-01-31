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
	echo -e "$IP [$rnd_char]"
	echo -e "$IP [$rnd_char]"
	echo -e "#4CAF50"
fi
fi
