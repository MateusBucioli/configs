sudo apt update -y && sudo apt upgrade -y

sudo apt install zsh -y

sudo apt install unzip -y

curl -sS https://starship.rs/install.sh | sh

printf 'eval "$(starship init zsh)"\n' >> ~/.zshrc

printf 'zsh\n' >> ~/.bashrc

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/FiraCode.zip -O ~/firacode

sudo unzip ~/firacode/FiraCode.zip -d /usr/share/fonts/
