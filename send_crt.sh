#!/bin/bash

scp /etc/openvpn/vpn_configuration/easy-rsa/keys/$1.crt root@$2:/etc/openvpn
scp /etc/openvpn/vpn_configuration/easy-rsa/keys/$1.key root@$2:/etc/openvpn
scp /etc/openvpn/vpn_configuration/easy-rsa/keys/ca.crt root@$2:/etc/openvpn


