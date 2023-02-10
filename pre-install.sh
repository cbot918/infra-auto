GREEN='\033[1;32m' 
NC='\033[0m' # No Color

# pre-install
pre_install(){

	echo '[*] start apt update...'
	echo ' '

	sudo apt update
	sudo apt install git vim make curl -y
}
pre_install


# pre-config
pre_config(){

	# vim
	echo 'set tabstop=2
set shiftwidth=2
set autoindent
'>> ~/.vimrc

	# git
	git config --global user.name "cbot918"
	git config --global user.email "cbot918@gmail.com"

	# bash config
	cp -r src/.yale ~/
	echo 'if [ -f ~/.yale/.bash_yale ]; then
. ~/.yale/.bash_yale
fi
' >> ~/.bashrc
	echo 'alias sou="source ~/.bashrc"' >> ~/.bashrc

	# finish
	git config --list
	echo ' '
	echo 'pre-install finish'
	echo '-'
	echo 'todo:'
	echo -e "${GREEN}$ source ~/.bashrc"

}
pre_config

export_bashrc(){
	echo "export PATH=$PATH:$HOME/go/bin" >> $HOME/.bashrc
}
export_bashrc
