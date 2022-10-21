require('packer').startup(function()
  -- Packer can manage itself
      use 'wbthomason/packer.nvim'


        use 'hrsh7th/nvim-cmp'

        use 'hrsh7th/cmp-nvim-lsp'

        use 'hrsh7th/cmp-vsnip'

        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-buffer'


        use 'simrat39/rust-tools.nvim'

        use 'hrsh7th/vim-vsnip'

        use 'nvim-lua/popup.nvim'
        use 'nvim-lua/plenary.nvim'
        use 'nvim-telescope/telescope.nvim'



      use 'tpope/vim-surround'
      use 'nvim-treesitter/nvim-treesitter'
      use 'glepnir/lspsaga.nvim'
      use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client

end)

