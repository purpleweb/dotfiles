#!/bin/bash

# install ag / The Silver Searcher
# @see https://github.com/ggreer/the_silver_searcher
apt-get install silversearcher-ag

# install colordiff
# @see https://www.colordiff.org/
apt-get install colordiff

# install bash-git-prompt
# https://github.com/magicmonty/bash-git-prompt
cd ~
git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1

# install a php code sniffer
composer global require "squizlabs/php_codesniffer=*"

# install phpstorm
# sudo snap install phpstorm --classic

