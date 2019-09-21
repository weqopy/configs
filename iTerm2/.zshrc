ZSH_THEME="customize"
export HOMEBREW_NO_AUTO_UPDATE=true
export ZSH=~/.oh-my-zsh
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
DISABLE_AUTO_UPDATE="true"

plugins=(gitfast autojump zsh-autosuggestions zsh-syntax-highlighting sublime)

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

source $ZSH/oh-my-zsh.sh

# ============EXPORT============
source ~/.bashrc

# ============ALIAS============
# Terminal & Homebrew
alias sz='source ~/.zshrc'
alias ls='ls -Gv'
alias la='ls -a'
alias rm='rm -i'
alias bc='brew cask'
alias ipy='ipython'
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
alias sv='source ~/.env/bin/activate'
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

# Personal
alias jkstart='cd ~/repos/weqopy.github.io && rm -rf _site && jekyll s -I'

