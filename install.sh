SOURCE_DIR=${0:a:h}
TARGET_DIR=$1
DOTFILES=".git .gitconfig .gitignore_global .gitmodules .oh-my-zsh .vim .vimrc .zlogin .zshenv .zshrc"

for f in $DOTFILES
do
cp -rv $SOURCE_DIR/$f $HOME
done
