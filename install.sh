#!/bin/bash
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TARGETS=".gitconfig .gitignore_global .vim/ .vimrc"

for f in $TARGETS
do
cp -r $SOURCE_DIR/$f $HOME
echo "Copied $f to \$HOME"
done
