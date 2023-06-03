local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

local status, packer = pcall(require, "packer")
if not status then
    return
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])


return packer.startup(function(use)

    use 'wbthomason/packer.nvim'



    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig
    use("neovim/nvim-lspconfig") -- easily configure language servers

  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  }) -- enhanced lsp uis
  use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
  use("onsails/lspkind.nvim")





    -- Snippets and autocomp----------------------

    use("L3MON4D3/LuaSnip") -- snippet engine
    use("saadparwaiz1/cmp_luasnip") -- for autocompletion
    use("rafamadriz/friendly-snippets") -- useful snippets

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    ---------------------------------
    use 'simrat39/rust-tools.nvim'
    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'

    use 'rrethy/nvim-base16'
    -- telescope
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = {{'nvim-lua/plenary.nvim'} }
    }
    use 'BurntSushi/ripgrep'
    use 'sharkdp/fd'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'junegunn/vim-easy-align'
    use 'dhruvasagar/vim-zoom'


    -- COSMETICS
    use 'shaunsingh/nord.nvim'

   -- nvim-tree
    use {  'nvim-tree/nvim-tree.lua',  requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
          },
          tag = 'nightly' -- optional, updated every week. (see issue #1193)
        }


    -- comment
    use 'numToStr/Comment.nvim'

    if packer_bootstrap then
        require("packer").sync()
    end
end)
