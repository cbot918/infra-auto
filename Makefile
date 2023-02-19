

docker:
	./src/dev-env/docker-install.sh

go:
	./src/dev-env/go.sh

node:
	./src/dev-env/node.sh

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
