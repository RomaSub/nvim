local M = {}

M.treesitter = {
  ensure_installed = {
    -- "zig",
    -- "swift",
    "clojure",
    "svelte",
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "jsx",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "prisma",
    "go",
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    "svelteserver",
    "lua-language-server",
    "css-lsp",
    "html-lsp",
    "deno",
    "prettier",
    "eslint_d",
    "gopls",
    "gradle_ls",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
