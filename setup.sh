#!/bin/bash

# Initialize the submodule
echo -------------------------------
echo Initialize vim config submodule
echo -------------------------------
if ! git submodule update --init
then
    echo "Vim config submodule init failed" && exit 1
fi

# Pull latest changes for vim
cd ~/.vim && git pull origin master && git checkout master

# Install vim
echo ------------------
echo Install vim config
echo ------------------
~/.vim/install.sh
