
# export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python3.6/site-packages/
# export PATH="/usr/local/opt/python@2/bin:$PATH"
# export PATH=/usr/local/bin/openssl:$PATH

export HOMEBREW_NO_AUTO_UPDATE=true
export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git autojump)
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
source $ZSH/oh-my-zsh.sh

# User configuration
# Terminal
alias la='ls -a'
alias -s py=vim
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias pipup='pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U'
alias pfr='pip freeze > requirements.txt'
alias pir='pip install -r requirements.txt'
alias tmt='tmux a -t tmp'
alias tms='tmux a -t ssh'
alias pbu='cd; cp -f .vimrc .zshrc .gitignore_global .pylintrc .tmux.conf ~/Dropbox/repositories/profiles/'
alias pes='cd ~/penv;pipenv shell'

# virtualenv
alias sv='source venv/bin/activate'
alias sev='source env2/bin/activate'
alias da='deactivate'

# app
alias vim=mvim
alias vi="/usr/local/bin/vim"
alias sqlite="/usr/local/Cellar/sqlite/3.21.0/bin/sqlite3"
alias mst='mysql.server start'
alias msp='mysql.server stop'
alias ms='mysql -u root -p'
alias mgt='brew services start mongodb'
alias mgp='brew services stop mongodb'

alias jn='cd;sv;cd ~/Documents/pyfiles;jupyter notebook'


export mysql_username='root'
export mysql_password='1230'
