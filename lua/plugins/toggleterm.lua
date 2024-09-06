return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    open_mapping = "<C-\\>",
    direction = "float",
    float_opts = {
      title_pos = "center",
      border = "curved",
      width = 155,
      height = 50,
    },
    highlights = {
      FloatBorder = {
        guifg = require("catppuccin.palettes").get_palette("mocha").sapphire,
      },
    },
  },
}
