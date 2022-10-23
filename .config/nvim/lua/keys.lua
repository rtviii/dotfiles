

--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jj', '<Esc>', {})
map('i', 'kk', '<Esc>', {})

map('', '<M-f>', ':Telescope find_files <CR>',{})
map('', '<M-A>', ':NvimTreeToggle <CR>',{})



map('', '<C-_>', ':Commentary <CR>',{})

map('', '<M-E>', ':bp <CR>',{})
map('', '<M-R>', ':bn <CR>',{})

map('', '<C-s>', ':w <CR>',{})

