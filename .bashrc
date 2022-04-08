HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=0

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

alias vim=nvim
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias gui='startx /usr/bin/i3 && pkill wallpaper.sh'
alias batstat='cat /sys/class/power_supply/BAT0/capacity'

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

PATH=$PATH:/usr/games/
PATH=$PATH:/home/gernot/.dotnet/
export PATH

export PS1="\[\e[0;37m\][\[\e[0;37m\]\[\033[38;5;14m\]\u\[\e[0;37m\]@\[\e[0;37m\]\[\033[38;5;10m\]\h\[\e[0;37m\]] \[\e[0;37m\]\[\033[38;5;14m\]\w\[\e[0;37m\]>\[\e[0;37m\] "

if [ "$EUID" -ne 0 ]; then
	export PS1="\[\e[0;37m\][\[\e[0;37m\]\[\033[1;36m\]\u\[\e[0;37m\]@\[\e[0;37m\]\[\033[1;32m\]\h\[\e[0;37m\]] \[\e[0;37m\]\[\033[1;36m\]\w\[\e[0;37m\]>\[\e[0;37m\] "
else
	export PS1="\[\e[0;37m\][\[\e[0;37m\]\[\033[6;1;31m\]\u\[\e[0;37m\]@\[\e[0;37m\]\[\033[1;32m\]\h\[\e[0;37m\]] \[\e[0;37m\]\[\033[1;36m\]\w\[\e[0;37m\]>\[\e[0;37m\] "
fi

if [ $(tty) == /dev/tty2 ];then
	alsamixer
fi

export GTK_USE_PORTAL=1

#export TERM='xterm-256color'

csvview(){
	csvtool -t ';' readable $1 | less -S
}

#if  [ ! $TMUX  ]; then
#	tmux && exit
#fi
export VISUAL="nvim"
