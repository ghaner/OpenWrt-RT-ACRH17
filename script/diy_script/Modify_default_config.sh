#!/bin/bash

#===========================================================================================================
# thanks:
# https://github.com/gd0772/AutoBuild-OpenWrt
# https://github.com/gd0772/patch/blob/main/gd772.sh
#==========================================================================================================
TIME() {
[[ -z "$1" ]] && {
	echo -ne " "
} || {
     case $1 in
	r) export Color="\e[31;1m";;
	g) export Color="\e[32;1m";;
	b) export Color="\e[34;1m";;
	y) export Color="\e[33;1m";;
	z) export Color="\e[35;1m";;
	l) export Color="\e[36;1m";;
      esac
	[[ $# -lt 2 ]] && echo -e "\e[36m\e[0m ${1}" || {
		echo -e "\e[36m\e[0m ${Color}${2}\e[0m"
	 }
      }
}

#==========================================================================================================
# Modify default config:sed -i 's/default config/new config/g' package/config
#----------------------------------------------------------------------------------------------------------

echo
TIME b "Modify default config:"

echo
TIME b "修改默认登录IP为 192.168.10.1"
sed -i "s/192.168.1.1/192.168.10.1/g" package/base-files/files/bin/config_generate

echo
TIME b "空置登录密码"
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings




TIME b "Modify default config 结束"
#===========================================================================================================
