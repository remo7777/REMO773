#!/data/data/com.termux/files/usr/bin/bash
rm -rf $PREFIX/bin/msfconsole
wget -O $PREFIX/bin/msfconsole https://raw.githubusercontent.com/remo7777/REMO773/master/msfconsole;
chmod 700 $PREFIX/bin/msfconsole;
msfconsole
