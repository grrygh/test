#!/bin/bash

read -p "Input: " varInput
var1=$(echo "`curl https://raw.githubusercontent.com/grrygh/test/master/payload`$varInput" | sha256sum)

if [ "$var1" = "$var2" ]; then
  echo "Hash verified"
else
  echo "Hash denied"
  fi
