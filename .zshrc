# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.config/yarn/global/node_modules/.bin:$PATH

source /Users/patrickhereford/code/ff/development_secrets/secrets.sh

# Path to your oh-my-zsh installation.
export ZSH=/Users/patrickhereford/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

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

export GOPATH="/Users/patrickhereford"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home/"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

## My aliases
alias beg="bundle exec guard"

## FF Aliases
alias ff="cd ~/code/ff"
alias uw="cd ~/code/ff/underwriting"
alias fund="cd ~/code/ff/funding"
alias bank="cd ~/code/ff/banking"
alias dash="cd ~/code/ff/dashboard"
alias dashf="cd ~/code/ff/dashboard-frontend"
alias auth="cd ~/code/ff/auth"
alias report="cd ~/code/ff/reporting_engine"
alias sf="cd ~/code/ff/sf_service"
alias vision="cd ~/code/vision"
alias aaf=" cd ~/code/ff/approval-analytics-frontend"
alias pp="cd ~/code/ff/partner-portal"

## Water
water_time=10800 # Set time interval in seconds

drink_water() {
thirsty=`cat $HOME/.water`
last_time=`cat $HOME/.water_last_time`

  if [[ $thirsty == false ]]; then
    echo "$[$(date +%s) + $water_time]" > $HOME/.water_last_time
    echo "true" > $HOME/.water
    echo -n " Water is essential "

  elif [[ $[last_time] -lt $(date +%s) ]]; then
    echo -n "💧 You're thirsty"
  fi
}

not_thirsty() {
echo "false" > $HOME/.water
echo "0" > $HOME/.water_last_time
}
# Username.
# If user is root, then pain it in red. Otherwise, just print in yellow.
spaceship_user() {
  if [[ $USER == 'root' ]]; then
    echo -n "%{$fg_bold[red]%}"
  else
    echo -n "%{$fg_bold[yellow]%}"
  fi
  echo -n "%n"
  echo -n "%{$reset_color%}"
}

## Prompt
PROMPT='%{%f%b%k%}$(build_prompt)$(drink_water) '
export PATH="/usr/local/opt/openssl/bin:$PATH"
