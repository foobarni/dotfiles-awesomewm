#
# ~/.bash_profile
#
# Adding custom executables to $PATH:
PATH="$PATH:$HOME/.local/bin"

# autostart X after login

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
