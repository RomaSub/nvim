local options = {
  formatters_by_ft = {
    typescript = { { "prettier", "prettierd" } },
    typescriptreact = { { "prettier", "prettierd" } },
    javascript = { { "prettier", "prettierd" } },
    javascriptreact = { { "prettier", "prettierd" } },
    json = { { "prettier", "prettierd" } },
    html = { { "prettier", "prettierd" } },
    css = { { "prettier", "prettierd" } },
    go = { { "gofumpt", "gofmt" } },
    rust = { "rustfmt" },
    lua = { "stylua" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_format = 'fallback',
  -- },
}

require("conform").setup(options)
