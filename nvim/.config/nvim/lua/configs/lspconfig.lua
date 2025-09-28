-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = vim.lsp.config;

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
    "ts_ls",
}

local nvlsp = require "nvchad.configs.lspconfig"

-- Enhanced on_attach to support auto-formatting on save
local on_attach = function(client, bufnr)
    -- Use existing nvchad on_attach logic
    if nvlsp.on_attach then
        nvlsp.on_attach(client, bufnr)
    end

    -- Auto-format on save if supported
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.format { async = true, buffer = bufnr }
            end,
        })
    else
        print("Document Formatting not supported by server")
    end
end

-- lsps with default config
for _, lsp in ipairs(servers) do
    vim.lsp.config(lsp, {
        on_attach = on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
    })
end

-- Define :Format command
vim.api.nvim_create_user_command("Format", function()
    vim.lsp.buf.format { async = true, buffer = 0 }
end, {})
