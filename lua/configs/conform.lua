local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    c = { "clang_format" },
    cpp = { "clang_format" },
    objc = { "clang_format" },
    objcpp = { "clang_format" },
    -- css = { "prettier" },
    -- html = { "prettier" },
    json = { "clang_format" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = false,
  },
}

return options
