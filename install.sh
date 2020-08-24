#! /bin/bash

mkdir -p ~/.mac-starter

curl -L -O https://github.com/rvignesh89/mac-starter/releases/download/0.0.1/mac-starter.zip -o ~/.mac-starter/mac-starter.zip

unzip ~/.mac-starter/mac-starter.zip -d ~/.mac-starter

sudo ~/.mac-starter/mac-starter/bootstrap.sh