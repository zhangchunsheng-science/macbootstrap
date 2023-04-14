rm -rf ~/.macbootstrap/
rm -rf /Applications/MacVim.app/
rm -rf /Applications/Snap.app/
rm -f /usr/local/bin/gvim

brew uninstall iterm2 --cask
brew uninstall sourcetree --cask
brew uninstall google-chrome --cask
brew uninstall coderunner --cask
brew uninstall the-unarchiver --cask
brew uninstall visual-studio-code --cask
brew uninstall jetbrains-toolbox --cask
brew uninstall wget
brew uninstall gnu-sed
brew uninstall autojump
brew uninstall cmake
brew uninstall nvm
brew uninstall ctags
brew uninstall gawk
brew uninstall coreutils
brew uninstall exiv2
brew uninstall ssh-copy-id
brew uninstall imagemagick
brew uninstall catimg
brew uninstall redis
brew uninstall gpg
brew uninstall icdiff
brew uninstall scmpuff
brew uninstall fzf
brew uninstall exiftool
brew uninstall git-lfs
brew uninstall cloc

# npm clean
npm uninstall -g gnomon
npm uninstall -g vue-cli
npm uninstall -g eslint-plugin-html
npm uninstall -g sequelize-auto
npm uninstall -g bash-language-server

rm -f ~/.zshrc
rm -f ~/.vimrc
rm -f ~/.gitconfig
rm -f ~/.ssh/config
rm -rf ~/.vim
rm -rf ~/.oh-my-zsh
