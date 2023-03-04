# $FreeBSD$
#
# .shrc - bourne shell startup file 
#
# This file will be used if the shell is invoked for interactive use and
# the environment variable ENV is set to this file.
#
# see also sh(1), environ(7).
#


# file permissions: rwxr-xr-x
#
# umask	022

# Uncomment this to enable the builtin vi(1) command line editor in sh(1),
# e.g. ESC to go into visual mode.
# set -o vi


# some useful aliases
alias h='fc -l'
alias j=jobs
alias m="$PAGER"
alias ll='ls -laFo'
alias l='ls -l'
alias g='egrep -i'
alias x='startx'
alias f='vifm'
alias z='zathura'
alias n='lynx --vikeys www.searx.org'

# # be paranoid
# alias cp='cp -ip'
# alias mv='mv -i'
# alias rm='rm -i'


# set prompt: ``username@hostname:directory $ '' 
#PS1="\u@\h:\w \\$ "
#export PS1="[\u@\H]\n\@ \w >> \[$(tput sgr0)\]"
export PS1="\[\033[31m\][\[\033[33m\]\u@\H\[\033[31m\]]\[\033[31m\]\n\@ \w >> \[\033[37m\]\[$(tput sgr0)\]"
# search path for cd(1)
# CDPATH=:$HOME
