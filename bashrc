# ====================================================================================================
# execute the system-wide configuration
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# ====================================================================================================
# if there are some system-wide completion scripts
# and the POSIX mode is off:
# execute the system-wide completion scripts
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi

# ====================================================================================================
# execute user configs
if [ -f ~/custom_bash/bashrc.local ]; then
	source ~/custom_bash/bashrc.local
fi

# ====================================================================================================
# load completion scripts
source ~/custom_bash/completion_scripts/c
source ~/custom_bash/completion_scripts/general
source ~/custom_bash/completion_scripts/git_completion
source ~/custom_bash/completion_scripts/tmux
source ~/custom_bash/completion_scripts/docker-compose
source ~/custom_bash/completion_scripts/docker
source ~/custom_bash/completion_scripts/pip3
source ~/custom_bash/completion_scripts/vagrant
source ~/custom_bash/completion_scripts/ssh
source ~/custom_bash/completion_scripts/git-flow
source ~/custom_bash/completion_scripts/makefile

# ====================================================================================================
# load prompt settings
source ~/custom_bash/prompt

# ====================================================================================================
# load custom functions
source ~/custom_bash/functions

# ====================================================================================================
# configs and aliases

export HISTCONTROL="ignoredups"
export HISTSIZE=100000
export HISTFILESIZE=100000
shopt -s histappend
shopt -s checkwinsize
shopt -s nocaseglob
shopt -s cmdhist

alias lk='ls -lhSr' #  Sort by size, biggest last.
alias '..'='cd ..'
# list only directories:
alias ld="ls -lah | grep \"dr\" | grep -v \"\.\|\.\.\" | awk '{print \$9}'"

