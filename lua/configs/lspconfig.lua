local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "clangd", "gopls", "gradle_ls" }

-- local function organize_imports()
--   local params = {
--     command = "_typescript.organizeImports",
--     arguments = { vim.api.nvim_buf_get_name(0) },
--   }
--   vim.lsp.buf.execute_command(params)
-- end

-- Function to setup diagnostic display
 local function setup_diagnostics()
   vim.diagnostic.config({
     virtual_text = false, -- Disable virtual text
     underline = false,
   })
 end

 setup_diagnostics()

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
      gopls = {
        completeUnimported = true,
        usePlaceholders = true,
        analyses = {
          unusedparams = true,
        }
      }
    }
  }
  lspconfig.prismals.setup {}
end
