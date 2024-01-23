local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " -- make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup("echavemann", {
  defaults = { lazy = true, version = false },
  ui = { wrap = "true" },
  change_detection = { enabled = true },
  checker = {enabled = true},
  performance = {
    rtp = {
      disabled_plugins = {
      },
    },
  },
})
