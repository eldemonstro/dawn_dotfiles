# Installing fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish fortune

# Use fish as default shell
echo 'Changing your shell to fish'
chsh -s $(which fish)

# Installing oh-my-fish
curl -L https://get.oh-my.fish | fish

# Installing eldemonstro/theme-toaster fish theme
fish -c "omf install eldemonstro/theme-toaster"

# Echoing PWD dir size to fish config
echo "SETUVAR fish_prompt_pwd_dir_length:20" >> "$HOME/.config/fish/fish_variables"

# Copying aliases to fish
cp "$PWD/aliases.fish" "$HOME/.config/fish/aliases.fish"

# Install fisher and its plugins
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fish -c "fisher brgmnn/fish-docker-compose"
fish -c "fisher barnybug/docker-fish-completion"
fish -c "fisher nickeb96/expanddots"

# Copying greeting to fish
cp "$PWD/fish_greeting.fish" "$HOME/.config/fish/functions/fish_greeting.fish"

# Copying config to fish
cp "$PWD/config.fish" "$HOME/.config/fish/config.fish"
