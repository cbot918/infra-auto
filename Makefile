

docker:
	./src/dev-env/docker-install.sh

go:
	./src/dev-env/lang-install.sh go

node:
	./src/dev-env/lang-install.sh node
	
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
