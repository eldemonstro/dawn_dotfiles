echo 'We will now start to install the things'
echo 'Some of them come directly from campuscode/cc_dotfiles'

# Installing fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish

# Use fish as default shell
chsh -s /usr/local/bin/fish

# Installing oh-my-fish
curl -L https://get.oh-my.fish | fish

# Installing eldemonstro/theme-toaster fish theme
omf install eldemonstro/theme-toaster

# Echoing PWD dir size to fish config
echo "SETUVAR fish_prompt_pwd_dir_length:20" >> "$HOME/.config/fish/fish_variables"

# Copying aliases to fish
cp "$PWD/aliases.fish" "$HOME/.config/fish/aliases.fish"

# Install fisher and its plugins
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fisher brgmnn/fish-docker-compose
fisher barnybug/docker-fish-completion
fisher nickeb96/expanddots
