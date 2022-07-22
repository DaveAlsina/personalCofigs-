###########################
#  instala update
###########################
sudo apt-get update -y 
sudo apt-get upgrade -y 

###########################
#  instala git
###########################
sudo apt install -y  git

###########################
# instala ngrok
##########################

cd ~/Downloads
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
sudo tar xvzf ~/Downloads/ngrok-v3-stable-linux-amd64.tgz -C /usr/local/bin

###########################
#  instala kitty
###########################
sudo apt install -y kitty
cd ~
rm -rf ~/.config/kitty

git clone https://github.com/dleyvacastro/dotfiles.git
cp -rf ~/dotfiles/.config/kitty ~/.config/
rm -rf ~/dotfiles


###########################
#  instala neo vim
###########################
sudo apt install -y nodejs
sudo pip3 install neovim

cd ~/Downloads
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb
sudo apt install -y ./nvim-linux*.deb

cd ~/.config
rm -rf nvim 
git clone https://github.com/dleyvacastro/nvim.git


###########################
#  instala una nerdfont
###########################
mkdir 	~/.fonts
cd 	~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/AnonymousPro.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DejaVuSansMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/VictorMono.zip
unzio ./DejaVu*.zip
unzip ./AnonymousPro.zip
unzip ./Victor*.zip
rm ./AnonymousPro.zip
rm ./DejaVu*.zip
rm ./Victor*.zip
fc-cache -fv

cd

###########################
#  instala utilities 
###########################

sudo apt install -y htop

###########################
# instala latex completico
###########################

#sudo apt install -y texlive-full


###########################
# instala github cli
###########################

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh


###########################
#  instala lsd
###########################

cd ~/Downloads
wget https://github.com/Peltoche/lsd/releases/download/0.21.0/lsd-musl_0.21.0_amd64.deb
sudo apt install -y ./lsd*.deb
rm ./lsd*.deb
cd


###########################
#  instala bat
###########################

cd ~/Downloads
wget https://github.com/sharkdp/bat/releases/download/v0.20.0/bat-musl_0.20.0_amd64.deb
sudo apt install -y ./bat*.deb
rm ./bat*.deb
cd

#############################################
#  instala rofi | manejador de menus cómodo
#############################################
sudo apt install -y rofi


###################################
#  instala zsh junto con ohmyzsh
###################################

sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd ~/.oh-my-zsh
cd plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git
cd 


############################
# Docker
############################


#https://computingforgeeks.com/install-docker-and-docker-compose-on-kali-linux/

