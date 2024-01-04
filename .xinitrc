nm-applet &
volumeicon &
xbindkeys &

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

udiskie -A --smart-tray --file-manager='alacritty -e lf' &
xscreensaver &
exec awesome
