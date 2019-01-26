#!/usr/bin/env bash

CURRENT_THEME="$(defaults read "Apple Global Domain" "AppleInterfaceStyle" 2>/dev/null)"

if [[ "$CURRENT_THEME" != "Dark" ]]
then
  osascript -e "tell application \"System Events\" to tell appearance preferences to set dark mode to true"
  echo "Enabled dark mode"
fi
