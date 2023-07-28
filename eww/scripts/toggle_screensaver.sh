#!/usr/bin/bash

if [ "$(pgrep -x xscreensaver)" ]; then
	killall xscreensaver
else
	xscreensaver --no-splash &
fi

