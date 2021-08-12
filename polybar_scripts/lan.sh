#!/usr/bin/bash
if [[ "$(cat /sys/class/net/enp0s31f6/operstate)" == "up" ]]; then
	echo ""
	#echo ""
	exit
fi
wlan=$(iwctl station list | grep wlan0 | awk '{ print $2 }')
if [[ "$wlan" == "connected" ]]; then
	echo ""
else
	echo ""
	#echo ""
fi
