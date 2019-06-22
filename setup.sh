#!/bin/bash

# Initialize the submodule
git submodule --init || echo "Vim config submodule init failed" && exit 1

# Install vim
.vim/installVundle.sh

