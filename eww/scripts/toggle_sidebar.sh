#!/usr/bin/bash

REV=$(eww get sidebar_rev)
if [[ $REV == 'false' ]]; then
	eww open sidebar
	eww update sidebar_rev=true
else
	eww close sidebar
	eww update sidebar_rev=false
fi
