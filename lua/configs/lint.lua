require("lint").linters_by_ft = {
  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
  typescriptreact = { "eslint_d" },
  javascriptreact = { "eslint_d" },
  svelte = { "eslint_d" },
  go = { "golangcilint" },
  lua = { "luacheck" },
  clojure = { "clj-kondo" },
  haskell = { "hlint" },
  bash = { "shellcheck"}
  -- swift = { "SwiftLint" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
