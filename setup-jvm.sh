#!/usr/bin/env bash

line="source .bash_jvm"

if ! grep "$line" ~/.bash_tools > /dev/null 2>&1
then
  echo '' >> ~/.bash_tools
  echo "$line" >> ~/.bash_tools

  echo 'JVM configured'
fi
