#!/bin/sh

ln -f -s ~/dotfiles/vim/vimrc ~/.vimrc 
git clone https://github.com/VundleVim/Vundle.vim ~/dotfiles/vim/bundle/Vundle.vim
vim +PluginInstall +qall 

sudo pip install cheat
touch ~/dotfiles/bash/work_aliases

ln -f -s ~/dotfiles/bash/bashrc ~/.bashrc
. ~/.bashrc

# Tmux version needs to be > 1.9
ln -f -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf 
git clone https://github.com/tmux-plugins/tpm ~/dotfiles/tmux/plugins/tpm
tmux source-file ~/.tmux.conf  
