if [ -f ~/.taff_aliases ]; then
    . ~/.taff_aliases
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias mkdir='mkdir -pv'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lla='ls -Al'
alias interfaces='ip link show'
alias wld='sudo ip link set wlo1 down'
alias wlu='sudo ip link set wlo1 up'
alias etd='sudo ip link set enp0s25 down'
alias etu='sudo ip link set enp0s25 up'
alias dhcp='wld && etu && sudo dhcpcd enp0s25'
alias monip='curl eth0.me'
alias jirc='ssh leopoldine@irc-server'
alias service='sudo systemctl start httpd mariadb cronie docker'
alias listservice='systemctl --type=service'

alias phpstormserver='sudo phpstormserver'
alias pacus='sudo php bin/console doctrine:schema:update --dump-sql'
alias pacuf='sudo php bin/console doctrine:schema:update --force'
alias rmcache='sudo rm -rf ./var/cache/dev ./var/cache/prod'
alias pacall='rmcache && sudo php bin/console assetic:dump && sudo php bin/console cache:clear -e dev && sudo php bin/console cache:clear -e prod && sudo php bin/console cache:warmup -e dev && sudo php bin/console cache:warmup -e prod && sudo chmod -R 777 ./var/cache/ && ./vendor/bin/phpunit'
alias tclog='tail ./var/logs/prod-critical.log'
alias cdlog='cd ./var/logs/'
alias gitsen='git push sensiolabs +host-dev:master'
alias dcu='docker-compose -f docker-compose.yml -f local.yml up -d'
alias dcd='docker-compose down'
alias dcb='docker-compose -f docker-compose.yml -f local.yml up --build -d'
alias dclog='docker-compose logs'
