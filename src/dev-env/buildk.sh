BPATH="$HOME/coding/cbot918/infra-auto/runninglinuxkernel_5.0"
FPATH="$HOME/coding/cbot918/infra-auto/src/dev-env"

fetchk(){
	git clone https://github.com/figozhang/runninglinuxkernel_5.0.git	
}
fetchk

buildk(){
	cp $FPATH/kernel_run.sh $BPATH
	echo "
$ cd runninglinuxkernel_5.0
$ kernel_run.sh
"
}
buildk
