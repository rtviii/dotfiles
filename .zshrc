ZSH_DISABLE_COMPFIX=true
export OMZSH_DIR=~/.oh-my-zsh
KEYTIMEOUT=1
plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-vim-mode history-substring-search last-working-dir)
EDITOR=nvim
RUSTFLAGS="-A dead_code -A unused_imports"
export PYTHONPATH="${PYTHONPATH}:/usr/lib/python3/dist-packages/pymol"
export FLOB="oHMRfFnQ1HER"
export bend="/home/rxz/dev/riboxyzbackend"

# "Train a neural network to recognize hashes, addresses, accounts, transactions on multiple chains and vendor that as a browser extension."

alias grr='gcc -o go_compiled go.c -lncurses; ./go_compiled'

function soundup(){
    echo "sound up said $1"
    pactl set-sink-volume bluez_sink.38_88_A4_F0_6E_8C.a2dp_sink $1
}




alias curse="/home/rxz/dev/curses"
alias nightmoves="/home/rxz/dev/nightmoves"
alias cmprs="/home/rxz/dev/sb-compression-benchmarks"
alias actxlib="/home/rxz/dev/sb-actix-lib"
alias sbb="/home/rxz/dev/SolanaBeach"
alias sblib="/home/rxz/dev/SolanaBeach/sb-backend-3-lib"
alias thrd="/home/rxz/dev/threading"


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

newrepo(){
 curl -i -H "Authorization: token $GIT_TOKEN" -d "{\"name\": \"$1\", \"private\": \"$2\"}" https://api.github.com/user/repos  | grep "clone_url"
}
#curl -H "Authorization: token ACCESS_TOKEN" --data '{"name":"NEW_REPO_NAME"}' https://api.github.com/user/repos

alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'




alias desk="cd ~/Desktop"



alias seefonts="fc-list | awk '{\$1=""}1' | cut -d: -f1 | sort| uniq"


source $OMZSH_DIR/oh-my-zsh.sh


#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯

bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end
bindkey -s '^o' 'cargo run ^M'
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

alias vimrc="nvim ~/.config/nvim/init.vim"
alias luarc="nvim ~/.config/nvim/lua/init.lua"

alias secrets='nvim ~/.ssh/secrets.env'
alias ssc="source ~/.ssh/secrets.env"
alias dev="cd ~/dev/"
alias docs="cd ~/dev/docs/;"
alias macs="cd ~/.emacs.d"

alias zshsrc="source ~/.zshrc"

alias sv="sudo -E -s; vim"
alias v="nvim"
alias vim="nvim"

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

alias crun='~/.actin/crun'

alias mkvenv='python3 -m virtualenv --python=/usr/bin/python3.10'
alias countem="sed 's/,/ /g' | wc -w"
alias keys="ls -la ~/.ssh | awk -F \" \" '{if (NR>2) {print\$9}}'"
#----------------------GIT-----------------------------------------


alias gsw="git switch"
alias gs="git status"
alias gc="git checkout"
alias gcb="git checkout -b"

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
alias dkcn="docker container"
alias dknw="docker network"
alias dkcp="docker-compose"
alias dkvm="docker volume"

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
source ~/.ssh/secrets.env

#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅

function addconfigs(){
    # Make sure $ZSH is congruent with current user (/home/$x or /root)

    # 1.install zsh + oh my zsh
    #   apt install zsh
    #   sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    # 2.cp dotfiles/zshrc to ~
    # 3.copy zshrc plugins to ~/.oh-my-zsh/plugins
    # 3.cp tmux.conf to ~
    # 4.install neovim (>0.5 to work with lua)
    #   sudo apt-get install neovim
    # 5.copy neovim configs
    #   D=".config/nvim"; mkdir -p "~/$D" && cp -r dotfiles/$D "~/$D"
    # 6.install nvim packer
    #   sudo git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

    # Regular installs:
    # https://github.com/ranger/ranger.git
    # https://github.com/zsh-users/zsh-syntax-highlighting
    # https://github.com/softmoth/zsh-vim-mode
    # https://github.com/zsh-users/zsh-autosuggestions
    # https://github.com/zsh-users/zsh-history-substring-search
    # Packer:
    # git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    # sudo add-apt-repository ppa:neovim-ppa/unstable
    # sudo apt-get update
    # sudo apt-get install neovim


    dot add ~/.emacs.d/init.el
    dot add ~/.config/i3
    dot add ~/.config/ranger/{rifle,rc}.conf
    dot add ~/.config/nvim
    dot add ~/.tmux.conf
    dot add ~/.zshrc
    dot add ~/.config/Code/User/settings.json
    dot add ~/.config/Code/User/keybindings.json
}


