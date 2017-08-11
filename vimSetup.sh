#!/bin/bash

mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# .vimrcがあったときのためにバックアップを取る
cd ~/
if test -e ".vimrc"; then
	cp .vimrc .vimrc.org
fi

# vimrcをDLしてくる
curl https://raw.githubusercontent.com/youmjww/configFile/master/.vimrc > ~/.vimrc
