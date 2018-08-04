#!/bin/bash
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TARGETS=".git .gitconfig .gitignore_global .gitmodules .oh-my-zsh .vim .vimrc .zlogin .zshenv .zshrc"

for f in $TARGETS
do
cp -rv $SOURCE_DIR/$f $HOME
done
