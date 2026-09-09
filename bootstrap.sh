#!/usr/bin/env bash

set -e
set -o pipefail

# Coloured logging
COLOUR='\033[1;32m'
CLEAR='\033[0m'

function log {
  echo -e "${COLOUR}${1}${CLEAR}"
}

function log-single {
  echo -en "${COLOUR}${1}${CLEAR}"
}

# Check if Homebrew is available
log-single 'Checking for Homebrew... '
if [ -n "$(command -v brew)" ]
then
  log 'Homebrew is available'
else
  log 'Homebrew is not available, install it before continuing'
  exit 1
fi

# Check if Ansible is available and install if not
log-single 'Checking for Ansible... '
if [ -n "$(command -v ansible-playbook)" ]
then
  log 'Ansible is available'
else
  log 'Ansible is not available, installing'
  brew install ansible
fi

# Run ansible scripts
log 'Running Ansible'
ansible-playbook playbook.yml $@
