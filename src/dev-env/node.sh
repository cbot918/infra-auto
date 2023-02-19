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
node