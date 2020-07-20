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

ln -s "~/Library/Mobile\ Documents/com\~apple\~CloudDocs" ~/icloud &> /dev/null
echo "Symlink iCloud folder to ~/icloud...✅"

email="vignesh@rvignesh.io"

git config --global user.email "${email}"
git config --global user.name "Vignesh Rajasekaran"
git config --global pull.rebase true
git config --global core.autocrlf input
git config --global alias.br branch
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.unstage "reset HEAD --"
git config --global alias.slog "log --pretty=oneline --abbrev-commit"
git config --global alias.graph "log --all --oneline --graph --decorate"
echo "Set git configurations... ✅"

if find ~/.ssh/id_rsa &> /dev/null
then
    echo "SSH key file already exists... ✅"
else
    ssh-keygen -t rsa -b 4096 -C "${email}" -q -N "" -f ~/.ssh/id_rsa
    echo "Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa" >> ~/.ssh/config
    ssh-add -K ~/.ssh/id_rsa
    echo "Done generating new SSH key file... ✅"
fi