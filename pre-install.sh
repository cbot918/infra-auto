pre_install(){
	git config --global user.name "cbot918"
	git config --global user.email "cbot918@gmail.com"
	sudo apt update
	sudo apt install make
}
pre_install
