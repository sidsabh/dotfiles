local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = "sid.lazy",
    change_detection = { notify = false }
})


local project_config = vim.fn.getcwd() .. '/.nvim.lua'
if vim.fn.filereadable(project_config) == 1 then
    dofile(project_config)
end

