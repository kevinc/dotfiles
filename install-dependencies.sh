# Add commands to install any dependencies

sudo apt update && sudo apt install gnupg2 -y

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $OH_MY_ZSH_PLUGINS_PATH/zsh-syntax-highlighting

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qa
