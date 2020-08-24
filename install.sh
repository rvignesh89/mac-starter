#! /bin/bash

mkdir -p ~/.mac-starter && cd ~/.mac-starter

curl -L -O https://github.com/rvignesh89/mac-starter/releases/download/0.0.1/mac-starter.zip 

unzip ~/.mac-starter/mac-starter.zip 

sudo ~/.mac-starter/bootstrap.sh