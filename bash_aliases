#!/bin/bash

alias sniff="/usr/local/bin/phpcs -n -p --standard=PSR2 --extensions=\"php\""
alias goit="cd ~/Code/iTrack"
alias sf="php app/console"
alias notes="tail ~/.notes-to-self"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

addNote ()
{
    echo "$1" >> ~/.notes-to-self
}

spec ()
{
    if [ -a "vendor/bin/phpspec" ]
    then
        php -d memory_limit=256M vendor/bin/phpspec "$@"
    elif [ -a "bin/phpspec" ]
    then
        php -d memory_limit=128M bin/phpspec "$@"
    else
        echo "Can't find phpspec from current directory"
    fi
}
