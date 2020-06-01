export XDG_RUNTIME_DIR=/tmp
export GDK_BACKEND=wayland
export MOZ_DBUS_REMOTE=1
export EDITOR=vim
export WINIT_UNIX_BACKEND=alacritty

if [ "$(type -t git_branch)" = 'git_branch' ]; then
	export PS1="\[\033[38;5;160m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;29m\]\`git_branch\`\[$(tput sgr0)\]\$ \[$(tput sgr0)\]"
fi

if [ $(tty) == /dev/tty1 ]; then
	exec sway
fi
