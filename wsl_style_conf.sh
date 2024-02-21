#!/bin/bash

# General Updates
# sudo apt update -y && sudo apt upgrade -y

# Install GIT from ppa to get rolling release versions
# sudo apt remove git && sudo add-apt-repository ppa:git-core/ppa && sudo apt update -y && sudo apt install git -y
# git config --global core.autocrlf true

# Prompt user to choose what shell to use
printf "\nChoose your preferred shell:\n"
printf "1. Install fish shell\n"
printf "2. Install zsh shell\n"
read -p "Enter your choice (1 or 2): " choice

# Validate user input:
if [ $choice -ne 1 -a $choice -ne 2 ]; then
  echo "Invalid choice. Please enter 1 or 2."
  exit 1
fi

# Check if the chosen shell is already installed:
if [ $choice -eq 1 ]; then
  command -v fish >/dev/null 2>&1 && echo "fish is already installed."
elif [ $choice -eq 2 ]; then
  command -v zsh >/dev/null 2>&1 && echo "zsh is already installed."
fi

# Install the chosen shell (modify commands as needed):
if [ $choice -eq 1 && ! command -v fish >/dev/null 2>&1 ]; then
  sudo apt install fish -y
  chsh -s /bin/fish
elif [ $choice -eq 2 && ! command -v zsh >/dev/null 2>&1 ]; then
  sudo apt install zsh -y
  chsh -s /bin/zsh
fi

# Inform the user about completion:
printf "\n%s installation complete.\n" "$((choice == 1 ? "fish" : "zsh"))"



  # Install FiraCode
  # wget -x https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip -O /tmp/FiraCode.zip
  # sudo apt install unzip -y
  # sudo unzip /tmp/FiraCode.zip -d /usr/share/fonts/ && sudo rm /tmp/FiraCode.zip

  # # Install ZSH, suggestions, autocomplete and configure some plugins
  # sudo apt install zsh -y
  # git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  # sed -r '/plugins=\(/ s/(^.*)(=.*)/\1=\(git golang docker docker-compose zsh-autosuggestions zsh-syntax-highlighting\)/g' -i ~/.zshrc

  # # Install P10k
  # git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
  # echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
