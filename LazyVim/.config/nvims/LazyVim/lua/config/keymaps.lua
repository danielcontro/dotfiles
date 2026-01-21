-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.keymap.set({ "n", "v" }, "<C-i>", "<C-a>")
vim.keymap.set({ "n" }, "<localleader>f", LazyVim.pick("files", { cwd = "~/forests/phd/trees/", e = "tree" }))
