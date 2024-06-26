vim.g.mapleader = " "

vim.keymap.set("n", "<leader>fs", vim.cmd.Ex)

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set({"i", "v", "n", "s"}, "<C-s>", "<cmd>w<cr><esc>")
