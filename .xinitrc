# Make sure this is before the 'exec' command or it won't be sourced.
[ -f ~/.xprofile ] && . ~/.xprofile

exec i3 -V >> ~/.log/i3.log.$(date +'%F-%H-%M-%S') 2>&1
