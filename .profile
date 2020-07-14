export XDG_RUNTIME_DIR=~/tmp
export GDK_BACKEND=wayland
export MOZ_DBUS_REMOTE=1
export EDITOR=vim
export WINIT_UNIX_BACKEND=urxvt
export PATH=~/bin:$PATH

export chroot_dir=~/chroot
export chroot_mirror=http://dl-cdn.alpinelinux.org/alpine
export chroot_arch=x86

if [ "$(type -t git_branch)" = 'git_branch' ]; then
	export PS1="\[\033[38;5;160m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;29m\]\`git_branch\`\[$(tput sgr0)\]\$ \[$(tput sgr0)\]"
fi

if [ $(tty) == /dev/tty1 ]; then
	exec sway
fi
