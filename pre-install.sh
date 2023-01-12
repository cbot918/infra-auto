pre_config(){

	git config --global user.name "cbot918"
	git config --global user.email "cbot918@gmail.com"

	echo '
	if [ -f ~/.yale/.bash_yale ]; then
			. ~/.yale/.bash_yale
	fi
	' >> ~/.bashrc
	source ~/.bashrc

}
pre_config



pre_install(){

	sudo apt update
	sudo apt install make
}
pre_install
