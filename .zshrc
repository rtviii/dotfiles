cSH_DISABLE_COMPFIX=true
KEYTIMEOUT=1
plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-vim-mode history-substring-search)
EDITOR=nvim
unsetopt BEEP

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats "[%F{green}%b%f]"
 precmd() {
     vcs_info
     }
setopt prompt_subst
prompt='%F{blue}ᢹ%f %M.%B%n%b ${vcs_info_msg_0_} '



alias grr='gcc -o go_compiled go.c -lncurses; ./go_compiled'

source ~/.bash_functions.sh
export ZSH="/home/$(whoami)/.oh-my-zsh"

export litefarm_pg="PGPASSWORD=$litefarm_pwd psql -U $litefarm_usr -h $litefarm_host -p $litefarm_port -d $litefarm_db"
export litefarm_prod="PGPASSWORD=$litefarm_prod_pwd psql -U $litefarm_prod_usr -h $litefarm_prod_host -p $litefarm_prod_port -d $litefarm_prod_db"

alias lf="~/dev/litefarm; vup"
alias curse="~/dev/ncurses"

alias GG="echo $GIT_TOKEN | xo"
export sb_pg="PGPASSWORD=$sb_pg_pwd psql -U $sb_pg_usr -h $sb_pg_host -p $sb_pg_port -d $sb_pg_db --set=sslmode=require --set=sslrootcert=$sb_pg_sslcert"
#alias sb_rds="redis-cli -u rediss://$sb_rds_usr:$sb_rds_pwd@$sb_rds_host:$sb_rds_port --tls -n 1"
export sb_rds="redis-cli -u rediss://$sb_rds_usr:$sb_rds_pwd@$sb_rds_host:$sb_rds_port --tls -n 1"


lgtm(){
    if [[ ${#1} -lt 2 ]]
    then
        echo "Provide a sensible commit message, pal."
        return 1
    fi

    git add .
    git commit -m "$1"
    git push origin master
}
lgtmo(){
    if [[ ${#1} -lt 2 ]]
    then
        echo "Provide a sensible commit message, pal."
        return 1
    fi

    git add .
    git commit -m "$1"
    git push o master
}


newrepo(){
 curl -i -H "Authorization: token $GIT_TOKEN" -d "{\"name\": \"$1\", \"private\": \"$2\"}" https://api.github.com/user/repos  | grep "clone_url"
}

alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias desk="cd ~/Desktop"



alias seefonts="fc-list | awk '{\$1=""}1' | cut -d: -f1 | sort| uniq"




#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯

bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

alias xo="xclip -selection clipboard"
#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯


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
alias sb="cd ~/dev/sb/"
alias docs="cd ~/dev/docs/;"
alias N="cd ~/dev/docs/; nvim ."
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
alias tmuxk="tmux kill-session -at " # kill all sessions except the current one
alias tkp="tmux kill-pane -t"
# alias tmuxclean="tmux kill-session -a"
#
#---------------------------------------------------------------
alias xx="exit"
alias jctl="sudo journalctl -e -u"
alias p3="python3"


alias cnf="~/.config/"
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
alias p3rs="p3 manage.py runserver"
alias sshdir="~/.ssh/"
alias sshconfig="vim /home/$(whoami)/.ssh/config"

alias sockeye="ssh rtviii@sockeye.arc.ubc.ca"
alias cv="~/dev/cv/"

alias poly="~/dev/polygen; vup"

alias i3conf="nvim /home/$(whoami)/.config/i3/config"
alias i3reload="i3-msg reload && i3-msg restart"

alias shconfig="sudo nvim /etc/ssh/sshd_config"
alias shrestart="sudo service ssh restart"

alias confs="cd ~/.config/"
alias cf="cut -d ',' -f"
alias rr='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'


alias biodata="cd /home/$(whoami)/dev/biodata-integration-proposal"
alias wq="code ."
alias nst="npm start"

#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯Ribosome

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
# ===================== Solana Beach
alias sbend="/home/rxz/dev/sb/sb-backend-2"
#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅
#
alias terrarsync="rsync -avzr -e ssh -i \"~/dev/docs/Terra/rxz-terra.pem\""

alias tfld="~/dev/TFL/terrad-loadtest"
alias tfl="~/dev/TFL"
alias sol='solana'
alias cbpf='cargo build-bpf'
alias stv='solana-test-validator'


alias aws='cd /home/rxz/dev/docs/AWS'
alias rib='ssh ubuntu@ribosome.xyz'
alias cifparser='cd ~/dev/rust_train/cifparser'


alias ribrsync="rsync -avzr -e \"ssh -i ~/dev/docs/AWS/ribosome.pem\""
alias utopiarsync="rsync -avzr -e \"ssh -i ~/dev/docs/AWS/rxzhypha.pem\""
alias sshutopia="ssh -i ~/dev/docs/AWS/rxzhypha.pem ec2-user@utopiamushrooms.com"

alias gcm="git commit -m"
alias ribetl='cd ~/dev/riboxyzbackend/ribetl'


export PATH="/usr/local/cuda-11.1/bin:$PATH"
export PATH="~/.actin/{*}:$PATH"
export PATH="/home/rxz/.local/share/solana/install/active_release/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda-11.1/lib64:$LD_LIBRARY_PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

source ~/.ssh/vault


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completi    on

source $ZSH/oh-my-zsh.sh




alias gpgssh='unset SSH_AGENT_PID;if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then;  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)";fi;export GPG_TTY=$(tty);gpg-connect-agent updatestartuptty /bye >/dev/null;'
# Notes

# vscode configs are at /home/$(whoami)/.config/Code/User


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

