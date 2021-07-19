#!/bin/sh
#8Mi-ClashController <Powered By Clash>
export http_proxy=
export https_proxy=
export ftp_proxy=
tmux new-session -s clash -n core -d
sh reloadClash.sh
tmux new-window -t clash -n setting
tmux send-keys -t clash:setting '8Mi-ClashControl<Powered By Clash>'
tmux new-window -t clash -n set_proxy
tmux send-keys -t clash:set_proxy 'echo -e "#!/bin/bash\nexport http_proxy=\"https://127.0.0.1:7890\"\nexport https_proxy=\$http_proxy\nexport ftp_proxy=\$http_proxy\nexport SOCKS_SERVER=\"https://127.0.0.1:7891\"\nexport no_proxy=\"localhost, 127.0.0.1, ::1\"" > env_proxy.sh' Enter
tmux send-keys -t clash:set_proxy 'echo -e "#!/bin/sh\nif [ -z \$(cat ~/.bashrc|grep env_proxy.sh) ]\nthen\n    echo \"sh ~/env_proxy.sh\" >> ~/.bashrc\nelse\n    echo \"true\"\nfi"> set_env_proxy.sh' Enter
tmux send-keys -t clash:set_proxy 'sh set_env_proxy.sh' Enter
tmux send-keys -t clash:set_proxy 'rm set_env_proxy.sh' Enter
tmux send-keys -t clash:set_proxy 'sh set_gnome_proxy.sh' Enter
sh setClash.sh