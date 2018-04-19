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

echo \##############################################################
echo 			vimrcの設定と必要ファイルのDL
echo \##############################################################
git clone git@github.com:youmjww/youmjww.vim.git
echo source ~/youmjww.vim/.vimrc > ~/.vimrc


echo \##############################################################
echo 			プラグインマネージャのインスコ
echo \##############################################################
mkdir ~/youmjww.vim/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim.git ~/youmjww.vim/.vim/bundle/neobundle.vim

echo \##############################################################
echo 	  	プラグインのインスコ
echo \##############################################################
yes "" | vim -i NONE -c 'NeoBundleInstall! | q!'

echo \##############################################################
echo		処理終了！！
echo \#############################################################
