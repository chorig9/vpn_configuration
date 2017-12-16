systemctl stop packagekit

systemctl mask firewalld
systemctl enable iptables
systemctl stop firewalld
systemctl start iptables
iptables --flush

#iptables -A FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT
#iptables -A FORWARD -s 10.8.0.0/24 -j ACCEPT
#iptables -A FORWARD -j REJECT
#iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o enp0s3 -j MASQUERADE
#iptables -A INPUT -i tun0 -j ACCEPT
#iptables -A FORWARD -i tun0 -j ACCEPT

iptables -F
iptables -F -t nat
iptables -X -t nat
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o enp0s8 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o enp0s3 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -j MASQUERADE
#iptables -I FORWARD -i enp0s3 -o tun0 -j ACCEPT
#iptables -I FORWARD -i tun0 -o enp0s3 -j ACCEPT
#iptables -t nat -I POSTROUTING -o tun0 -j MASQUERADE
cp sysctl.conf /etc/sysctl.conf
systemctl restart network.service
