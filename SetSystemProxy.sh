#!/usr/bin/pkexec /bin/bash
#SetSystemProxy in Root Perm
if [ "$1" = "default" ] | [ "$2" = "true" ]; then
echo '#!/bin/bash
http_proxy=http://127.0.0.1:7890
https_proxy=http://127.0.0.1:7890
SOCKS_SERVER=socks5://127.0.0.1:7890'>/etc/profile.d/8Mi-ClashLCI_SystemProxy.sh
else if [ "$1" == default ]; then
rm /etc/profile.d/8Mi-ClashLCI_SystemProxy.sh
fi

if [ "$1" = "apt" ] | [ "$2" = "true" ]; then
echo 'Acquire::http::Proxy "http://127.0.0.1:7890";
Acquire::https::Proxy "http://127.0.0.1:7890";'>/etc/apt/apt.conf.d/8Mi-ClashLCI_ProxyConfig
else if [ "$1" = "apt" ]; then
rm /etc/apt/apt.conf.d/8Mi-ClashLCI_ProxyConfig
fi
