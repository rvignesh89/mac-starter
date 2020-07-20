echo "==> 🧾 Installing VS Code preferences..."

printf "Installing C#, Java ..."
code --install-extension ms-dotnettools.csharp &> /dev/null
code --install-extension vscjava.vscode-java-pack &> /dev/null
echo ✅
