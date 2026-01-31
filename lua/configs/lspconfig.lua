-- require("nvchad.configs.lspconfig").defaults()
--
-- local servers = { "html", "cssls" }
-- vim.lsp.enable(servers)
--
-- -- read :h vim.lsp.config for changing options of lsp servers
-- --
require("nvchad.configs.lspconfig").defaults()
-- lua/configs/lsp.lua（示例）
local capabilities = require("nvchad.configs.lspconfig").capabilities
local on_attach = require("nvchad.configs.lspconfig").on_attach
vim.lsp.config("clangd", {
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  on_attach = on_attach,
  capabilities = capabilities,
})
-- vim.lsp.config("neocmake", {
--   cmd = { "neocmakelsp", "--stdio" },
--   init_options = {
--     format = { enable = true },
--     lint = { enable = true },
--     scan_cmake_in_package = true, -- Deeply check cmake files found in packages
--   },
-- })

on_attach = function(client, bufnr)
  client.server_capabilities.documentFormattingProvider = false
end

local servers = { "html", "cssls", "clangd", "neocmake" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
