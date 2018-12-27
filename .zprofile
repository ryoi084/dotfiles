export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export DefaultIMModule=fcitx


ps -C fcitx || ( fcitx-autostart & ) > /dev/null 2>&1
