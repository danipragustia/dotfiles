export XDG_RUNTIME_DIR=/tmp
export GDK_BACKEND=wayland
export CLUTTER_BACKEND=wayland
export MOZ_DBUS_REMOTE=1
export EDITOR=vim

function git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo "[${BRANCH}]"
	else
		echo ""
	fi
}

export PS1="\[\033[38;5;160m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;29m\]\`git_branch\`\[$(tput sgr0)\]\$ \[$(tput sgr0)\]"

if [ $(tty) == /dev/tty1 ]; then
	exec sway
fi
