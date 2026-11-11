#!/usr/bin/env bash

bgs="$HOME/Pictures/wallpapers"
backgrounds=$(ls -t "$bgs"  | xargs -n 1 basename)

choice=$(echo -e "Random Theme\nRecent Theme\n$backgrounds" | fuzzel -d)

case "$choice" in
  "Random Theme") $SCRIPTS/random-theme.sh ;;
  "Recent Theme") $SCRIPTS/recent-theme.sh ;; 
  *) $SCRIPTS/wal-tile.sh "$bgs/$choice" ;;
esac
[[ -z "$choice" ]] && exit
echo "$bgs/$choice"
