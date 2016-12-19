# vim: filetype=sh

# commandes Magerun
alias magerun='n98-magerun.phar'
alias mg='n98-magerun.phar'
alias mm='n98-magerun.phar'
alias cf='n98-magerun.phar cache:flush'
alias cc='n98-magerun.phar cache:flush'
alias ii='n98-magerun.phar index:reindex:all'
alias ci='n98-magerun.phar index:reindex:all; n98-magerun.phar cache:flush; '

# commandes générales
alias ll='ls -lAh'
alias grep='grep --color=auto'
alias gg='grep --color=auto -rnw . -e '
alias ff='find * -type f'
alias pp='vim ~/.bash_aliases'
alias spp='source ~/.bash_aliases'
alias Q='exit'
alias vv='vim ~/.vimrc'
alias bf='find * -xdev -type f -size +200M'
alias zt='clear'
alias e='vim'
alias gfiles='git log --name-only --color'

# commandes git
alias gst='git status'
alias gl='git log --oneline --color'
alias gf='git diff-tree --no-commit-id --name-only -r'
alias ga='git add'
alias gm='git commit -m'
alias gd='git diff --color'
