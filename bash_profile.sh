#######
# PATH
#######

# add brew sbin and android platform tools to path
export PATH=$PATH:/usr/local/sbin:~/Library/Android/sdk/platform-tools

#############
# COMPLETION
#############

# Case insensitive tab completion
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

# automatically source brew completion scripts
. $(brew --prefix)/etc/bash_completion

###########
# NICETIES
###########

# Git Prompt
export PS1='\u@\h \W\[\033[32m\]$(__git_ps1 " (%s)")\[\033[00m\] \$ '

# current dir on title
export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"'

# item2 shell integration
. ~/.iterm2_shell_integration.bash

# colored ls
export CLICOLOR=1

###########
# Autojump
###########

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

##########
# ALIASES
##########
alias show-dot-files='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hide-dot-files='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
