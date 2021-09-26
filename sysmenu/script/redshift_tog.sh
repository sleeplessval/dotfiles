#!/usr/bin/bash

if pidof redshift > /dev/null; then
	killall redshift
else
	redshift &
fi

