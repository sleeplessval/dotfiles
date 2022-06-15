#       __   Valerie's   __             
#      / /_  ____ ______/ /_  __________
#     / __ \/ __ `/ ___/ __ \/ ___/ ___/
#  _ / /_/ / /_/ (__  ) / / / /  / /__  
# (_)_.___/\__,_/____/_/ /_/_/   \___/  
#				~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias hx='helix'
alias ls='ls --color=auto'
alias lsd="lsd -l"
alias imgcat="wezterm imgcat --height 50%"
alias motd="rust-motd"

export EDITOR=helix

eval "$(starship init bash)"
eval "$(thefuck --alias)"

source /usr/lib/goto/goto.sh
source /usr/lib/codecat/codecat.sh

export PS1="$(starship prompt)"
if [[ $SHLVL -le 3 ]]; then
	motd
fi

