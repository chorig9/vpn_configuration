#!/bin/bash

scp easy-rsa/keys/ca.crt root@$1:/etc/openvpn
scp /etc/openvpn/ta.key root@$1:/etc/openvpn
scp client1.ovpn root@$1:/etc/openvpn
scp setup_client_debian.sh root@$1:/etc/openvpn
