-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("n", "<C-t>", ":FloatermToggle<CR>", { silent = true })
vim.api.nvim_set_keymap("t", "<C-t>", "<C-\\><C-n>:FloatermToggle<CR>", { silent = true })

-- Moving on a half-page distance
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.api.nvim_set_keymap("n", "emt", ":TransparentToggle<CR>", { silent = true })
