local status,_ = pcall(vim.cmd, "colorscheme base16-3024")

if not status then
    print("colorscheme not found")
    return
end
