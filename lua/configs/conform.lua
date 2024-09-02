local options = {
  formatters_by_ft = {
    typescript = { { "prettier", "prettierd" } },
    svelte = { { "prettier", "prettierd" } },
    typescriptreact = { { "prettier", "prettierd" } },
    javascript = { { "prettier", "prettierd" } },
    javascriptreact = { { "prettier", "prettierd" } },
    json = { { "prettier", "prettierd" } },
    html = { { "prettier", "prettierd" } },
    css = { { "prettier", "prettierd" } },
    go = { { "goimports", "gofmt" } },
    rust = { "rustfmt" },
    lua = { "stylua" },
    clojure = { "cljfmt" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 3000,
  --   lsp_format = "fallback",
  -- },
}

require("conform").setup(options)
