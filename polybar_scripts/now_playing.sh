#!/usr/bin/bash

if [[ "$(playerctl status)" == "Playing" ]]; then
	player=$(playerctl metadata | head -n 1 | awk '{print $1 }')
	if [[ "$player" == "spotify" ]]; then
		#echo "%{F#1DB954}"
		echo ""
	elif [[ "$player" == "firefox" ]]; then
		#echo "%{F#FF443D}"
		echo ""
	else
		echo ""
	fi
else
	#echo "ﱙ"
	#echo ""
	echo ""
fi
