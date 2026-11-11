#!/usr/bin/env bash

BACKGROUNDS_DIR="$HOME/Pictures/wallpapers/"
recent(){
    local image
    count=$1
    image=$(ls -1 -t "$BACKGROUNDS_DIR" | sed -n "${1}p")
    $SCRIPTS/wal-tile.sh "$BACKGROUNDS_DIR/$image"
}

open_menu(){
    local result
    local current

    current=$(awww query | awk '{print $NF}' | head -n 1 | xargs basename)
    result=$(echo -e "Again\nCurrent: $current" | fuzzel -d -l 2)

    [[ ! "$result" == "Again" ]] && exit

    recent "$(($count + 1))"
    open_menu
}

recent "1"
open_menu
