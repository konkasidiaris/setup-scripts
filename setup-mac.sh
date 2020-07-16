# set script to fail when an error occurs
set -e

echo "Setting up workstation protocol initiated"

echo "Caching password..."
sudo -K
sudo true;
clear

# homebrew needs to be set first!
./homebrew.sh

# Install Node Version Manager and Node
#./nodejs.sh

# Install git and git alias
#./git.sh
brew install git

# Install Applications
brew install wget
brew install tree
brew install neovim
brew install tmux
brew cask install iterm2
brew cask install visual-studio-code
brew cask install docker
brew cask install postman
brew cask install google-chrome
brew cask install firefox 
brew cask install vlc 
brew cask install sourcetree 
brew cask install slack
brew cask install notion

# Install Source Code Pro Font
brew tap homebrew/cask-fonts
brew cask install font-source-code-pro

echo
echo "-------------------------------------"
echo "----------------Done!----------------"
echo "-------------------------------------"
echo
