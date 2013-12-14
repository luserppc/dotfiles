ZSH=$HOME/.oh-my-zsh
# Path to your oh-my-zsh configuration.

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pureprompt"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github brew osx)

[ -f $ZSH/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh
[ -f "/opt/boxen/env.sh" ] && source "/opt/boxen/env.sh"
[ -s "/Users/billy/.scm_breeze/scm_breeze.sh" ] && source "/Users/billy/.scm_breeze/scm_breeze.sh"
[ -e ~/.wooprarc ] && source ~/.wooprarc

# Customize to your needs...
unsetopt correct_all

#export PATH=/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:~/.rbenv/versions/1.9.3-p374/bin
#export NODE_PATH=/usr/local/lib/node_modules


if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export VIRTUAL_ENV_DISABLE_PROMPT=1
export EDITOR=vim


bindkey "[A" history-beginning-search-backward
bindkey "[B" history-beginning-search-forward

