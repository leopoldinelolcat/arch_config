if [ -f ~/.taff_aliases ]; then
    . ~/.taff_aliases
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lla='ls -Al'
alias interfaces='ip link show'
alias wld='sudo ip link set wlp2s0 down'
alias wlu='sudo ip link set wlp2s0 up'
alias etd='sudo ip link set enp6s0 down'
alias etu='sudo ip link set enp6s0 up'
alias dhcp='sudo dhcpcd enp6s0'
alias monip='curl eth0.me'
alias jirc='ssh leopoldine@irc-server'
alias service='sudo systemctl start httpd mariadb cronie'

alias phpstormserver='sudo phpstormserver'
alias pacus='sudo php app/console doctrine:schema:update --dump-sql'
alias pacuf='sudo php app/console doctrine:schema:update --force'
alias rmcache='sudo rm -rf ./app/cache/dev ./app/cache/prod'
alias pacall='rmcache && sudo php app/console assetic:dump && sudo php app/console cache:clear -e dev && sudo php app/console cache:clear -e prod && sudo php app/console cache:warmup -e dev && sudo php app/console cache:warmup -e prod && sudo chmod -R 777 ./app/cache/'
alias tclog='tail ./app/logs/prod-critical.log'
alias cdlog='cd ./app/logs/'

