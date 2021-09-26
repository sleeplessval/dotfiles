#!/usr/bin/bash

if pidof redshift > /dev/null; then
	echo $(redshift -p 2> /dev/null | grep "Period" | awk '{ print $2 }')
else
	echo "Disabled"
fi

