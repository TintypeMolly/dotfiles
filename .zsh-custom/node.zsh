if [ `command -v npm` ]
then
    export NPM_CONFIG_PREFIX='~/.npm-global'
    export PATH=~/.npm-global/bin:$PATH
fi

