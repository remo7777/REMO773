#if [ $(tty) = /dev/pts/0 ]; then
#	bash ~/.boot Remo773-T-bag
#fi

alias kali="bash -l ~/.kali"
alias ubuntu="bash -l ~/.ubuntu"

export PROMPT_DIRTRIM=2

export PS1='
\[\033[0;33;5;3m\]root@localhost\[\033[0;38;5;7m\]:\[\033[0;38;5;4m\]\w\[\033[0;38;5;7m\]#\[\033[0m\] '

alias ubuntu="bash -l ~/.ubuntu"
#export LD_PRELOAD="$LD_PRELOAD:/data/data/com.termux/files/usr/lib/ruby/2.6.0/aarch64-linux-android/bigdecimal.so"

export LS_OPTIONS='--color=auto'
eval "$(dircolors -b)"
alias ls='ls $LS_OPTIONS'
alias grep='grep --color=auto'
