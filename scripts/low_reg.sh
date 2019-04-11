#!/bin/bash
# Рекурсивный перевод имен в указанной папке в нижний регистр

if [[ $# == 0 ]]; then
    echo "usage: lower PATH"
    exit 2
elif [[ ! -d "$1" ]]; then
    echo "lower: $1 not a directory"
    exit 1
fi

find "$1" -nowarn -depth | head -n-1 | while read -r path; do
    newpath="$(dirname "$path")/$(basename "$path" | tr 'A-Z' 'a-z')"
    if [[ ! -e "$newpath" ]]; then
        mv "$path" "$newpath"
    fi
done 
