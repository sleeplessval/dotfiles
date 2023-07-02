#!/usr/bin/bash

echo -e "\033[1;31m$(hostname | figlet -f slant)\033[0m"
echo "$(whoami)@$(hostname)"
echo ''
fortune-rs

