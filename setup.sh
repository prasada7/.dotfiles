#!/bin/bash

# Initialize the submodule
echo -------------------------------
echo Initialize vim config submodule
echo -------------------------------
if ! git submodule update --init
then
    echo "Vim config submodule init failed" && exit 1
fi

# Pull changes for vim
cd ~/.vim && git checkout master && git pull origin master

# Install vim
echo ------------------
echo Install vim config
echo ------------------
~/.vim/installVundle.sh

# Remove the .git folder
rm -rf ~/.git
