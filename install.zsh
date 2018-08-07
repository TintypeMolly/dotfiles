SOURCE_DIR=${0:a:h}
TARGET_DIR=${1:=$HOME}

if [ ! -d $TARGET_DIR ]
then
    echo "Error: directory $TARGET_DIR does not exist."
    exit 1
fi

source $SOURCE_DIR/update_submodules.zsh

DOTFILE_LIST=('.gitconfig' '.gitignore_global' '.oh-my-zsh' '.vim' '.vimrc' '.zlogin' '.zsh-custom' '.zshenv' '.zshrc')

for DOTFILE in $DOTFILE_LIST
do
ln -sfv $SOURCE_DIR/$DOTFILE $TARGET_DIR
done

git status

