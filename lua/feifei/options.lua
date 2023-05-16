local options = {
    number = true,
    scl = "no",
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    smartindent = true,
    wrap = false,
    swapfile = false,
    backup = false,
    undodir = os.getenv("HOME") .. "/.vim/undodir",
    undofile = true,
    hlsearch = false,
    incsearch = true,
    scrolloff = 8,
    title = true
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
