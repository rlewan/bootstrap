#!/usr/bin/env bash

line="source .bash_java"

if ! grep "$line" ~/.bash_tools > /dev/null 2>&1
then
  echo '' >> ~/.bash_tools
  echo "$line" >> ~/.bash_tools

  echo 'Java configured'
fi
