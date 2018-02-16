#!/bin/bash

echo \##############################################################
echo 			vimセットアップスタート！！
echo \##############################################################

cd ~/

# .vimがあったときのためにバックアップを取る
if test -e ".vim"; then
	mv .vim .vim.youmjww.org
fi

# .vimrcがあったときのためにバックアップを取る
if test -e ".vimrc"; then
	cp .vimrc .vimrc.youmjww.org
fi

mkdir -p ~/.vim/bundle

echo \##############################################################
echo 			プラグインマネージャのインスコ
echo \##############################################################

git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim

echo \##############################################################
echo 		環境設定ファイルや必要なプラグインをインスコ
echo \##############################################################

# 各種設定ファイルや言語に合わせたプラグインのファイルをDLしてくる
curl https://raw.githubusercontent.com/youmjww/configFile/master/.vimPhpConfig > ~/.vim/.vimPhpConfig
curl https://raw.githubusercontent.com/youmjww/configFile/master/.vimPhpPlugin > ~/.vim/.vimPhpPlugin
curl https://raw.githubusercontent.com/youmjww/configFile/master/.vimReactPlugin > ~/.vim/.vimReactPlugin

echo \##############################################################
echo 			vimrcのインスコ
echo \##############################################################

# vimrcをDLしてくる
curl https://raw.githubusercontent.com/youmjww/configFile/master/.vimrc > ~/.vimrc

echo \##############################################################
echo 	  	プラグインのインスコ
echo \##############################################################
vim +":NeoBundleInstall" +:q

echo \##############################################################
echo		処理終了！！
echo \#############################################################
