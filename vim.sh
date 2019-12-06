# Copying vim files
cp -TRv "$PWD/vimrc" "$HOME/.vimrc"
mkdir "$HOME/.vim"
cp -TRv "$PWD/vim" "$HOME/.vim"

# Installing vim and its dependencies
sudo apt-get update
sudo apt-get install vim silversearcher-ag dconf-cli vim-gnome -y
