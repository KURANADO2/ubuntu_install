# Git config
git config --global http.version HTTP/1.1
git config --global http.postBuffer 524288000
git config --global user.name "Xinling Jing"
git config --global user.email "jingxinling1024@163.com"
git config --global core.editor "nvim"
# Solve the problem of garbled Chinese characters in Git
git config --global core.quotepath false

# zsh
sudo apt install zsh -y

# Kitty terminal
echo 'export TERM=xterm-256color' >>~/.zshrc

# Clash
mkdir -p ~/opt/clash
cd ~/opt/clash
wget https://github.com/DustinWin/proxy-tools/releases/download/Clash-Premium/clashpremium-release-linux-amd64.tar.gz
tar xvf clashpremium-release-linux-amd64.tar.gz
mv CrashCore clash
wget -O config.yaml "https://vhbi6.no-mad-world.club/link/paFgMaiYuAPqgmOH?clash=3"
wget -O Country.mmdb "https://cdn.jsdelivr.net/gh/Dreamacro/maxmind-geoip@release/Country.mmdb"

# dotfiles
mkdir -p ~/github
cd ~/github
git clone git@github.com:KURANADO2/dotfiles.git

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Starship
curl -sS https://starship.rs/install.sh | sh
ln -sf ~/github/dotfiles/starship/starship.toml ~/.config/starship.toml

# Vim
ln -sf ~/github/dotfiles/vim/.vimrc .vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Enter vim and then execute :PlugInstall command

# Lua
sudo apt install build-essential libreadline-dev unzip
sudo apt install lua5.1

# Luarocks
cd /opt
wget https://luarocks.org/releases/luarocks-3.11.1.tar.gz
tar xvf luarocks-3.11.1.tar.gz
cd luarocks-3.11.1
./configure && make && sudo make install
sudo luarocks install luasocket

# Neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
# And add nvim to your PATH
# export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
ln -sf ~/github/dotfiles/nvim ~/.config/nvim

# yazi
sudo apt install ffmpeg 7zip jq poppler-utils fd-find ripgrep fzf zoxide imagemagick -y
cargo install --locked yazi-fm yazi-cli

# eza
cargo install eza

# Lazyssh
cargo install lazyssh

# btop
sudo apt install btop

# zip and unzip command
sudo apt install zip

# Lazygit
# download the binary from https://github.com/jesseduffield/lazygit/releases
# tar xvf lazygit_0.49.0_Linux_x86_64.tar.gz
# sudo mv lazygit /usr/local/bin

# tree
sudo apt install tree

# docker compose
apt-get install docker-compose-plugin
