#!/bin/bash

echo "==> 🍺 Installing brews..."

brew tap cockroachdb/tap

declare -a arr=("git" "mas" "docker" "gradle" "jq" "go@1.14" "cockroach" "tree" "openjdk@11" "kubernetes-cli" "terraform")
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
