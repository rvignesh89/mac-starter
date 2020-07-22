#!/bin/bash

echo "==> ☕️ Installing brew..."
declare -a arr=("mas" "docker" "gradle" "jq")

for br in "${arr[@]}"
do
  if brew list | grep "${br}" &> /dev/null
  then
    echo "${br} already installed... ✅"
  else
    printf "Installing ${br}..."
    brew install "${br}" &> /dev/null
    echo ✅
  fi
done
