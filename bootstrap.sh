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

# Check if Xcode and developer tools are installed or not
log-single 'Checking for Xcode... '
if [[ -d "/Applications/Xcode.app" ]]
then
  log 'Xcode is available'
else
  log 'Xcode is not available, install it through App Store'
  nohup open -a "App Store"
  exit 1
fi

# Check if Rosetta 2 is installed
log-single 'Checking for Rosetta 2... '
if [[ -n "$(pgrep oahd)" ]]
then
  log 'Rosetta 2 is available'
else
  log 'Rosetta 2 is not available, installing'
  /usr/sbin/softwareupdate --install-rosetta --agree-to-license
fi

# Check if Homebrew is available and install if not
PATH="$PATH:/opt/homebrew/bin:/opt/homebrew/sbin"
log-single 'Checking for Homebrew... '
if [ -n "$(command -v brew)" ]
then
  log 'Homebrew is available'
else
  log 'Homebrew is not available, installing' # Installation based on info from https://brew.sh/
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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

# Install requirements
log 'Installing requirements'
ansible-galaxy install -r requirements.yml

# Run ansible scripts
log 'Running Ansible'
ansible-playbook playbook.yml --ask-become-pass $@
