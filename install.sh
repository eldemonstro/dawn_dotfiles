#!/bin/sh

if [ ! -d "$HOME/.dawn_dotfiles" ]
then
  echo "This dotfiles is contructed for Ubuntu and is based of campuscode/cc_dotfiles"
  echo "It also will install custom shortcuts and themes, so hold on"
  echo "We are going into a adventure"
  echo "Will be installed:"
  echo " - tmux"
  echo " - fish shell"
  echo "   - Toaster theme (edited)"
  echo "   - Some completions"
  echo "   - Some plugins"
  echo " - vim-gnome"
  echo " - google-chrome"
  echo " - atom"
  echo " - docker"
  echo " - docker-compose"
  echo " - rvm"

  case "$(uname -s)" in
    Linux)
      echo 'You are using a Linux operating system :))'
    ;;
  *)
    echo 'You are not using a Linux Operating System'
    return
    ;;
  esac

  sudo apt-get install -y git curl gnupg build-essential gnupg2
  gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
  \curl -sSL https://get.rvm.io | bash -s stable --ruby
  sudo usermod -a -G rvm `whoami`

  git clone --depth=10 https://github.com/eldemonstro/dawn_dotfiles.git "$HOME/.dawn_dotfiles"
  cd "$HOME/.dawn_dotfiles"
  sh "begin.sh"

  # Use fish as default shell
  echo 'Changing your shell to fish'
  chsh -s $(which fish)
else
  echo "You already have Dawn Dotfiles installed"
fi
