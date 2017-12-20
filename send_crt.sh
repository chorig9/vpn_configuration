#!/bin/bash

scp easy-rsa/keys/ca.crt root@$2:/etc/openvpn
scp /etc/openvpn/ta.key root@$1:/etc/openvpn

