
cd /tmp
sed -i 's/http:\/\/downloads.pandorabox.com.cn\//http:\/\/pandorabox.leoslion.cn\//' /etc/opkg/distfeeds.conf
opkg update
opkg install wget
opkg install luci-i18n-shadowsocksr-pro-zh-cn
wget --no-check-certificate https://github.com/873578156/Command-and-Conquer-Red-Alert-II-win10-patch/raw/master/RA2.INI
sed -i 's/config_get dnsmasqconfdir "$cfg" confdir "\/etc\/dnsmasq.d"/config_get dnsmasqconfdir "$cfg" confdir "\/tmp\/dnsmasq.d"/' /etc/init.d/dnsmasq
sed -i 's/\/usr\/bin\/ip/ip/' /etc/init.d/ssrpro
sed -i 's/\/etc\/init.d\/ssrpro.sh restart/\/etc\/init.d\/ssrpro restart/' /etc/shadowsocksr/up-gfwlist.sh
