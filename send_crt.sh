#!/bin/bash

scp {easy-rsa/keys/$1.crt,easy-rsa/keys/$1.key,easy-rsa/keys/ca.crt,/etc/openvpn/ta.key,$1.ovpn} root@$2:/etc/openvpn

