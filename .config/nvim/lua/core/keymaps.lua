
vim.g.mapleader=" "

local map = vim.api.nvim_set_keymap
local keymap =vim.keymap

-- General --
-- remap the key used to leave insert mode
--
map('v', 'J', '5j', {})
map('v', 'K', '5k', {})

map('n', 'J', '5j', {})
map('n', 'K', '5k', {})

map('i', 'jj', '<Esc>', {})
map('i', 'kk', '<Esc>', {})

map('', '<C-_>', ':Commentary <CR>',{})

map('', '<M-E>', ':bp <CR>',{})
map('', '<M-R>', ':bn <CR>',{})

map('', '<C-s>', ':w <CR>',{})


keymap.set('n', '<M-A>', ":NvimTreeToggle<CR>")

-- telescope
telescope = require('telescope.builtin')
vim.keymap.set('', '<M-f>', telescope.find_files, {})
vim.keymap.set('', '<M-F>', telescope.live_grep, {})
