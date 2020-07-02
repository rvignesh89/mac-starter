if brew cask list | grep "google-chrome" &> /dev/null
then
  echo "Google Chrome already installed"
else
  brew cask install google-chrome
fi
