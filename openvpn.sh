cp server.conf /etc/openvpn
cp ldap.conf /etc/openvpn/auth

systemctl -f enable openvpn@server.service
systemctl stop openvpn@server.service
systemctl start openvpn@server.service
