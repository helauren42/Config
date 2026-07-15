-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.wrap = true
vim.opt.exrc = true
vim.opt.secure = true

vim.opt.clipboard = "unnamedplus"

require("lspconfig").gopls.setup({
  cmd = { "/home/henri/go/bin/gopls" },
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
})
