return {
  "stevearc/oil.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    columns = {
      "icon",
    },
    delete_to_trash = true,
    skip_confirm_for_simple_edits = true,
    watch_for_changes = true,
    float = {
      max_width = 100,
      max_height = 35,
      border = "rounded",
      preview_split = "right",
    },
    keymaps = {
      ["<Esc>"] = "actions.close",
    },
  },
}
