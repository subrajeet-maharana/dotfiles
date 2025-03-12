-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  "html",
  "cssls",
  "gopls",
  "jdtls",
  "autohotkey_lsp",
  "clangd",
  "dockerls",
  "docker_compose_language_service",
  "eslint",
  "graphql",
  "helm_ls",
  "lua_ls",
  "postgres_lsp",
  "solidity_ls_nomicfoundation",
  "sqls",
  "tailwindcss",
  "tsp_server",
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
