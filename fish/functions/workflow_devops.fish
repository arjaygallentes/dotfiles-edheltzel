function hostfile --description 'Opens local host file in the default editor'
  eval sudo $EDITOR /etc/hosts
end

function lssh --description 'Quickly list all hosts in ssh config'
  command grep -w -i "Host" ~/.ssh/config | sed 's/Host//'
end

function editssh --description 'Opens ssh known host file in the default editor'
  eval $EDITOR ~/.ssh
end

function pubkey
    cat ~/.ssh/id_rsa.pub | pbcopy; and echo '=> Public key copied to clipboard.'
end

# Often used shortcuts/aliases for Network
alias ip="dig +short myip.opendns.com @resolver1.opendns.com" # dumps [YOUR PUBLIC IP] [URL IP]
alias localip="ipconfig getifaddr en0" #internal network IP
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"

# Often used shortcuts/aliases for View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

alias top="btm" # muscle memory
alias bottom="btm" # htop replacement
alias serve='miniserve' # rust HTTP server

# Docker/Kubernetes/Vagrant

# docker-compose alias
function dk --description 'an alias for docker'
  command docker $argv
end

# docker-compose alias
function dc --description 'an alias for docker-compose'
  command docker-compose $argv
end

# vagrant alias
# function vg --description 'an alias for vagrant'
#   command vagrant $argv
# end

# Editors
alias code="code"
alias mux="tmux"
alias vim="nvim"

# Language Support
# alias python="python3"
#alias pip="pip3"
alias pn="pnpm"
alias px="pnpx"
