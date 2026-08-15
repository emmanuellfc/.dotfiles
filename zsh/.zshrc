# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# For more themes see https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="clean"
# ZSH_THEME="fino"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="simple"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=(git)
plugins=(rust)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Alias
alias srcz="source .zshrc"
alias c="code ."
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias m6="morpho6"
alias mw="morpho6 -w4"
alias md6="morpho6 -debug"
alias mpm="morphopm"
alias jl="julia"
alias base="source .base/bin/activate"
alias pi="pip install"
alias bu="brew upgrade"
alias op="open ."
alias gs="git status"
alias ga="git add ."
alias gm="git commit -m"
alias gp="git push"
alias bu="brew update"
# alias connect="ssh jflore10@login.pax.tufts.edu"
alias connect="ssh jflore10@login-prod.pax.tufts.edu"
alias box="/Users/emmanuelflores/Library/CloudStorage/Box-Box"
alias material="source ~/.material/bin/activate"
alias emma="cd /Volumes/EmmaSSD"
alias j="z"

# Pixi things
export PATH="/Users/emmanuelflores/.pixi/bin:$PATH"
# Created by `pipx` on 2025-06-10 12:57:55
export PATH="$PATH:/Users/emmanuelflores/.local/bin"


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/emmanuelflores/.opam/opam-init/init.zsh' ]] || source '/Users/emmanuelflores/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

# Added by Antigravity
export PATH="/Users/emmanuelflores/.antigravity/antigravity/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# direnv
eval "$(direnv hook zsh)"

function use-morpho-dev() {
    export PATH="/opt/morpho-dev/bin/:$PATH"
    export DYLD_LIBRARY_PATH="/opt/morpho-dev/lib/:$DYLD_LIBRARY_PATH"
    echo "=================================="
    echo "===Using Morpho dev environment==="
    echo "=================================="
}

function use-morpho-newlinalg() {
    export PATH="/opt/morpho-newlinalg/bin/:$PATH"
    export DYLD_LIBRARY_PATH="/opt/morpho-newlinalg/lib/:$DYLD_LIBRARY_PATH"
    echo "=================================="
    echo "Using Morpho newlinalg environment"
    echo "=================================="
}

# Adding custom folder
export PATH="$PATH:$HOME/scripts"

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/path/to/Odin/folder:$PATH"



# Added by Antigravity CLI installer
export PATH="/Users/emmanuelflores/.local/bin:$PATH"

# Added by Antigravity IDE
export PATH="/Users/emmanuelflores/.antigravity-ide/antigravity-ide/bin:$PATH"
