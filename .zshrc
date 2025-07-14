
# sudo pmset -a disablesleep 1


ZSH_DISABLE_COMPFIX=true
KEYTIMEOUT=0
plugins=(git zsh-syntax-highlighting zsh-autosuggestions history-substring-search last-working-dir zsh-vim-mode)
source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export EDITOR=nvim
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
export XDG_CONFIG_HOME=$HOME/.config
export TORCH_HOME="~/.cache/torch/"

RUSTFLAGS="-A dead_code -A unused_imports"

export PYTHONPATH="${PYTHONPATH}:/opt/homebrew/Cellar/pymol/2.5.0/libexec/lib/python3.11/site-packages/pymol/:/opt/homebrew/Cellar/pymol/2.5.0/libexec/lib/python3.11/site-packages/pymol2/:"
export PYTHONPATH="${PYTHONPATH}:/Users/rtviii/dev/riboxyz/pymol_source/modules"

export LDFLAGS="-L/opt/homebrew/lib"
export CPPFLAGS="-I/opt/homebrew/include"


alias sk="sioyek"
alias papers="/Users/rtviii/notes/papers"
alias pws="/Users/rtviii/dev/rtviii.github.io"
alias dl="~/dev/dl/"
alias notes="$HOME/notes"
alias ubc="$HOME/notes/ubc/"
alias desk="cd ~/Desktop"
alias seefonts="fc-list | awk '{\$1=""}1' | cut -d: -f1 | sort| uniq"
alias du="ncdu"
alias ee="open ."

alias xo="pbcopy"
alias xp="pbpaste"
alias szz="du -ah --max-depth=1 . | sort"
alias vup='VENVS=($(ls | grep *venv)); source $(pwd)/${VENVS[1]}/bin/activate;'
alias zshrc="vim ~/.zshrc"

alias htpconf="cd /etc/apache2"
alias htpstatus="sudo systemctl status apache2"



alias dev="cd ~/dev/"
alias docs="cd ~/notes/docs"
alias npet="/Users/rtviii/dev/riboxyz/ribctl/lib/npet"

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
#
#
alias xx="exit"
alias jctl="sudo journalctl -e -u"
alias p3="python3"



alias cv="~/dev/cv/"

alias docker="/Applications/Docker.app/Contents/Resources/bin/docker"
alias dk="docker"
alias dkls="docker container ls"
alias dkc="docker container"
alias dkn="docker network"
alias dkv="docker volume"
alias dki="docker image"
alias dke="docker execute -it"
alias dc="docker-compose"


alias fend="~/dev/ribxz_fend_v1/"
alias fendt="~/dev/fend_tubulinxyz/"

#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯Ribosome


alias cpp="clang++"
# -----------------------------------------------------
# ------------------------------------------- FUNCTIONS
# -----------------------------------------------------



function _open_zshrc(){nvim ~/.zshrc};
    zle -N _open_zshrc; bindkey -v '^[t' _open_zshrc

function _source_zshrc(){ source ~/.zshrc };
    zle -N _source_zshrc; bindkey -v '^[y' _source_zshrc



function _open_planner(){ code ~/dev/notes/plan.md};
    zle -N _open_planner; bindkey -v '^[f' _open_planner




function xtob(){
    echo "obase=2;$1" | bc
}


function nvim_here(){ nvim . }; zle -N nvim_here;
    bindkey -v '^[r' nvim_here  # Option+r

function tmux_last(){ tmux_last_session }; zle -N tmux_last;
    bindkey -v '^[s' tmux_last  # Option+s




function tmux_last_session(){
    LAST_TMUX_SESSION=$(tmux list-sessions | awk -F ":" '{print$1}' | tail -n1);
    tmux attach -t $LAST_TMUX_SESSION
}




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


export PATH="~/.actin/{*}:$PATH"
export PATH="/home/rxz/zig-linux-x86_64-0.10.0-dev.2220+802f22073:$PATH"
export GOROOT=/usr/local/go
export PATH="/Users/rtviii/dev/rosetta.binary.m1.release-371/main/source/bin:$PATH"
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH


#export PATH="/opt/homebrew/Cellar/gcc/13.2.0/bin:/usr/local/opt/llvm/bin:$PATH"
#export CXX=/usr/local/bin/c++
#export CC=/usr/local/bin/gcc
#export CMAKE_C_COMPILER=/usr/local/bin/gcc
#export CMAKE_CXX_COMPILER=/usr/local/bin/g++



list_compilers(){

for compiler in cc c++ gcc g++ clang clang++
 do
     which $compiler;
    echo "\n $compiler: $($compiler --version)";
 done

}


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



export PATH="$PATH:$HOME/.rvm/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="/Users/rtviii/.local/bin:$PATH"
fpath+=~/.zfunc
autoload -Uz compinit && compinit

export RIBETL_DATA=/Users/rtviii/dev/RIBETL_DATA/
export NEO4J_URI=""
export NEO4J_USER=""
export NEO4J_PASSWORD=""
export NEO4J_DATABASE=""


export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PYENV_ROOT/shims:${PATH}"
alias pyvenvload='eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)"'
export PATH="/opt/homebrew/opt/jpeg/bin:$PATH"
alias ribxz='cd ~/dev/riboxyz && source .env && vup'
alias ribetl='~/dev/RIBETL_DATA'
export PATH=$PATH:/Applications/Docker.app/Contents/Resources/bin
alias blog='~/dev/rtviii.github.io'



autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^[z' edit-command-line  # Meta/Cmd + Z

export KEYTIMEOUT=1
export VISUAL=vim
export EDITOR="$VISUAL"
if [ ! -d "$HOME/.vim/tmp" ]; then
    mkdir -p "$HOME/.vim/tmp"
fi


export CC=/opt/homebrew/opt/llvm/bin/clang
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export ROSETTA="/Users/rtviii/dev/rosetta.binary.m1.release-371/main"


alias yd='yarn dev'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/rtviii/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/rtviii/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/rtviii/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/rtviii/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/opt/homebrew/opt/node@18/bin:$PATH"
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"
