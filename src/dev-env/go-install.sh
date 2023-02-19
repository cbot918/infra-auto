# golang
BINARY="go1.19.5.linux-amd64.tar.gz"
install_go(){
    curl -OL "https://go.dev/dl/$BINARY"
    sudo rm -rf /usr/local/go
    sudo tar -C /usr/local -xzf go1.19.5.linux-amd64.tar.gz
    rm $BINARY
    mkdir -p $HOME/go/bin
    echo "export PATH=\$PATH:\$HOME/go/bin" >> $HOME/.bashrc
    echo "export PATH=\$PATH:/usr/local/go/bin" >> $HOME/.bashrc
    . $HOME/.bashrc
    echo "[*] auto check go-version"
    go version
}
install_go
