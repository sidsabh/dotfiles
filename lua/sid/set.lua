-- vim.opt.background = "dark"
vim.api.nvim_create_autocmd("User", {
    pattern = "LazyDone",
    callback = function()
        pcall(vim.cmd, "colorscheme catppuccin")
    end,
})

vim.opt.nu = true -- line numbers

vim.opt.hlsearch = false -- turns off annoying select
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8 -- keeps lines on bottom when scroling
