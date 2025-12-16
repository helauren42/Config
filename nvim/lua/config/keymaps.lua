-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("n", "<F5>", "@d", { noremap = true, silent = false })
vim.cmd([[let @d = "o<div>\ei className=\"\"\ei"]])
vim.api.nvim_set_keymap("n", "<F5>", "@i", { noremap = true, silent = false })
vim.cmd([[let @i = "o<div>\ei id=\"\"\ei"]])

-- quit file
-- vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)

------------ enhance default keys ------------

-- Keep last yanked when pasting
vim.keymap.set("v", "<leader>p", '"_dP', opts)

-- Vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Delete single character without copying into register
vim.keymap.set("n", "x", '"_x', opts)

-- Find and center
vim.keymap.set("n", "n", "nzz", opts)
vim.keymap.set("n", "N", "Nzz", opts)
-- vim.keymap.set("n", "G", "Gzz", opts) --buggy somehow

-- Delete without copying into register
-- vim.keymap.set("n", "<leader>D", '"_d')

-------------- Enhance ai -------------

-- Brackets (b)
vim.keymap.set("n", "]b", ":normal vinb<CR>", opts)
vim.keymap.set("n", "[b", ":normal vilb<CR>", opts)
vim.keymap.set("v", "]b", "<Esc>:normal vinb<CR>", opts)
vim.keymap.set("v", "[b", "<Esc>:normal vilb<CR>", opts)

-- Quotes (q)
vim.keymap.set("n", "]q", ":normal vinq<CR>", opts)
vim.keymap.set("n", "[q", ":normal vilq<CR>", opts)
vim.keymap.set("v", "]q", "<Esc>:normal vinq<CR>", opts)
vim.keymap.set("v", "[q", "<Esc>:normal vilq<CR>", opts)

-- Parentheses (()
vim.keymap.set("n", "](", ":normal vin(<CR>", opts)
vim.keymap.set("n", "[(", ":normal vil(<CR>", opts)
vim.keymap.set("v", "](", "<Esc>:normal vin(<CR>", opts)
vim.keymap.set("v", "[(", "<Esc>:normal vil(<CR>", opts)

-- Curly braces ({)
vim.keymap.set("n", "]{", ":normal vin{<CR>", opts)
vim.keymap.set("n", "[{", ":normal vil{<CR>", opts)
vim.keymap.set("v", "]{", "<Esc>:normal vin{<CR>", opts)
vim.keymap.set("v", "[{", "<Esc>:normal vil{<CR>", opts)

-- Square brackets ([)
vim.keymap.set("n", "]()[", ":normal vin[<CR>", opts)
vim.keymap.set("n", "[()[", ":normal vil[<CR>", opts)
vim.keymap.set("v", "]()[", "<Esc>:normal vin[<CR>", opts)
vim.keymap.set("v", "[()[", "<Esc>:normal vil[<CR>", opts)

-- Single quotes (')
vim.keymap.set("n", "]'", ":normal vin'<CR>", opts)
vim.keymap.set("n", "['", ":normal vil'<CR>", opts)
vim.keymap.set("v", "]'", "<Esc>:normal vin'<CR>", opts)
vim.keymap.set("v", "['", "<Esc>:normal vil'<CR>", opts)

-- Double quotes (")
vim.keymap.set("n", ']"', ':normal vin"<CR>', opts)
vim.keymap.set("n", '["', ':normal vil"<CR>', opts)
vim.keymap.set("v", ']"', '<Esc>:normal vin"<CR>', opts)
vim.keymap.set("v", '["', '<Esc>:normal vil"<CR>', opts)

-- Angle brackets (<)
vim.keymap.set("n", "]<", ":normal vin<<CR>", opts)
vim.keymap.set("n", "[<", ":normal vil<<CR>", opts)
vim.keymap.set("v", "]<", "<Esc>:normal vin<<CR>", opts)
vim.keymap.set("v", "[<", "<Esc>:normal vil<<CR>", opts)

-- Backtick (`)
vim.keymap.set("n", "]`", ":normal vin`<CR>", opts)
vim.keymap.set("n", "[`", ":normal vil`<CR>", opts)
vim.keymap.set("v", "]`", "<Esc>:normal vin`<CR>", opts)
vim.keymap.set("v", "[`", "<Esc>:normal vil`<CR>", opts)

------- Languages ----------
--- React

vim.api.nvim_set_keymap("n", "<F5>", "@c", { noremap = true, silent = false })
vim.cmd([[let @c = "o<div>\ei className=\"\"\ei"]])
vim.api.nvim_set_keymap("n", "<F5>", "@i", { noremap = true, silent = false })
vim.cmd([[let @i = "o<div>\ei id=\"\"\ei"]])
