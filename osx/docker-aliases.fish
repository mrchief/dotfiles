#!/usr/bin/fish

# Get latest container ID
function dl
    docker ps -l -q
end
funcsave dl

# Get container process
function dps
    docker ps
end
funcsave dps

# Get process included stop container
function dpa
    docker ps -a
end
funcsave dpa

# Get images
function di
    docker images
end
funcsave di

# Get container IP
function dip
    docker inspect --format '{{ .NetworkSettings.IPAddress }}'
end
funcsave dip

# Run deamonized container, e.g., $dkd base /bin/echo hello
function dkd
    docker run -d -P
end
funcsave dkd

# Run interactive container, e.g., $dki base /bin/bash
function dki
    docker run -i -t -P
end
funcsave dki

# Execute interactive container, e.g., $dex base /bin/bash
function dex
    docker exec -i -t
end
funcsave dex

# Stop all containers
function dstop
    docker stop (docker ps -a -q)
end
funcsave dstop

# Remove all containers
function drm
    docker rm (docker ps -a -q)
end
funcsave drm

# Stop and Remove all containers
function drmf
    docker stop (docker ps -a -q)
    docker rm (docker ps -a -q)
end
funcsave drmf

# Remove all images
function drmi
    docker rmi (docker images -q)
end
funcsave drmi

# Dockerfile build, e.g., $dbuild tcnksm/test
function dbuild
    set -q $1
    or set $1 (basename $PWD)
    docker build -t=$1 .
end
funcsave dbuild

# Show all alias related docker
function dalias
    alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/" | sed "s/['|\']//g" | sort
end
funcsave dalias

# Bash into running container
function dbash
    docker exec -it (docker ps -aqf "name=$1") bash
end
funcsave dbash

# Bash into latest running container
function dbashl
    dbash (dl)
end
funcsave dbashl

function docker_alias
    docker run -it --rm \
        -v (pwd):$1 -w $1 \
        -p 3000:3000 \
        -p 8080:8080 \
        -p 8000:8000 \
        -p 80:80 \
        $argv[2..-1]
end
funcsave docker_alias

function dnode
    docker_alias /directory node node
end
funcsave dnode

function docker-clean
    docker images | awk '{print $3}' | grep -v 'IMAGE' | xargs docker rmi {}
end
funcsave docker-clean

function dc
    docker-compose
end
funcsave dc

function dce
    docker-compose exec
end
funcsave dce

function dlog
    docker logs
end
funcsave dlog

function dlogl
    dlog (dl)
end
funcsave dlogl
