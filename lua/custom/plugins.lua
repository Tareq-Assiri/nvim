local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy=false,
  },
  dependencies = {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy=false,
  },
}
return plugins
