ZSH_THEME="customize"
export HOMEBREW_NO_AUTO_UPDATE=true
export ZSH=~/.oh-my-zsh
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
DISABLE_AUTO_UPDATE="true"

plugins=(git autojump zsh-autosuggestions zsh-syntax-highlighting sublime)

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

source $ZSH/oh-my-zsh.sh
source ~/.zsh_accountrc

# ============ALIAS============
# Terminal & Homebrew
alias sz='source ~/.zshrc'
alias ls='ls -Gv'
alias la='ls -a'
alias rm='rm -i'
alias bc='brew cask'
alias vim=mvim
alias vi="mvim -v"
alias ms='mysql -u root -p'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias bsl='brew services list'
alias mysqlst='brew services start mysql@5.7'
alias mysqlsp='brew services stop mysql@5.7'
alias mongodbst='brew services start mongodb'
alias mongodbsp='brew services stop mongodb'
alias redisst='brew services start redis'
alias redissp='brew services stop redis'
alias nginxst='brew services start nginx'
alias nginxsp='brew services stop nginx'
alias rmt='trash'
trash(){mv $@  ~/trash/}

# pip
alias pipup='pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U'
alias pfr='pip freeze > requirements.txt'
alias pir='pip install -r requirements.txt'

# virtualenv
alias sv='source ~/env/bin/activate'
alias da='deactivate'

# git
# .oh-my-zsh/plugins/git/git.plugin.zsh
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gbd='git branch -d'
alias gc="git commit"
alias gcb='git checkout -b'
alias gcl='git clone --recurse-submodules'
alias gcm="git commit -m"
alias gcam="git commit -am"
alias gco="git checkout"
alias gcp='git cherry-pick'
alias gd='git diff'
alias gf='git fetch'
alias gl="git log"
alias gm="git merge"
# alias gpl="git pull"
alias gpl='git pull origin "$(git_current_branch)"'
# alias gps="git push"
alias gps='git push origin "$(git_current_branch)"'
alias grb='git rebase'
alias grm='git remote'
alias grs="git reset"
alias grv='git revert'
alias gs="git status"
alias gsh="git show"
alias gst="git stash"
alias gsta="git stash apply"
alias gstc="git stash clear"
alias gt="git tag"

# work
alias crmdev="~/sc/ssh_configs/crm_dev.sh"
alias crmmt="~/sc/ssh_configs/crm_master.sh"
alias dcdev="~/sc/ssh_configs/dc_dev.sh"

# Personal
alias jkstart='cd ~/repos/weqopy.github.io && rm -rf _site && jekyll s -I'

# ============EXPORT============
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"

export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

GOROOT=/usr/local/opt/go/libexec
export GOROOT
export GOPATH=~/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN:$GOROOT/bin

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
