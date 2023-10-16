#!/bin/bash

echo "Building APP"

build (){
    if command -v docker -v &> /dev/null; then
        docker build -t tiktok_printer .
    else
        echo "Docker no esta instalado"
    fi
}
build
run () {
    docker run -dp 8081:8081 --rm --name tiktok_printer tiktok_printer

    if command docker ps | zgrep tiktok_printer | awk  '{print $2}' &> /dev/null; then
        echo "APP in working in http://localhost:8081"
    else
        echo "APP is not working"
    fi
}
run