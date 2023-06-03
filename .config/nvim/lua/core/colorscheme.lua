local status,_ = pcall(vim.cmd, "colorscheme base16-ashes")

if not status then
    print("colorscheme not found")
    return
end
