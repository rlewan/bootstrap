#!/usr/bin/env bash

if ! grep "JAVA_HOME" ~/.bash_tools > /dev/null 2>&1
then
  echo '' >> ~/.bash_tools
  echo 'source .bash_java' >> ~/.bash_tools

  echo 'Java configured'
fi
