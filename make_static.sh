#!/bin/sh
showoff static

while inotifywait -r -e modify $1; do
    showoff static
    cp -R samples static/
    cp -R code static/
done