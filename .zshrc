ZSH_DISABLE_COMPFIX=true
KEYTIMEOUT=1
plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-vim-mode history-substring-search)
EDITOR=nvim
unsetopt BEEP


source ~/.ssh/vault
source ~/.bash_functions.sh
export ZSH="/home/$(whoami)/.oh-my-zsh"



newrepo(){
 curl -i -H "Authorization: token $GIT_TOKEN" -d "{\"name\": \"$1\", \"private\": \"$2\"}" https://api.github.com/user/repos
}

alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈[[ PROMPT ]]┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯⋯
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats "⟦ %F{green}%b%f ⟧"
 precmd() {
     vcs_info
     }
setopt prompt_subst
prompt='%n ${vcs_info_msg_0_} %(?.%F{blue}☉ .%F{blue}%?)    '
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
alias ribscp="scp -i ~/dev/notes/AWS/ribosome.pem"

alias htpconf="cd /etc/apache2"
alias htpstatus="sudo systemctl status apache2"


alias vimrc="nvim ~/.config/nvim/init.vim"
alias luarc="nvim ~/.config/nvim/lua/init.lua"
alias nvimd="~/.config/nvim"

alias secrets="nvim ~/dev/notes/Secrets.md"
alias dev="cd ~/dev/"
alias sb="cd ~/dev/sb/"
alias notes="cd ~/dev/notes/;"
alias N="cd ~/dev/notes/; nvim ."
alias macs="cd ~/.emacs.d"

alias zshsrc="source ~/.zshrc"

alias sv="sudo nvim"
alias v="nvim"
alias vim="nvim"
alias tmuxconf="nvim ~/.tmux.conf"
alias tmuxls="tmux ls"
alias tmuxa="tmux attach -t"
alias tmuxsrc="tmux source-file ~/.tmux.conf"

# alias tmuxclean="tmux kill-session -a"
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

alias bend="cd /home/$(whoami)/dev/riboxyzbackend && vup"
alias fend="cd /home/$(whoami)/dev/ribosome.xyz-frontend.ts"

#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯NEO4J
#
NEO4J_HOME="/var/lib/neo4j/"
alias mkvenv='python3 -m virtualenv'
alias neoconf="sudo nvim /etc/neo4j/neo4j.conf"
alias neolog="sudo nvim /var/log/neo4j"
alias neodata="cd /var/lib/neo4j/data"







alias neologin="sudo -u neo4j /bin/cypher-shell -u neo4j -p 55288"
alias neostop="sudo systemctl stop neo4j"
alias neostart="sudo systemctl start neo4j"
alias neostat="sudo systemctl status  neo4j"
alias neoimport="/var/lib/neo4j/import"



#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯DOCKER
alias dk="docker"
alias dkcn="docker container"
alias dknw="docker network"
alias dkcp="docker-compose"
alias dkvm="docker volume"

#-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅✕⋅⋅⋄⋅⋅✕∶⋅⋅⋄⋱⋰⋯⋯-⋯⋯⋅⋱⋰⋆⋅⋅⋄⋅⋅∶⋅⋅⋄▫▪▭┈┅
#


alias tsh='ssh -i "~/dev/notes/Terra/rxz-terra.pem"  $TERRADNODE'
alias terrarsync="rsync -avzr -e ssh -i \"~/dev/notes/Terra/rxz-terra.pem\""

alias tfl="~/dev/TFL"
alias sol='solana'
alias cbpf='cargo build-bpf'
alias stv='solana-test-validator'


alias aws='cd /home/rxz/dev/notes/AWS'
alias rib='ssh ubuntu@ribosome.xyz'
alias cifparser='cd ~/dev/rust_train/cifparser'


alias ribrsync="rsync -avzr -e \"ssh -i ~/dev/notes/AWS/ribosome.pem\""
alias utopiarsync="rsync -avzr -e \"ssh -i ~/dev/notes/AWS/rxzhypha.pem\""
alias sshutopia="ssh -i ~/dev/notes/AWS/rxzhypha.pem ec2-user@utopiamushrooms.com"

alias gcm="git commit -m"
alias tkn="echo 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"
alias ribetl='cd ~/dev/riboxyzbackend/ribetl'


export PATH="/usr/local/cuda-11.1/bin:$PATH"
export PATH="~/.actin/{*}:$PATH"
export PATH="/home/rxz/.local/share/solana/install/active_release/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda-11.1/lib64:$LD_LIBRARY_PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completi    on

export GKB_API_PASSWORD=kush552881498
export GKB_API_USER=$(whoami)
source $ZSH/oh-my-zsh.sh
