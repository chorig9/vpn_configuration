cp server.conf /etc/openvpn
cp ldap.conf /etc/openvpn/auth

ifconfig enp0s8 192.168.0.1

systemctl -f enable openvpn@server.service
systemctl stop openvpn@server.service
systemctl start openvpn@server.service
