
# .zshrc - If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ipinheiro/.oh-my-zsh"

# ===================== Aliases =====================
# For a full list of active aliases, run `alias`.

alias l='ls -al'
alias rm='rm -i'
alias pip='pip3'
alias pipup='python3 -m pip install --upgrade pip'
alias python='python3'
alias docs='cd ~/Documents'
alias reports='cd ~/Documents/reports'
alias twitter='cd ~/Documents/twitter-follower-fetcher'
alias avalon='ssh prhuk_aws'
alias explode="source ~/.dotfiles/zsh/.zshrc"

# ===================== proxy stuff =====================

#export HTTP_PROXY="zs-165-225-80-41.gateway.zscalertwo.net:80" 
#export HTTPS_PROXY="zs-165-225-80-41.gateway.zscalertwo.net:80"
export NO_PROXY=localhost,127.0.0.1

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home

# ===================== themes =====================
ZSH_THEME=powerlevel10k/powerlevel10k

# P10k config
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Prompt elements
P9K_LEFT_PROMPT_ELEMENTS=(custom_user dir vcs)

# plugins - too many slow down shell startup
plugins=(
	git 
    aws
    zsh-completions
    zsh-autosuggestions
    fzf
    zsh-syntax-highlighting
    )

autoload -U compinit && compinit    
source $ZSH/oh-my-zsh.sh

# ===================== fzf =====================
#the second line shows the preview window when performing the search

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height=40%" —-preview-window=right:60%:wrap'

# ===================== pyenv =====================

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# creates/deactivates environment
function satsuma {

    if [[ -v VIRTUAL_ENV ]]; then
    deactivate
    else
        python3 -m venv .venv $@
        source .venv/bin/activate
    fi
}

# ===================== lazy functions =====================
function bare {
    eval "pip install wheel pydantic pytest pandas xlrd openpyxl numpy jupyter scikit-learn matplotlib seaborn tqdm nb_black"
}

function conns {
    eval "pip install psycopg2-binary snowflake-connector-python==2.2.9"
}

function shucks-magic {
    eval "pip install git+ssh://git@github_uk/puk/shucks@v0.0.4"
}

function dirtytalk {
    eval "pip install spacy"
}

function mkcd {
    eval "mkdir "$1" && cd "$1""
 }
