export EDITOR=emacs
export PATH=~/bin:$PATH

export chroot_dir=~/chroot
export chroot_mirror=http://dl-cdn.alpinelinux.org/alpine
export chroot_arch=x86

if [ "$(type -t git_branch)" = 'git_branch' ]; then
	export PS1="\[\033[38;5;160m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;29m\]\`git_branch\`\[$(tput sgr0)\]\$ \[$(tput sgr0)\]"
fi

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi
