#!/usr/bin/bash

if [ "$(pgrep -x redshift)" ]; then
	period=$(redshift -p 2> /dev/null | grep Period | awk '{print $2}')
	if [[ $period == 'Night' ]]; then
		#echo ""
		echo ""
		#echo "鈴"
	elif [[ $period == 'Transition' ]]; then
		echo ""
	else
		echo "盛"
	fi
else
	echo ""
fi
