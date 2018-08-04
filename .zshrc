export ZSH=${0:a:h}/.oh-my-zsh

ZSH_THEME="robbyrussell"
ZSH_CUSTOM=${0:a:h}/.zsh-custom

ENABLE_CORRECTION="true"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

