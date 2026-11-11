#!/usr/bin/env bash

input="Twitter""\n"
input+="YouTube""\n"
input+="Mail""\n"
choice=$(echo -e "$input" | fuzzel -d)
case "$choice" in
  "Twitter") vivaldi -new-tab "twitter.com" ;;
  "YouTube") vivaldi -new-tab "youtube.com" ;;
  "Mail") vivaldi -new-tab "mail.google.com" ;;
esac
