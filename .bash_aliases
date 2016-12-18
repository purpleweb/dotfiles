# vim: filetype=sh

# commandes Magerun
alias magerun="n98-magerun.phar"
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
alias QQ='exit'
alias vv='vim ~/.vimrc'
alias bf='find * -xdev -type f -size +200M'
alias zt='clear'

# commandes Instant Précieux
alias gdev='cd ~/www/dev'
alias gd='cd ~/www/dev'
alias gprod='cd ~/www/magento'
alias gp='cd ~/www/magento'
alias gh='cd ~/www/HOME'

function myhelp {
  echo "== Alias HELP =="
  echo "-Magerun-"
  echo "magerun, mg, mm: n98-magerun.phar"
  echo "cf, cc: cache flush"
  echo "ii: reindex all"
  echo "ci: cache flush, reindex all"
  echo "-Instant Précieux-"
  echo "gdev, gd: go dev"
  echo "gprod, gp: go prod"
}

