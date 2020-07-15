echo "==> 🔧 Setting OSX defaults"

defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
echo "Setting tap to press... ✅"

defaults write com.apple.dock static-only -bool TRUE; killall Dock
echo "Show only active apps in dock... ✅"

defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2
echo "Increase keyboard key repeat... ✅"

defaults write com.apple.dock wvous-br-corner -int 13
echo "Set bottom right as hot corner... ✅"

ln -s "~/Library/Mobile\ Documents/com\~apple\~CloudDocs" ~/icloud
echo "Symlink iCloud folder to ~/icloud...✅"

git config --global user.email "vignesh@rvignesh.io"
git config --global user.name "Vignesh Rajasekaran"
echo "Set git global email & name... ✅"