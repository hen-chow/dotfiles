source ~/.profile


# -------
# Aliases
# -------
alias c="clear"
alias work="cd ~/work"
alias ll="ls -al"

# -- Git Aliases --
alias gs="git status"
# check branches
alias br="git branch"
# use to exit current branch to get latest master update
alias update="git checkout master && git pull"
# useful for getting a branch up to date
alias rebush="git checkout master && git pull && git checkout - && git rebase master"
alias log="git log --oneline"
alias checkout="git checkout"

# -- npm Aliases --
alias test="npm test"
# use to run unit tests
alias tunit="npm run test:unit"
# use to run css tests
alias tcss="npm run test:css"
# use to start server
alias start="npm start"
alias pr="npm run pr"

alias chrome="open -a Google\ Chrome"

# -------
# Functions
# -------
# Pretty prompt displaying directory and branch
function prompt {
  local RED="\[\033[0;31m\]"
  local GREEN="\[\033[0;32m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local PURPLE="\[\033[0;35m\]"
  local CYAN="\[\033[0;36m\]"
  local WHITE="\[\033[0;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  export PS1="$CYAN\u🤘 $GREEN@ $RED\w $RESETCOLOR$PURPLE* \$(git rev-parse --abbrev-ref HEAD 2> /dev/null) $WHITE : $RESETCOLOR"
  export PS2=" | → $RESETCOLOR"
}

prompt

# ----------------------------------------------------------------------
# PATH
# ----------------------------------------------------------------------

# want the various sbins on the path along with /usr/local/bin
PATH="$PATH:/usr/local/sbin:/usr/sbin:/sbin"
PATH="/usr/local/bin:$PATH"


# export NPM_TOKEN="UPDATE_THIS"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# set up GO workspace
# export GOROOT=/usr/local/go
export GOPATH=/Users/henchow/go ## go-workspace
export GOBIN=$GOPATH/bin ## where go-generate-executable-binaries

PATH=$PATH:$GOPATH:$GOBIN

export PATH

#
# # put ~/bin first on PATH
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# ----------------------------------------------------------------------
# ENVIR KEYS
# ----------------------------------------------------------------------

export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
