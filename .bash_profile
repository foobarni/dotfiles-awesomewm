#
# ~/.bash_profile
#
#Custom path variables:
PATH=$HOME/.local/bin:$PATH

[[ -f ~/.bashrc ]] && . ~/.bashrc

#autostart X after login

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
