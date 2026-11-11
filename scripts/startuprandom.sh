#!/usr/bin/env bash
BACKGROUNDS_DIR="$HOME/Pictures/wallpapers/"
image=$(ls -1 "$BACKGROUNDS_DIR" |  shuf -n 1)
$SCRIPTS/wal-tile.sh "$BACKGROUNDS_DIR/$image"
notify-send -t 6000 "$(echo $image)"
