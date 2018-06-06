export HOMEBREW_NO_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true
export ZSH=~/.oh-my-zsh
# ZSH_THEME="ys"
ZSH_THEME="customize"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git autojump zsh-autosuggestions zsh-syntax-highlighting)
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
source $ZSH/oh-my-zsh.sh
source ~/.bash_profile

# User configuration
# Terminal
alias py='python3'
alias la='ls -a'
alias -s py=vim
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias pipup='pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U'
alias pfr='pip freeze > requirements.txt'
alias pir='pip install -r requirements.txt'
alias tmt='tmux a -t tmp'
alias tms='tmux a -t ssh'
alias bc='brew cask'
# alias ls='ls -v'

# virtualenv
alias sv='source venv/bin/activate'
alias da='deactivate'
alias pes='pipenv shell'

# app
alias vim=mvim
alias vi="/usr/local/bin/vim"
alias mst='mysql.server start'
alias msp='mysql.server stop'
alias ms='mysql -u root -p'
alias mgt='brew services start mongodb'
alias mgp='brew services stop mongodb'

alias jn='cd;sv;cd ~/Dropbox/repositories/pyfiles;jupyter notebook'


