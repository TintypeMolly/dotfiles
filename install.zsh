SOURCE_DIR=${0:a:h}
TARGET_DIR=${1:=$HOME}

if [ ! -d $TARGET_DIR ]
then
    echo "Error: directory $TARGET_DIR does not exist."
    exit 1
fi

if [ $TARGET_DIR -ef $HOME ]
then
    CMD=('ln' '-sfn')
else
    CMD=('cp' '-rv' '--remove-destination')
fi

source $SOURCE_DIR/update_submodules.zsh

DOTFILE_LIST=('.gitconfig' '.gitignore_global' '.oh-my-zsh' '.vim' '.vimrc' '.zlogin' '.zsh-custom' '.zshenv' '.zshrc')

for DOTFILE in $DOTFILE_LIST
do
    SOURCE_PATH=$SOURCE_DIR/$DOTFILE
    TARGET_PATH=$TARGET_DIR/$DOTFILE
    if [ -d $TARGET_PATH ]
    then
        rm -rfv $TARGET_PATH
    fi
    $CMD $SOURCE_PATH $TARGET_PATH
done

git status

