# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# execute the system-wide configuration
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=100000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# if there are some system-wide completion scripts
# and the POSIX mode is off:
# execute the system-wide completion scripts
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi

# load completion scripts
source ~/angry-bash/completion_scripts/c
source ~/angry-bash/completion_scripts/general
source ~/angry-bash/completion_scripts/git_completion
source ~/angry-bash/completion_scripts/tmux
source ~/angry-bash/completion_scripts/docker-compose
source ~/angry-bash/completion_scripts/docker
source ~/angry-bash/completion_scripts/pip3
source ~/angry-bash/completion_scripts/vagrant
source ~/angry-bash/completion_scripts/ssh
source ~/angry-bash/completion_scripts/git-flow
source ~/angry-bash/completion_scripts/makefile

# load prompt settings
source ~/angry-bash/prompt

# load custom functions
source ~/angry-bash/functions

# modify object colors after ls command (TURNED OFF!)
#LS_COLORS=''
# directory
#LS_COLORS=$LS_COLORS:'di=1;7;33:'
# bioinformatics formats
#LS_COLORS=$LS_COLORS:'*.fa=0;32:'
#LS_COLORS=$LS_COLORS:'*.fasta=0;32:'
#LS_COLORS=$LS_COLORS:'*.fai=0;32:'
#LS_COLORS=$LS_COLORS:'*.gtf=0;32:'
#LS_COLORS=$LS_COLORS:'*.gff=0;32:'
#LS_COLORS=$LS_COLORS:'*.bed=0;32:'
# scripts
#LS_COLORS=$LS_COLORS:'*.r=0;34:'
#LS_COLORS=$LS_COLORS:'*.R=0;34:'
#LS_COLORS=$LS_COLORS:'*.py=0;34:'
#LS_COLORS=$LS_COLORS:'*.sh=0;34:'
# reports / documentation / formatted text
#LS_COLORS=$LS_COLORS:'*.md=0;33:'
#LS_COLORS=$LS_COLORS:'*.rtf=0;33:'
#LS_COLORS=$LS_COLORS:'*.Rmd=0;33:'
#LS_COLORS=$LS_COLORS:'*.ipynb=0;33:'
# compressed data
#LS_COLORS=$LS_COLORS:'*.tar=0;35:'
#LS_COLORS=$LS_COLORS:'*.gz=0;35:'
#LS_COLORS=$LS_COLORS:'*.zip=0;35:'
#LS_COLORS=$LS_COLORS:'*.rar=0;35:'
#LS_COLORS=$LS_COLORS:'*.tar.xy=0;35:'
#LS_COLORS=$LS_COLORS:'*.7z=0;35:'
# graphics
#LS_COLORS=$LS_COLORS:'*.jpg=0;36:'
#LS_COLORS=$LS_COLORS:'*.jpeg=0;36:'
#LS_COLORS=$LS_COLORS:'*.JPG=0;36:'
#LS_COLORS=$LS_COLORS:'*.JPEG=0;36:'
#LS_COLORS=$LS_COLORS:'*.png=0;36:'
#LS_COLORS=$LS_COLORS:'*.bmp=0;36:'
#LS_COLORS=$LS_COLORS:'*.gif=0;36:'
#LS_COLORS=$LS_COLORS:'*.svg=0;36:'
#LS_COLORS=$LS_COLORS:'*.SVG=0;36:'
#LS_COLORS=$LS_COLORS:'*.tif=0;36:'
#LS_COLORS=$LS_COLORS:'*.tiff=0;36:'
#LS_COLORS=$LS_COLORS:'*.TIF=0;36:'
#LS_COLORS=$LS_COLORS:'*.TIFF=0;36:'
# C and C++ related
#LS_COLORS=$LS_COLORS:'*.c=0;31:'
#LS_COLORS=$LS_COLORS:'*.cpp=0;31:'
#LS_COLORS=$LS_COLORS:'*.h=0;31:'
#LS_COLORS=$LS_COLORS:'*.hpp=0;31:'
#LS_COLORS=$LS_COLORS:'*.o=0;31:'
#LS_COLORS=$LS_COLORS:'*.exe=0;31:'
# symlink
#LS_COLORS=$LS_COLORS:'ln=0;30:'
# executable (+x permission)
#LS_COLORS=$LS_COLORS:'ex=4:'
#export LS_COLORS

# regex matching
shopt -u nocaseglob

# storing commands in history
shopt -s cmdhist

# Bash aliases for Git
# https://jonsuh.com/blog/git-command-line-shortcuts/
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add --all'
#alias gau='git add --update'
alias gb='git branch'
alias gbd='git branch --delete '
alias gc='git commit'
alias gcm='git commit --message'
alias gcam='git commit -am'
#alias gcf='git commit --fixup'
alias gco='git checkout'
alias gcob='git checkout -b'
#alias gcom='git checkout master'
#alias gcos='git checkout staging'
#alias gcod='git checkout develop'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
#alias gm='git merge --no-ff'
#alias gma='git merge --abort'
#alias gmc='git merge --continue'
alias gp='git pull'
#alias gpr='git pull --rebase'
#alias gr='git rebase'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
#alias gsta='git stash apply'
#alias gstd='git stash drop'
#alias gstl='git stash list'
#alias gstp='git stash pop'
#alias gsts='git stash save'

# other aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lk='ls -lhSr' #  Sort by size, biggest last.
alias '..'='cd ..'

# execute user configs
if [ -f ~/angry-bash/bashrc.local ]; then
	source ~/angry-bash/bashrc.local
fi

# manual TERM override for tmux
#TERM='xterm-256color'
