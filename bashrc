#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '
alias ll='ls -lhsA --color=auto'

# fzf bash integration
[ -f /root/.config/bash/fzf.bash ] && source /root/.config/bash/fzf.bash
