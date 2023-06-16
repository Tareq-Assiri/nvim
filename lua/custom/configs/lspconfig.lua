local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = lspconfig.util.root_pattern("Cargo.toml"),
})


lspconfig.bashls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.docker_compose_language_service.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.dockerls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
--
-- lspconfig.java_language_server.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {"java"},
-- })

lspconfig.jdtls.setup{

  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.pyright.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
--
--
-- lspconfig.python_lsp_server.setup{
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }
