systemctl stop packagekit
yum install -y epel-release
yum install -y openvpn easy-rsa
yum install -y iptables-services
yum install -y openvpn-auth-ldap openldap-clients
