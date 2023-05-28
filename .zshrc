ZSH_DISABLE_COMPFIX=true
KEYTIMEOUT=1
plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-vim-mode history-substring-search last-working-dir)
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh


export XDG_CONFIG_HOME=$HOME

EDITOR=nvim
RUSTFLAGS="-A dead_code -A unused_imports"
export PYTHONPATH="${PYTHONPATH}:/usr/lib/python3/dist-packages/pymol"
alias notes="/home/rxz/dev/notes"
alias djdk="~/dev/docker_together/"
alias ritual="ssh -l rxz 24.86.198.77"

alias karabinerconf='vim ~/.config/karabiner/karabiner.json'
alias skhdrc='nvim ~/.config/skhd/skhdrc'
alias yabairc='nvim ~/.config/yabai/yabairc'
alias zshsrc="source ~/.zshrc"
alias tmuxsrc="tmux source ~/.tmux.conf"

function soundup(){
    echo "sound up said $1"
    pactl set-sink-volume bluez_sink.38_88_A4_F0_6E_8C.a2dp_sink $1
}

alias hg="history | grep"
alias lyah="/home/rxz/dev/haskell/lyah"
function sb_prod_tunnel(){
    ssh -f -N -g -L 29092:127.0.0.1:29092 -N -L 8080:127.0.0.1:8080 sb-rp-prod
}

function sb_dev_tunnel(){
    ssh -f -N -g -L 9092:127.0.0.1:9092 -N -L 8080:127.0.0.1:8080 sb-rp-dev
}


function _code_here(){code .};
    zle -N _code_here; bindkey  '^[W' _code_here

function _open_zshrc(){nvim ~/.zshrc};
    zle -N _open_zshrc; bindkey  '^[T' _open_zshrc

bindkey -s '^[Y' 'source ~/.zshrc ^M';

bindkey -s '^[>' 'docker container exec -it   /bin/bash';

function _nvim_here(){ nvim . };
zle -N _nvim_here; bindkey '^[r' _nvim_here

function xtob(){
    echo "obase=2;$1" | bc
}

function crun(){
    #compile and run c code; possibly generating a binary name from /dev/urandom bytes
    gcc $1 -l ncurses -o "$1.compiled";
    BIN_LOCAL_NAME="$1.compiled"; zsh -c ./$BIN_LOCAL_NAME
}

bindkey -s '^o' 'cargo run ^M'
bindkey -s '^t' 'cargo test -- --nocapture ^M'



export bend="/home/rxz/dev/riboxyzbackend"
alias grr='gcc -o go_compiled go.c -lncurses; ./go_compiled'

alias tunnels="sudo lsof -i -n | egrep '\<ssh\>'"

alias sbcli="/home/rxz/dev/SolanaBeach/sb-backend-3-cli"
alias sbgsr="/home/rxz/dev/SolanaBeach/sb-backend-3-geyser-plugin"

alias curse="/home/rxz/dev/curses"
alias nightmoves="/home/rxz/dev/nightmoves"
alias cmprs="/home/rxz/dev/sb-compression-benchmarks"
alias actxlib="/home/rxz/dev/sb-actix-lib"
alias sbb="/home/rxz/dev/SolanaBeach"
alias sblib="/home/rxz/dev/SolanaBeach/sb-backend-3-lib"
alias thrd="/home/rxz/dev/threading"
alias rbsd="/home/rxz/dev/ribosome-docker/"


alias GG="echo $GIT_TOKEN | xo"
export sb_pg="PGPASSWORD=$sb_pg_pwd psql -U $sb_pg_usr -h $sb_pg_host -p $sb_pg_port -d $sb_pg_db --set=sslmode=require --set=sslrootcert=$sb_pg_sslcert"
#alias sb_rds="redis-cli -u rediss://$sb_rds_usr:$sb_rds_pwd@$sb_rds_host:$sb_rds_port --tls -n 1"
export sb_rds="redis-cli -u rediss://$sb_rds_usr:$sb_rds_pwd@$sb_rds_host:$sb_rds_port --tls -n 1"

# [sb-be-3-redpanda-dev]: 164.92.237.90
alias sbrptunnel='ssh -f -N -g -L 9092:127.0.0.1:9092 164.92.237.90'

alias ccpy='cargo clippy'
alias sbkowl='echo "Starting Kowl"; docker run --network=host -p 8080:8080 -e KAFKA_BROKERS=localhost:9092 quay.io/cloudhut/kowl:master'
alias sbkfkboth='ssh -f -N -g -L 8080:127.0.0.1:8080 -L 9092:127.0.0.1:9092 sb-gateway'
alias sbkfktunnel='ssh -f -N -g -L 9092:127.0.0.1:9092 sb-gateway'

alias ribxzfigs='cd /home/rxz/dev/docs/ribosomexyz/paper_figs'

alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias desk="cd ~/Desktop"
alias seefonts="fc-list | awk '{\$1=""}1' | cut -d: -f1 | sort| uniq"




#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end




function tmux_last_session(){

    LAST_TMUX_SESSION=$(tmux list-sessions | awk -F ":" '{print$1}' | tail -n1);
    tmux attach -t $LAST_TMUX_SESSION
}
bindkey -s '^s' 'tmux_last_session ^M'


alias xo="xclip -selection clipboard"
#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯


alias szz="du -ah --max-depth=1 . | sort"
alias vup='VENVS=($(ls | grep *venv)); source $(pwd)/${VENVS[1]}/bin/activate;'
alias sagu1="sudo apt-get update"
alias sagu2="sudo apt-get upgrade"

alias zshrc="nvim ~/.zshrc"
alias ribscp="scp -i ~/dev/docs/AWS/ribosome.pem"

alias htpconf="cd /etc/apache2"
alias htpstatus="sudo systemctl status apache2"




alias secrets='nvim ~/.ssh/secrets.env'
alias ssc="source ~/.ssh/secrets.env"
alias dev="cd ~/dev/"
alias docs="cd ~/dev/docs/;"
alias macs="cd ~/.emacs.d"




#----------------------[NEOVIM]-----------------------------------------
alias prc="nvim ~/.config/nvim/lua/plugins.lua"
alias lrc="nvim ~/.config/nvim/lua/init.lua"

alias vrc="nvim ~/.config/nvim/init.vim"
alias vimconf="~/.config/nvim/"

alias vimrc="nvim ~/.config/nvim/"
alias plugs="nvim ~/.config/nvim/lua/plugins.lua"

alias vim="nvim"
alias v="nvim"
#---------------------------------------------------------------





#----------------------[TMUX]-----------------------------------------
#
alias tmuxconf="nvim ~/.tmux.conf"
alias tmuxls="tmux ls"
alias tmuxa="tmux attach -t"
alias tmuxa="tmux attach -t"
alias tmuxks="tmux kill-session -at " # kill all sessions except the current one
alias tmuxkw="tmux kill-window -t " # kill all sessions except the current one
alias tkp="tmux kill-pane -t"
# alias tmuxclean="tmux kill-session -a"
#
#---------------------------------------------------------------
alias xx="exit"
alias jctl="sudo journalctl -e -u"
alias p3="python3"


alias mkvenv='python3 -m virtualenv --python=/usr/bin/python3.10'
alias countem="sed 's/,/ /g' | wc -w"
alias keys="ls -la ~/.ssh | awk -F \" \" '{if (NR>2) {print\$9}}'"
#----------------------GIT-----------------------------------------


alias gsw="git switch"
alias gs="git status"
alias gc="git checkout"
alias gcb="git checkout -b"
alias ll="nvim ~/.config/nvim/lua/init.lua"
alias vv="nvim ~/.config/nvim/init.vim"

#Creates a new branch and switches to it right away
alias gswc="git switch -c" #create and switch into
alias gitseeall="git log --oneline --decorate --graph --all"
alias gittracked="git ls-tree -r master --name-only"
alias gitrmall="git ls-tree -r master --name-only|xargs git rm -r --cached"

#------------------------------------------------------------------
alias ee='nautilus .'
alias sshconfig="vim /home/$(whoami)/.ssh/config"

alias sockeye="ssh rtviii@sockeye.arc.ubc.ca"
alias cv="~/dev/cv/"

alias poly="~/dev/polygen; vup"

alias i3conf="nvim /home/$(whoami)/.config/i3/config"
alias i3reload="i3-msg reload && i3-msg restart"
alias shrestart="sudo service ssh restart"

alias confs="cd ~/.config/"
alias cf="cut -d ',' -f"
alias rr='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

alias biodata="cd /home/$(whoami)/dev/biodata-integration-proposal"
alias wq="code ."
alias nst="npm start"

#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯Ribosome

alias ribetl="cd /home/$(whoami)/dev/riboxyzbackend/ribetl && vup"
alias bend="cd /home/$(whoami)/dev/riboxyzbackend && vup"
alias fend="cd /home/$(whoami)/dev/ribosome.xyz-frontend.ts"

#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯NEO4J
#
NEO4J_HOME="/var/lib/neo4j/"
alias mkvenv='python3 -m virtualenv'
alias neoconf="sudo nvim /etc/neo4j/neo4j.conf"
alias neolog="sudo nvim /var/log/neo4j"
alias neodata="cd /var/lib/neo4j/data"

#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯

alias neologin="sudo -u neo4j /bin/cypher-shell -u neo4j -p 55288"
alias neostop="sudo systemctl stop neo4j"
alias neostart="sudo systemctl start neo4j"
alias neostat="sudo systemctl status  neo4j"
alias neoimport="/var/lib/neo4j/import"

#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯Redis
alias rds='redis-cli'
#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯Docker
alias dk="docker"
alias dkls="docker container ls"
alias dkc="docker container"
alias dkn="docker network"
alias dkv="docker volume"
alias dki="docker image"
alias dke="docker execute -it"
alias dc="docker-compose"


#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅
alias aws='cd /home/rxz/dev/docs/AWS'
alias rib='ssh ubuntu@ribosome.xyz'
alias cifparser='cd ~/dev/rust_train/cifparser'


alias ribrsync="rsync -avzr -e \"ssh -i ~/dev/docs/AWS/ribosome.pem\""
alias ribupdatersync="rsync -hvrPt -e \"ssh -i ~/dev/docs/AWS/ribosome.pem\""

alias utopiarsync="rsync -avzr -e \"ssh -i ~/dev/docs/AWS/rxzhypha.pem\""
alias sshutopia="ssh -i ~/dev/docs/AWS/rxzhypha.pem ec2-user@utopiamushrooms.com"


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
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completi    on




alias gpgssh='unset SSH_AGENT_PID;if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then;  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)";fi;export GPG_TTY=$(tty);gpg-connect-agent updatestartuptty /bye >/dev/null;'
#
alias tfldocs='~/dev/TFL/docs'
alias rpkfk='cd ~/dev/sb/redpanda-kafka-python'

alias ISAPASS='echo !Joaninha29'


#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯ PROMPT -⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅
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

PROMPT='%F{blue}ᢹ%f %M.%B%n%b[ %F{green}%2d%f ] ${vcs_info_msg_1_} '
RPROMPT='${vcs_info_msg_0_} '

#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅
#
#


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

function addconfigs(){




# Regular installs:
https://github.com/ranger/ranger.git
https://github.com/zsh-users/zsh-syntax-highlighting
https://github.com/softmoth/zsh-vim-mode
https://github.com/zsh-users/zsh-autosuggestions
https://github.com/zsh-users/zsh-history-substring-search



dot add ~/.emacs.d/init.el
dot add ~/.config/i3
dot add ~/.config/ranger/{rifle,rc}.conf
dot add ~/.config/nvim
dot add ~/.tmux.conf
dot add ~/.zshrc
dot add ~/.config/Code/User/settings.json
dot add ~/.config/Code/User/keybindings.json
}

newrepo(){
 curl -i -H "Authorization: token $GIT_TOKEN" -d "{\"name\": \"$1\", \"private\": \"$2\"}" https://api.github.com/user/repos  | grep "clone_url"
}



# name it "cline"
function cl(){

# Function to print, provided a file, exclusively
# - the line range (if two params are passed)
# - the single line (if one)
# - cat the file back whole (if none)
#
# This can be accomplished without reading in the whole file via sed :
#
#           echo "sed -n '$FIRST,$SECOND\p;$(($SECOND+1))q' file_name"
#
# sed -n '20,40p;41q' file_name

if [[ "$#" == "1" ]];
then
    cat $1
elif [[ "$#" == "2" ]]
then
    LAST_LINE=$(($1+1));   sed -n '$1,$1p;$LAST_LINEq' "$2"
fi
}


# Activate virtualenv.
function vup(){
PRES=0

for i in ${local[@]};
do
	echo $i
	if [ $i == *"venv" ];
	then
		sourcefile=$(pwd)/$i/bin/activate
		echo "Sourcefile"
		echo $sourcefile;
		source $sourcefile;
		PRES=1
	fi;
done;

if  [[ $PRES -eq 0 ]]; then
	echo "Nothing with *\"venv\" in here.";
fi;


}


[ -f "/home/rxz/.ghcup/env" ] && source "/home/rxz/.ghcup/env" # ghcup-env

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/rxz/dev/SolanaBeach/sb-backend-3-lib/google-cloud-sdk/path.zsh.inc' ]; then . '/home/rxz/dev/SolanaBeach/sb-backend-3-lib/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/rxz/dev/SolanaBeach/sb-backend-3-lib/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/rxz/dev/SolanaBeach/sb-backend-3-lib/google-cloud-sdk/completion.zsh.inc'; fi
