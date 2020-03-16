#!/bin/bash

# install ag / The Silver Searcher
# @see https://github.com/ggreer/the_silver_searcher
apt-get install silversearcher-ag

# install colordiff
# @see https://www.colordiff.org/
apt-get install colordiff

# install tree
apt install tree

# install bash-git-prompt
# https://github.com/magicmonty/bash-git-prompt
cd ~
git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1

# install git + configuration
apt install git
git config --global user.name "Antoine Czerwonka"
git config --global user.email "tonio.cz@gmail.com"

# install PHP versions + extensions
add-apt-repository ppa:ondrej/php
apt-get update
apt-get install -y php5.6
apt-get install php5.6-simplexml

apt-get install -y php7.4

# install mysql

# install composer

# install a php code sniffer
composer global require "squizlabs/php_codesniffer=*"

# install laravel

