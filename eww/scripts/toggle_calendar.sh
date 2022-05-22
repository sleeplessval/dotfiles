#!/usr/bin/bash

if eww windows | grep -q "*calendar"; then
	eww close calendar
else
	eww open calendar
fi
