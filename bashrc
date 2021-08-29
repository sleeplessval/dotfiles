#       __   Valerie's   __             
#      / /_  ____ ______/ /_  __________
#     / __ \/ __ `/ ___/ __ \/ ___/ ___/
#  _ / /_/ / /_/ (__  ) / / / /  / /__  
# (_)_.___/\__,_/____/_/ /_/_/   \___/  
#				~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

export EDITOR=vim

eval "$(starship init bash)"
eval "$(thefuck --alias)"

source /usr/lib/goto/goto.sh

export PS1="$(starship prompt)"

