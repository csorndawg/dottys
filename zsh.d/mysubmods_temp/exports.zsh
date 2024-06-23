# Env. Variables and other exports


# bat conf
export BAT_CONFIG_PATH="/path/to/bat.conf"

# zsh submodule home dir
export ZSH_SUBMODULES_HOME="~/.dotfiles/zsh.d/mysubmods_temp"  # @TODO: change to proper name after done with basic usage/inits

export XDG_CONFIG_HOME="$HOME/.config" 
export XDG_STATE_HOME="$HOME/.local/state" 
export XDG_CACHE_HOME="$HOME/.cache" 
export XDG_DATA_HOME="$HOME/.local/share" 
export XDG_RUNTIME_DIR="$HOME/.local/runtime"

# additional dirs to check out side of base
#export XDG_CONFIG_DIRS 
#export XDG_DATA_DIRS


# user/custom xdg
export XDG_USER_DOCS_HOME="$HOME/.local/addons/docs"
export XDG_BIN_HOME="$HOME/.local/bin" 


# git repos/work
export GIT_HOME="$HOME/git"
export GIT_ONGOING_DIR="$HOME/git/ongoing"
export GIT_PROJECTS_DIR="$HOME/git/projects"
