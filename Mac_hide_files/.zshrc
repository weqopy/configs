ZSH_THEME="customize"
DISABLE_AUTO_UPDATE="true"
export HOMEBREW_NO_AUTO_UPDATE=true
export ZSH=~/.oh-my-zsh
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
DISABLE_UPDATE_PROMPT=true

plugins=(git autojump zsh-autosuggestions zsh-syntax-highlighting)

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
source $ZSH/oh-my-zsh.sh
source ~/.bash_profile

# User alias
# Terminal
alias ls='ls -Gv'
alias la='ls -a'
alias rm='rm -i'
alias -s py=vim
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias pipup='pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U'
alias pfr='pip freeze > requirements.txt'
alias pir='pip install -r requirements.txt'
alias tmt='tmux a -t tmp'
alias tms='tmux a -t ssh'

alias rmt='trash'
trash()
{
    mv $@  ~/trash/
}

# virtualenv
alias sv='source venv/bin/activate'
alias da='deactivate'
alias pe='pipenv'

# app
alias bc='brew cask'
alias py='python3'
alias vim=mvim
alias vi="mvim -v"
alias mst='mysql.server start'
alias msp='mysql.server stop'
alias dbm='mysql -u root -p'
alias dbs='sqlite3'
alias mgt='brew services start mongodb'
alias mgp='brew services stop mongodb'

