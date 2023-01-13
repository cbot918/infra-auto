minikube_install(){
    # virtualbox
		sudo apt install virtualbox virtualbox-ext-pack -y

		# minikube
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    sudo install minikube-linux-amd64 /usr/local/bin/minikube
    echo 'export PATH=$PATH:/usr/local/bin' >> ~/.bashrc
    rm minikube-linux-amd64
    
    # kubectl
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
    rm kubectl

    echo 'alias mini="minikube "' >> ~/.bashrc
    echo 'alias kubc="kubectl "' >> ~/.bashrc

    echo ''
    echo '-'
    echo ''
    echo 'todo:'
    echo 'source ~/.bashrc'
    echo 'test with $ minikube'
    echo 'test with $ kubectl'

}
minikube_install

