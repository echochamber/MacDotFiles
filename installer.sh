#!/bin/bash

# Full path to directory containing this file
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd )"


# vim
ln -s ${BASEDIR}/vimrc ~/.vimrc
ln -s ${BASEDIR}/vim/ ~/.vim
#
# zsh
ln -s ${BASEDIR}/bashrc ~/.bashrc
ln -s ${BASEDIR}/bash_aliases ~/.bash_aliases

# git
ln -s ${BASEDIR}/gitconfig ~/.gitconfig

. ~/.bashrc

mkdir ~/.vim/
mkdir ~/.vim/backup/
mkdir ~/.vim/swap/
mkdir ~/.vim/vundle/
mkdir ~/.vim/bundle/

vim +PluginInstall +qall
