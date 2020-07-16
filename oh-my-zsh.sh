#! /bin/bash

echo "==> 🖲 Configuring oh-my-zsh"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &> /dev/null

sed -i '' "s/(git)/(git ssh\-agent)/" ~/.zshrc
echo "Add ssh-agent plugin... ✅"