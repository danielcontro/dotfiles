-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.tex_flavor = "latex"
vim.o.completeopt = "menu,menuone,preview,noselect"
vim.o.sidescrolloff = 2
vim.o.cmdheight = 1
vim.o.relativenumber = false
vim.g.snacks_animate = false
vim.o.textwidth = 80

vim.g.maplocalleader = [[\]]

vim.filetype.add({ extension = { tree = "forester" } })
