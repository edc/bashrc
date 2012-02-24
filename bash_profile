#vim:sytnax=sh
BASHRCD=$HOME/.bashrcd
export EDITOR="mvim -f"
export GIT_EDITOR='vim'
alias ls='ls -G'
if [ `uname` == 'Darwin' ]; then export ARCHFLAGS="-arch i386 -arch x86_64"; fi
if [ `id -u` -eq 0 ]
then
	export PS1='\[\033[01;30m\]\w \[\033[01;30m\]# \[\033[00m\]'
else
	export PS1='\[\033[01;36m\][\[\033[00;33m\]\! \[\033[00;31m\]mbp \[\033[00;32m\]\w\[\033[01;36m\]] \[\033[01;33m\]\n$ \[\033[00m\]'
fi

source $BASHRCD/encrypt.sh
source $BASHRCD/r.sh
source $BASHRCD/python.sh
source $BASHRCD/vpnfix.sh
source $BASHRCD/aws.sh
source $BASHRCD/bus.sh
source $BASHRCD/rdkit.sh
source $BASHRCD/quickssh.sh
source $BASHRCD/history.sh

# add binutils folder to PATH
BINUTILS=`dirname $BASHRCD`/$(dirname `readlink $BASHRCD`)/binutils
export PATH=$PATH:$BINUTILS

test -e $HOME/.bash_profile.local && source $HOME/.bash_profile.local
