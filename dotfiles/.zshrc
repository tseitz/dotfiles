# import private env variables
# parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
# TODO: Fix this, should be dynamic but haven't figured out reading path from symlink
# dotfiles_path="/home/tseitz/t-configs/dotfiles"
ROOT="/Users/${USER}"

dotfiles_path="$ROOT/t-configs/dotfiles"

source $dotfiles_path/.zshrc-env-vars

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# reset PATH to defaults
# export PATH=/usr/bin:/bin:/usr/sbin:/sbin

# Path to your oh-my-zsh installation.
export ZSH="$ROOT/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man-pages zsh-syntax-highlighting zsh-autosuggestions)

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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

# unix
export LS_COLORS="di=1;36:ln=35:so=32:pi=33:ex=1;31:bd=34;46:cd=36;43:su=37;41:sg=30;46:tw=30;42:ow=37;43"
alias lsa="ls -al"

# linux
alias open="nautilus"
alias rmouse='killall imwheel && imwheel -b "4 5"'

# mac
# alias mouseaccel='defaults write -g com.apple.mouse.scaling -1'
# alias trackaccel='defaults write -g com.apple.trackpad.scaling -1'
alias zshconf='code ~/.zshrc'
alias zshre='source ~/.zshrc; clear'
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
alias zshre='source ~/.zshrc'
alias zshconf='code ~/.zshrc'

# heroku
alias hltv="heroku logs --tail --app trading-view-webhook --source app"
alias hlrb="heroku logs --tail --app rarity-game-bot --source app"
alias hll="heroku logs -n 10000000 --source app --app trading-view-webhook"
alias hlbal='heroku logs -n 10000000 --app trading-view-webhook --source app | grep "Total:"'

# ethereum
alias ganache-up="ganache-cli -h 0.0.0.0"

# Remove % on hyper term startup (not in use atm)
# unsetopt PROMPT_SP

# work
alias cdr="cd ~/Code/cdr-poc"
alias cdrapp="cd ~/Code/cdr-poc/cdr/app"

# cd up to n dirs
# using:  cd.. 10   cd.. dir
function cd_up() {
  case $1 in
    *[!0-9]*)                                          # if no a number
      cd $( pwd | sed -r "s|(.*/$1[^/]*/).*|\1|" )     # search dir_name in current path, if found - cd to it
      ;;                                               # if not found - not cd
    *)
      cd $(printf "%0.0s../" $(seq 1 $1));             # cd ../../../../  (N dirs)
    ;;
  esac
}
alias 'cd..'='cd_up'                                # can not name function 'cd..'

# audius
export AUDIUS_REMOTE_DEV_HOST=localhost

# pipenv
export PIPENV_VENV_IN_PROJECT=1

# >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/tseitz/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/tseitz/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/tseitz/opt/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/tseitz/opt/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<


# pyenv
# export PATH="$HOME/.pyenv/bin:$PATH"
# export PATH="/usr/local/bin:$PATH"

eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

# PYTHON_BIN_PATH="$(python3 -m site --user-base)/bin"
# export PATH="$PATH:$PYTHON_BIN_PATH"

# pipenv workaround for macos (https://github.com/pypa/pipenv/issues/4576)
export SYSTEM_VERSION_COMPAT=1

# oracle
export ORACLE_HOME="/Users/${USER}/Downloads"
export DYLD_LIBRARY_PATH="${ORACLE_HOME}/instantclient_19_8"
export TNS_ADMIN="${ORACLE_HOME}/instantclient_19_8/network/admin"
export CLASSPATH="$CLASSPATH:$ORACLE_HOME"
export PATH="${ORACLE_HOME}/instantclient_19_8:$PATH"

# vs code
# export PATH="${PATH}:/usr/local/share/dotnet:~/.dotnet/tools"

# /Users/seitztegan/Downloads/instantclient_19_8:/Users/seitztegan/.pyenv/plugins/pyenv-virtualenv/shims:/Users/seitztegan/.pyenv/bin:/Users/seitztegan/Downloads/instantclient_19_8:/Users/seitztegan/.pyenv/plugins/pyenv-virtualenv/shims:/usr/local/bin:/Users/seitztegan/.pyenv/bin:/Users/seitztegan/.pyenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:~/.dotnet/tools:/Users/seitztegan/.local/bin:/Users/seitztegan/.local/bin
