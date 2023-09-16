

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
tele = require('telescope.builtin')
telefb = require("telescope").extensions.file_browser.file_browser
vim.keymap.set('', '<M-f>', tele.find_files, {})
vim.keymap.set('', '<M-F>',telefb,  {})
