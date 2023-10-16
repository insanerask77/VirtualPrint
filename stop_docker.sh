#!/bin/bash

stop () {
    if command docker ps | zgrep tiktok_printer | awk  '{print $2}' &> /dev/null; then
        echo "Stoping APP"
        docker rm -f tiktok_printer
    else
        echo "APP is not started"
    fi
}
stop