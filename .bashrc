#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '







alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#alias diff='diff --color=auto'
# --line-num-width 1 にはバグがある
export LESS='--use-color --LINE-NUMBER --line-num-width=4 --ignore-case --incsearch --clear-screen --status-column --status-line --save-marks --LONG-PROMPT --RAW-CONTROL-CHARS --hilite-unread --mouse --wheel-lines=3 --tabs=4 --modelines=5'

alias view='/usr/share/nvim/runtime/macros/less.sh'

export EDITOR='nvim'

shopt -s autocd cdable_vars cdspell checkjobs dirspell dotglob xpg_echo failglob lithist
trap 'echo -ne "\e[1 q"' DEBUG

HISTTIMEFORMAT='%F %a %T  '
HISTCONTROL=ignoreboth

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache

export INPUTRC=$XDG_CONFIG_HOME/readline/.inputrc
export JUPYTER_PLATFORM_DIRS="1" # https://github.com/jupyter/jupyter_core/releases/tag/v5.0.0
# IPython https://ipython.readthedocs.io/en/stable/whatsnew/version8.html#re-added-support-for-xdg-config-directories

# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 2>/dev/null ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end

source /usr/share/git/completion/git-prompt.sh
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_COMPRESSSPARSESTATE=1
GIT_PS1_SHOWCONFLICTSTATE="yes"
GIT_PS1_DESCRIBE_STYLE="default"
# Bashは対応させるのが少し難しい
# GIT_PS1_SHOWCOLORHINTS=1
