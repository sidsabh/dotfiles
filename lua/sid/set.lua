vim.opt.background = "dark"
vim.api.nvim_create_autocmd("User", {
    pattern = "LazyDone",
    callback = function()
        pcall(vim.cmd, "colorscheme palenight")
    end,
})


