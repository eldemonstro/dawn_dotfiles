# Copying .tmux.conf to home
cp -TRv "$PWD/tmux.conf" "$HOME/.tmux.conf"
mkdir "$HOME/.bin"
cp -TRv "$PWD/bin" "$HOME/.bin"

# Installing tmux
sudo apt-get update
sudo apt-get install tmux -y
