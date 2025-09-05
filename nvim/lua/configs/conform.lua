local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
    json = { "prettier" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    go = { "gofmt" }, -- html = { "prettier" },
    java = {},
    yaml = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
