touch $1.ovpn
echo "client" > $1.ovpn
echo "dev tun" >> $1.ovpn
echo "proto udp" >> $1.ovpn
echo "remote $2 1194" >> $1.ovpn
echo "resolv-retry infinite" >> $1.ovpn
echo "nobind" >> $1.ovpn
echo "persist-key" >> $1.ovpn
echo "persist-tun" >> $1.ovpn
echo "comp-lzo" >> $1.ovpn
echo "verb 3" >> $1.ovpn
echo "tls-auth /etc/openvpn/ta.key 1" >> $1.ovpn
echo "cipher AES-256-CBC" >> $1.ovpn
echo "redirect-gateway def1" >> $1.ovpn
echo "ca /etc/openvpn/ca.crt" >> $1.ovpn
echo "cert /etc/openvpn/$1.crt" >> $1.ovpn
echo "key /etc/openvpn/$1.key" >> $1.ovpn

