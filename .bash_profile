alias vmup="cd /Users/adien/src/p4l-containers/ && vagrant up"
alias ll="ls -la"
alias gnb="git checkout staging && git checkout -b"

parse_git_branch() {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
 
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

