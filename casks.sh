declare -a arr=("google-chrome" "rectangle")

for cask in "${arr[@]}"
do
  if brew cask list | grep "$cask" &> /dev/null
  then
    echo "$cask already installed... ✅"
  else
    printf "Installing $cask..."
    brew cask install "$cask" &> /dev/null
    echo ✅
  fi
done
