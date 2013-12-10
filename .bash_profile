# set your prompt
COLOR_BOLD="\[\e[1m\]"
COLOR_DEFAULT="\[\e[0m\]"
PS1="$COLOR_BOLD\u@\h \w \$ $COLOR_DEFAULT"
#export PS1='\[\033[01;32m\]\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 "(%s)") \[\033[01;34m\]$\[\033[00m\] '

#PS1="\u@\h:\w\$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/{\1}/') \$ "

export EDITOR=/usr/bin/vim
export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

#alias ls='ls -G'
alias grep='grep --color=always'
export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxegedabagacad"

export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}\007"'

# aliases
alias cd..="cd .."
alias cdgae="cd /Applications/GoogleAppEngineLauncher.app/Contents/Resources/GoogleAppEngine-default.bundle/Contents/Resources/google_appengine"
alias cdny="cd ~/developer/projects/GAE/cldiary/newyear"
#alias cdcl="cd ~/developer/projects/GAE/cuoluo"
#alias cdcl="cd /Users/yibing/developer/projects/GAE/cld-doomsday/static"
alias cdcf="cd /Users/yibing/developer/projects/crazyfans/crazyfans"
alias cdcla="cd /Users/yibing/developer/projects/GAE/cuoluo-accounts-hrd"
alias cdfans="cd /Users/yibing/developer/projects/tornado/123fans/htdocs"
alias cdblog="cd /Users/yibing/Documents/blog/blog.yibing.me"
alias l="ls"
alias ll="ls -l"
alias la="ls -al"

# Git
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
alias gs='git status'
alias gb='git branch'
alias gm='git commit -m'
alias gc='git checkout'
alias ga='git add'
#alias gp='git push'
#alias gl='git log'
#alias gd='git diff'
#alias gma='git commit -am'
#alias gra='git remote add'
#alias grr='git remote rm'
#alias gpu='git pull'
#alias gcl='git clone'

export PATH=$PATH:$HOME/bin:/usr/local/bin:/usr/local/sbin
export PATH=$PATH:$HOME/bin/mongodb-osx-x86_64-1.8.1/bin
export PATH=$PATH:/System/Library/Frameworks
export PATH=$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin
#export PYTHONPATH=/Users/yibing/developer/libs/tornado-2.3/tornado

[ -x "/Applications/MacVim.app/Contents/MacOS/Vim" ] && alias vim=/Applications/MacVim.app/Contents/MacOS/Vim

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Python
export VIRTUALENV_USE_DISTRIBUTE=1        # <-- Always use pip/distribute
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export WORKON_HOME=$HOME/.virtualenvs       # <-- Where all virtualenvs will be stored
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi
