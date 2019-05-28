# vim: filetype=sh

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;31m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -lAh'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# gitprompt configuration

# Set config variables first
GIT_PROMPT_ONLY_IN_REPO=1

# GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status

# GIT_PROMPT_START=...    # uncomment for custom prompt start sequence
# GIT_PROMPT_END=...      # uncomment for custom prompt end sequence

# as last entry source the gitprompt script
# GIT_PROMPT_THEME=Custom # use custom .git-prompt-colors.sh
# GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme

source ~/.bash-git-prompt/gitprompt.sh


# commandes magerun
#alias magerun='n98-magerun.phar'
#alias mg='n98-magerun.phar'
#alias mm='n98-magerun.phar'
#alias cf='n98-magerun.phar cache:flush'
#alias cc='n98-magerun.phar cache:flush'
#alias ii='n98-magerun.phar index:reindex:all'
#alias ci='n98-magerun.phar index:reindex:all; n98-magerun.phar cache:flush; '
#alias mmth='n98-magerun.phar dev:template-hints'
#alias mmdev='mm dev:merge-js --off; mm dev:merge-css --off; mm cache:disable;'
#alias mmprod='mm dev:merge-js --on; mm dev:merge-css --on; mm cache:enable;'

# commandes générales
alias ll='ls -lAh'
alias grep='grep --color=auto'
alias gg='grep --color=auto -rnw . -e '
alias ff='find * -type f'
alias pp='vim ~/.bashrc'
alias spp='source ~/.bashrc'
alias Q='exit'
alias vv='vim ~/.vimrc'
alias bf='find * -xdev -type f -size +200M' # find big files 200Mo+
alias zt='clear'
alias C='clear'
alias e='vim'

# commandes git
alias gst='git status'
alias CS='clear; git status;'
alias gl='git log --oneline --color'
alias gll='git log --oneline --color --decorate --graph'
alias gf='git diff-tree --no-commit-id --name-only -r'
alias ga='git add'
alias gc='git checkout '
alias gcp='git cherry-pick '
alias gm='git commit -m'
alias gd='git diff --color'
alias gfiles='git log --name-only --color'
alias gb='git branch '
alias gba='git branch -a'
alias gbd='git branch -d '
alias gbD='git branch -D '
alias cdd='cd $(git rev-parse --show-cdup)'

# composer
alias ci='rm -rf vendor; rm composer.lock; composer install --ignore-platform-reqs'
alias cit='rm -rf vendor; rm composer.lock; composer install --ignore-platform-reqs; composer test'
alias ct='composer test'

# wp autocompletion
# @see https://github.com/wp-cli/wp-cli/blob/master/utils/wp-completion.bash
WP_COMPL=/usr/local/bin/wp-completion.bash
if [ -f $WP_COMPL ]; then
    source $WP_COMPL
fi

export VISUAL=vim
export EDITOR="$VISUAL"

# vim mode for command line
set -o vi

# Set colors for less. Borrowed from https://wiki.archlinux.org/index.php/Color_output_in_console#less .
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline]]]]]]]'


export BASHRC_INIT=true
