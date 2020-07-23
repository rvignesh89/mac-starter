#!/bin/bash

echo "==> ☕️ Installing brew..."

declare -a arr=("mas" "docker" "gradle" "jq")
brews=$(brew list)

for br in "${arr[@]}"
do
  if echo ${brews} | grep "${br}" &> /dev/null
  then
    echo "${br} already installed... ✅"
  else
    printf "Installing ${br}..."
    brew install "${br}" &> /dev/null
    echo ✅
  fi
done
