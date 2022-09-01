# Add commands to install any dependencies

sudo apt update && sudo apt install gnupg2 zsh-syntax-highlighting -y

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $OH_MY_ZSH_PLUGINS_PATH/zsh-syntax-highlighting

# Install asdf and node
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
source ~./zshrc
asdf plugin-add nodejs
asdf install nodejs 16.17.0
asdf global nodejs 16.17.0

# Setup vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir ~/.tmp
vim +PlugInstall +qa
