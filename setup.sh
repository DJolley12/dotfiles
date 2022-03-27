sudo apt update && sudo apt upgrade

#editors
sudo apt install neovim
sudo apt install 

#plugin-manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#C#
wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-6.0
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y aspnetcore-runtime-6.0
sudo apt-get install -y dotnet-runtime-6.0

#block telemetry for bash profile
echo 'export DOTNET_CLI_TELEMETRY_OPTOUT=1' >>~/.bash_profile
echo 'export DOTNET_CLI_TELEMETRY_OPTOUT=1' >>~/.zshenv

#zsh
sudo apt install zsh
chsh -s $(which zsh)

#tmux
sudo apt install tmux

#ssh keygen
ssh-keygen -t ed 25519 -C "dcjolley12@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

#rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

#npm
sudo apt install nodejs npm

#postgresql
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql

#install gh cli
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/etc/apt/trusted.gpg.d/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/trusted.gpg.d/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

#key setup
gh ssh-key add ~/.ssh/id_ed25519.pub --title "personal desktop"

#setup directories
mkdir ~/source/repos/
mkdir ~/source/repos/github-clones
mkdir ~/source/repos/dotfiles

#nerd-font
git clone https://github.com/ryanoasis/nerd-fonts.git ~/source/repos/github-clones/
cd ~/source/repos/github-clones/nerd-fonts
./install.sh JetBrains Mono

#spotify-ad-block
git clone https://github.com/abba23/spotify-adblock.git ~/source/repos/github-clones/
cd ~/source/repos/github-clones/spotify-adblock/
sudo make install

#dotfiles
cd ~/source/repos/
git clone git@github.com:DJolley12/dotfiles.git
ln -s dotfiles/.tmux.conf ~/.tmux.conf
git clone git@github.com:DJolley12/vimrc.git
mkdir ~/.config/nvim/
ln -s vimrc/init.vim ~/.config/nvim/init.vim

#templates
cd ~/source/repos/
git clone git@github.com:DJolley12/templates.git
