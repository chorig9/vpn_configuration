systemctl stop packagekit
yum install -y iptables-services

systemctl mask firewalld
systemctl enable iptables
systemctl stop firewalld
systemctl start iptables
iptables --flush

iptables -F
iptables -F -t nat
iptables -X -t nat
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o enp0s8 -j MASQUERADE

cp sysctl.conf /etc/sysctl.conf
systemctl restart network.service
