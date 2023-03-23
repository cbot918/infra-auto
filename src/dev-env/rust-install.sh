
BINARY="go1.19.5.linux-amd64.tar.gz"
install_rust(){
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}
install_rust