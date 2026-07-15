return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        settings = {
          python = {
            pythonPath = vim.fn.expand("~/.MyShellEnv/pyvenv/venv/bin/python"),
          },
        },
      },
    },
  },
}
