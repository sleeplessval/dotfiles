#!/usr/bin/bash

if pidof redshift > /dev/null; then
	echo $(redshift -p 2> /dev/null | grep "temperature" | awk '{ print $3 }')
else
	echo "-"
fi
