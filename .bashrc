#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd #Changes directory without typing the whole path to it.
shopt -s expand_aliases

#History
export HISTSIZE= 
export HISTFILESIZE= 
export HISTCONTROL=ignoreboth
export HISTCONTROL="erasedups:ignorespace"
#"incognito"
alias incognito="set +o history" #temporarily disable
alias nincognito="set -o history" #enable

#Aliases

alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'

# lazy typing
alias idgod="sudo !!"

#package management
alias p="sudo pacman"
alias orphans="pacman -Qtdq"
alias norphans="pacman -Qtdq | sudo pacman -Rns -"

# git stuff:
alias bare="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

PS1='\[\e[01;02;33m\]\u@\h \[\e[36m\][\W] \[\e[00;01;36m\]\$ \[\e[m\]'
PS2='\[\e[01;02;33m\]> \[\e[m\]'

