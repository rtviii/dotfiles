require('packer').startup(function()
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'junegunn/vim-easy-align'


    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons'}

    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"

    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'

    use 'tpope/vim-commentary'


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




    -- COSMETICS
    use 'shaunsingh/nord.nvim'

end)

