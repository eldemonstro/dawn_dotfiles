# Based on Skwp's aliases
# https://raw.githubusercontent.com/skwp/dotfiles/997d36bef991652dd436c076e57d8f00c49f4994/zsh/aliases.zsh

# # global
# alias -g ...='../..'
# alias -g ....='../../..'
# alias -g .....='../../../..'

# PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'

# Moving around
alias cdb='cd -'
alias cls='clear;ls'
alias clr='clear'

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

alias la='ll -a'

alias ll='ls -alh --color=auto'
alias ls='ls --color=auto'

# show me files matching "ls grep"
alias lsg='ll | grep'
alias lag='la | grep'

# Alias Editing
alias ae='vim $ccdf/aliases' #alias edit
alias ar='source $ccdf/aliases'  #alias reload

# mimic vim functions
alias :q='exit'

# vimrc editing
alias ve='vim ~/.vimrc'

# zsh profile editing
alias ze='vim ~/.zshrc'
alias zr='source ~/.zshrc'
alias zrl='source ~/.zshrc.local'

# history
alias hfull='history 1 -1'

# Git Aliases
alias gs='git status'
alias gst='git status'
alias gsts='git stash'
alias gstsh='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsl='git stash list'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vim .gitignore'
alias gc='git c'
alias gcm='git cm'
alias gca='git ca'
alias gcam='git cam'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend'
alias grv='git remote -v'
alias grx='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gri='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
alias gbx='git branch --delete'
alias gbX='git branch -D'
alias gbd='git b -D -w'
alias gdc='git diff --cached -w'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gp='git push'
alias gpX='git push --delete'
#push current branch
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

# Ruby
alias tfdl='tail -f log/development.log'
alias tftl='tail -f log/test.log'

alias ka9='killall -9'
alias k9='kill -9'

# Gem install
alias sgi='sudo gem install --no-ri --no-rdoc'
alias gi='gem install --no-ri --no-rdoc'

# Forward port 80 to 3000
alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'

alias rdm='rake db:migrate'
alias rdr='rake db:rollback'
alias rdmr='rake db:migrate:redo'
alias rrs='rake routes'

# Rspec
alias rs='rspec spec'

# Rails
alias rc='rails c'
alias rsb='rails s -b 0.0.0.0'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# vim: ft=zsh

# Local Aliases
alias aliass='alias | grep'

alias coverage='google-chrome coverage/index.html'

alias dcb='docker-compose build'

alias dcup='docker-compose up'
alias dcdown='docker-compose down'

alias myprecious='sudo chown (whoami) -R .'

alias cd..='cd ..'

alias dcr='docker-compose run --rm --service-ports'

alias drmi='docker rmi'

alias dbash='docker-compose run --rm --service-ports web bash'

alias dcd='docker-compose down'

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias vagasvpn='curl -I http://qa-processosseletivosservice.ad.vagastec.com.br/healthcheck'

alias kanbanize='google-chrome https://vagascom.kanbanize.com/ctrl_board/7/'

function dcbash -d "Open a bash of a docker container via docker-compose"
  docker-compose run --rm --service-ports $argv bash
end

function dcexec -d "Open a bash of a docker container, must pass container ID ou name"
  docker exec -it $argv bash
end

function gpsh -d 'Pushes the current branch to origin remote, can receive --force if necessary'
  git push -u origin (git rev-parse --abbrev-ref HEAD) $argv
end

function bitbucket --description 'Opens bitbucket dashboard overview'
	google-chrome https://bitbucket.org/dashboard/overview
end
