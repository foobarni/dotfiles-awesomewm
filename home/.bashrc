#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd # cd without cd command
shopt -s cdspell # ignore typos in cd command

# History
export HISTSIZE= 
export HISTFILESIZE= 
export HISTCONTROL="erasedups:ignoreboth"

# Aliases

if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi

# Color sequence tag cheatsheet:
# seq-start    seq-type    attributes    seq-end
#        \[    \type[      atr1;atr2     m\]
# color sequence: \[\033[atr1;atr2m\] or \[\e[atr1;atr2m\]
# "reset": \[\e[m\]

# ATTRIBUTES:
# COLOR or BACKGROUND  |  FORMAT:
# Black:     30  40    |  Normal: 0
# Red:       31  41    |  Bold: 1
# Green:     32  42    |  Dim: 2
# Yellow:    33  43    |  Underlined: 4
# Blue:      34  44    |  Invert fg and bg colors: 7
# Purple:    35  45    |  Hidden: 8
# Cyan:      36  46    |
# White:     37  47    |

PS1='\[\e[01;02;33m\]\u@\h \[\e[36m\][\W] \[\e[00;01;36m\]\$ \[\e[m\]'
PS2='\[\e[01;02;33m\]> \[\e[m\]'

# Source git files to...
if [ -f $HOME/.git-completion.bash ]; then
    . $HOME/.git-completion.bash
fi

if [ -f $HOME/.git-prompt.sh ]; then
    . $HOME/.git-prompt.sh
fi

# print git branch folder: $(__git_ps1 " (%s)")
if [ -n  "$(__git_ps1)"]; then
    PS1+='\[\e[01;37m\]$(__git_ps1 "(%s) ")\[\e[m\]'
fi
