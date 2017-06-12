alias 14u32='docker run --privileged -it \
	-h $(hostname) \
	-u $(id -u) \
	-v $PWD/..:$(echo $PWD/..) \
	-e USERNAME=$(id -un) \
	-e USERID=$(id -u) \
	--env-file ~/.p4config \
	-w $PWD w1ball/lego_build_env'
alias legomake='14u32 make'