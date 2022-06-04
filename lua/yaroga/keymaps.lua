local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Window
-- Split window
keymap("n", "ss", ":split<Return><C-w>j", opts)
keymap("n", "sv", ":vsplit<Return><C-w>l", opts)

-- Move window
keymap("n", "sh", "<C-w>h", opts)
keymap("n", "sj", "<C-w>j", opts)
keymap("n", "sk", "<C-w>k", opts)
keymap("n", "sl", "<C-w>l", opts)
keymap("n", "s<left>", "<C-w>h", opts)
keymap("n", "s<down>", "<C-w>j", opts)
keymap("n", "s<up>", "<C-w>k", opts)
keymap("n", "s<right>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 25<cr>", opts)

-- Resize window
keymap("n", "<C-w><up>", ":resize +2<CR>", opts)
keymap("n", "<C-w><down>", ":resize -2<CR>", opts)
keymap("n", "<C-w><left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-w><right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- visual --
-- stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down
-- Mac
keymap("v", "∆", ":m .+1<cr>==", opts)
keymap("v", "˚", ":m .-2<cr>==", opts)
-- Win
-- keymap("v", "<A-j>", ":m .+1<cr>==", opts)
-- keymap("v", "<A-k>", ":m .-2<cr>==", opts)
keymap("v", "p", '"_dp', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- Mac
keymap("x", "∆", ":move '>+1<CR>gv-gv", opts)
keymap("x", "˚", ":move '<-2<CR>gv-gv", opts)
-- Win
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope --
keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
-- keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader>r", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>b", "<cmd>Telescope vim_bookmarks all<cr>", opts)


-- Nvimtree --
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", ";q", ":Bdelete<cr>", opts)

-- Format
keymap("n", "<;f>", ":Format<cr>", opts)

-- ToggleTerm
keymap("n", "<leader>g", ":lua _LAZYGIT_TOGGLE()<cr>", opts)
