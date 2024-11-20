-- KEY MAPPINGS
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

--Remap , as leader key
keymap("", "<,>", "<Nop>", opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

keymap("n", "<leader>v", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>f", ":Files<CR>", opts)
keymap("n", "<leader>r", ":RG<CR>", opts)
keymap("i", "jj", "<ESC>", opts)
keymap("n", "<leader>m", ":w<CR>", opts)

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

