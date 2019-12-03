# Installing fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish fortune python3-dev python3-pip python3-setuptools
sudo pip3 install thefuck

# Installing oh-my-fish
curl -L https://get.oh-my.fish | fish

# Installing eldemonstro/theme-toaster fish theme
fish -c "omf install https://github.com/eldemonstro/theme-toaster"
fish -c "omf install thefuck"
fish -c "omf theme toaster"

# Echoing PWD dir size to fish config
echo "SETUVAR fish_prompt_pwd_dir_length:20" >> "$HOME/.config/fish/fish_variables"

# Copying aliases to fish
cp -TRv "$PWD/aliases.fish" "$HOME/.config/fish/aliases.fish"

# Copying greeting to fish
cp -TRv "$PWD/fish_greeting.fish" "$HOME/.config/fish/functions/fish_greeting.fish"

# Install fisher and its plugins
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fish -c "fisher add brgmnn/fish-docker-compose"
fish -c "fisher add barnybug/docker-fish-completion"
fish -c "fisher add nickeb96/expanddots"

# Copying config to fish
cp -TRv "$PWD/config.fish" "$HOME/.config/fish/config.fish"

# Use fish as default shell
echo 'Changing your shell to fish'
chsh -s $(which fish)
