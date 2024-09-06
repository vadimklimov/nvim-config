return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  opts = {
    window = {
      position = "left",
      width = 40,
    },
    popup_border_style = "rounded",
    default_component_configs = {
      indent = {
        indent_size = 2,
        with_markers = false,
      },
      file_size = {
        enabled = false,
      },
    },
  },
}
