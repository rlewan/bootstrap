#!/usr/bin/env bash

set -e
set -o pipefail

function echoErr {
  echo "$1" 1>&2
}

# Verify and extract parameters
if [[ "$#" -ne 1 ]]
then
  echoErr "Menu item name is required"
  exit 1
fi

MENU_ITEM="$1"

# Check if the menu item is already available
CURRENT_MENU_ITEMS="$(defaults read "com.apple.systemuiserver" "menuExtras")"

if [[ ! ${CURRENT_MENU_ITEMS} =~ ${MENU_ITEM} ]]
then
  defaults write "com.apple.systemuiserver" "menuExtras" -array-add "/System/Library/CoreServices/Menu Extras/${MENU_ITEM}.menu"
  echo "added"
fi
