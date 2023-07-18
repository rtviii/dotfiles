ZSH_DISABLE_COMPFIX=true

KEYTIMEOUT=0

plugins=(git zsh-syntax-highlighting zsh-autosuggestions history-substring-search last-working-dir zsh-vim-mode poetry)
source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export EDITOR=nvim
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
export XDG_CONFIG_HOME=$HOME/.config

RUSTFLAGS="-A dead_code -A unused_imports"

#export PYTHONPATH="${PYTHONPATH}:/usr/lib/python3/dist-packages/pymol"

alias pws="/Users/rtviii/dev/rtviii.github.io"
alias dl="~/dev/dl/"
alias notes="$HOME/dev/notes"
alias desk="cd ~/Desktop"
alias seefonts="fc-list | awk '{\$1=""}1' | cut -d: -f1 | sort| uniq"


alias xo="pbcopy"
alias xp="pbpaste"
alias szz="du -ah --max-depth=1 . | sort"
alias vup='VENVS=($(ls | grep *venv)); source $(pwd)/${VENVS[1]}/bin/activate;'
alias zshrc="vim ~/.zshrc"

alias htpconf="cd /etc/apache2"
alias htpstatus="sudo systemctl status apache2"


alias secrets='vim ~/.ssh/secrets.env'
alias dev="cd ~/dev/"



#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯
# *************************************** CONFIGS & RCs ****************************************************
#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯

alias dotfiles='/usr/bin/git --git-dir=/Users/rtviii/.dotfiles/ --work-tree=/Users/rtviii'
alias karabinerconf='vim ~/.config/karabiner/karabiner.json'
alias skhdrc='vim ~/.config/skhd/skhdrc'
alias yabairc='vim ~/.config/yabai/yabairc'
alias zshsrc="source ~/.zshrc"
alias tmuxsrc="tmux source ~/.tmux.conf"
alias kittyconf="vim ~/.config/kitty/kitty.conf"


#----------------------[NEOVIM]-----------------------------------------
alias initvim="vim ~/.config/nvim/init.vim"
alias plugins="nvim ~/.config/nvim/lua/plugins-setup.lua"
alias nvimconf="cd ~/.config/nvim/"
alias vimconf="cd ~/.config/nvim/"
alias initvim="nvim ~/.config/nvim/init.vim"
alias plugs="~/.config/nvim/lua/plugins/"
alias vim="nvim"
#---------------------------------------------------------------



#----------------------[TMUX]-----------------------------------------
#
alias tmuxconf="vim ~/.tmux.conf"
alias tmuxls="tmux ls"
alias tmuxa="tmux attach -t"
alias tmuxa="tmux attach -t"
alias tmuxks="tmux kill-session -at " # kill all sessions except the current one
alias tmuxkw="tmux kill-window -t " # kill all sessions except the current one
alias tkp="tmux kill-pane -t"
#---------------------------------------------------------------
alias rr='lfcd'
alias lf='lfcd'
#
alias lfrc="nvim ~/.config/lf/lfrc"
#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯
# *************************************** CONFIGS & RCs ****************************************************
#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯
#
#
alias wq="code ."
alias nst="npm start"
#
#
alias xx="exit"
alias jctl="sudo journalctl -e -u"
alias p3="python3"



alias sockeye="ssh rtviii@sockeye.arc.ubc.ca"
alias cv="~/dev/cv/"
alias confs="cd ~/.config/"


##-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯NEO4J
##
#NEO4J_HOME="/var/lib/neo4j/"
#alias mkvenv='python3 -m virtualenv'
#alias neoconf="sudo nvim /etc/neo4j/neo4j.conf"
#alias neolog="sudo nvim /var/log/neo4j"
#alias neodata="cd /var/lib/neo4j/data"

#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯

# alias neostop="sudo systemctl stop neo4j"
# alias neostart="sudo systemctl start neo4j"
# alias neostat="sudo systemctl status  neo4j"
# alias neoimport="/var/lib/neo4j/import"

#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯Docker
alias dk="docker"
alias dkls="docker container ls"
alias dkc="docker container"
alias dkn="docker network"
alias dkv="docker volume"
alias dki="docker image"
alias dke="docker execute -it"
alias dc="docker-compose"


#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯Ribosome
alias rib='ssh ubuntu@ribosome.xyz'
alias ribrsync="rsync -avzr -e \"ssh -i ~/dev/docs/AWS/ribosome.pem\""
alias ribupdatersync="rsync -hvrPt -e \"ssh -i ~/dev/docs/AWS/ribosome.pem\""
alias ribxz="~/dev/riboxyz/ && vup"

# -----------------------------------------------------
# ------------------------------------------- FUNCTIONS
# -----------------------------------------------------
function sb_prod_tunnel(){
    ssh -f -N -g -L 29092:127.0.0.1:29092 -N -L 8080:127.0.0.1:8080 sb-rp-prod
}

function sb_dev_tunnel(){
    ssh -f -N -g -L 9092:127.0.0.1:9092 -N -L 8080:127.0.0.1:8080 sb-rp-dev
}



function _open_zshrc(){nvim ~/.zshrc};
    zle -N _open_zshrc; bindkey -v '^[t' _open_zshrc





function xtob(){
    echo "obase=2;$1" | bc
}


function tmux_last_session(){
    LAST_TMUX_SESSION=$(tmux list-sessions | awk -F ":" '{print$1}' | tail -n1);
    tmux attach -t $LAST_TMUX_SESSION
}


function _nvim_here(){ nvim . }; zle -N _nvim_here;
    bindkey -v '^[r' _nvim_here


function _tmux_last(){ tmux_last_session  }; zle -N _tmux_last;
    bindkey -v '^s' _tmux_last;


function _source_zshrc(){ source ~/.zshrc };
    zle -N _source_zshrc; bindkey -v '^[y' _source_zshrc;



function onetwo(){
    echo "onetwo"

    local venv_folders=()
      for folder in *(/); do
        if [[ $folder =~ venv$ ]]; then
          venv_folders+=("$folder")
        fi
      done

      printf '%s\n' "${venv_folders[@]}"


}

# bindkey -s '^[>' 'docker container exec -it   /bin/bash';
# Activate virtualenv.

function used_plugins_zsh(){
    my_plugins=(
        "https://github.com/zsh-users/zsh-syntax-highlighting"
        "https://github.com/softmoth/zsh-vim-mode"
        "https://github.com/zsh-users/zsh-autosuggestions"
        "https://github.com/zsh-users/zsh-history-substring-search"
        )
    for p in ${my_plugins[@]}; do git -C $ZSH/plugins clone $p; done

}


function listppas(){
    grep -r --include '*.list' '^deb ' /etc/apt/sources.list /etc/apt/sources.list.d/
}

function newrepo(){
 curl -i -H "Authorization: token $GIT_TOKEN" -d "{\"name\": \"$1\", \"private\": \"$2\"}" https://api.github.com/user/repos  | grep "clone_url"
}
# -----------------------------------------------------
# ------------------------------------------- FUNCTIONS
# -----------------------------------------------------


# -----------------------------------------------------
# -------------------------------------------     PATHS
# -----------------------------------------------------


export PATH="/usr/local/cuda-11.1/bin:$PATH"
export PATH="~/.actin/{*}:$PATH"
export PATH="/home/rxz/.local/share/solana/install/active_release/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda-11.1/lib64:$LD_LIBRARY_PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/home/rxz/zig-linux-x86_64-0.10.0-dev.2220+802f22073:$PATH"
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export NVM_DIR="$HOME/.nvm"
# [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm

unsetopt BEEP
setopt extendedglob
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats "[%F{green}%b%f]"
 precmd() {
     vcs_info
     }
export PATH=/opt/bin/:$PATH
PROMPT='%F{blue}ᢹ%f %M.%B%n%b[ %F{green}%2d%f ] ${vcs_info_msg_1_} '
RPROMPT='${vcs_info_msg_0_} '

[ -f "/home/rxz/.ghcup/env" ] && source "/home/rxz/.ghcup/env" # ghcup-env

LFCD="/Users/rtviii/.config/lf/lfcd.sh"                                #  pre-built binary, make sure to use absolute path
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi

function _lf(){ lf };
    zle -N _lf; bindkey -v '^[d' _lf

export PATH="/usr/local/opt/llvm/bin:$PATH"
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="/Users/rtviii/.local/bin:$PATH"
fpath+=~/.zfunc
autoload -Uz compinit && compinit



export RIBETL_DATA=/Users/rtviii/dev/ptc_extraction/RIBETL_DATA
export NEO4J_URI=""
export NEO4J_USER=""
export NEO4J_PASSWORD=""
export NEO4J_DATABASE=""

alias cpp="clang++"



export PATH="$PATH:$HOME/.rvm/bin"

