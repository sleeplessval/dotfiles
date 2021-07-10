#!/bin/bash

echo Extracting $1
chmod a+x $1
$1 --appimage-extract
echo Finished

