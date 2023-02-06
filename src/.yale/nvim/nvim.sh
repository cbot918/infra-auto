############################################
## * usecase *                            ##
##  $ 複製程式碼到 nvim.sh                 ##
##  $ sudo chmod +x nvim.sh               ##
##  $ ./nvim.sh                           ##
############################################

CNAME=nvim-test                             # public_config: set container name
EXECC=exec                                  # private_config: because exec is shell's reserved word 
docker run -dit --name $CNAME ubuntu        # create a container with image:ubuntu
docker $EXECC $CNAME sh -c 'apt update && apt install git curl neovim -y' # install package

## init nvim required config folder ( init.vim is vim config )
docker $EXECC $CNAME sh -c '
mkdir -p ~/.config/nvim && 
touch ~/.config/nvim/init.vim && 
mkdir -p ~/.vim/autoload
'

## down pre-setup to init.vim
docker $EXECC $CNAME sh -c 'curl -o ~/.config/nvim/init.vim -OL https://raw.githubusercontent.com/cbot918/infra-auto/main/src/.yale/vim/init.vim'

echo "
enter and test: 
$ docker exec -it nvim-test bash
$ nvim
"

## teardown code for use :)
# docker container stop $DNAME
# docker container rm $DNAME