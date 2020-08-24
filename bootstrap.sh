#!/bin/bash

# Exit on error
set -e 

# Install Homebrew
./homebrew.sh

# Setup oh-my-zsh shell
./oh-my-zsh.sh

# Install casks
./casks.sh

# OSX default
./osx.sh

# Mac apps
./app-store.sh

# VS Code Stuff
./vscode.sh

# Dev Environment
./dev.sh

# Updates
./update.sh

# AWS CLI
./aws-cli.sh