
alias ..="cd .."
alias ...="cd ../.."

alias la="ls -Gla"

# List only directories
alias lsd='ls -l | grep "^d"'

alias ll='ls -ahlF'
alias l='ls -CF'

# docker stuff
function drm --description 'docker: remove all containers'
	docker rm (docker ps -a -q)
end

function drmf --description 'docker: stop and remove all containers'
	docker stop (docker ps -a -q); and docker rm (docker ps -a -q)
end

function drmi --description 'docker: remove all images'
	docker rmi (docker images -q)
end

function dstop --description 'docker: stop all containers'
	docker stop (docker ps -a -q)
end

function dbuild --description 'docker: build current container'
	set -q $1; or set $1 (basename $PWD)
	docker build -t=$1 .
end

function docker_alias
    docker run -it --rm \
        -v (pwd):$1 -w $1 \
        -p 3000:3000 \
        -p 8080:8080 \
        -p 8000:8000 \
        -p 80:80 \
        $argv[2..-1]
end

alias dnode="docker_alias /directory node node"
alias docker-clean "docker images |awk '{print $3}'|grep -v 'IMAGE'| xargs docker rmi {}"
alias dc docker-compose
alias dce "docker-compose exec"
alias dl "docker ps -l -q"

# source local node version
if test -f ./.nvmrc
    nvm use
end 
