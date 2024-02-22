# General Updates
sudo apt update -y && sudo apt upgrade -y

# Install GIT from ppa to get rolling release versions
sudo apt remove git && sudo add-apt-repository ppa:git-core/ppa && sudo apt update -y && sudo apt install git -y

# Handle line endings automatically, good/necessary for WSL2 integration.
git config --global core.autocrlf true
