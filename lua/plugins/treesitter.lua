return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "json",
        "yaml",
        "xml",
        "markdown",
        "nu",
      },
      sync_install = false,
      auto_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
