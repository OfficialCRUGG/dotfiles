code --list-extensions > .vscode/extensions.txt
code --list-extensions | xargs -L 1 echo code --install-extension >> .vscode/install_extensions.sh
sudo cp ~/Library/Application\ Support/Code/User/settings.json ".vscode/settings.json"
code --version > .vscode/version.txt
node ./.updateScripts/updateMarkdownFiles.js