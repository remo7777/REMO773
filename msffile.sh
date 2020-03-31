#! /data/data/com.termux/files/usr/bin/bash

if [ -e $PREFIX/bin/msfconsole ];then
        rm $PREFIX/bin/msfconsole
fi
if [ -e $PREFIX/bin/msfvenom ];then
        rm $PREFIX/bin/msfvenom
fi

var() {
	cat > $PREFIX/bin/msfconsole <<- EOF
	#!/data/data/com.termux/files/usr/bin/bash
	pg_ctl --log=$HOME/.logpgfl -D $PREFIX/var/lib/postgresql restart &> /dev/null
	ruby $HOME/metasploit-framework/msfconsole
	EOF
}

var
ln -s $HOME/metasploit-framework/msfvenom  $PREFIX/bin/msfvenom
chmod +rwx $PREFIX/bin/msfconsole
chmod +rwx $PREFIX/bin/msfvenom
exit
