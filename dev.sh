#! /bin/bash

echo "Preparing development environment"

# It is safe to re-run this script. After installation this script
# this script tries to update nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh &> /dev/null | bash
echo "nvm installed... ✅"