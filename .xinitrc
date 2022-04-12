slstatus &
xsetroot -solid "#2F4F4F"
xset r rate 300 50
setxkbmap -option caps:super
killall xcape 2>/dev/null ; xcape -e 'Super_L=Escape'
xmodmap -e 'keycode 135 = Super_R'
exec dwm
