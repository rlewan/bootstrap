#!/usr/bin/env bash

if ! grep "nvm" ~/.bash_tools > /dev/null 2>&1
then
  echo '' >> ~/.bash_tools
  echo '# NVM config' >> ~/.bash_tools
  echo 'export NVM_DIR="$HOME/.nvm' >> ~/.bash_tools
  echo '[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm' >> ~/.bash_tools
  echo '[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion' >> ~/.bash_tools

  echo 'NVM configured'
fi
