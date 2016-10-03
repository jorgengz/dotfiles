# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="jorgen"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa.pub"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# PS1='\[\e[0;31m\]\d\[\e[m\] \[\e[0;33m\]~\W \[\e[m\]\[\e[0;32m\]\A\[\e[m\]\[\e[0;31m\] \$\[\e[m\] '
# dimefox style: PS1='\[\e[0;37m\]\u\[\e[0;31m\]@\[\e[0;37m\]\h\[\e[0;31m\]/\[\e[0;37m\]\W \[\e[0;31m\]\$ \[\e[m\]'


# export OCAMLRUNPARAM=p

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# export LC_CTYPE=en_GB.UTF8

export PYTHONIOENCODING=UTF-8

# LS_COLOR=1

alias tree='tree -C'
alias timer='timer.py'

# Use the exuberant ctags version:
alias ctags='/usr/local/bin/ctags'

PYTHONPATH="/Users/jorgen/progging/python"
export PYTHONPATH

# Use MacVim bundled version for copy-paste to and from terminal
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

export PATH="$PATH:$HOME/.rvm/bin:/Applications/SWI-Prolog.app/Contents/MacOS" # Add RVM to PATH for scripting

# Ensure user-installed binaries take precedence:
PATH="$PATH:$HOME/.rvm/bin"                                     # Ruby version manager
PATH="$PATH:/Applications/SWI-Prolog.app/Contents/MacOS"        # Prolog
PATH="$PATH:/Applications/MiniZincIDE.app/Contents/Resources/"  # MiniZinc
PATH="$PATH:/Users/jorgen/anaconda/bin"                         # Conda Python
PATH="$PATH:/usr/local/bin"                                     # My stuff
export PATH
