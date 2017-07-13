#!/bin/sh

cd
git clone git@github.com:phereford/dotfiles.git ~/.dotfiles
cd .dotfiles

ln -s .vimrc ~/.vimrc
ln -s .ctags ~/.ctags
ln -s .zshrc ~/.zshrc

mkdir ~/.vim
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundles
source ~/.vimrc
source ~/.zshrc
vim +PluginInstall +qall
