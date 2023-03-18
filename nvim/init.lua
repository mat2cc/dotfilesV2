require("mattc")

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

vim.g.mapleader = " "
vim.g.maplocalleader = " "


require("lazy").setup('plugins', {})

-- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha, catppuccin
-- gruvbox
-- tokyonight
-- tokyonight-moon, tokyonight-night, tokyonight-storm, tokyonight-day
-- rose-pine
vim.cmd.colorscheme "rose-pine"

