#!/usr/bin/bash

WLAN=$(iwctl station wlan0 show | grep Connected)
if [[ $? -eq 0 ]]; then
	$WLAN | awk '{ print $3 }'
elif ip addr | grep 'enp0s31f6$' > /dev/null; then
	echo "Ethernet"
else
	echo "Disconnected"
fi

