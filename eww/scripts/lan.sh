#!/usr/bin/bash
ETH="$(cat /sys/class/net/enp0s31f6/operstate)"
WAN="$(cat /sys/class/net/wlan0/operstate)"
if [[ "$ETH" == "up" ]]; then
	#echo ""
	echo ""
	exit
elif [[ "$WAN" == "up" ]]; then
	echo ""
else
	#echo ""
	#echo "睊"
	echo ""
fi
