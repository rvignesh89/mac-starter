#!/bin/zsh

echo "==> 🍏 Install apps from Mac App Store"

declare -A apps=( ["iMovie"]="408981434" ["Xcode"]="497799835" )
installed_apps=$(mas list)

for name in "${(@k)apps}"; do
  if echo ${installed_apps} | grep -i "${name}" &> /dev/null
  then
    echo "${name} already installed... ✅"
  else
    printf "Installing ${name}..."
    mas lucky "${apps[$name]}" &> /dev/null
    echo ✅
  fi
done