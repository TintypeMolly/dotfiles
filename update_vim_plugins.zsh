curl -LSso ${0:a:h}/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
git submodule update --init --recursive
git submodule foreach git pull --recurse-submodules origin master
