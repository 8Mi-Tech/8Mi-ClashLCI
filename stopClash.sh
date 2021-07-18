#!/bin/sh
#8Mi-ClashControl <Powered By Clash>
gsettings set org.gnome.system.proxy mode 'none'
echo -e "#!/bin/bash\nexport http_proxy=\nexport https_proxy=\$http_proxy\nexport ftp_proxy=\$http_proxy\nexport SOCKS_SERVER=\nexport no_proxy=\"localhost, 127.0.0.1, ::1\"" > env_proxy.sh
tmux kill-session -t clash