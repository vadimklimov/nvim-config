return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "jsonls",
          "yamlls",
          "lemminx",
          "marksman",
        },
      })

      local lspconfig = require("lspconfig")
      lspconfig.jsonls.setup({})
      lspconfig.yamlls.setup({})
      lspconfig.lemminx.setup({})
      lspconfig.marksman.setup({})
    end,
  },
}
