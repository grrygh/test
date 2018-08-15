#!/bin/bash

varInput=$1
var1=$(echo "`curl https://raw.githubusercontent.com/grrygh/test/master/payload`$varInput" | sha256sum)
var2=$(curl https://raw.githubusercontent.com/grrygh/test/master/hash)

if [ "$var1" = "$var2" ]; then
  echo "Hash verified"
else
  echo "Hash denied"
  fi
