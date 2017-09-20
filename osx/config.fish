function docker_alias() {
    docker run -it --rm \
        -v $(pwd):$1 -w $1 \
        -p 3000:3000 \
        -p 8080:8080 \
        -p 8000:8000 \
        -p 80:80 \
        ${@:2}
}

alias dnode="docker_alias /directory node node"
