vim.opt.signcolumn = 'yes' -- Reserve space for diagnostic icons
local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()
