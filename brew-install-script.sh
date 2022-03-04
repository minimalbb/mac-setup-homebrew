# Homebrew Script for macOS
# change <UserName> into your own user name on line 8
# To execute this script: `chmod +x ./brew-install-script.sh` then `./brew-install-script.sh`

echo "Installing brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/<UserName>/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Update homebrew recipes
brew update

echo "Installing brew cask..."
brew tap homebrew/cask

# Programming Languages
echo "Installing programming languages..."
brew install python3

# Dev Tools
echo "Installing development tools..."
brew install git
brew install jupyterlab
brew install --cask iterm2
brew install --cask github
brew install --cask visual-studio-code

# Communication Apps
echo "Installing communication apps..."
brew install --cask messenger
brew install --cask discord
brew install --cask slack
brew install --cask zoom

# Web Tools
echo "Installing web tools..."
brew install --cask surfshark
brew install --cask microsoft-edge
brew install --cask welly

# Others
echo "Installing others..."
brew install --cask rectangle
brew install --cask notion
brew install --cask obsidian
brew install --cask spotify