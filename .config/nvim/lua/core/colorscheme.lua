local status,_ = pcall(vim.cmd, "colorscheme base16-nord")

if not status then
    print("colorscheme not found")
    return
end
