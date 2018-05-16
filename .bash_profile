# Color Scheme
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# History Config
shopt -s histappend #Don't overwrite history each session 
shopt -s cmdhist # Write multiline commands to one line in .bash_history
HISTFILESIZE=1000000
HISTSIZE=1000000
HISTCONTROL=ignoreboth # Ignore repeated commands and cmds that start w/ space
# Start a cmd with space if you want history to ignore it
HISTIGNORE='bg*:fg*:which*' #Don't track these commands in history
HISTTIMEFORMAT='%F %T '
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a;" 

# Aliases
alias ls='ls -GFh'
alias ll='ls -al'
alias whcih='which'
alias grep='grep -n'
alias ffile='find . -name'

# PATH edits
# added by Miniconda3 installer
export PATH="/Users/pskipper/miniconda3/bin:$PATH"
export PATH=$PATH:/Users/pskipper/bin

# Pull in Env Vars
if [ -f /Users/pskipper/.work ]; then
    echo "Sourcing .work"
    source /Users/pskipper/.work
else
    echo "No .work file found"
fi

# Grin Config
# pip install grin
export GRIN_ARGS="-C 2"

# SSH Config for Github
SSH_ENV="$HOME/.ssh/environment"

# Auto complete for Github
# git/git/contrib/completion/git-completion.bash
if [ -f /Users/pskipper/git-completion.bash ]; then
    echo "Sourcing git-completion.bash"
    source /Users/pskipper/git-completion.bash
else
    echo "/Users/pskipper/git-completion.bash does not exist! Download."
fi

