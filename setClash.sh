#!/bin/sh
#8Mi-ClashControl <Powered By Clash>
tmux send-keys -t clash:setting C-c 'browser -enable-gpu-rasterization --disable-pings --media-router=0 --enable-remote-extensions --load-extension= --window-size=1280,720 --app='$(grep "clash_dashboard=" clash_settings.config|sed 's/clash_dashboard=//g') Enter