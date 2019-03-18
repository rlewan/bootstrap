#!/usr/bin/env bash

set -e
set -o pipefail

function echoErr {
  echo "$1" 1>&2
}

# Verify and extract parameters
if [[ "$#" -ne 4 ]]
then
  echoErr "Four input parameters required:"
  echoErr "  - type (string | integer | float | boolean)"
  echoErr "  - domain (e.g. com.apple.dock)"
  echoErr "  - key (e.g. autohide)"
  echoErr "  - value"
  exit 1
fi

TYPE="$1"
DOMAIN="$2"
KEY="$3"
VALUE="$4"

# Check if the value has to be changed
CHANGED="false"
CURRENT_VALUE="$(defaults read "${DOMAIN}" "${KEY}" || echo -n "")"

if [[ "$TYPE" == "boolean" ]]
then
  if [[ "$(echo ${VALUE} | tr "[:upper:]" "[:lower:]")" =~ ^(yes|true)$ ]]
  then
    VALUE_AS_INT="1"
  elif [[ "$(echo ${VALUE} | tr "[:upper:]" "[:lower:]")" =~ ^(no|false)$ ]]
  then
    VALUE_AS_INT="0"
  else
    echoErr "Incorrect boolean value given"
    exit 1
  fi

  if [[ "$VALUE_AS_INT" != "$CURRENT_VALUE" ]]
  then
    CHANGED="true"
  fi
else
  if [[ "$VALUE" != "$CURRENT_VALUE" ]]
  then
    CHANGED="true"
  fi
fi

# Update the value if it has changed
if [[ "$CHANGED" == "true" ]]
then
  defaults write "${DOMAIN}" "${KEY}" -${TYPE} "${VALUE}"
  echo "changed"
fi
