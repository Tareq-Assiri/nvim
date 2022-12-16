vim.opt.signcolumn = 'yes' -- Reserve space for diagnostic icons
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.nvim_workspace()
lsp.setup()
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})
local signs = {
  Error = '✘',
  Warn = '▲',
  Hint = '⚑',
  Info = ''
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
