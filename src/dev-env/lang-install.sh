

# golang
BINARY="go1.19.5.linux-amd64.tar.gz"
go(){
    curl -OL "https://go.dev/dl/$BINARY"
    sudo rm -rf /usr/local/go
    sudo tar -C /usr/local -xzf go1.19.5.linux-amd64.tar.gz
    rm $BINARY
    echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.bashrc
    source $HOME/.bashrc
    echo "[*] auto check go-version"
    go version
}
# install_go

# nodejs 
NODE_VERSION="16.19.0"
GREEN='\033[1;32m'
node(){
    # pre-install: nvm
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
    
    ## $ nvm current
    ## $ nvm ls-remote
    ## $ nvm install 

    echo '-'
    echo 'nvm installed'
    echo '-'
    echo 'todo:'
    echo -e "${GREEN}$ source ~/.bashrc"
    echo -e "${GREEN}$ nvm install 16"
    echo -e "${GREEN}$ nvm use 16"
    echo -e "${GREEN}$ node --version"

}
# install_nvm

# log_error(){
#     echo $1
# }

# case "$1" in
#     "") ;;
#     go) "$@"; exit;;
#     node) "$@"; exit;;
#     *) log_error "Unkown function: $1()"; exit 2;;
#     # *) log_error "Unkown function: $1()"; exit 2;;
# esac

#install_node(){
#    source ~/.bashrc
#    echo "[*] auto check nvm-version"
#    nvm --version
#     # install: node
#    nvm install $NODE_VERSION
#    nvm use $NODE_VERSION
#    echo "[*] auto check node-version"
#    node --version
#}
#install_node


# # python3
# install_py(){
#     # python3 is default installed
#     sudo apt install python3-pip
# }
# install_py



# install_ruby(){
#     echo skip-install-ruby
# }
# install_ruby
