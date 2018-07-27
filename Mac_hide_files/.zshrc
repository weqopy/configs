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
alias ip='ipython'
alias vim=mvim
alias vi="mvim -v"
alias ms='mysql -u root -p'
alias mysqlst='brew services start mysql@5.7'
alias mysqlsp='brew services stop mysql@5.7'
alias mongodbst='brew services start mongodb'
alias mongodbsp='brew services stop mongodb'
alias redisst='brew services start redis'
alias redissp='brew services stop redis'
alias nginxst='brew services start nginx'
alias nginxsp='brew services stop nginx'

