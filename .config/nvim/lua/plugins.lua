require('packer').startup(function()
  -- Packer can manage itself
use 'wbthomason/packer.nvim'
  --
  --
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"

    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'


    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-vsnip'

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/vim-vsnip'
    use 'nvim-treesitter/nvim-treesitter'

  use 'tpope/vim-surround'
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client

end)

