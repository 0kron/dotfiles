#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# List of aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias v='nvim'
alias e='exit'
alias c='clear'
alias todo='nvim ~/todo.md'
alias wmenu='wmenu -i -f "Terminess Nerd Font 15" -l 5 -N 1E1E1D -n EBDBB2 -M EBDBB2 -m 1E1E1D -S EBDBB2 -s 1E1E1D'
alias wmenu-run='wmenu-run -i -f "Terminess Nerd Font 15" -l 5 -N 1E1E1D -n EBDBB2 -M EBDBB2 -m 1E1E1D -S EBDBB2 -s 1E1E1D'
alias ta='tmux a'

# Start Starship
eval "$(starship init bash)"
