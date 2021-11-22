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

#===========================================================================================================================
# 第三方插件必须要先拉进仓库https://github.com/ghaner/openwrt-package,再由之作为唯一的feed,一般不在此处单独添加第三方插件.
# Add a third-party software:git clone -b branch-name software-url.git package/third-party-feed/software-name
# Add a third-party software:git clone --depth=1 software-url package/third-party-feed/software-name
# Add a third-party software:svn co software-url(/trunk or branch/branch-name/software-name) package/third-party-feed/software-name
#----------------------------------------------------------------------------------------------------------------------------

#echo
#TIME y "添加 third-party software:"

#echo
#TIME y "添加 third-party software:"
#echo
#TIME y "添加 flowoffload"
#git clone https://github.com/deplives/luci-app-flowoffload package/third-party-feed/luci-app-flowoffload
#echo
#TIME y "添加 SSR Plus+"
#git clone https://github.com/fw876/helloworld package/gd772/ssrplus
#echo
#TIME y "添加 小猫咪"
#svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/gd772/luci-app-openclash
#echo
#TIME y "添加 Pass wall"
#git clone https://github.com/xiaorouji/openwrt-passwall package/gd772/passwall
#echo
#TIME y "添加 Hello World"
#git clone https://github.com/jerrykuku/luci-app-vssr package/gd772/luci-app-vssr
#echo
#TIME y "添加 京东签到"
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus package/gd772/luci-app-jd-dailybonus
#echo
#TIME y "添加 SmartDNS"
#git clone https://github.com/pymumu/luci-app-smartdns.git -b lede ./package/gd772/luci-app-smartdns
#git clone https://github.com/pymumu/openwrt-smartdns.git ./feeds/packages/net/smartdns
#echo
#TIME y "添加 KPR去广告"
#git clone https://github.com/project-lede/luci-app-godproxy package/gd772/luci-app-godproxy
#echo
#TIME y "添加 微信推送"
#git clone https://github.com/tty228/luci-app-serverchan.git ./package/gd772/luci-app-serverchan
#echo
#TIME y "汉化 实时监控"
#rm -rf ./package/lean/luci-app-netdata && svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-netdata ./package/lean/luci-app-netdata
#rm -rf ./feeds/packages/admin/netdata && svn co https://github.com/sirpdboy/sirpdboy-package/trunk/netdata ./feeds/packages/admin/netdata
#echo
#TIME y "添加 Dockerman"
#rm -rf package/gd772/luci-app-dockerman && svn co https://github.com/lisaac/luci-app-dockerman/trunk/applications/luci-app-dockerman package/gd772/luci-app-dockerman
#echo
#TIME y "添加 应用过滤"
#git clone https://github.com/destan19/OpenAppFilter package/gd772/OpenAppFilter
#echo
#TIME y "添加 网络测速"
#git clone https://github.com/sirpdboy/NetSpeedTest package/NetSpeedTest

TIME y "添加 third-party software 结束"
#----------------------------------------------------------------------------------------------------------
