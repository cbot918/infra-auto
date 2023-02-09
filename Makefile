dev-env:
	./src/dev-env/docker-install.sh
	./src/dev-env/lang-install.sh

c:
	./src/dev-env/c-install.sh

arm:
	./src/dev-env/arm-install.sh

kernel:
	./src/dev-env/buildk.sh

init-mini:
	./src/minikube/minikube-install.sh


.PHONY: dev-env c init-mini

# init-dock:
# 	echo "ToBeImpl"
