#!/bin/bash

function doBrew() {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    source brew.sh;
}

function doDotfiles() {
    # copy dotfiles to user's home folder
    rsync --exclude ".git/" \
        --exclude "bootstrap.sh" \
        --exclude "brew.sh" \
        --exclude "LICENSE-MIT.txt" \
        -avh --no-perms . ~;
    # activate dotfiles
    source ~/.zshrc;
}

function doItOnce() {
    doBrew;
    doDotfiles;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doItOnce;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doItOnce;
    fi;
fi;
