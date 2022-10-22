

--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jj', '', {})
map('i', 'kk', '', {})

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


