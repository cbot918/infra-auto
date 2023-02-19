	ssh -q \
	    -o UserKnownHostsFile=/dev/null \
			-o StrictHostKeyChecking=no \
			-i /mnt/c/Users/yale/.vagrant.d/insecure_private_key \
			 vagrant@localhost \
			 -p 2222 \
			 "$@"
