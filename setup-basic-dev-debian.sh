#!/bin/bash
# simple dev environment for debian

sudo apt-get -y install emacs

# git pull and install dotfiles as well
cd $HOME
if [ -d ./dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi
if [ -d .emacs.d/ ]; then
    mv .emacs.d .emacs.d~
fi
git clone https://github.com/jaime-ez/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
ln -sb dotfiles/.git-prompt.sh .
ln -sf dotfiles/.emacs.d .

#rlwrap
sudo apt-get install -y rlwrap

sudo apt-get -y update

#screen
sudo apt-get install screen

#killall
sudo apt-get install psmisc

#locate
sudo apt-get install locate
