
--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('vars')      -- Variables
-- require('opts')      -- Options
-- require('keys')      -- Keymaps
-- require('plug')      -- Plugins
--
--
--     vim.api.nvim_set_var to set internal variables.
--     vim.api.nvim_set_option to set options.
--     vim.api.nvim_set_keymap to set key mappings.
--
-- vim.g: maps to vim.api.nvim_set_var; sets global variables.
-- vim.o: maps to vim.api.nvim_win_set_var; sets variables scoped to a given window.
-- vim.b; maps to vim.api.nvim_buf_set_var; sets variables scoped to a given buffer.
--
-- In addition to your init.lua file, Neovim will also look for any files that are included in the /lua subdirectory.
-- All code contained in this subfolder is part of your runtimepath and can be imported for use in Neovim with the command require('name-of-file').
--
--
--
local map = vim.api.nvim_set_keymap
vim.cmd('packadd packer.nvim')
-- require('plugins')

map('', '<M-f>', ':Telescope find_files <CR>',{})
map('', '<M-A>', ':NvimTreeToggle <CR>',{})

map('', '<M-E>', ':bp <CR>',{})
map('', '<M-R>', ':bn <CR>',{})


map('', '<C-h>', ':wincmd h<CR>',{})
map('', '<C-j>', ':wincmd j<CR>',{})
map('', '<C-k>', ':wincmd k<CR>',{})
map('', '<C-l>', ':wincmd l<CR>',{})

map('', '<C-s>', ':w <CR>',{})

vim.api.nvim_set_keymap(
"n",
"<M-D>",
"<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<CR>",
{noremap = true}
)



