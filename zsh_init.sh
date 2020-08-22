export HOMEBREW_NO_AUTO_UPDATE=true
source /usr/local/share/antigen/antigen.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=grey'
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE='20'

antigen use oh-my-zsh
antigen bundle gitfast
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle sublime
antigen bundle rupa/z z.sh
antigen theme weqopy/configs themes/weqopy.zsh-theme
# antigen theme robbyrussell/oh-my-zsh themes/robbyrussell

antigen apply

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
alias ms='mysql -u root -p'
alias bsl='brew services list'
alias mysqlst='brew services start mysql@5.7'
alias mysqlsp='brew services stop mysql@5.7'
alias mongodbst='brew services start mongodb'
alias mongodbsp='brew services stop mongodb'
alias redisst='brew services start redis'
alias redissp='brew services stop redis'
alias nginxst='brew services start nginx'
alias nginxsp='brew services stop nginx'

# pip
alias pipup='pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U'
alias pfr='pip freeze > requirements.txt'
alias pir='pip install -r requirements.txt'

# virtualenv
alias sv='source ~/.env/bin/activate'
alias da='deactivate'

# git
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
alias gcop="git checkout -"
alias gcp='git cherry-pick'
alias gd='git diff'
alias gf='git fetch'
alias gl="git log"
alias gm="git merge"
alias gpl='git pull origin "$(git_current_branch)"'
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
alias jkstart='cd ~/repos/weqopy.github.io && rm -rf _site && jekyll s -I --drafts'
