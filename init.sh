if brew -v &> /dev/null 
then
  echo "🍺 Homebrew already installed."
else
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo "Setting tap to press..."
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

#find apps/*.sh -exec /bin/bash {} \;
./casks.sh
