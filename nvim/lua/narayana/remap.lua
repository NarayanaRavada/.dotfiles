vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

-- handle buffers
vim.keymap.set("n", "bp", vim.cmd.bp)
vim.keymap.set("n", "bn", vim.cmd.bn)
vim.keymap.set("n", "bd", vim.cmd.bd)

-- quit vim
vim.keymap.set("n", "q", ":q<CR>")
vim.keymap.set("n", "fq", ":q!<CR>")

-- cp
vim.keymap.set("n", "\\\\", ":vsplit term://zsh -c 'g++ -std=c++17 % -o %< && ./%<' && rm ./%<<CR>")
-- verilog
--vim.keymap.set("n", "\\\\", ":vsplit term://zsh -c 'iverilog % -o %< && ./%<' && rm ./%<<CR>")
