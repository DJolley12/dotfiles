# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/danieljolley/.oh-my-zsh"
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="random"

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
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
COMPLETION_WAITING_DOTS="true"

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
plugins=(
    zsh-autosuggestions
)

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
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias csharp="cd source/repos/C#"
# alias zshconfig="nvim ~/.zshrc"
# alias ohmyzsh="~/.oh-my-zsh"
if [ -f ~/.zsh/zshalias ]; then
    source ~/.zsh/zshalias
else
    print "404: ~/.zsh/zshalias not found."
fi

if [ -f ~/.zsh/csharpfuncs ]; then
    source ~/.zsh/csharpfuncs
else
    print "404: ~/.zsh/csharpfuncs not found."
fi

# avmvvm() {
#     if [ "$1" != "" ]
#     then
#         dotnet new avalonia.mvvm -o $1 -n $1
#     else 
#         ech "project name is required"
#     fi
# }

# avuctl() {
#     if [ "$1" != "" ]
#     then
#         dotnet new avalonia.usercontrol -o Views -n $1 --namespace $PWD.Views
#     else 
#         echo "view name is required"
#     fi
# }

# dotnetnewcore() {
#     if [ "$1" != "" ]
#     then
#         dotnet new sln -o $1
#         cd $1
#         dotnet new classlib -o $1.Domain
#         dotnet new classlib -o $1.Application
#         dotnet new xunit -o $1.Tests
#         dotnet sln add $1.Domain
#         dotnet sln add $1.Application
#         dotnet sln add $1.Tests
#         rm $1.Domain/Class1.cs
#         rm $1.Application/Class1.cs
#         mkdir $1.Domain/Models
#         mkdir $1.Domain/Exception
#         mkdir $1.Domain/Enums
#         mkdir $1.Application/Exception
#         mkdir $1.Application/Interfaces
#         cp ~/source/repos/templates/csharp/.gitignore .
#         git init
#         git add . 
#     else 
#         echo "project name is required"
#     fi
}
