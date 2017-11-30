if [[ -z "$1" ]]; then
	echo "Client name required!"
else
	cd easy-rsa
	./build-key "$1"
	cd ..
fi
