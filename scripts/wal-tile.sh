  # "$@" is the wallpaper path
  wal -n -i "$@"
  awww img "$@"
  killall -SIGUSR2 waybar
  pywal-discord -t default
  pywal-discord -p /home/jira/.config/Equicord/themes
  swaync-client --reload-css
  sleep 0.3
