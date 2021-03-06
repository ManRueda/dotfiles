#!/bin/zsh

# Latin American keyboard layout
cp $PWD/osx/support/latinamerican.keylayout ~/Library/Keyboard\ Layouts

# install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# cask for brew
brew tap phinze/cask
brew install brew-cask

# cask versions
brew tap caskroom/versions

# wget
brew install wget

# python (pip)
brew install python

# gm
brew install graphicsmagick

# iterm
brew cask install iterm2

# install zsh
brew install zsh

# oh-my-zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# set zsh as default shell
chsh -s `which zsh`

# quicksilver
brew cask install quicksilver

# alfred
brew cask install alfred

# mercurial
brew install hg

# git
brew install git

# git-flow
brew install git-flow

# git configuration + hub
zsh $PWD/installation/configure-git.zsh

# hyperterm editor
brew cask install hyperterm

# hyperterm preferences
ln -sfn $PWD/hyperterm/.hyperterm.js ~/.hyperterm.js

# atom editor
brew cask install atom

# st3
brew cask install sublime-text

# st3 preferences
ln -sfn $PWD/st3/preferences ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

# st3 keymaps
ln -sfn $PWD/st3/keymap.osx ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ (OSX).sublime-keymap

# st3 package control plugin
curl https://sublime.wbond.net/Package%20Control.sublime-package -o ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package\ Control.sublime-package

# run OS-free scripts
zsh $PWD/installation/universal.zsh

# powerline
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
mkdir ~/Library/Fonts
mv PowerlineSymbols.otf ~/Library/Fonts
git clone --depth 1 https://github.com/Lokaltog/powerline-fonts.git ~/Library/Fonts/powerline-fonts

# google web fonts
curl -L https://github.com/google/fonts/archive/master.zip > ~/Library/Fonts/gwf.zip
mkdir ~/Library/Fonts/gwf
unzip ~/Library/Fonts/gwf.zip -d ~/Library/Fonts/gwf
rm ~/Library/Fonts/gwf.zip

# clear font cache
sudo atsutil databases -remove

# install nodejs
zsh $PWD/installation/node.zsh

# install development languages, clis, db engines, and so on
zsh $PWD/installation/dev.zsh
zsh $PWD/osx/dev.zsh

# install programs
zsh $PWD/osx/programs.zsh
