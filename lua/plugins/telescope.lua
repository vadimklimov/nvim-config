return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-telescope/telescope-live-grep-args.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    "tsakirist/telescope-lazy.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            width = 0.99,
            height = 0.99,
            preview_width = 0.5,
            prompt_position = "top",
          },
        },
        mappings = {
          n = {
            ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
          },
          i = {
            ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")
    telescope.load_extension("live_grep_args")
    telescope.load_extension("file_browser")
    telescope.load_extension("noice")
    telescope.load_extension("lazy")
    telescope.load_extension("aerial")
  end,
}
