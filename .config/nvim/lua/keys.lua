

--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap


-- General --
-- remap the key used to leave insert mode
map('i', 'jj', '<Esc>', {})
map('i', 'kk', '<Esc>', {})

map('', '<M-A>', ':NvimTreeToggle <CR>',{})
map('', '<C-_>', ':Commentary <CR>',{})

map('', '<M-E>', ':bp <CR>',{})
map('', '<M-R>', ':bn <CR>',{})

map('', '<C-s>', ':w <CR>',{})

-- ECM Jazz and mathematics are just sophisticated storytelling. I enjoy it very
-- much but i hope i don't lose sight of what's real.
--
--


-- [ Buffers (Tabs) ]
--
function sss()
    vim.cmd("NvimTreeToggle")
end
--
-- [ NvimTree ]
vim.keymap.set('', '<M-W>', sss ,{})


--
--
