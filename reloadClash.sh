#!/bin/bash
#8Mi-ClashController <Powered By Clash>
export http_proxy=
export https_proxy=
export ftp_proxy=
wget --show-progress --progress=bar:force -O config.yaml "$(grep "sub_link=" clash_settings.config|sed 's/sub_link=//g')" 2>&1| tail -f -n +8
tmux send-keys -t clash:core C-c './clash -d ./' Enter