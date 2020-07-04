#!/bin/bash

# Exit on error
set -e 

# Install Homebrew
./homebrew.sh

# Install casks
./casks.sh

# OSX default
./osx.sh

# Mac apps
./apps.sh

# VS Code Stuff
./vscode.sh

# Setup oh-my-zsh shell
./oh-my-zsh.sh

# Updates
./update.sh
