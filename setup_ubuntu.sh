#!/bin/bash
sudo apt install -y bison wget curl git zsh make gcc binutils

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install gnome-browser-connector

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

echo "source /home/felix/.gvm/scripts/gvm" >> ~/.zshrc
source ~/.zshrc
gvm install go1.4 -B
gvm use go1.4
echo "export GOROOT_BOOTSTRAP=$GOROOT" >> ~/.zshrc
source ~/.zshrc
gvm install go1.7
gvm use go1.7
gvm install go1.18
gvm use go1.18
gvm install go1.20
gvm use go1.20
gvm install –default go1.23

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
source ~/.zshrc
nvm install v22

wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64 -O vscode.deb
sudo dpkg -i vscode.deb

wget https://app.warp.dev/download?package=deb-O warp.deb
sudo dpkg -i warp.deb

sudo apt install fcitx5 fcitx5-unikey
