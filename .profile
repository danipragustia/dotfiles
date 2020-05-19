export EDITOR=vim
export LANG=en_US.UTF-8
export XDG_RUNTIME_DIR=/tmp

if [[ -z $DISPLAY ]] && [[ "$(tty)" = "/dev/tty1" ]]; then
	exec sway
fi
