return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.sql = { "pg_format" }

      opts.formatters.pg_format = {
        args = {
          "--spaces",
          "2", -- ← this is the correct one for indent
          "--keyword-case",
          "1", -- uppercase keywords
          "--type-case",
          "1", -- uppercase types (INTEGER, TIMESTAMPTZ, etc.)
          "--function-case",
          "1",
          "--no-extra-line",
          "-",
        },
      }
    end,
  },
}
