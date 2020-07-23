#!/bin/zsh

echo "==> 🍏 Install apps from Mac App Store"

declare -A apps=( ["imovie"]="408981434" )
apps=$(mas list)

for name in "${(@k)apps}"; do
  if echo ${apps} | grep -i "${name}" &> /dev/null
  then
    echo "${name} already installed... ✅"
  else
    printf "Installing ${name}..."
    mas lucky "${apps[$name]}" &> /dev/null
    echo ✅
  fi
done