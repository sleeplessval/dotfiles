#!/usr/bin/bash
NAME="ErgoDox EZ Shine Keyboard"

if ! xinput | grep "$NAME" > /dev/null; then
	echo "󰌐"
	exit
fi

ID=$(xinput | grep "$NAME" | cut -d "=" -f2 | cut -d "	" -f1)

CAPS="$(xinput --get-feedbacks $ID | grep led_mask | awk '{ print $3 }')"

if [[ "$CAPS"  == "1" ]]; then
	#echo "⇪"
	#echo ""
	echo "󰌎"
else
	echo "󰌌"
fi
