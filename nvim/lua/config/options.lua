-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.wo.number = true
vim.o.number = true
vim.o.relativenumber = true

vim.o.swapfile = false -- Creates a swapfile (default: true)
vim.o.smartindent = true -- Make indenting smarter again (default: false)

vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)

-- Save undo history
vim.o.undofile = true

vim.o.wrap = true
vim.o.linebreak = true

-- maintain current indentation whenver starting a new line
vim.o.autoindent = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.shiftwidth = 2 -- The number of spaces inserted for each indentation (default: 8)
vim.o.tabstop = 2 -- Insert n spaces for a tab (default: 8)
vim.o.softtabstop = 2 -- Number of spaces that a tab counts for while performing editing operations (default: 0)
vim.o.expandtab = true -- Convert tabs to spaces (default: false)

-- Scroll
vim.o.scrolloff = 4 -- Minimal number of screen lines to keep above and below the cursor (default: 0)
vim.o.sidescrolloff = 8 -- Minimal number of screen columns either side of cursor if wrap is `false` (default: 0)
vim.o.cursorline = false -- Highlight the current line (default: false)

vim.o.splitbelow = true -- Force all horizontal splits to go below current window (default: false)
vim.o.splitright = true -- Force all vertical splits to go to the right of current window (default: false)
-- vim.o.hlsearch = false -- Set highlight on search (default: true)
-- vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore (default: true)
vim.opt.termguicolors = true -- Set termguicolors to enable highlight groups (default: false)
-- vim.o.whichwrap = 'bs<>[]hl' -- Which "horizontal" keys are allowed to travel to prev/next line (default: 'b,s')
vim.o.numberwidth = 4 -- Set number column width to 2 {default 4} (default: 4)

vim.o.showtabline = 2 -- Always show tabs (default: 1)
vim.o.conceallevel = 0 -- So that `` is visible in markdown files (default: 1)
vim.wo.signcolumn = "yes" -- Keep signcolumn on by default (default: 'auto')

vim.o.writebackup = false -- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited (default: true)
vim.o.completeopt = "fuzzy,menuone,noselect,noinsert,preview" -- Set completeopt to have a better completion experience (default: 'menu,preview')
-- consider trying popup instead of popup
