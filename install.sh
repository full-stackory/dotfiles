#!/bin/sh

cd
git clone git@github.com:phereford/dotfiles.git ~/.dotfiles
cd .dotfiles

ln -s .vimrc ~/.vimrc
ln -s .ctags ~/.ctags
ln -s .zshrc ~/.zshrc
ln -s ~/dotfiles/code_styles/rubocop.yml ~/.rubocop.yml
ln -s ~/dotfiles/code_styles/eslintrc.json ~/.eslintrc.json
ln -s ~/dotfiles/code_styles/scss-lint.yml ~/.scss-lint.yml
ln -s ~/dotfiles/code_styles/credo.exs ~/.credo.exs

mkdir ~/.vim
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundles
source ~/.vimrc
source ~/.zshrc
vim +PluginInstall +qall
