-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Tree keymaps
vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>")

-- Openingh keymaps
vim.keymap.set("n", "<Leader>gg", ":OpenInGHFile<CR>")
vim.keymap.set("v", "<Leader>gg", ":OpenInGHFileLines<CR>")
