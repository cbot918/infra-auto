DNAME=test
EXECC=exec

# create a container with image:ubuntu
docker run -dit --name $DNAME ubuntu

# basic install
# docker $EXECC $DNAME sh -c ' apt update && apt install git tmux golang-go curl -y'

# nvim install/setup
docker $EXECC $DNAME sh -c '
mkdir -p ~/.config/nvim && 
touch ~/.config/nvim/init.vim && 
mkdir -p ~/.vim/autoload
'

docker $EXECC $DNAME sh -c 'curl -OL '

# let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
# if empty(glob(data_dir . '/autoload/plug.vim'))
#   silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
#   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
# endif




docker container stop $DNAME
# docker container rm $DNAME