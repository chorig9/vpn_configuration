cd easy-rsa/
mkdir keys
source ./vars
./clean-all
./build-ca
./build-key-server server
./build-dh
cd keys

openvpn --genkey --secret /etc/openvpn/ta.key

cp dh2048.pem ca.crt server.crt server.key /etc/openvpn
cd ..
