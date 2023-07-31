

docker-install:
	./src/dev-env/docker-install.sh

go-install:
	./src/dev-env/go-install.sh

riscv-install:
	./src/dev-env/riscv-install.sh

rust-install:
	./src/dev-env/rust-install.sh

node-install:
	./src/dev-env/node-install.sh

c:
	./src/dev-env/c-install.sh

arm:
	./src/dev-env/arm-install.sh

kernel:
	./src/dev-env/buildk.sh

init-mini:
	./src/minikube/minikube-install.sh


.PHONY: dev-env c init-mini c arm kernel

# init-dock:
# 	echo "ToBeImpl"
