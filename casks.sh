#!/bin/bash

YELLOW_COLOR=`tput setaf 3`
COLOR_RESET=`tput sgr0`

echo "==> 🍻 Installing casks..."
echo "${YELLOW_COLOR}WARNING: Some casks might require you to enter your password.${COLOR_RESET}"

declare -a arr=("google-chrome" "rectangle" "iterm2" "visual-studio-code" "spotify" "notion" "zoomus" "slack" "microsoft-teams" "docker" "teamviewer" "onedrive" "yammer" "intellij-idea-ce" "java" "postman")
casks=$(brew cask list)

for cask in "${arr[@]}"
do
  if [ "${cask}" == "zoomus" ]
  then
    echo " 
  ${YELLOW_COLOR}Something to note about Zoom. It installs parts of the app in the pre-install scripts. 
  (https://twitter.com/c1truz_/status/1244737672930824193). This makes brew think that it is already installed 
  sometimes. So if the following script says Zoom is installed but the application does not exist. 
  Run the following command to clean all previous installations of Zoom before re-running this script. 

    brew cask uninstall zoomus${COLOR_RESET}
  "
  fi

  if echo ${casks} | grep "$cask" &> /dev/null
  then
    echo "$cask already installed... ✅"
  else
    printf "Installing $cask..."
    brew cask install "$cask" &> /dev/null
    echo ✅
  fi
done
