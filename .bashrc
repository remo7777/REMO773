clear
#if [ $(tty) = /dev/pts/0 ]; then
#bash ~/holi.sh
cat $PREFIX/etc/motd
#fi
#echo
#echo -e "$(tput setaf 1 && tput setab 6 && toilet -f future 'Anil Kapoor' && tput sgr0)";
#echo -e "\e[1;32m$(cowsay -f bud-frogs 'Scammer Everywhere')\e[0m";
#echo
NAME=H4cK3R
export PROMPT_DIRTRIM=2
export PS1='
\[\033[0;31m\]┌─[\[\033[1;34m\]$NAME\[\033[1;33m\]@\[\033[1;36m\]termux\[\033[0;31m\]]─[\[\033[0;32m\]\w\[\033[0;31m\]]
\[\033[0;31m\]└──╼ \[\033[1;33m\]#\[\033[0m\] '
export LS_OPTIONS='--color=auto'
export LS_COLORS='no=00:fi=00:di=00;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=00;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
httpn() {

sleep 6
send_link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
if test -z "$send_link"
then
echo -e "\e[35mYou should wait for a moment..\e[0m";
else
echo -e "\e[32msend this link : \e[33m$send_link\e[0m";
fi
}
httpp() {
bash ~/.ngrok
}
stop() {

bash ~/.stop

}
