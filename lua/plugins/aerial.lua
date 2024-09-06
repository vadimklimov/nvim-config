return {
  "stevearc/aerial.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("aerial").setup({
      layout = {
        min_width = { 20, 0.1 },
        max_width = { 40, 0.2 },
      },
      filter_kind = false,

      on_attach = function(bufnr)
        vim.keymap.set("n", "{", "<cmd>AerialPrev<cr>", { buffer = bufnr })
        vim.keymap.set("n", "}", "<cmd>AerialNext<cr>", { buffer = bufnr })
      end,
    })
  end,
}
