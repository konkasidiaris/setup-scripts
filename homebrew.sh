echo
echo "Initializing homebrew installing process..."
echo

#if hash brew 2>/dev/null; then
#    echo "Homebrew is already installed!"
#else
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
#fi

echo
echo "Making sure that you have the latest Homebrew version"
brew update

#echo
#echo "Ensuring your Homebrew directory is writable"
#sudo chown -Rf $(whoami) $(brew --prefix)/*

echo
echo "Installing Homebrew services"
brew tap homebrew/services

echo
echo "Upgrading existing brews"
brew upgrade

echo
echo "Remove old, not in need, versions"
brew cleanup

echo
echo "Adding Hombrew's sbin to your PATH"
echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.bash_profile

echo
brew analytics off
echo "Homebrew is ready"
echo

