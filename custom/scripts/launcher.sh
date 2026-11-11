#!/usr/bin/env bash

input="Theme menu""\n"
input+="Apps""\n"
input+="Web""\n"
input+="Steam""\n"
input+="Leave""\n"
d=$(date)
choice=$(echo -e "$d\n$input" | fuzzel -d --select-index 1)
case "$choice" in
  "Web") $SCRIPTS/webapps.sh ;;
  "Todo") $SCRIPTS/todolist.sh ;; 
  "Apps") fuzzel ;;
  "Leave") wleave ;;
  "Theme menu") $SCRIPTS/theme_chooser.sh ;;
  "Steam") steam & ;;

  "tw") vivaldi -new-tab "twitter.com" ;;
  "yt") vivaldi -new-tab "youtube.com" ;;
  "mail") vivaldi -new-tab "mail.google.com" ;;


  "shutdown") systemctl poweroff ;;
  "suspend") systemctl suspend ;;
  "reboot") systemctl reboot ;;
  "stw") sudo /home/jira/scripts/switch_to_windows.sh ;;
  *) echo "unknown $choice" ;;
esac
