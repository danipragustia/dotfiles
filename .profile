export EDITOR=vim
export LANG=en_US.UTF-8
export GDK_BACKEND=wayland
export XDG_RUNTIME_DIR=/tmp

if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi
