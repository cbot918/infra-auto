BPATH="$HOME/coding/cbot918/infra-auto/runninglinuxkernel_5.0"

buildk(){
	$BPATH/run_rlk_arm64.sh build_kernel
	$BPATH/run_rlk_arm64.sh build_rootfs
	$BPATH/run_rlk_arm64.sh run
}
buildk
