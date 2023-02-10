local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
keymap('n', "<C-a>", "gg<S-v>G", opts)
-- Window
-- Split window
keymap("n", "te", "tabedit<Return>", opts)

-- Move window
keymap("n", "sh", "<C-w>h", opts)
keymap("n", "sj", "<C-w>j", opts)
keymap("n", "sk", "<C-w>k", opts)
keymap("n", "sl", "<C-w>l", opts)
keymap("n", "s<left>", "<C-w>h", opts)
keymap("n", "s<down>", "<C-w>j", opts)
keymap("n", "s<up>", "<C-w>k", opts)
keymap("n", "s<right>", "<C-w>l", opts)
