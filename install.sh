#!/bin/sh

cd
git clone git@github.com:phereford/dotfiles.git ~/.dotfiles

ln -s .dotfiles/.vimrc ./.vimrc
ln -s .dotfiles/.ctags ./.ctags
ln -s .dotfiles/.zshrc ./.zshrc
ln -s ./dotfiles/code_styles/rubocop.yml ./.rubocop.yml
ln -s ./dotfiles/code_styles/eslintrc.json ./.eslintrc.json
ln -s ./dotfiles/code_styles/scss-lint.yml ./.scss-lint.yml
ln -s ./dotfiles/code_styles/credo.exs ./.credo.exs

mkdir ~/.vim
mkdir ~/.vim/bundle
mkdir ~/.vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
source ~/.vimrc
source ~/.zshrc
vim +PluginInstall +qall
