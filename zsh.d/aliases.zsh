# ========================================================================
# 	ALIASES
# ========================================================================

# TODO: move zshrc/bashrc aliases below

## WORKFLOW ALIASES WIP
alias gs="git status"
alias gcb="git checkout -b "
alias gcmn="git checkout main "
alias gcmt="git commit -m "
alias gcmn="git checkout main "
alias grb="git rebase -i HEAD~$1"
alias grb2='git rebase -i HEAD~'"$1"
alias ga="git add"
alias gpl="git pull "
alias gp="git push "
alias gpf="git push --force "
alias gdf="git diff "
alias gdfm="git diff main"
alias gdfh="git diff HEAD~1"
alias gdfs="git diff --staged "
alias grs="git restore "$1
alias grss="git restore --staged "


# tmux 
alias tmls='tmux ls'
alias tmshb="tmux show-buffer"
alias tmsvb="tmux save-buffer"
alias tmstb="tmux set-buffer"
alias tmab="tmux save-buffer -a"
alias tmcb="tmux choose-buffer"
alias tmpb="tmux paste-buffer"




# cron
alias cte="crontab -e"
alias ctl="crontab -l"


## preliminary/ideas

# write buffer to new file
alias tmuxDumpBufferNew="tmux save-buffer $HOME/.local/state/tmux/session/bufferDump.$(date +%Y%m%d_%H%M%S).txt"
# appends exists
alias tmuxDumpBufferExisting="tmux save-buffer -a $HOME/.local/state/tmux/session/bufferDumps.txt"

# NOTE: for personal aliases like above use camelcase for aliases to distinguish from "traditional" ones like the above git aliases


# general 
alias varnotes="cd ~/.local/var/notes"
alias zshrc_src="source $HOME/.zshrc "


##################################################
# suffix aliases 
##################################################
#
# run given alias for certain filetypes, if no shell command specified
# specified by passing "-s" flag to alias
#
# if no command given, open all markdown extension files in vim
# e.g  $ somefile.md        ## `vim somefile.md` ran b/c no command specified 
# but  $ bat somefile.md    ## runs bat command

alias -s sh=bash        # run bash <file>.sh unless otherwise noted
alias -s {txt,json,md,py}=vim       # all file types on left opened in vim


##################################################
# functions for aliases with parameters
##################################################
#
# unlike bash, it looks like zsh allows for aliases to include parameters 
# including the below as a reference example for future 
#
# syntax:
#   aliasname(){
#       <command> $<first parameter> $<second parameter>
#   }
#

aliaswithparameters_test(){
    echo 'the following args were passed to the aliases:  '$1' , '$2
}


##################################################
# global aliases
##################################################
# 
# override all other aliases with the same name
# defined by the `-g` flag
# example:  alias -g <alias name>="<alias command>"

