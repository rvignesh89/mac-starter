#!/bin/zsh

echo "==> 🍏 Install apps from Mac App Store"

declare -A apps=( ["imovie"]="408981434" )

for name in "${(@k)apps}"; do
  if mas list | grep -i "${name}" &> /dev/null
  then
    echo "${name} already installed... ✅"
  else
    printf "Installing ${name}..."
    mas lucky "${apps[$name]}" &> /dev/null
    echo ✅
  fi
done