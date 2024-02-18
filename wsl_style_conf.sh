sudo apt update -y && sudo apt upgrade -y

sudo apt install zsh -y

sudo apt install unzip -y

curl -sS https://starship.rs/install.sh | sh

printf 'eval "$(starship init zsh)"\n' >> ~/.zshrc

printf 'zsh\n' >> ~/.bashrc

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip -X -O /tmp/firacode/FiraCode.zip

sudo unzip /tmp/firacode/FiraCode.zip -d /usr/share/fonts/

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

sed -r '/plugins=\(/ s/(^.*)(=.*)/\1=\(git golang docker docker-compose zsh-autosuggestions zsh-syntax-highlighting\)/g' -i ~/.zshrc
