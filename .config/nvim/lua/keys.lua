

--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- General --
-- remap the key used to leave insert mode
map('i', 'jj', '<Esc>', {})
map('i', 'kk', '<Esc>', {})

map('', '<C-_>', ':Commentary <CR>',{})

map('', '<M-E>', ':bp <CR>',{})
map('', '<M-R>', ':bn <CR>',{})

map('', '<C-s>', ':w <CR>',{})

-- ECM Jazz and mathematics are just sophisticated storytelling. I enjoy it very
-- much but i hope i don't lose sight of what's real.

function toggle_file_explorer()
    vim.cmd("NvimTreeToggle")
end

vim.keymap.set('', '<M-A>', toggle_file_explorer ,{})



-- telescope
telescope = require('telescope.builtin')
vim.keymap.set('', '<M-f>', telescope.find_files, {})
vim.keymap.set('', '<M-F>', telescope.live_grep, {})
