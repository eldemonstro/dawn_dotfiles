echo 'We will now start to install the things'
echo 'Some of them come directly from campuscode/cc_dotfiles'

echo 'Installing fish'
sh "$PWD/fish.sh"

echo 'Install tmux'
sh "$PWD/tmux.sh"

echo 'Install Vim'
sh "$PWD/vim.sh"

echo 'Install theme'
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git "$PWD/theme"
~/theme/install.sh
