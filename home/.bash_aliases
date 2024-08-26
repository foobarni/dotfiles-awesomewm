# -------------- Functions as Aliases ---------------------

# Run ssh-agent and add ssh key
jogsi() {
    eval $(ssh-agent) && ssh-add "$1"
}

# ---------------------- Aliases --------------------------

# "incognito" bash history
alias incognito="set +o history" #temporarily disable
alias nincognito="set -o history" #enable

alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'

alias die='poweroff'

# package management
alias p="sudo pacman"
alias orphans="pacman -Qtdq"
alias norphans="pacman -Qtdq | sudo pacman -Rns -"

# Git
alias muti="git checkout"
alias mizu="git status"
alias huzd="git pull"
alias lokd="git push"
alias mehet="git commit -m"
alias mizu="git status"
alias nezd="git add"
alias nenezd="git rm"
