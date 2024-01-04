#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#hopt -s autocd #Changes directory without typing the whole path to it.
HISTSIZE= HISTFILESIZE= #Infinite history.

#Aliases

alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias p="sudo pacman"

# Git --bare alias:
alias bare="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

PS1='\[\e[01;02;33m\]\u@\h \[\e[36m\][\W] \[\e[00;01;36m\]\$ \[\e[m\]'
PS2='\[\e[01;02;33m\]> \[\e[m\]'

