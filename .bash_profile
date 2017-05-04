#cd ~/src
export CLICOLOR=1
export TERM=xterm-256color
export VISUAL=vim
export EDITOR="$VISUAL"

alias vmup="cd /Users/adien/src/p4l-containers/ && vagrant up"
alias ll="ls -alhb"
alias gnb="git checkout staging && git pull &&git checkout -b"
alias tmux="tmux -2"
alias cdmain="cd ~/src/p4l-main"
alias app1="ssh ait@app1.pay4later.org"
alias gto="git"
alias gti="git"
alias got="git"
alias gut="git"
alias vm="~/src/p4l-containers/bin/vagrant-ssh"
alias psql="psql -h 127.0.0.1 -U test"

parse_git_branch() {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
 
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

