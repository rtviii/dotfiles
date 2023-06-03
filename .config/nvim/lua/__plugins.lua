require('packer').startup(function()
  -- Packer can manage itself
use 'wbthomason/packer.nvim'

    use 'rrethy/nvim-base16'
    -- telescope
    use {

      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = {{'nvim-lua/plenary.nvim'} }
    }
    use 'BurntSushi/ripgrep'
    use 'sharkdp/fd'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }


    -- easy-align
    use 'junegunn/vim-easy-align'
    -- vim-zoom
    use 'dhruvasagar/vim-zoom'

    -- bufferline
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons'}

    use {  'nvim-tree/nvim-tree.lua',  requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
          },
          tag = 'nightly' -- optional, updated every week. (see issue #1193)
        }



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
    use 'tpope/vim-surround'


    -- COSMETICS
    use 'shaunsingh/nord.nvim'

end)

