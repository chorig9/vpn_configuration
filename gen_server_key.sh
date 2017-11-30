cd easy-rsa/
mkdir keys
source ./vars
./clean-all
./build-ca
./build-key-server server
./build-dh
cd ..
