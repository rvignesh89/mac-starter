#! /bin/bash

if gem list --local | grep "cocoapods" &> /dev/null 
then 
    echo "cocoapods already installed ✅"
else
    printf "Installing cocoapods..."
    sudo gem install cocoapods &> /dev/null
    echo "✅"
fi
