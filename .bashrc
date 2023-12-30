if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.yale/.bash_yale ]; then
. ~/.yale/.bash_yale
fi

alias sou="source ~/.bashrc"
export PATH=$PATH:/usr/local/go/bin
