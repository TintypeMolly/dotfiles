#!/bin/bash
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TARGETS=".bashrc .gitconfig .gitignore_global .vim .vimrc"

for f in $TARGETS
do
cp -rv $SOURCE_DIR/$f $HOME
done
