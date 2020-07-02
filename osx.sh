echo "==> 🔧 Setting OSX defaults"

echo "Setting tap to press. ✅"
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

echo "Show only active apps in dock. ✅"
defaults write com.apple.dock static-only -bool TRUE; killall Dock

echo "Increase keyboard key repeat. ✅"
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2