#       __   Valerie's   __             
#      / /_  ____ ______/ /_  __________
#     / __ \/ __ `/ ___/ __ \/ ___/ ___/
#  _ / /_/ / /_/ (__  ) / / / /  / /__  
# (_)_.___/\__,_/____/_/ /_/_/   \___/  
#				~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias exa='exa --tree'
alias flush='cd; clear; motd'
alias fortune='fortune-rs'
alias hx='helix'
alias imgcat='wezterm imgcat --height 50%'
alias ls='ls --color=auto'
alias lsd='lsd -l'
alias motd='rust-motd'
alias onefetch='onefetch --no-title --no-art --no-color-palette'
alias rmux='remux'
alias sl='sl -e'

export EDITOR=helix

export BAT_CONFIG_PATH="$HOME/.config/bat.conf"

eval "$(starship init bash)"
eval "$(thefuck --alias)"

source /usr/lib/goto/goto.sh
source /usr/lib/codecat/codecat.sh

if [[ $TERM == 'linux' ]]; then
	if [[ $SHLVL -le 1 ]]; then
		echo -e "\nWelcome back, $(whoami)!\n"
	fi
	return
fi

#export PS1="$(starship prompt)"
if [[ $SHLVL -le 3 ]]; then
	motd
fi

if shopt -q login_shell; then
	bash
	exit
fi

