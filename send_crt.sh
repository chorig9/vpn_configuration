#!/bin/bash

scp easy-rsa/keys/$1.crt root@$2:/etc/openvpn
scp easy-rsa/keys/$1.key root@$2:/etc/openvpn
scp easy-rsa/keys/ca.crt root@$2:/etc/openvpn


