cp server.conf /etc/openvpn

systemctl -f enable openvpn@server.service
systemctl start openvpn@server.service
