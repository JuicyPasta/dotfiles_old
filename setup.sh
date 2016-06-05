#!/bin/sh

printf "\033[0mvim setup: " &&
ln -f -s ~/dotfiles/vim/vimrc ~/.vimrc &&
vim +PluginInstall +qall > /dev/null &>2 /dev/null &&
printf "\e[92mSUCCESS\n" ||
printf "\e[91mFAILURE\n"

printf "\033[0mbash setup: " &&
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

printf "\033[0mtmux setup: " &&
ln -f -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf &&
tmux source-file ~/.tmux.conf && 
~/dotfiles/tmux/plugins/tpm/bin/install_plugins > /dev/null &&
printf "\e[92mSUCCESS\n" ||
printf "\e[91mFAILURE\n"
