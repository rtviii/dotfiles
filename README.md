#  Dotfiles
My configs for neovim, tmux, zsh and ranger. Repo structure inspired by [`StreakyCobra`'s method](https://news.ycombinator.com/item?id=11071754).

--------------

For a fresh VM:
 Make sure $ZSH is congruent with current user (/home/$USR or /root)

 1.install zsh + oh my zsh:
 `apt install zsh`
  `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

 2.cp dotfiles/zshrc (this git repo) to the desired $USR (usually `~`)

 3.Clone the necessary zshrc plugins to $USR/.oh-my-zsh/plugins. Plugins are listed below

 3.cp `tmux.conf` to to the $USR
 
 4.optional install ranger
   `p3 ranger.py --copy-config=all creates the ranger folder in .config`
   overlay with own configs from dot

 5.(optional) install neovim (>0.5 to work with lua)
   `sudo add-apt-repository ppa:neovim-ppa/unstable`
   `sudo apt-get update`
   `sudo apt-get install neovim`
   Packer:
   `git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
   Then, in nvim: ":PackerInstall"

 6.copy neovim configs
   D=".config/nvim"; mkdir -p "~/$D" && cp -r dotfiles/$D "~/$D"





# Regular installs:
https://github.com/ranger/ranger.git
https://github.com/zsh-users/zsh-syntax-highlighting
https://github.com/softmoth/zsh-vim-mode
https://github.com/zsh-users/zsh-autosuggestions
https://github.com/zsh-users/zsh-history-substring-search


For another machine with different dotconfig, start a new branch and on it, add:
```
dot add ~/.emacs.d/init.el
dot add ~/.config/i3
dot add ~/.config/ranger/{rifle,rc}.conf
dot add ~/.config/nvim
dot add ~/.tmux.conf
dot add ~/.zshrc
dot add ~/.config/Code/User/settings.json
dot add ~/.config/Code/User/keybindings.json
```
