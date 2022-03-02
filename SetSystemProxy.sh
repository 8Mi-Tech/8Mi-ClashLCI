#!/usr/bin/pkexec /bin/bash
#SetSystemProxy in Root Perm
if [ $1 == true ]; then
echo '#!/bin/bash
http_proxy=http://127.0.0.1:7890
https_proxy=http://127.0.0.1:7890
SOCKS_SERVER=socks5://127.0.0.1:7890'>/etc/profile.d/8Mi-ClashLCI_SystemProxy.sh
else
rm /etc/profile.d/8Mi-ClashLCI_SystemProxy.sh
fi