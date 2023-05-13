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
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  {
    "tpope/vim-fugitive",
    lazy=false,
  },
  {
    "mbbill/undotree",
    lazy=false,
  }
}
return plugins
