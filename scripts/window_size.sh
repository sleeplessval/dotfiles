#!/bin/bash

echo "Waiting two seconds to get the size of the active window."
sleep 2
xwininfo -id $(xdotool getactivewindow)
