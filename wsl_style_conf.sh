sudo apt update -y && sudo apt upgrade -y

sudo apt install zsh -y

sudo apt install unzip -y

curl -sS https://starship.rs/install.sh | sh

printf 'eval "$(starship init zsh)"\n' >> ~/.zshrc

printf 'zsh\n' >> ~/.bashrc

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

wget -x https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip -O /tmp/FiraCode.zip

sudo unzip /tmp/FiraCode.zip -d /usr/share/fonts/ && sudo rm /tmp/FiraCode.zip

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

sed -r '/plugins=\(/ s/(^.*)(=.*)/\1=\(git golang docker docker-compose zsh-autosuggestions zsh-syntax-highlighting\)/g' -i ~/.zshrc

git config --global core.autocrlf true
