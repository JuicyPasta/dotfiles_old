#!/bin/sh

printf "\033[0mvim setup " 
ln -f -s ~/dotfiles/vim/vimrc ~/.vimrc 
git clone https://github.com/VundleVim/Vundle.vim ~/dotfiles/vim/bundle/Vundle.vim
vim +PluginInstall +qall 

printf "\033[0mbash setup " 
which bash > /dev/null &&
echo 'ln -f -s ~/dotfiles/bash/bashrc ~/.bashrc' | bash &&
echo '. ~/.bashrc' | bash &&
printf "\e[92mSUCCESS\n" ||
printf "\e[91mFAILURE\n"

printf "\033[0mzsh setup: " &&
which zsh > /dev/null && 
echo 'ln -f -s ~/dotfiles/zsh/zshrc ~/.zshrc' | zsh &&
echo '. ~/.zshrc' | zsh &&
printf "\e[92mSUCCESS\n" ||
printf "\e[91mFAILURE\n"

# Tmux version needs to be > 1.9
printf "\033[0mtmux setup: " 
ln -f -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf 
git clone git clone https://github.com/tmux-plugins/tpm ~/dotfiles/tmux/plugins/tpm
tmux source-file ~/.tmux.conf  
